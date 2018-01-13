<%-- 
    Document   : monitor
    Created on : Jan 10, 2018, 6:15:40 PM
    Author     : anurag.nana.deshmukh
--%>
<%@page import="java.io.Console"%>
<%@page import="java.sql.*" %>
<%@page import="Config.connectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ResultSet rs = null;
    try {
        connectionManager cm = new connectionManager();
        Connection con = cm.getConnection();
        if (con != null) {
            System.out.println("no");
        }
        Statement stmt = cm.getStatement(con);
        String query = "SELECT * FROM ( SELECT x2.subject_area, x1.workflow_name, DECODE(TO_CHAR(x1.run_status_code),'1','SUCCEEDED','2','DISABLED','3','FAILED','4','STOPPED','5','ABORTED','6','RUNNING','7','SUSPENDING' ,'8','SUSPENDED','9','STOPPING','10','ABORTING','11','WAITING','12','SCHEDULED','13','UNSCHEDULED','14','UNKNOWN','15','TERMINATED RUN STATUS CODE' ,TO_CHAR(x1.run_status_code) ) status, x1.server_name, TO_CHAR(x1.start_time,'DD-MON-YYYY HH24:MI:SS') AS start_time, RANK() OVER( PARTITION BY x2.subject_area, x1.workflow_name, x1.server_name ORDER BY start_time DESC ) rankno, run_err_msg AS run_err_msg FROM opb_wflow_run x1, rep_subject x2 WHERE x1.subject_id = x2.subject_id ) WHERE rankno = 1 ORDER BY start_time DESC";
        rs = cm.getResult(stmt, query);
    } catch (Exception ex) {
        out.println("ERROR:" + ex.getMessage());
    }
%>
<div id="data-tables">
    <!--Basic example-->
    <div class="panel panel-light">
        <div class="panel-heading">
            <div class="panel-title">
                <h4>Job Monitor (Latest Job runs)</h4>
            </div>
        </div>
        <div class="panel-body table-responsive">
            <table id="data-table-example1" class="display table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Folder</th>
                        <th>Workflow Name</th>
                        <th>Status</th>
                        <th>Service</th>
                        <th>Start date</th>
                        <th>Error Message</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString("SUBJECT_AREA") + "<\td>");
                            out.println("<td>" + rs.getString("WORKFLOW_NAME") + "<\td>");
                            out.println("<td>" + rs.getString("STATUS") + "<\td>");
                            out.println("<td>" + rs.getString("SERVER_NAME") + "<\td>");
                            out.println("<td>" + rs.getString("START_TIME") + "<\td>");
                            out.println("<td>" + rs.getString("RUN_ERR_MSG") + "<\td>");
                            out.println("<tr>");
                        }
                    %>

                    %>
                </tbody>
            </table>
        </div>
    </div>
    <script type="text/javascript">
        LobiAdmin.loadScript([
            'js/plugin/datatables/jquery.dataTables.min.js'
        ], function () {
            LobiAdmin.loadScript([
                'js/plugin/datatables/dataTables.bootstrap.min.js',
                'js/plugin/datatables/dataTables.responsive.min.js',
                'js/plugin/bootstrap-datepicker/bootstrap-datepicker.js'
            ], initPage);
        });

        function initPage() {
            $('#data-table-example1').DataTable();
            $('#data-table-example2').DataTable({
                "scrollY": 300,
                "scrollX": true,
//                responsive: true
            });
            $('#data-table-example3').DataTable({
                "columnDefs": [
                    {
                        // The `data` parameter refers to the data for the cell (defined by the
                        // `data` option, which defaults to the column being worked with, in
                        // this case `data: 0`.
                        "render": function (data, type, row) {
                            var val = data.replace(/[\$,]/g, '');
                            if (val > 100000) {
                                return '<span class="text-success">' + data + '</span>';
                            } else {
                                return '<span class="text-danger">' + data + '</span>';
                            }
                        },
                        "targets": 5
                    },
                    {"visible": false, "targets": [3]}
                ],
                responsive: true
            });
            var table = $('#data-table-example4').DataTable({
                responsive: true
            });
            // Apply the search
            $("#data-table-example4 thead th input[type=text]").on('keyup change', function () {

                table
                        .column($(this).closest('th').index() + ':visible')
                        .search(this.value)
                        .draw();

            });
            // Apply the search
            $("#data-table-example4 thead th select").on('change', function () {

                var val = $.fn.dataTable.util.escapeRegex(
                        $(this).val()
                        );

                table
                        .column($(this).closest('th').index() + ':visible')
                        .search(val ? '^' + val + '$' : '', true, false)
                        .draw();

            });
            $('.datepicker-demo').datepicker({
                format: 'yyyy/mm/dd'
            });

            $('.panel').lobiPanel({
                reload: false,
                editTitle: false
            });
        }
    </script>
</div>
