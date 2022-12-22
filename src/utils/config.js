import { App } from "@capacitor/app";
import { navigate } from "svelte-routing";

const AndroidBackRoute = (to) => App.addListener('backButton',() => {
    to ? navigate(to, {replace: true}) : App.exitApp();
});

export {
    AndroidBackRoute
}