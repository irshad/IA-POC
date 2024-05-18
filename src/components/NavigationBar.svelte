<script>
  import { NavigationBar, NavigationBarPluginEvents } from "@hugotomazi/capacitor-navigation-bar";

  const show = () => {
    NavigationBar.show()
  };

  const hide = () => {
    NavigationBar.hide()
  };

  const changeNavigationBarColor = () => {
    NavigationBar.setColor({ color: '#f34c45', darkButtons: false })
  }

  const changeNavigationBarTransparent = () => {
    NavigationBar.setTransparency({ isTransparent: true }) 
  }
</script>

<div class="poc-section">
  <p>24) Navigation Bar</p>

  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={show}>Show Navigation Bar</button>
    <button class="btn btn-dark mt-2" on:click={hide}>Hide Navigation Bar</button>
  </div>
  
  <button class="btn btn-dark mt-2" on:click={changeNavigationBarColor}>Change Navigation Bar Color</button>
  <button class="btn btn-dark mt-2" on:click={changeNavigationBarTransparent}>Transparent Navigation Bar</button>
</div>

<style>
</style>
