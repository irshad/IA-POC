<script>
  import { App } from "@capacitor/app";
  
  const exitApp = async () => {
    App.exitApp()
  };
</script>

<div class="poc-section">
  <p>12) Exit App</p>
  <button class="btn btn-dark mt-2" on:click={exitApp}> Click to Close App </button>
</div>

<style>
</style>
