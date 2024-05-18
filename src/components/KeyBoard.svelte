<script>
  import { Keyboard } from "@capacitor/keyboard";

  Keyboard.addListener("keyboardWillShow", (info) => {
    console.log("keyboard will show with height:", info.keyboardHeight);
  });

  const show = async () => {
    await Keyboard.show({
      style: "floating",
      resize: "body",
      style: "DARK",
      resizeOnFullScreen: true,
    });
  };

  const hide = async () => {
    await Keyboard.hide({
      style: "floating",
    });
  };
</script>

<div class="poc-section">
  <p>23) Keyboard</p>

  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={show}>Open Keyboard</button>
    <button class="btn btn-dark mt-2" on:click={hide}>Hide Keyboard</button>
  </div>
</div>

<style>
</style>
