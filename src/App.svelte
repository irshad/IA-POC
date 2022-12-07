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
  import ConfettiExplosion from "./components/ConfettiExplosion.svelte";
  import BackButton from "./components/BackButton.svelte";
  import ExitApp from "./components/ExitApp.svelte";
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
  <ConfettiExplosion />
  <BackButton />
  <ExitApp />
</main>

<style>
</style>
