<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="utf-8" />
        <title>HTML Preview</title>
        <link rel="stylesheet" href="https://ionepub.github.io/md/examples/css/style.css" />
        <link rel="stylesheet" href="https://ionepub.github.io/md/css/editormd.preview.css" />
        <link rel="shortcut icon" href="https://ionepub.github.io/favicon.ico" type="image/x-icon" />
		<style>            
            .editormd-html-preview {
                width: 90%;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <div id="layout">
            <header>
                <h1>HTML Preview</h1>
            </header>
            <div id="editormd-view">
               <textarea style="display:none;" name="test-editormd-markdown-doc">##########</textarea>               
            </div>
        </div>

        <script src="https://ionepub.github.io/md/examples/js/jquery.min.js"></script>
        <script src="https://ionepub.github.io/md/lib/marked.min.js"></script>
        <script src="https://ionepub.github.io/md/lib/prettify.min.js"></script>
        <script src="https://ionepub.github.io/md/editormd.js"></script>
        <script type="text/javascript">
            var editormdView;
            $(function() {
			    editormdView = editormd.markdownToHTML("editormd-view", {
                    // markdown        : markdown ,//+ "\r\n" + $("#append-test").text(),
                    //htmlDecode      : true,       // 开启 HTML 标签解析，为了安全性，默认不开启
                    htmlDecode      : "style,script,iframe",  // you can filter tags decode
                    //toc             : false,
                    tocm            : true,    // Using [TOCM]
                    emoji           : true,
                    taskList        : true,
                });
            });
        </script>
    </body>
</html>