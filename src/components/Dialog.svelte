<script>
  import { Dialog } from "@capacitor/dialog";

  const showConfirm = async () => {
    const { value } = await Dialog.confirm({
      title: "Confirm",
      message: `Are you sure you'd like to press the red button?`,
    });

    console.log("Confirmed:", value);
  };
</script>

<div class="poc-section">
  <p>7) Dialog box</p>
  <button class="btn btn-dark mt-2" on:click={showConfirm}> Dialog </button>
</div>

<style>
</style>
