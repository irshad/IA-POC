<script>
  import { detect } from "detect-browser";
  import System from "svelte-system-info";

  const browser = detect();
  const isAndroid = () => System.OSName.toLowerCase() === "android" && browser.name.includes("webview");

  const checkIsTablet = () => {
    alert(isAndroid() ? 'Android' : 'Web')
  };
</script>

<div class="poc-section">
  <p>20) Check Device Type Mobile/Web</p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={checkIsTablet}> Check Device Is Android </button>
  </div>
</div>

<style>
</style>
