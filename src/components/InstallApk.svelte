<script>
  import ApkUpdater from "cordova-plugin-apkupdater";

  let progress = 0;
  let apkUrl = "https://activity-templates.s3.ap-south-1.amazonaws.com/apps/test.apk";

  const options = {
    onDownloadProgress: function (e) {
      console.log("Downloading: " + e.progress + "%", "(" + e.bytesWritten + "/" + e.bytes + ")");
      progress = e.progress;
    },
  };

  const installApk = async () => {
    await ApkUpdater.download(apkUrl, options);
    progress = 0;
    await ApkUpdater.install();
  };
</script>

<div class="poc-section">
  <p>13) Install Apk</p>
  <button class="btn btn-dark mt-2" on:click={installApk}>
    {progress >= 1 ? 'Downloading - ' + progress + '%' : 'Install'}
  </button>
</div>
