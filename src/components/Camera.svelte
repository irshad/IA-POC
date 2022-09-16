<script>
  import { Camera, CameraResultType } from "@capacitor/camera";

  let imageUrl;

  const takePicture = async () => {
    const image = await Camera.getPhoto({
      quality: 90,
      allowEditing: false,
      resultType: CameraResultType.Uri,
    });

    // // image.webPath will contain a path that can be set as an image src.
    // // You can access the original file using image.path, which can be
    // // passed to the Filesystem API to read the raw data of the image,
    // // if desired (or pass resultType: CameraResultType.Base64 to getPhoto)
    imageUrl = image.webPath;

    // // Can be set to the src of an image now
    // // imageElement.src = imageUrl;
    // const image = await Camera.checkPermissions({
    //   quality: 90,
    //   allowEditing: true,
    //   resultType: CameraResultType.Uri,
    // });

    console.log(image);
  };
</script>

<div class="poc-section">
  <p>3) Camera</p>
  {#if imageUrl}
    <div class="image-render mt-1">
      <img src={imageUrl} alt="" />
    </div>
  {/if}
  <button class="btn btn-dark mt-2" on:click={takePicture}> Open Camera </button>
</div>

<style>
  .image-render {
    width: 100%;
    height: 100%;
  }

  .image-render img {
    width: 100%;
    height: 100%;
    object-fit: contain;
  }
</style>
