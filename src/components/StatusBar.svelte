<script>
  import { StatusBar, Style } from "@capacitor/status-bar";

  const setStatusBarStyleDark = async () => {
    await StatusBar.setStyle({ style: Style.Dark });
  };

  const setStatusBarStyleLight = async () => {
    await StatusBar.setStyle({ style: Style.Light });
  };

  const hideStatusBar = async () => {
    await StatusBar.hide();
  };

  const showStatusBar = async () => {
    await StatusBar.show();
  };

  const changeStatusBarColor = async () => {
    await StatusBar.setBackgroundColor({ color: "#f34636" });
  };
</script>

<div class="poc-section">
  <p>18) Check Device Type Mobile/Tablet</p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={setStatusBarStyleDark}> Statusbar Dark </button>
    <button class="btn btn-dark mt-2" on:click={setStatusBarStyleLight}> Statusbar Light </button>
  </div>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={hideStatusBar}> Hide Statusbar </button>
    <button class="btn btn-dark mt-2" on:click={showStatusBar}> Show Statusbar </button>
  </div>
  <div class="d-flex">
    <button class="btn btn-dark mt-2" on:click={changeStatusBarColor}>Change Statusbar Color</button>
  </div>
</div>

<style>
</style>
