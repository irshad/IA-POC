<script>
  import { Toast } from "@capacitor/toast";

  const showHelloToast = async () => {
    await Toast.show({
      text: "Hello!",
      duration: "short",
      position: "top"
    });
  };
</script>

<div class="poc-section">
  <p>6) Toast Message</p>
  <button class="btn btn-primary mt-2" on:click={showHelloToast}> Toast </button>
</div>

<style>
</style>
