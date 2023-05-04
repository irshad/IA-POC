<script>
  import { SpeechRecognition } from "@capacitor-community/speech-recognition";
  import { onMount } from "svelte";

  onMount(() => {
    SpeechRecognition.requestPermission();
  });

  const startSpeechRecognition = () => {
    SpeechRecognition.start({
      language: "en-US",
      maxResults: 2,
      prompt: "Say something",
      partialResults: true,
      popup: true,
    });

    SpeechRecognition.addListener("partialResults", (data) => {
        console.log("partialResults was fired", data.matches);
    });
    console.log("---------------- Testing ----------------------")
  };

  const stopSpeechRecognition = () => {
    SpeechRecognition.stop();
  };
</script>

<div class="poc-section">
  <p>19) Speech Recognition</p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={startSpeechRecognition}> Start </button>
    <button class="btn btn-dark mt-2" on:click={stopSpeechRecognition}> Stop </button>
  </div>
</div>

<style>
</style>
