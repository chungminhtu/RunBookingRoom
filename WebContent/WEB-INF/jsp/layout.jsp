<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="./codebase/demo.css" />
<link rel="stylesheet" type="text/css"
	href="./codebase/dhtmlxscheduler_flat.css" />
<script type="text/javascript" src="./codebase/dhtmlxscheduler.js"
	charset="utf-8"></script>
<!-- <script type="text/javascript"	src="./codebase/ext/dhtmlxscheduler_cookie.js" charset="utf-8"></script> -->
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_limit.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_recurring.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_timeline.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_treetimeline.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_readonly.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_minical.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_tooltip.js" charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/ext/dhtmlxscheduler_collision.js" charset="utf-8"></script>
<script type="text/javascript" src="./codebase/locale/locale_vn.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="./codebase/locale/recurring/locale_recurring_vn.js"
	charset="utf-8"></script>
<title>Hệ thống đặt phòng họp</title>
<style type="text/css" media="screen">
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	overflow: hidden;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	font-size: 12px !important;
}

.worktime {
	background: green;
	opacity: 0.4;
}

.dhx_cal_event div.dhx_footer, .dhx_cal_event.past_event div.dhx_footer,
	.dhx_cal_event.event_Other div.dhx_footer, .dhx_cal_event.event_Training div.dhx_footer,
	.dhx_cal_event.event_Seminar div.dhx_footer {
	background-color: transparent !important;
}

.dhx_cal_event .dhx_body {
	-webkit-transition: opacity 0.1s;
	transition: opacity 0.1s;
	opacity: 0.7;
}

.dhx_cal_event .dhx_title {
	line-height: 12px;
}

.dhx_cal_event_line:hover, .dhx_cal_event:hover .dhx_body,
	.dhx_cal_event.selected .dhx_body, .dhx_cal_event.dhx_cal_select_menu .dhx_body
	{
	opacity: 1;
}

.dhx_cal_event.event_Training div, .dhx_cal_event_line.event_Training {
	background-color: #FE7510 !important;
	border-color: #a36800 !important;
}

.dhx_cal_event_clear.event_Training {
	color: #FE7510 !important;
}

.dhx_cal_event.event_Seminar div, .dhx_cal_event_line.event_Seminar {
	background-color: #36BD14 !important;
	border-color: #698490 !important;
}

.dhx_cal_event_clear.event_Seminar {
	color: #36BD14 !important;
}

.dhx_cal_event.event_Other div, .dhx_cal_event_line.event_Other {
	background-color: #FC5BD5 !important;
	border-color: #839595 !important;
}

.dhx_cal_event_clear.event_Other {
	color: #B82594 !important;
}

.dhx_cal_ltitle {
	height: 30px;
	line-height: 30px;
	border-bottom: none !important;
}

.dhx_cal_ltitle {
	background-color: #2196F3;
	color: #fff;
}

.dhx_cal_ltext .dhx_text_disabled {
	line-height: 24px !important;
}

.dhx_section_timeline {
	padding: 5px 0 2px 10px !important;
}

.dhx_cal_light_wide .dhx_cal_lsection {
	width: 113px !important;
}

.dhx_cal_navline .dhx_cal_date {
	font-size: 26px !important;
}

.dhx_cal_light select {
	font-size: 12px !important;
	font-weight: bold !important;
}

.dhx_cal_ltext textarea {
	color: red;
	font-weight: bold;
}

.dhx_cal_light select option {
	font-size: 20px;
	font-weight: bold;
}

.dhx_btn_set, .dhx_btn_set div {
	font-size: 16px !important;
	font-weight: bold;
}

.dhx_cal_tab.active {
	font-weight: normal !important;
	font-size: 12px !important;
}

.dhx_matrix_line .caltitle {
	color: #fff;
	font-weight: bold;
	margin: -3px 0px -15px -12px;
	padding: 0px 10px 5px 5px;
	background-color: #2196F3;
}

.dhx_matrix_line .calcontent {
	margin: 16px 10px 0px -6px;
}

.dhx_cal_event_clear .caltitle {
	display: inline-block;
}

.dhx_scale_bar {
	width: 32px !important;
}

.dhx_cal_event_line {
	border: none !important;
	-webkit-border-radius: none !important;
	-moz-border-radius: none !important;
	border-radius: none !important;
	margin: -1px 0px 0px 0px !important;
	padding: 3px 0px 0 12px !important;
}

.dhx_cal_light .dhx_title {
	padding-left: 13px;
	margin-top: 3px;
}

.no_resize .dhx_event_resize {
	display: none;
}
</style>

