{{define "foot_script"}}
<!-- Mainly scripts -->
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/static/js/bootstrap-dialog.js"></script>
<script src="/static/js/mindmup-editabletable.js"></script>
<script src="/static/js/plugins/fullcalendar/moment.min.js"></script>
<script src="/static/js/plugins/fullcalendar/fullcalendar.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/static/js/inspinia.js"></script>
<script src="/static/js/plugins/pace/pace.min.js"></script>

<!-- Peity -->
<script src="/static/js/plugins/peity/jquery.peity.min.js"></script>

<!-- Peity -->
<script src="/static/js/demo/peity-demo.js"></script>

<script src="/static/js/base.js"></script>

<!-- pop windows layer-->
<script src="/static/js/layer/layer.js"></script>

<!-- highcharts -->
<script src="/static/js/highcharts/highcharts.js"></script>


<script src="/static/js/dropzone/dropzone.js"></script>
<!-- active menu -->
<script>
    var url_array = document.location.pathname.split("/");
    s1 = url_array[1];
    s2 = url_array[2];
    if (s1 == ''){
        $('#index').addClass('active')
    } else {
        $("#"+s1).addClass('active');
        $('#'+s1+' .'+s2).addClass('active');
        console.log(s1)
    }
</script>
{{end}}