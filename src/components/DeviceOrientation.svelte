<script>
  function landscape() {
    window.screen.orientation.lock("landscape");
  }

  function portrait() {
    window.screen.orientation.lock("portrait");
  }

  function unlockOrientation() {
    window.screen.orientation.unlock();
  }
</script>

<div class="poc-section">
  <p>4) Device Rotation</p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={landscape}> Landscape </button>
    <button class="btn btn-dark mt-2" on:click={portrait}> Portrait </button>
    <button class="btn btn-dark mt-2" on:click={unlockOrientation}> Auto </button>
  </div>
</div>

<style>
</style>
