<script>
  import { Clipboard } from "@capacitor/clipboard";
  import { Dialog } from "@capacitor/dialog";

  const writeToClipboard = async () => {
    await Clipboard.write({
      string: "Hello World!",
    });
  };

  const checkClipboard = async () => {
    const { type, value } = await Clipboard.read();

    await Dialog.alert({
      title: "Clipboard Text",
      message: value,
    });
  };
</script>

<div class="poc-section">
  <p>8) Clipboard</p>
  <button class="btn btn-dark mt-2" on:click={checkClipboard}> Clipboard </button>
</div>

<style>
</style>
