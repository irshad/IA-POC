<script>
  let url = "https://www.africau.edu/images/default/sample.pdf";

  const openPdfExternal = async () => {
    window.open(url);
  };

  const openPdfInApp = async () => {
  };
</script>

<div class="poc-section">
  <p>15) PDF Viewer</p>
  <button class="btn btn-dark mt-2" on:click={openPdfExternal}> Open PDF External </button>
  <button class="btn btn-dark mt-2" on:click={openPdfInApp}> Open PDF </button>
</div>

<style>
</style>
