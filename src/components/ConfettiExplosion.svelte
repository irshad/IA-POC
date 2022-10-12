<script>
  import { ConfettiExplosion } from "svelte-confetti-explosion";
  let confetti = false;

  const showExplosion = async () => {
    confetti = true;

    setTimeout(() => {
      confetti = !confetti;
    }, 4000);
  };
</script>

{#if confetti}
  <ConfettiExplosion particleSize={10} particleCount={600} duration={4000} particlesShape="rectangles" />
{/if}

<div class="poc-section">
  <p>10) Confetti Explosion</p>
  <button class="btn btn-dark mt-2" on:click={showExplosion} disabled={confetti}> Explosion </button>
</div>

<style>
</style>
