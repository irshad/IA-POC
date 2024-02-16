<script>
  import { CapacitorUpdater } from "@capgo/capacitor-updater";
  import { onMount } from "svelte";
  import { getLatestOTAVersion } from "../utils/update";

  let latestOTAVersion = getLatestOTAVersion();
  let currentInstalledVersion = "1.0.0";
  let installedVersionFromLocalStorage = localStorage.getItem("ota_version");
  let allowOTAUpdate = true;

  onMount(() => {
    CapacitorUpdater.notifyAppReady();

    /**
     * Here updating the variable "allowOTAUpdate" by checking the play store version
     * making sure not to update if the latest is from play store.
    */

    let playStoreAppVersion = '2.6.0';

    if (isVersionNewer(playStoreAppVersion, latestOTAVersion)) {
      allowOTAUpdate = true;
    } else {
      allowOTAUpdate = false;
    }

    /**
     * Here updating the local storage for the fist time or if there is no version is saved in
     * local storage to refer OTA version
    */

    if (installedVersionFromLocalStorage === null) {
      localStorage.setItem("ota_version", "1.0.0");
    }

    currentInstalledVersion = installedVersionFromLocalStorage === null ? "1.0.0" : installedVersionFromLocalStorage;

    if (isVersionNewer(currentInstalledVersion, latestOTAVersion) && allowOTAUpdate) {
      console.log("Updating App");
    } else {
      console.log("App Upto Date");
    }
  });

  const checkForUpdate = async () => {
    if (latestOTAVersion !== undefined) {
      const versionInfo = {
        url: `https://s3.ap-south-1.amazonaws.com/onelern.school/releases/${latestOTAVersion}/public.zip`,
        version: latestOTAVersion,
      };

      const version = await CapacitorUpdater.download(versionInfo);
      await CapacitorUpdater.set(version);

      /**
       * Here will set "latestOTAVersion" in local storage.
       * If the version saved in local storage doesn't matched with the version coming from backend
       * will trigger the "checkForUpdate()" and get the latest update package and it'll update the app and
       * also update the local storage with "latestOTAVersion"
       */

      localStorage.setItem("ota_version", latestOTAVersion);
    }
  };

  function isVersionNewer(currentVersion, newVersion) {
    const currentParts = currentVersion.split(".").map(Number);
    const newParts = newVersion.split(".").map(Number);

    for (let i = 0; i < newParts.length; i++) {
      if (newParts[i] > (currentParts[i] || 0)) {
        return true;
      } else if (newParts[i] < (currentParts[i] || 0)) {
        return false;
      }
    }

    return false;
  }
</script>

<div class="poc-section mt-4">
  <h1 class="mb-4">App Version: 1.0.0</h1>

  <div class="image">
    <img src="boy.png" alt="" />
  </div>

  <p class="my-3 text-center">
    This is a demo to showcases the Over-The-Air (OTA) Update process for OneLern applications.
  </p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={checkForUpdate}> Check for Update </button>
  </div>
</div>

<style>
  h1 {
    text-align: center;
    text-decoration: underline;
  }

  .image {
    width: 100px;
    height: 100px;
    margin: auto;
  }

  .image img {
    width: 100%;
    height: 100%;
    object-fit: contain;
  }
</style>
