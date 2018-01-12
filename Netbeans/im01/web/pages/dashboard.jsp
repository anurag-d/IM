<%-- 
    Document   : dashboard
    Created on : Jan 7, 2018, 9:39:53 PM
    Author     : anurag
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="dashboard" class="dashboard">
    <div>
        <div id="dashboard-statisticts-panel" class="panel panel-light">
            <div class="panel-heading">
                <div class="panel-title">
                    <i class="fa fa-line-chart"></i> Job Statistics
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div>
                            <canvas id="line-chart" height="250" width="900"></canvas>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <h3 class="text-center margin-top-5">Statistics for this week</h3>
                    <div class="col-xxs-12 col-xs-6 col-sm-3 text-center">
                        <h4>CRM to CRM Out</h4>
                        <canvas id="dashbboard-clothing-sales" height="150" width="150"></canvas>
                        <h5>
                            Total <span class="badge font-size-lg">9</span> Job Failures
                        </h5>
                    </div>
                    <div class="col-xxs-12 col-xs-6 col-sm-3 text-center">
                        <h4>CRMOUT to SDL</h4>
                        <canvas id="dashbboard-computing-sales" height="150" width="150"></canvas>
                        <h5>
                            Total <span class="badge font-size-lg">6</span> Job Failures
                        </h5>
                    </div>
                    <div class="col-xxs-12 col-xs-6 col-sm-3 text-center">
                        <h4>MDM to CRM</h4>
                        <canvas id="dashbboard-furniture-sales" height="150" width="150"></canvas>
                        <h5>
                            Total <span class="badge font-size-lg">3</span> Job Failures
                        </h5>
                    </div>
                    <div class="col-xxs-12 col-xs-6 col-sm-3 text-center">
                        <h4>Uncategorised</h4>
                        <canvas id="dashbboard-vessel-sales" height="150" width="150"></canvas>
                        <h5>
                            Total <span class="badge font-size-lg">3</span> Job Failures
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        (function(){
            //Load and initialize sparkline charts
            LobiAdmin.loadScript([
                'js/plugin/sparkline/jquery.sparkline.min.js'
            ], initSparklines);
            
            //Load and initialize chartjs
            LobiAdmin.loadScript([
                'js/plugin/chartjs/Chart.min.js'
            ], initChartjs);
            
            //Load and initialize lobilist
            LobiAdmin.loadScript([
                'js/lobi-plugins/lobilist.min.js'
            ], initLobiList);

            LobiAdmin.loadScript([
                'js/plugin/moment/moment.min.js'
            ], function(){
                LobiAdmin.loadScript('js/plugin/fullcalendar/fullcalendar.min.js', initPage);
            });
            
            function initLobiList(){
                $('#dashboard-todo-list').lobiList({
                    sortable: false,
                    controls: ['edit', 'styleChange'],
                    lists: [
                        {
                            title: 'TODOs',
                            defaultStyle: 'lobilist-info',
                            items: [
                                {
                                    title: 'Floor cool cinders',
                                    description: 'Thunder fulfilled travellers folly, wading, lake.',
                                    dueDate: '2015-01-31'
                                },
                                {
                                    title: 'Periods pride',
                                    description: 'Accepted was mollis',
                                    done: true
                                },
                                {
                                    title: 'Flags better burns pigeon',
                                    description: 'Rowed cloven frolic thereby, vivamus pining gown intruding strangers prank treacherously darkling.',
                                },
                                {
                                    title: 'Accepted was mollis',
                                    description: 'Rowed cloven frolic thereby, vivamus pining gown intruding strangers prank treacherously darkling.',
                                    dueDate: '2015-02-02'
                                },
                                {
                                    title: 'Composed trays',
                                    description: 'Hoary rattle exulting suspendisse elit paradises craft wistful. Bayonets allures prefer traits wrongs flushed. Tent wily matched bold polite slab coinage celerities gales beams.',
                                },
                                {
                                    title: 'Chic leafy',
                                    checked: true
                                }
                            ]
                        }
                    ]
                });
            }
            
            function initSparklines(){
                //Call this method before calling .sparkline() plugin to activate default colors, bar widths and other options
                initSparklineDefaults();
                initResponsiveSparklines();
                $('.sparkline').sparkline('html', {
                    enableTagOptions: true
                });
            }
            
            function initChartjs(){
                var options = {
                    responsive: true
                };
                var COLOR1 = LobiAdmin.lightenColor(LobiAdmin.DEFAULT_COLOR, -15);
                var COLOR2 = LobiAdmin.lightenColor(LobiAdmin.DEFAULT_COLOR, 0);
                var COLOR3 = LobiAdmin.fadeOutColor(LobiAdmin.DEFAULT_COLOR, 20);
                var COLOR4 = LobiAdmin.fadeOutColor(LobiAdmin.DEFAULT_COLOR, 40);

                var FADEOUT_COLOR_FACTOR = 20;

                //Initialize line chart
                (function(){
                    // Get the context of the canvas element we want to select
                    var statisticData = {
                        labels: ["1-Jan-18","2-Jan-18","3-Jan-18","4-Jan-18","5-Jan-18","6-Jan-18","<%out.print( "7-Jan-18");%>"],
                        datasets: fillChartJsColors('line', [
                            {
                                label: "Succeeded",
                                //strokeColor: LobiAdmin.fadeOutColor(LobiAdmin.DEFAULT_COLOR, 10),
                                strokeColor: LobiAdmin.fadeOutColor(LobiAdmin.DEFAULT_COLOR, 60),
                                data: [70, 71, 65, 80, 45, 72, 32 ]
                            },
                            {
                                label: "Failures",
                                //strokeColor: LobiAdmin.fadeOutColor(LobiAdmin.DEFAULT_COLOR, 80),
                                strokeColor: LobiAdmin.fadeOutColor(LobiAdmin.DEFAULT_COLOR, 20),
                                data:  [5, 2, 1, 0, 0, 3, 8 ]
                            }
                        ])
                    };
                    var canvas = $('#line-chart');
                    var ctx = canvas[0].getContext("2d");
                    var statistictsChart = new Chart(ctx).Line(statisticData, options);
                    var legend = $(statistictsChart.generateLegend());
                    canvas.parent().append(legend);
                    
                    //Update charts on panel size change
                    $('#dashboard-statisticts-panel').on('onFullScreen.lobiPanel onSmallSize.lobiPanel resizeStop.lobiPanel onPin.lobiPanel onUnpin.lobiPanel dragged.lobiPanel', function(ev){
                        statistictsChart.destroy();
                        statistictsChart = new Chart(statistictsChart.chart.ctx).Line(statisticData, options);
                    });
                })();
    
    //------------------------------------------------------------------------------
    //          Initialize pie charts
    //------------------------------------------------------------------------------
                (function(){
                    var data = [
                        {
                            value: 217,
                            color: COLOR1,
                            highlight: LobiAdmin.fadeOutColor(COLOR1, FADEOUT_COLOR_FACTOR),
                            label: "Succeeded"
                        },
                        {
                            value: 9,
                            color: COLOR4,
                            highlight: LobiAdmin.fadeOutColor(COLOR4, FADEOUT_COLOR_FACTOR),
                            label: "Failures"
                        }
                    ];
                    var ctx = $('#dashbboard-clothing-sales')[0].getContext('2d');
                    new Chart(ctx).Doughnut(data,{});
                })();
    //------------------------------------------------------------------------------
                (function(){
                    var data = [
                        {
                            value: 130,
                            color: COLOR4,
                            highlight: LobiAdmin.fadeOutColor(COLOR4, FADEOUT_COLOR_FACTOR),
                            label: "Succeeded"
                        },
                        {
                            value: 6,
                            color: COLOR2,
                            highlight: LobiAdmin.fadeOutColor(COLOR2, FADEOUT_COLOR_FACTOR),
                            label: "Failures"
                        }
                    ];
                    var ctx = $('#dashbboard-computing-sales')[0].getContext('2d');
                    // For a pie chart
                    new Chart(ctx).Doughnut(data,{});
                })();
    //------------------------------------------------------------------------------            
                (function(){
                    var data = [
                        {
                            value: 65,
                            color: COLOR3,
                            highlight: LobiAdmin.fadeOutColor(COLOR3, FADEOUT_COLOR_FACTOR),
                            label: "Succeeded"
                        },
                        {
                            value: 3,
                            color: COLOR2,
                            highlight: LobiAdmin.fadeOutColor(COLOR2, FADEOUT_COLOR_FACTOR),
                            label: "Failures"
                        }
                    ];
                    var ctx = $('#dashbboard-furniture-sales')[0].getContext('2d');
                    // For a pie chart
                    new Chart(ctx).Doughnut(data, {});
                })();
    //------------------------------------------------------------------------------
                (function(){
                    var data = [
                        {
                            value: 65,
                            color: COLOR4,
                            highlight: LobiAdmin.fadeOutColor(COLOR4, FADEOUT_COLOR_FACTOR),
                            label: "Succeeded"
                        },
                        {
                            value: 3,
                            color: COLOR1,
                            highlight: LobiAdmin.fadeOutColor(COLOR1, FADEOUT_COLOR_FACTOR),
                            label: "Failures"
                        }
                    ];
                    var ctx = $('#dashbboard-vessel-sales')[0].getContext('2d');
                    // For a pie chart
                    new Chart(ctx).Doughnut(data, {});
                })();
            }

            function initPage(){
                //Initialize lobipanels
                $('.panel:not(.panel-with-tabs)').lobiPanel({
                    editTitle: false,
                    reload: false,
                    sortable: true
                });

                //Initialize FullCalendar
                (function(){
                    $('#dashboard-events .panel-body').fullCalendar({
                        header: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'month,agendaWeek,agendaDay'
                        },
                        defaultDate: '2015-09-12',
                        droppable: true,
                        eventLimit: true,
                        businessHours: true,
                        eventRender: function(event, element, view){
                            if (event.description){
                                element.append('<span class="fc-description">'+event.description+'</span>');
                            }
                        },
                        events: [
                            {
                                    title: 'All Day Event',
                                    start: '2015-09-01'
                            },
                            {
                                    title: 'Long Event',
                                    start: '2015-09-07',
                                    end: '2015-09-10',
                                    className: 'bg-success border-transparent'

                            },
                            {
                                    id: 999,
                                    title: 'Repeating Event',
                                    start: '2015-09-09T16:00:00',
                                    description: 'Repeating event description',
                                    className: 'bg-danger border-transparent'
                            },
                            {
                                    id: 999,
                                    title: 'Repeating Event',
                                    start: '2015-09-16T16:00:00',
                                    description: 'Repeating event description',
                                    className: 'bg-danger border-transparent'
                            },
                            {
                                    title: 'Conference',
                                    start: '2015-09-11',
                                    end: '2015-09-13',
                                    description: 'Description will held in hole',
                                    className: 'bg-purple border-transparent'
                            },
                            {
                                    title: 'Meeting',
                                    start: '2015-09-12T10:30:00',
                                    end: '2015-09-12T12:30:00',
                                    className: 'bg-info border-transparent'
                            },
                            {
                                    title: 'Lunch',
                                    start: '2015-09-12T12:00:00',
                                    description: 'The lunch will be at corner cafe'
                            },
                            {
                                    title: 'Meeting',
                                    start: '2015-09-12T14:30:00',
                                    className: 'bg-purple border-transparent'
                            },
                            {
                                    title: 'Happy Hour',
                                    start: '2015-09-12T17:30:00'
                            },
                            {
                                    title: 'Dinner',
                                    start: '2015-09-12T20:00:00',
                                    className: 'bg-warning border-transparent'
                            },
                            {
                                    title: 'Birthday Party',
                                    start: '2015-09-13T07:00:00',
                                    className: 'bg-warning border-transparent'
                            },
                            {
                                    title: 'Click for Google',
                                    url: 'http://google.com/',
                                    start: '2015-09-28'
                            }
                        ]
                    });
                    $('#dashboard-events').on('onFullScreen.lobiPanel onSmallSize.lobiPanel resizeStop.lobiPanel onPin.lobiPanel onUnpin.lobiPanel dragged.lobiPanel', function(ev, lobiPanel){
                        var cal = lobiPanel.$el.find('.panel-body');
                        var ratio  = cal.fullCalendar('option', 'aspectRatio');
                        cal.fullCalendar('option', 'height', cal.find('.fc-view-container').outerWidth() / ratio);
                    });
                })();
            }
        })();
        
    </script>
</div>