<script>
import { App } from "@capacitor/app";
  App.addListener('appStateChange', ({isActive}) => {
    return isActive;
  });
</script>

<div class="poc-section">
  <p>21) Check Device Type Mobile/Web</p>
</div>

<style>
</style>
