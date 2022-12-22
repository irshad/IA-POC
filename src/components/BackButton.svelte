<script>
  import { App } from "@capacitor/app";
  // import { AndroidBackRoute } from "../utils/config";

  // AndroidBackRoute("/home");

  App.addListener('backButton',() => {
    checkBackButton();
  });

  const checkBackButton = async () => {
    alert("Hardware back button pressed Irshad");
  };
</script>

<div class="poc-section">
  <p>11) Back Button</p>
  <button class="btn btn-dark mt-2" on:click={checkBackButton}> Back Button </button>
</div>

<style>
</style>
