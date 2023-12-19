<script>
  import { CapacitorUpdater } from "@capgo/capacitor-updater";
  import { onMount } from "svelte";
  import { getLatestOTAVersion } from "../utils/update";

  let OTAPackageVersion;

  onMount(() => {
    CapacitorUpdater.notifyAppReady();
    OTAPackageVersion = getLatestOTAVersion();
  });

  const checkForUpdate = async () => {
    if (OTAPackageVersion !== undefined) {      
      const versionInfo = {
        url: `https://s3.ap-south-1.amazonaws.com/onelern.school/releases/${OTAPackageVersion}/public.zip`,
        version: OTAPackageVersion, // Replace with the appropriate version
      };
  
      const version = await CapacitorUpdater.download(versionInfo);
      await CapacitorUpdater.set(version); // sets the new version, and reloads the app
    }
  };
</script>

<div class="poc-section mt-4">
  <p>21) OTA Update</p>
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
