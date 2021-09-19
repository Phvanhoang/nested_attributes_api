import consumer from "./consumer"

consumer.subscriptions.create("AppearanceChannel", {
  connected() {
    console.log("Vao")
  },

  disconnected() {
  },

  received(data) {
    console.log(data)
    new Notification(data["title"])
  }
});
