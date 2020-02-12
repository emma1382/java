<!doctype html>
<html>
  <head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta http-equiv="X-UA-Compatible" content="IE=11" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>VP Online - Online Drawing Tool</title>
<meta name="description" content="VP Online is your all-in-one online drawing solution. Create professional flowcharts, UML diagrams, BPMN, ArchiMate, ER Diagrams, DFD, SWOT, Venn, org charts and mind map. Works cross-platforms: Mac, Windows, Linux. Sign-up for a FREE account today!">
    <meta name="keywords" content="online drawing tool,online drawing software,online uml,online bpmn,online archimate,uml,bpmn,archimate diagram,class diagram,use case diagram,sequence diagram,activity diagram,flowchart,swot,pest,value chain,pert,venn diagram,erd,dfd">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
		<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
		<meta name="theme-color" content="#ffffff">
    <script src="/scripts/jquery-1.12.4.min.js"></script>
  	<script type="text/javascript">
  		window.baseUrl = "https://anonymous.de-04.visual-paradigm.com/";
			function loadScript(url) {
				var head = document.getElementsByTagName('head')[0];
				var script = document.createElement('script');
				script.type = 'text/javascript';
				script.src = url;
				head.appendChild(script);
			}
			function checkLoading() {
				if (window.diagram) {
					$('#preloader').fadeOut(400, function() {
						$(this).remove();
					});
				} else {
					setTimeout(checkLoading, 100);
				}
			}
			
			
				var hash = window.location.hash;
				if (hash && hash.indexOf("#diagram:") === 0 && hash.indexOf("&type=Dashboard") === -1 && hash.indexOf("&type=GanttChart") === -1) {
						window.location.assign('/app/diagrams/' + hash);
				} else {
						window.location.assign('/drive/' + hash);
				}
			</script>
		<script>
    function initAnalytics(version, sn) {
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
			
			  ga('create', 'UA-103395095-1', 'auto');
			  ga('set', 'appName', 'VPository');
			  ga('set', 'appVersion', version);
			  ga('set', 'dimension1', sn);
			  ga('send', 'screenview', {screenName: 'WebDiagram'});
    }
		
		initAnalytics('16.1', 'unknown');
		</script>
		</head>

  <body style="padding: 0; overflow: hidden;">
    <iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position:absolute;width:0;height:0;border:0"></iframe>
    <iframe id="preloader" src="preloader.jsp" style="position:fixed; top:0px; left:0px; bottom:0px; right:0px; width:100%; height:100%; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;"></iframe>
  </body>
</html>