<script type="text/javascript" charset="utf-8">
	function init() {
		scheduler.config.xml_date = "%Y-%m-%d %H:%i";
		scheduler.config.default_date = "(%l) Ngày %j %F %Y";
		scheduler.config.time_step = 30;
		scheduler.config.multi_day = true;
		scheduler.config.limit_time_select = true;
		scheduler.config.details_on_create = true;
		scheduler.config.details_on_dblclick = true;

		scheduler.config.first_hour = 8;
		scheduler.config.last_hour = 18;
		scheduler.config.full_day = true;
		scheduler.config.select = false;

		var groupnames = [ {key : 'TrainingCenter',	label : 'TrainingCenter'}, 
		                   {key : 'BGĐ',label : 'BGĐ'}, 
		                   {key : '-----------',label : '-----------'}, 
		                   {key : 'TenTen',label : 'TenTen'}, 
		                   {key : 'Z.Com',label : 'Z.Com'}, 
		                   {key : 'InfoQ',label : 'InfoQ'}, 
		                   {key : 'Network',label : 'Network'}, 
		                   {key : '-----------',label : '-----------'}, 
		                   {key : 'Admin',label : 'Admin'}, 
		                   {key : 'KeToan',label : 'KeToan'}, 
		                   {key : 'HR',label : 'HR'}, 
		                   {key : 'BrSE',label : 'BrSE'}, 
		                   {key : 'Assistant',label : 'Assistant'}, 
		                   {key : 'SmileTeam',label : 'SmileTeam'}, 
		                   {key : '-----------',label : '-----------'}, 
		                   {key : 'BSD',label : 'BSD'}, 
		                   {key : 'HanBai',label : 'HanBai'}, 
		                   {key : 'DIV1',label : 'DIV1'}, 
		                   {key : 'PHP1',label : 'PHP1'}, 
		                   {key : 'Smart',label : 'Smart'}, 
		                   {key : 'Graphic',label : 'Graphic'}, 
		                   {key : '-----------',label : '-----------'}, 
		                   {key : 'DIV2',label : 'DIV2'}, 
		                   {key : 'DIV3',label : 'DIV3'}, 
		                   {key : 'Comm',label : 'Comm'}, 
		                   {key : 'R&D',label : 'R&D'}, 
		                   {key : '-----------',label : '-----------'}, 
		                   {key : 'VNLab',label : 'VNLab'}, 
		                   {key : 'Others',label : 'Others'}, 
		                   {key : 'Khach',label : 'Khach'}, 
		                   {key : '-----------',label : '-----------'}, 
		                   {key : 'RSJP',label : 'RSJP'}, 
		                   {key : 'DaNang',label : 'DaNang'}, 
		                   {key : 'HCM',label : 'HCM'} 
		                 ];

		var types = [ 
		              {key : '',label : 'Meeting'}, 
		              {key : 'Training',label : 'Training'}, 
		              {key : 'Seminar',label : 'Seminar'}, 
		              {key : 'Other',label : 'Other'} ];

		var rooms = [ 
		              {key : 44,label : "Chi Nhánh Hà Nội",open : true,children : 
		            	  [ 
                            {key : 20,label : "HN - Phòng MT1"}, 
                            {key : 30,label : "HN - Phòng MT2"}, 
                            {key : 35,label : "HN - Phòng MT3"}, 
                            {key : 40,label : "HN - Việt Nam Lab"}, 
                            {key : 50,label : "HN - Phòng Mr Tẩu"} 
                          ]
		}, {
			key : 66,
			label : "Chi nhánh Đà Nẵng",
			open : true,
			children : [ {
				key : 60,
				label : "ĐN - Phòng MT1"
			} ]
		}, {
			key : 88,
			label : "Chi nhánh Hồ Chí Minh",
			open : true,
			children : [ {
				key : 80,
				label : "HCM - Phòng MT1"
			} ]
		}, {
			key : 99,
			label : "Chi nhánh Tokyo",
			open : true,
			children : [ {
				key : 100,
				label : "Tokyo - Phòng MT1"
			} ]
		} ];
		var passwordPlaceHolder ="Yêu cầu có MK mới đc sửa cuộc họp này.";
		var requestsPlaceHolder ="Nước, Máy chiếu hoặc tài sản phục vụ cuộc họp hoặc khách hàng...";
		var notesPlaceHolder ="Nhập tóm tắt nội dung thu được sau cuộc họp, các Notes cần lưu ý hoặc TaskList cần hoàn thành.";
		
		scheduler.config.lightbox.sections = [ 
		                                       {name : "text",height : 43,type : "textarea",focus : true,map_to : "text"}, 
												{name : "groupnames",height : 20,type : "select",options : groupnames,map_to : "groupnames"}, 
												{name : "rooms",height : 23,type : "timeline",options : null,map_to : "rooms"}, 
												{name : "types",height : 20,type : "select",options : types,map_to : "types"}, 
												{name : "requests",height : 50,type : "textarea",map_to : "requests" , default_value: requestsPlaceHolder}, 
												{name : "notes",height : 100,type : "textarea",map_to : "notes", default_value: notesPlaceHolder}, 
												{name : "password",height : 60,type : "textarea",map_to : "password", default_value: passwordPlaceHolder}, 
												{name : "recurring",height : 115,type : "recurring",map_to : "rec_type",button : "recurring"}, 
												{name : "time",height : 72,type : "time",map_to : "auto"} 
											 ];

		scheduler.locale.labels.section_rooms = "Phòng họp:";
		scheduler.locale.labels.section_groupnames = "Nhóm đăng ký:";
		scheduler.locale.labels.section_text = "Nội dung, Chủ đề:";
		scheduler.locale.labels.section_notes = "Kết quả:";
		scheduler.locale.labels.section_password = "Mật khẩu:";
		scheduler.locale.labels.section_types = "Loại:";
		scheduler.locale.labels.section_requests = "Yêu cầu chuẩn bị:";

		scheduler.templates.event_class = function(start, end, event) {
			var css = "";
			if (event.types)
				css += "event_" + event.types;
			if (event.id == scheduler.getState().select_id) {
				css += " selected";
			}
			if (event.password != "undefined" && event.password != ""
					&& event.password != null && event.readonly != null)
				css += "no_resize";

			return css;
		};

		scheduler.templates.event_bar_text = function(start, end, event) {
			return '<div class="caltitle">' + event.groupnames + '</div>'
					+ '<div class="calcontent">' + event.text + '</div>';
		};

		scheduler.createTimelineView({
			section_autoheight : false,
			name : "timeline",
			x_unit : "minute",
			x_date : "%H:%i",
			x_step : 30,
			x_size : 21,
			x_start : 16,
			x_length : 48,
			y_unit : rooms,
			y_property : "rooms",
			render : "tree",
			folder_dy : 20,
			folder_events_available : false,
			event_dy : 'full',
			dy : 70
		});

		scheduler.addMarkedTimespan({ // blocks each Saturday, Sunday
			days : [ 6, 0 ],
			zones : "fullday",
			type : "dhx_time_block",
			css : "gray_section"
		});
		var today = new Date();
		var i = 0;
		scheduler.init('scheduler_here', new Date(today.getFullYear(), today
				.getMonth(), today.getDate()), "timeline");
  
		var isadmin ="${admin}";

		scheduler.attachEvent("onBeforeLightbox", function(id) {
			scheduler.resetLightbox();  
			var buttonsRight = [];
			var buttonsLeft = ["dhx_cancel_btn" ];
			if (scheduler.getState().new_event) {
				buttonsRight = [ "dhx_delete_btn" ];
				buttonsLeft = [ "dhx_save_btn", "dhx_cancel_btn" ];
			} else {
				if (isadmin == "isnotadmin") {
					
					var WrongPass = true;
					var a = scheduler.getEvent(id);
					if (a.password === "" || a.password === null
							|| a.password === "undefined"
							|| a.password === undefined)
						WrongPass = false;
					if (a.password === window.pass) {
						a.readonly = null;
						WrongPass = false;
					}

					if (WrongPass === false) {
						buttonsRight = [ "dhx_delete_btn" ];
						buttonsLeft = [ "dhx_save_btn", "dhx_cancel_btn" ];
					} else { 
						a.password = "****";
						buttonsRight = [];
						buttonsLeft = [ "dhx_cancel_btn" ];
					}
				} 
				else
				{ 
				buttonsRight = [ "dhx_delete_btn" ];
				buttonsLeft = [ "dhx_save_btn", "dhx_cancel_btn" ];
				}
			}
			scheduler.config.buttons_right = buttonsRight;
			scheduler.config.buttons_left = buttonsLeft;
			return true;
		});

	scheduler.attachEvent("onBeforeDrag",function(id) {
			i = 0;
			window.pass = null;
			var a = scheduler.getEvent(id);
			if (a != null || a != undefined) {
				if (isadmin == "isnotadmin") {
					if (a.password != "" && a.password != null
							&& a.password != "undefined") {
						a.readonly = "1";
						var mk = prompt(
								"Cuộc họp này có mật khẩu, hãy nhập mật khẩu để sửa. Nếu không nhập thì chỉ có thể xem!",
								"");
						window.pass = mk;
						if (mk != null && mk != ""
								&& mk != "undefined") {
							if (a.password === mk) {
								a.readonly = null;
							}
						}
					} else {
						a.readonly = null;
					}
				}
				return scheduler.showLightbox(id);
			}
			return true;
		});
		scheduler.form_blocks.textarea.set_value = function(node, value, ev) {
			if (value == undefined || value == 'undefined') {
				value = "";
			}
			node.firstChild.value = value;
			i++;
			if (i == 3 && ev.password != "undefined" && ev.password != ""
					&& ev.password != null) {
				if (ev.password != window.pass) {
					node.style.display = "none";
					scheduler.setLightboxSize();
				}
			}
		}

		
		scheduler.attachEvent("onEventSave",function(id,ev,is_new){
		    if (ev.requests === requestsPlaceHolder) {
		    	ev.requests ="";
		    }
		    
		    if (ev.password === passwordPlaceHolder) {
		    	ev.password ="";
		    }
		    
		    if (ev.notes === notesPlaceHolder) {
		    	ev.notes ="";
		    }
		    return true;
		})
		
		scheduler.xy.margin_top = 140;
		
		scheduler.config.prevent_cache = true;
		scheduler.load("events", "json");
		var dp = new dataProcessor("events");
		dp.init(scheduler);
		dp.setTransactionMode("POST", false);

	}

	function show_minical() {
		if (scheduler.isCalendarVisible()) {
			scheduler.destroyCalendar();
		} else {
			scheduler.renderCalendar({
				position : "dhx_minical_icon",
				date : scheduler._date,
				navigation : true,
				handler : function(date, calendar) {
					scheduler.setCurrentView(date);
					scheduler.destroyCalendar()
				}
			});
		}
	}
