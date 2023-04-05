<script>
  import { Network } from "@capacitor/network";
  let networkStatus;

  Network.addListener("networkStatusChange", (status) => {
    console.log("Network status changed", status.connected);
    networkStatus = status.connected;
  });

  const logCurrentNetworkStatus = async () => {
    const status = await Network.getStatus();

    console.log("Network status:", status.connected);
    networkStatus = status.connected;
  };
</script>

<div class="poc-section">
  <p>14) Network Check <span style="background: {networkStatus ? 'green' : 'red'}" /></p>
  <button class="btn btn-dark mt-2" on:click={logCurrentNetworkStatus}> Check Current Network Status </button>
</div>

<style>
  span {
    width: 10px;
    height: 10px;
    display: inline-block;
    border-radius: 50%;
  }
</style>
