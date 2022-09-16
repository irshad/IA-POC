<script>
  import { Browser } from "@capacitor/browser";

  const openCapacitorSite = async () => {
    await Browser.open({ url: "https://google.com/" });
  };
</script>

<div class="poc-section">
  <p>9) In App Browser</p>
  <button class="btn btn-dark mt-2" on:click={openCapacitorSite}> Open In App Browser </button>
</div>

<style>
</style>