</script>




</head>
<body onload="init();">
	<div class="header">
		<div class="overlay"></div>
		<div class="text">GMO RUNSYSTEM - HỆ THỐNG ĐẶT PHÒNG HỌP</div>
	</div>
	<div id="scheduler_here"
		class="dhx_cal_container dhx_scheduler_week_unit"
		style="width: 100%; height: 100%; z-index: 1000;">
		<div class="dhx_cal_navline"
			style="width: 956px; height: 59px; left: 0px; top: 0px;">
			<div class="dhx_cal_prev_button">&nbsp;</div>
			<div class="dhx_cal_next_button">&nbsp;</div>
			<div class="dhx_cal_today_button">Today</div>
			<div class="dhx_minical_icon" id="dhx_minical_icon"
				onclick="show_minical()">&nbsp;</div>
			<div class="dhx_cal_date" style="left: 100px;"></div>
			<div class="dhx_cal_tab dhx_cal_tab_first" name="day_tab"
				style="right: auto; left: 14px;">Day</div>
			<div class="dhx_cal_tab" name="week_tab"
				style="right: auto; left: 75px;">Week</div>
			<div class="dhx_cal_tab dhx_cal_tab_standalone" name="timeline_tab"
				style="right: auto; left: 211px; width: 90px;">Lịch Phòng Họp</div>
			<div class="dhx_cal_tab dhx_cal_tab_last" name="month_tab"
				style="right: auto; left: 136px;">Month</div>
		</div>
		<div class="dhx_cal_header"
			style="width: 938px; height: 20px; left: -1px; top: 60px;"></div>
		<div class="dhx_cal_data"
			style="width: 956px; height: 69px; left: 0px; top: 81px;"></div>
	</div>


	<div class="footer">
		<div class="line"></div>
		<div class="info">
			<div class="col copyright">
				<div class="foot">
					<a href="http://runsystem.net/">
						<div class="dhxlogo_footer"></div>
					</a> R&D Team Design and Code. <br> 2016 © GMO RUNSYSTEM.
				</div>
			</div>
		</div>
	</div>

	<style>
div.tablename {
	float: left;
	line-height: 18px;
}

.footer {
	z-index: 2000;
}

div.table {
	width: 18px;
	height: 18px;
	float: left;
	margin-right: 7px;
}

.dhx_cal_navline div.dhx_minical_icon {
	left: 90px;
}

.dhx_cal_event_line {
	background-color: #03A9F4;
}

.dhx_matrix_scell.folder, .dhx_data_table.folder .dhx_matrix_cell {
	background-color: #e8e5df;
}

.dhx_cal_light_wide {
	width: 540px;
}

.dhx_cal_light_wide .dhx_cal_larea {
	width: 530px;
}

.dhx_matrix_scell .dhx_scell_level1 {
	padding-left: 12px;
}
</style>
</body>
</html>

