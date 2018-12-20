<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>挖掘机</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-105150423-3"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-105150423-3');
    </script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/neo4jd3.min.css?v=0.0.1">
    <style>
        body,
        html,
        .neo4jd3 {
            height: 100%;
            overflow: hidden;
        }
        path.outline {
            fill: none;
            stroke: #666;
            stroke-width: 1.5px;
        }
    </style>
</head>

<body>
    <div id="neo4jd3"></div>
    <div id="webchat"></div>
    <script src="js/d3.min.js"></script>
    <script src="js/neo4jd3.js?v=0.0.1"></script>
    <script type="text/javascript">

        var data = eval({
            "results": [
                {
                    "columns": [
                        "path"
                    ],
                    "data": [
                        {
                            "graph": {
                                "nodes": [
                                    {
                                        "id": "1",
                                        "labels": [
                                            "被告人"
                                        ],
                                        "properties": {
                                            "毒品数量": "12.73克",
                                            "职业": "无业",
                                            "户籍所在地": "云和县凤凰山街道解放街202号",
                                            "民族": "汉族",
                                            "文化程度": "初中文化",
                                            "出生日期": "1964年3月17日",
                                            "案件号": "（2017）浙1125刑初148号",
                                            "name": "陈远清",
                                            "出生地": "浙江省云和县",
                                            "现住址": "云和县浮云街道象山村安置房",
                                            "性别": "男"
                                        }
                                    },
                                    {
                                        "id": "21",
                                        "labels": [
                                            "购买者"
                                        ],
                                        "properties": {
                                            "name": "项宗远"
                                        }
                                    }
                                ],
                                "relationships": [
                                    {
                                        "id": "20",
                                        "type": "售给",
                                        "startNode": "1",
                                        "endNode": "21",
                                        "properties": {
                                            "种类": "甲基苯丙胺（冰毒）",
                                            "数量": "  ",
                                            "金额": " "
                                        }
                                    }
                                ]
                            }
                        }
                    ]
                }],
            "errors": []
        });
        function init() {
            var neo4jd3 = new Neo4jd3('#neo4jd3', {
                highlight: [
                    {
                        class: 'Project',
                        property: 'name',
                        value: 'neo4jd3'
                    }, {
                        class: 'User',
                        property: 'userId',
                        value: 'eisman'
                    }
                ],
                minCollision: 60,
                neo4jData: data,
                nodeRadius: 25,
                zoomFit: true
            });
        }
        window.onload = init;
    </script>
    <script src="webchat.js"></script>
    <script>
        WebChat.default.init({
            selector: "#webchat",
            initPayload: "你好",
            interval: 1000, // 1000 ms between each message
            customData: { "userId": "1" }, // arbitrary custom data. Stay minimal as this will be added to the socket
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