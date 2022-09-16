<script>
  import LocalNotifications from "./components/LocalNotifications.svelte";
  import TTS from "./components/TTS.svelte";
  import Camera from "./components/Camera.svelte";
  import DeviceOrientation from "./components/DeviceOrientation.svelte";
  import OpenAndroidApp from "./components/OpenAndroidApp.svelte";
  import Toast from "./components/Toast.svelte";
  import Dialog from "./components/Dialog.svelte";
  import Clipboard from "./components/Clipboard.svelte";
  import InAppBrowser from "./components/InAppBrowser.svelte";
</script>

<main class="container">
  <LocalNotifications/>
  <TTS />
  <Camera />
  <DeviceOrientation />
  <OpenAndroidApp />
  <Toast/>
  <Dialog/>
  <Clipboard/>
  <InAppBrowser />
</main>

<style>
</style>
