<script>
  import { Toast } from "@capacitor/toast";
  import { ZoomPlugin } from "capacitor-zoom-android";

  const enableZoom = async () => {
    ZoomPlugin.enableZoom();
    showHelloToast("Enabled");
  };

  const disableZoom = async () => {
    ZoomPlugin.disableZoom();
    showHelloToast("Disabled");
  };

  const showHelloToast = async (status) => {
    await Toast.show({
      text: "Pinch To Zoom " + status,
      duration: "short",
      position: "top",
    });
  };
</script>

<div class="poc-section">
  <p>16) Pinch To Zoom</p>
  <button class="btn btn-dark mt-2" on:click={enableZoom}> Enable Zoom </button>
  <button class="btn btn-dark mt-2" on:click={disableZoom}> Disable Zoom </button>
</div>

<style>
</style>
