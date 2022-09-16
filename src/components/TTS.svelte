<script>
  import { TextToSpeech } from "@capacitor-community/text-to-speech";

  let value = "Hello Irshad, How are you?";

  const speak = async () => {
    await TextToSpeech.speak({
      text: value,
      lang: "en-IN",
      rate: 1.0,
      pitch: 1.0,
      volume: 1.0,
      category: "ambient",
    });
  };

  const stop = async () => {
    await TextToSpeech.stop();
  };

  const getSupportedLanguages = async () => {
    const languages = await TextToSpeech.getSupportedLanguages();
    console.log(languages);
  };

  const getSupportedVoices = async () => {
    const voices = await TextToSpeech.getSupportedVoices();
    console.log(voices);
  };

  const isLanguageSupported = async () => {
    const isSupported = await TextToSpeech.isLanguageSupported();
    console.log(isSupported);
  };
</script>

<div class="poc-section">
  <p>2) TTS</p>
  <textarea class="form-control" type="text" bind:value />
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={speak}> Speak </button>
    <button class="btn btn-dark mt-2" on:click={stop}> Stop </button>
  </div>
</div>

<style>
  textarea {
    max-height: 300px;
  }
</style>
