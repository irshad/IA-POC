<script>
  function isTablet() {
    const screenWidth = window.screen.width;
    const screenHeight = window.screen.height;
    const minScreenSize = 600; // minimum screen size for a tablet in pixels

    return screenWidth >= minScreenSize && screenHeight >= minScreenSize;
  }

  const checkIsTablet = () => {
    if (isTablet()) {
      alert("This is a tablet");
    } else {
      alert("This is a mobile");
    }
  };
</script>

<div class="poc-section">
  <p>17) Check Device Type Mobile/Tablet</p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={checkIsTablet}> Check Device Type </button>
  </div>
</div>

<style>
</style>
