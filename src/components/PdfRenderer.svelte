<script>
  import { onMount } from "svelte";

  export let path;
  let container;
  
  onMount(() => {
    container = document.getElementById("pdf-container");
    pdfjsLib.getDocument(path).promise.then((pdf) => {
      // Loop through each page and render on a canvas
      for (let pageNumber = 1; pageNumber <= pdf.numPages; pageNumber++) {
        const canvas = document.createElement("canvas");
        canvas.setAttribute("class", "the-canvas");
        container.appendChild(canvas);

        // Render the page on the canvas
        pdf.getPage(pageNumber).then((page) => {
          const viewport = page.getViewport({ scale: 3.0 });
          canvas.width = viewport.width;
          canvas.height = viewport.height;

          const context = canvas.getContext("2d");
          const renderContext = {
            canvasContext: context,
            viewport: viewport,
          };
          page.render(renderContext);
        });
      }
    });
  });
</script>

<div class="poc-section">
  <p>22) Render PDF</p>
  <div class="canvas-holder" id="pdf-container" />
</div>

<style>
  .canvas-holder {
    position: relative;
    height: 100%;
    overflow: scroll;
  }

  :global(.the-canvas) {
    width: 100% !important;
  }
</style>
