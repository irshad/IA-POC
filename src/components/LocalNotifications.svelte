<script>
  import { LocalNotifications } from "@capacitor/local-notifications";

  const triggerLocalNotifications = async () => {
    const notifs = await LocalNotifications.schedule({
      notifications: [
        {
          title: "POC",
          body: "Hello! Irshad This is POC app local notification",
          id: 1,
          schedule: { at: new Date(Date.now() + 1000 * 5) },
          sound: null,
          attachments: null,
          actionTypeId: "",
          extra: null,
        },
      ],
    });
    console.log("scheduled notifications", notifs);
  };
</script>

<div class="poc-section pt-4">
  <p>1) Local Notifications</p>
  <div class="d-flex gap-2">
    <button class="btn btn-dark mt-2" on:click={triggerLocalNotifications}> 
        Trigger Notifications
    </button>
  </div>
</div>
