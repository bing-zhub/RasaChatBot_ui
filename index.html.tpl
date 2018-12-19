<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>挖掘机</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async
            src="https://www.googletagmanager.com/gtag/js?id=UA-105150423-3"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-105150423-3');
    </script>
</head>
    <!-- /Global site tag (gtag.js) - Google Analytics -->


<div id="webchat"/>
<script src="webchat.js"></script>
<script>
    WebChat.default.init({
        selector: "#webchat",
        initPayload: "你好",
        interval: 1000, // 1000 ms between each message
        customData: {"userId": "1"}, // arbitrary custom data. Stay minimal as this will be added to the socket
        socketUrl: "{{ server_url }}",
        title: "智障机器人的日常",
        subtitle: "🐩",
        profileAvatar: "robotic.png",
        showCloseButton: true,
        fullScreenMode: false
    })
</script>
</body>
</html>