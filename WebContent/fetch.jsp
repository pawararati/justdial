<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Test</title>
		
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css" type="text/css">
		<link rel="stylesheet" href="css/less.css" type="text/css">
		<link rel="stylesheet" href="css/slider.css" type="text/css">
		<link rel="stylesheet" href="css/slider1.css" type="text/css">
		
		<!--<script src="js/less.js"></script>-->
		<script src="js/slider.js"></script>
		<style>
		.rating-loading {
    width: 25px;
    height: 25px;
    font-size: 0;
    color: #fff;
    background: transparent url('../img/loading.gif') top left no-repeat;
    border: none;
}

/*
 * Stars & Input
 */
.rating-container .rating-stars {
    position: relative;
    cursor: pointer;
    vertical-align: middle;
    display: inline-block;
    overflow: hidden;
    white-space: nowrap;
}

.rating-container .rating-input {
    position: absolute;
    cursor: pointer;
    width: 100%;
    height: 1px;
    bottom: 0;
    left: 0;
    font-size: 1px;
    border: none;
    background: none;
    padding: 0;
    margin: 0;
}

.rating-disabled .rating-input, .rating-disabled .rating-stars {
    cursor: not-allowed;
}

.rating-container .star {
    display: inline-block;
    margin: 0 3px;
    text-align: center;
}

.rating-container .empty-stars {
    color: #aaa;
}

.rating-container .filled-stars {
    position: absolute;
    left: 0;
    top: 0;
    margin: auto;
    color: #fde16d;
    white-space: nowrap;
    overflow: hidden;
    -webkit-text-stroke: 1px #777;
    text-shadow: 1px 1px #999;
}

.rating-rtl {
    float: right;
}

.rating-animate .filled-stars {
    transition: width 0.25s ease;
    -o-transition: width 0.25s ease;
    -moz-transition: width 0.25s ease;
    -webkit-transition: width 0.25s ease;
}

.rating-rtl .filled-stars {
    left: auto;
    right: 0;
    -moz-transform: matrix(-1, 0, 0, 1, 0, 0) translate3d(0, 0, 0);
    -webkit-transform: matrix(-1, 0, 0, 1, 0, 0) translate3d(0, 0, 0);
    -o-transform: matrix(-1, 0, 0, 1, 0, 0) translate3d(0, 0, 0);
    transform: matrix(-1, 0, 0, 1, 0, 0) translate3d(0, 0, 0);
}

.rating-rtl.is-star .filled-stars {
    right: 0.06em;
}

.rating-rtl.is-heart .empty-stars {
    margin-right: 0.07em;
}

/**
 * Sizes
 */
.rating-xl {
    font-size: 4.89em;
}

.rating-lg {
    font-size: 3.91em;
}

.rating-md {
    font-size: 3.13em;
}

.rating-sm {
    font-size: 2.5em;
}

.rating-xs {
    font-size: 2em;
}

.rating-xl {
    font-size: 4.89em;
}

/**
 * Clear
 */
.rating-container .clear-rating {
    color: #aaa;
    cursor: not-allowed;
    display: inline-block;
    vertical-align: middle;
    font-size: 60%;
}

.clear-rating-active {
    cursor: pointer !important;
}

.clear-rating-active:hover {
    color: #843534;
}

.rating-container .clear-rating {
    padding-right: 5px;
}

/**
 * Caption
 */

/* extend support to BS4 */
.rating-container .caption .label {
    display: inline-block;
    padding: .25em .4em;
    line-height: 1;
    text-align: center;
    vertical-align: baseline;
    border-radius: .25rem;
}

.rating-container .caption {
    color: #999;
    display: inline-block;
    vertical-align: middle;
    font-size: 60%;
    margin-top: -0.6em;
}

.rating-container .caption {
    margin-left: 5px;
    margin-right: 0;
}

.rating-rtl .caption {
    margin-right: 5px;
    margin-left: 0;
}

/**
 * Print
 */
@media print {
    .rating-container .clear-rating {
        display: none;
    }
}
		</style>
		<style>


/* Full-width input fields */
input[type=text], input[type=password] {
    width: 60%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
   
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
     /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
		<style>
		.nav-tabs-wrapper {
    display: block;
    overflow: hidden;
    height: calc(1.5rem + 1rem + 2px); /** 1.5 is font-size, 1 is padding top and bottom, 2 is border width top and bottom */
    position: relative;
    z-index: 1;
    margin-bottom: -1px;
    .nav-tabs {
        overflow-x: auto;
        flex-wrap: nowrap;
        border-bottom: 0;
    }
    .nav-item {
        margin-bottom: 0;
        &:first-child {
            padding-left: 15px;
        }
        &:last-child {
            padding-right: 15px;
        }
    }
    .nav-link {
        white-space: nowrap;
    }
    .dragscroll:active,
    .dragscroll:active a {
        cursor: -webkit-grabbing;
    }
}

.nav-tabs-wrapper-border {
    display: block;
    width: 100%;
    border-top: 1px solid #ddd;
}

.tab-pane {
    padding: 1rem;
}

</style>
		
	</head>
	
	
	<body>
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
		
		<%
String id = request.getParameter("name");
	
		System.out.println(id);
		
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "tests";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM test1 where ComapnyName='" + id + "'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	 
	 
	
	
 <header style="background-image: url('images/<%=resultSet.getString(9)%>');">
   
	
	
					<div class="company-details">
						<div class="col-sm-9 col-xs-12" style="margin-top:70px;margin-left:50px;">
							<div class="tleorlp">
								<span class="item">
										<span class="fn" ><h1 style="color:white;">Company: <%=resultSet.getString(1) %></h1></span>
										
									</span>
							
								<!--##################################################### #Ratings show if Ratable contracts  ################################### -->

									<div>
												<span  class="strtngwpr" onclick="flipandscroll('rvw');
													_ct('rtng', 'dtpg');
													disprevs('rvw', 'toprevc');">
												   											<span class='rating' >
													<span class="total-rate"><span class="value-titles" ><h5 style="color:white;">4</span></span>													<span class="strcls">
														<span class="s10"></span><span class="s10"></span><span class="s10"></span><span class="s10"></span><span class="s3"></span>													</span>
												</span>
												<span class="votes"style="color:white;" > 10 </span><span class="value-title" title="4.3"></span><span class="lng_commn" style="color:white;">Votes</h5></span></span>
											</span>
										</div>
									</div>
								<input type="hidden" value="" name="rating" id="rating">
								<input type="hidden" value="" name="revid" id="revid">
								<input type="hidden" id='totrat' value="34">
								<input type="hidden" id="rtThis" value="1" data-close-down="" >

								<!--######################################  #Address Priority Set to Area > Streat >LandMark >City-Pin ############################-->
								<ul>
											
											<span onclick="">
												<span>
													<span style="color:white;font-size:24px;">Address:<%=resultSet.getString(2) %></span>
									<a href="#fulladdress"  title="Map "><span style="color:white;">(Map)</span></a>
												</span>
												</span>
											
																						
													<span onclick="" ><h5 style="color:white;">Whatapp Number:<img src="img/what.png"> <%=resultSet.getString(3) %></h5></span>
																							
									</ul>
									<!--div>  // for indicative price.
											</div-->
								</div>
							</div>
						<div class="col-xs-12 visible-xs-block">
							</div>
							<div class="row">
								<div class="col-md-3" style="margin-top:110px;">
									<ul>
	   									<li style="text-align:center;">
										<i class="fa fa-map-marker" style="font-size:24px;color:white;"></i>
										<a title="Map " href="javascript:;" onclick="">
										
											<span style="color:white;font-weight:bold;" onclick="window.open('https://goo.gl/maps/8Ryy413ABzD2')">Map</span>
										</a>
										</li>
								</div>
								<div class="col-md-3" style="margin-top:110px;">
										<li style="text-align:center;">
										<i class="glyphicon glyphicon-envelope" style="font-size:24px;color:white;"></i>
										<a href="#" onclick="" title="SMS / Email ">
										
											<span style="color:white;font-weight:bold;"><a href="javascript:void(0);"  data-toggle="modal" data-target="#myModal"style="color:white">SMS/Email</a></span>
											<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">
							  <!-- Modal content-->
							  <div class="modal-content">
								<div class="modal-header">
								  <button type="button" class="close" data-dismiss="modal">&times;</button>
								  <h4 class="modal-title">Get information by SMS/Email</h4>
								</div>
								<div class="modal-body">
								 <section>
										
										<form>
											<p id='enqerr' class="jerr"></p>
											
											<p>
												<label for="enqname">Name<sup>*</sup></label>
												<input class="jinp" type="text" id="enqname" value=""/>
											</p>
											<p>
												<label for="enqmobile">Mobile No*</label>
												<input class="jinp" type="text" id="enqmobile" value="" maxlength="10"/>
											</p>
											<p>
												<label for="enqemail">Email<sup>*</sup></label>
												<input class="jinp" type="text" id="enqemail" value="" />
											</p>
											
											
											<p>
												<label></label>
												<button class="jbtn" type="button" onclick="">SEND</button>
											</p>	
											<p>
											<span class="scmp"><sup>*</sup> Denotes mandatory fields.</span>
											</p>
										</form>
									</section>
								</div>
								
							  </div>
							</div>
						  </div>
										</a>
										</li>
								</div>
										<div class="col-md-3" style="margin-top:110px;">
										<li style="text-align:center;">
										<i class="fa fa-pencil"style="font-size:24px;color:white;"></i>
										<a rel="nofollow" href="review.html" onclick="" title="Write a review ">
										
										<span style="color:white;font-weight:bold;">Write a Review</span>
										</a>
										</li>
								</div>
									<input type="hidden" id="dataclosedown" value="1">
										<input type="hidden" id="closedflg" value="0">
								<div class="col-md-3" style="margin-top:110px;">
										<li style="text-align:center;">
<span style="color:white;font-weight:bold;">Your Vote ( <span id="dprtng">-</span> )</span>
										<span style="color:white;font-weight:bold;">Rate this</span>
												<div >
    <form>
        <input id="input-21e" value="0" type="text" class="rating" data-min=0 data-max=5 data-step=0.5 data-size="xs" title="">
      </form>
    <script>
        jQuery(document).ready(function () {
            $("#input-21f").rating({
                starCaptions: function (val) {
                    if (val < 3) {
                        return val;
                    } else {
                        return 'high';
                    }
                },
                starCaptionClasses: function (val) {
                    if (val < 3) {
                        return 'label label-danger';
                    } else {
                        return 'label label-success';
                    }
                },
                hoverOnClear: false
            });
            var $inp = $('#rating-input');

            $inp.rating({
                min: 0,
                max: 5,
                step: 1,
                size: 'lg',
                showClear: false
            });

            $('#btn-rating-input').on('click', function () {
                $inp.rating('refresh', {
                    showClear: true,
                    disabled: !$inp.attr('disabled')
                });
            });


            $('.btn-danger').on('click', function () {
                $("#kartik").rating('destroy');
            });

            $('.btn-success').on('click', function () {
                $("#kartik").rating('create');
            });

            $inp.on('rating.change', function () {
                alert($('#rating-input').val());
            });


            $('.rb-rating').rating({
                'showCaption': true,
                'stars': '3',
                'min': '0',
                'max': '3',
                'step': '1',
                'size': 'xs',
                'starCaptions': {0: 'status:nix', 1: 'status:wackelt', 2: 'status:geht', 3: 'status:laeuft'}
            });
            $("#input-21c").rating({
                min: 0, max: 8, step: 0.5, size: "xl", stars: "8"
            });
        });
    </script>
</div>
										</li>
									</ul>
								</div>
							</div>
						</header>
						
					<div class="col-md-12 dtlfdrtgs col-sm-12">
				<!-- 	<div id="slider" style="right:-342px;">
		 <div id="sidebar" ><a href="free.html">
			<img src="img/free.png" style="width:50px;height:175px;"></a>
		</div> 
		
	</div> -->
	<!-- <div id="slider1" style="right:-200px;">
		<div id="sidebar1" ><a href="cust.html">
			<img src="img/cust.jpg" style="width:46px;height:160px;"></a>
		</div>
		
	</div> -->
							<span class="dtlfd">
								<section class="rate_bar">
									<span class="" onclick="_ct('frndrtng', 'dtpg');">
										Click here to view your<a rel="nofollow" onclick="disprevs('toprvw', 'toprevc');setCookiebest('showpage', 'fratings', 1);" href="#tabB">
									<span class="yrevnm"><span class="bfst"></span><span class="yfst lng_commn_all"> <b>friends rating</b></span></span>
										</a>
									</span>
								</section>
							</span><br>
						</div>
						<div class="clearfix"></div>
						<div class="col-md-12 col-sm-12 dtpage">
							<div class="col-md-4 col-sm-12 padding0 leftdt">
								<div class="col-md-12 col-sm-12 padding0 paddingR0">
										<div id="phgal_dtl" class="seoshow "></div>
                                <ul class="comp-contact" id="comp-contact">
								<span class="ic_phn comp-icon"></span> <span class="telnowpr"><a class="tel ttel"><span class="mobilesv icon-ts"></span><span class="mobilesv icon-oqp"></span><span class="mobilesv icon-wx"></span> <span class="mobilesv icon-oqp"></span><span class="mobilesv icon-wx"></span><span class="mobilesv icon-trs"></span><span class="mobilesv icon-hg"></span><span class="mobilesv icon-wyx"></span><span class="mobilesv icon-hg"></span><span class="mobilesv icon-wx"></span><span class="mobilesv icon-trs"></span><span class="mobilesv icon-ba"></span><span class="mobilesv icon-wyx"></span></a></span>
								
										<span class="comp-icon adrsicn hidden-xs"></span> <!-- Address Priority Set to Area > Streat >LandMark >City-Pin -->
											<span class="comp-text">
												<span class="adrstxtr" id="fulladdress">
													<span >
														 <span class="glyphicon glyphicon-map-marker"></span><span class="lng_add"><%=resultSet.getString(4) %></span>
													</span>
						   							<a class="mapicn" href="javascript:;"  onclick="view_map('080PXX80.XX80.110729233133.V4N7', 'map', 'Bangalore');
									_ct('map', 'dtpg');" title="Map">
								<span class="mpicntxt lng_commn_all" style="color:black;" onclick="window.open('https://goo.gl/maps/8Ryy413ABzD2')">(Map)</span></a>
												</span>
											</span>
									
								 <br><br>
										<i class="comp-icon sdeqry hidden-xs sprite_wb"></i>
										<span class="mreinfp comp-text">
										<i class="glyphicon glyphicon-envelope" style=""></i>
											<a href="javascript:void(0);"  data-toggle="modal" data-target="#myModal">Send Enquiry By Email</a>
											<br><br>
											
					
										
												<span class="glyphicon glyphicon-globe"></span>				<a href="<%=resultSet.getString(6) %>" onclick="_ct('weblink', 'dtpg');" rel="nofollow" target="_BLANK" title="<%=resultSet.getString(6) %>">
										<%=resultSet.getString(6) %>
											</a>
										
<!-- Modal -->
										<div class="modal fade" id="myModal" role="dialog">
										</span>
										<div class="modal-dialog">
							  <!-- Modal content-->
							  <div class="modal-content">
								<div class="modal-header">
								  <button type="button" class="close" data-dismiss="modal">&times;</button>
								  <h4 class="modal-title">Modal Header</h4>
								</div>
								<div class="modal-body">
								 <section>
										<span class="hd">Send Enquiry By Email</span>
										<form>
											<p id='enqerr' class="jerr"></p>
											<p>
												<label>To</label>
												<span class="scmp">Event U All</span>
											</p>
											<p>
												<label for="enqname">Name<sup>*</sup></label>
												<input class="jinp" type="text" id="enqname" value=""/>
											</p>
											<p>
												<label for="enqmobile">Mobile No</label>
												<input class="jinp" type="text" id="enqmobile" value="" maxlength="10"/>
											</p>
											<p>
												<label for="enqemail">Email<sup>*</sup></label>
												<input class="jinp" type="text" id="enqemail" value="" />
											</p>
											
											<p>
												<label>Body<sup>*</sup></label>
												<textarea class="jinp cmm" id="enqbd" rows="8" cols="50" /></textarea>
											</p>
											<p>
												<label></label>
												<button class="jbtn" type="button" onclick="enqiryemail('080PXX80.XX80.110729233133.V4N7','6','Bangalore');">OK</button>
											</p>	
											<p>
											<span><sup>*</sup> Denotes mandatory fields.</span>
											</p>
										</form>
									</section>
								</div>
								<div class="modal-footer">
								  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							  </div>
							</div>
									</li>
				
									
								</ul>
	
  <span class="glyphicon glyphicon-time"></span> <a href="javascript:void(0);"  data-toggle="collapse" data-target="#demo">Hours of Operation
</a>
  <div id="demo" class="collapse">
    Monday 10:00 am - 06:00 pm<br>Tuesday 10:00 am - 06:00 pm<br>Wednesday 10:00 am - 06:00 pm<br>Thursday 10:00 am - 06:00 pm<br>Friday 10:00 am - 06:00 pm<br>Saturday 10:00 am - 06:00 pm<br>Sunday Closed - Closed
  </div>
  </div>
<div class="mreinfwpr">
						 	<p class="mreinfp lng_commn"><b><span class="glyphicon glyphicon-calendar"></span>Year Established</b>: <%=resultSet.getString(7) %></p>
								
							</div>
					</div>
			<div class="col-md-8 col-sm-12 rightdt">
								<div id="htlLst"></div>
								<!--#######################################################################  #Widget Logic Starts for #Tab Here  #########################-->
								<div class="ofr_zone">
									<div class="offer_txt dn">
										<i class="dtlpg_sprt pucent_icn"></i> FREE Home Delivery, and 10% Off for First Time Users
										<i class="dtlpg_sprt cicr_icn"></i>
									</div>
																					<div class="clearfix"></div>
								</div>
											<div id="sixtab" class="six_tabs row">
										<div class="col-sm-4 col-xs-6 paddr0" onclick="flipandscroll('rvw');">
										<div class="panel panel-default">
											<div class="panel-heading"><h4>Review</h4>
											<a href="#home">Ms Rohini</a><br>
											<span>has rated 4.0 stars</span></div>
										 </div>
										</div>
												 <div class="col-sm-4 col-xs-6 pull-right paddr0" onclick="houroperate('all')">
															<div class="panel panel-default">
																<div class="panel-heading"><h4>More Information</h4>
																	<span id="moinfo" class="lng_commn_all">Phone number, website, Get Directions, Listing, Buissness etc</span>
																	<i class="dtlpg_sprt rht_arw_lft"></i>
															</div>
															</div>
												</div>
												<div class="col-sm-4 col-xs-6 pull-right paddr0">											
													<div class="rivw_tab" onclick="goToByScrolldetail('comp-contact');">
													<div class="panel panel-default">
											<div class="panel-heading"><h4>Hours of Operation</h4>
											<span id="hoprte"><span class="lng_commn_all">Today : 10:00 am - 06:00 pm</span><i class="dtlpg_sprt rht_arw_lft"></i></span>
											<a id="" class="lng_commn" href="#demo">(View all)</a></div>
										 </div>
													<i class="dtlpg_sprt rht_arw_lft visible-xs-block"></i>
												</div>
																					</div>
										<div class="clearfix"></div>
										<section id="alldtlbtn" class="dtl_btnwrp text-center dn">
						 <!-- Trigger the modal with a button -->
						  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Enquire Now</button>
 <!-- Modal -->
						  <div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">
							  <!-- Modal content-->
							  <div class="modal-content">
								<div class="modal-header">
								  <button type="button" class="close" data-dismiss="modal">&times;</button>
								  <h4 class="modal-title">Modal Header</h4>
								</div>
								<div class="modal-body">
								 <section>
										
										<form>
											<p id='enqerr' class="jerr"></p>
											<p>
												<label>To</label>
												<span class="scmp">Event U All</span>
											</p>
											<p>
												<label for="enqname">Name<sup>*</sup></label>
												<input class="jinp" type="text" id="enqname" value=""/>
											</p>
											<p>
												<label for="enqmobile">Mobile No</label>
												<input class="jinp" type="text" id="enqmobile" value="" maxlength="10"/>
											</p>
											<p>
												<label for="enqemail">Email<sup>*</sup></label>
												<input class="jinp" type="text" id="enqemail" value="" />
											</p>
											
											<p>
												<label for="enqbd">Body<sup>*</sup></label>
												<textarea class="jinp cmm" id="enqbd" rows="8" cols="50" /></textarea>
											</p>
											<p>
												<label></label>
												<button class="jbtn" type="button" onclick="">OK</button>
											</p>	
											<p>
											<span class="scmp"><sup>*</sup> Denotes mandatory fields.</span>
											</p>
										</form>
									</section>
								</div>
								<div class="modal-footer">
								  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							  </div>
							</div>
						  </div>
						</div>
		</section>
				<div >
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home" ><i class="fa fa-pencil"></i>&nbsp;WRITE A REVIEW</a></li>
    <li ><a data-toggle="tab" href="#menu1" style="margin-left:300px;" style="color:red;"><i class="fa fa-comment-o"style="font-size:20px"></i>&nbsp;REVIEWS & RATINGS</a></li>
  </ul>
 <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      
      <div class="arrg-blok" >
		<div class="rate-block" id="rating_stars">
			<span class="pls-bok lng_commn_all">Please rate your experience </span>
			<form>
       <input id="input-21e" value="0" type="text" class="rating" data-min=0 data-max=5 data-step=0.5 data-size="xs"
               title="">
    </form>
			<input id="WRTrating" type="hidden" value="" name="rating">
			<span id="ratingErr" class="error" style="display:none;"></span>
		</div>
		<div class="add-rew-wrpp">
			<div class="col-sm-8 col-xs-6"><span class="add-tit lng_commn_all">Add Review</span></div>
			<div class="">
				<textarea class="col-sm-6 col-xs-6 rew-txt" rows="3" placeholder="Be specific and relevant to the place you're reviewing and describe what other visitor are likely to experience. Be authentic and describe why you liked or disliked the place. Include aspects like the ambiance, service quality, value for money, credibility of the vendor, timely delivery," onfocus="clear_text_box_val('Add Review','wrereview','onfocus','detail');" onkeyup="stat=false;" onblur="stat=true; clear_text_box_val('Add Review','wrereview','onblur','detail');" value="" name="wrereview" id="wrereview"></textarea>
			</div><br><br><br><br><br>
			<div class="">
								<span class="lng_commn_all">Share with friends</span>
				<input type="checkbox" id="c1" name="cc">
				<label onclick="" for="c1"><span class="dtlpg_sprt edit-list"></span><span class="lng_commn_all">Facebook</span></label>
				
				<input type="checkbox" id="c2" name="cc">
				<label onclick="" for="c1"><span class="dtlpg_sprt edit-list"></span><span class="lng_commn_all">Twitter</span></label>					
			</div>
			
					<div style="display:none;" class="upht">
						<a href="javascript:void(0);" id="upclse" class="dtlpg_sprt close_upht"></a>
						<div class="upht-imagebr">                         							
							<div class="upht-uploader dn">
								<div class="uploader-sat">
									<span class="uploader-uplo lng_commn_all"><a href="#">Uploading Images</a></span>
									<span class="uploader-canc lng_commn_all"><a href="#">Cancel</a></span>
								</div>
								<div class="uploader-box lng_commn_all">Uploding Image</div>
							</div>
							
							<div class="upht-loaderimages">
								<div class="uploader-sat">
									<span class="uploader-uplo"><a href="javascript:void(0);" class="lng_commn_all">Upload Images</a></span>
									<span class="uploader-canc"><a class="dn" id="photoRmAll" href="javascript:void(0);">Remove All</a></span>
								</div>
								
								<div id="photoUploadBoxes" class="loaderimages-box">
									<ul>
										<li class="photoUploadBox">
											<input type="file" size="32" class="pht1 photoInput dn" name="photo[]">
											<span class="loaderimages-img photoAdd">
												<span class="upload-more photoAddBtn"></span>
												<span class="photoAdded dn">
													<span class="uploaded-img"></span>
													<span class="imgdele photoRm"></span>
													<img class="photoImg" src="">
												</span>
											</span>
											<span class="loaderimages-caption photoCaptionContainer">
												<input type="text" onfocus="clear_text_box_val('Enter A Caption For This Image','caption1','onfocus','detail');" onblur="clear_text_box_val('Enter A Caption For This Image','caption1','onblur','detail');" style="color:rgb(189, 189, 189);" name="caption[]" id="caption1" value="Enter A Caption For This Image" class="ecap caption photoCaption">
											</span>
										</li>
										<li class="photoUploadBox">
											<input type="file" size="32" class="pht2 photoInput dn" name="photo[]">
											<span class="loaderimages-img photoAdd">
												<span class="upload-more photoAddBtn"></span>
												<span class="photoAdded dn">
													<span class="uploaded-img"></span>
													<span class="imgdele photoRm"></span>
													<img class="photoImg" src="">
												</span>
											</span>
											<span class="loaderimages-caption photoCaptionContainer">
												<input type="text" onfocus="clear_text_box_val('Enter A Caption For This Image','caption2','onfocus','detail');" onblur="clear_text_box_val('Enter A Caption For This Image','caption2','onblur','detail');" style="color:rgb(189, 189, 189);" name="caption[]" id="caption2" value="Enter A Caption For This Image" class="ecap caption photoCaption">
											</span>
										</li>
										<li class="photoUploadBox">
											<input type="file" size="32" class="pht3 photoInput dn" name="photo[]">
											<span class="loaderimages-img photoAdd">
												<span class="upload-more photoAddBtn"></span>
												<span class="photoAdded dn">
													<span class="uploaded-img"></span>
													<span class="imgdele photoRm"></span>
													<img class="photoImg" src="">
												</span>
											</span>
											<span class="loaderimages-caption photoCaptionContainer">
												<input type="text" onfocus="clear_text_box_val('Enter A Caption For This Image','caption3','onfocus','detail');" onblur="clear_text_box_val('Enter A Caption For This Image','caption3','onblur','detail');" style="color:rgb(189, 189, 189);" name="caption[]" id="caption3" value="Enter A Caption For This Image" class="ecap caption photoCaption">
											</span>
										</li>
									</ul>
								</div>
							</div>
							
						</div>
						<div class="form-group sclicns dn">
																		<input type="hidden" placeholder="Name" value="" id="wrname" name="wrname">
																			<input type="hidden" placeholder="Mobile No." id="wrmob" name="wrmob" value="">
								  										<input type="hidden" id="wremail" value="" name="wremail">
								  </div>
						<div class="upht-imagebr">                         							
						  <div class="uploader-sat">		  
						<ul>
							<li><span>- </span><span class="litx lng_commn_all">Upload photos of "<b>Event U All</b>"</span></li>
							<li><span>- </span><span class="litx lng_commn_all">Please share photos of your experiences there</span></li>
							<li><span>- </span><span class="litx lng_commn_all">Avoid uploading personal/ family photographs taken elsewhere</span></li>
							<li><span>- </span><span class="litx lng_commn_all">Do not upload photos from internet as they cause copyright issues</span></li>
						</ul>
						</div>
						</div>
					</div>
			<div class="col-sm-5 col-xs-5">				
				<button class="sve-btn lng_commn_all" >Submit</button>								
			</div>	
		</div>
	</div>
    </div>
    <div id="menu1" class="tab-pane fade">
	


<!-- Start Tabs -->
<div class="" >
    <ul class="nav nav-tabs dragscroll horizontal">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tabA">All Ratings (34)</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tabB"style="margin-left:150px;">Friends Ratings</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tabC" style="margin-left:100px;">My Ratings </a></li>
       
    </ul>
</div>

<span class="nav-tabs-wrapper-border" role="presentation"></span>

<div class="tab-content">
    <div class="tab-pane fade show active" id="tabA">
        <section id="rvw" style="width:100%;">
			
	<section id="user_graph_div" class="jugundefined" style="display:block">
		<div class="col-md-5">
			<div id="tab_1" style="padding: 15px 0 0;" class="tab_content current">
									<div class="col-md-6 col-sm-6 paddingL0">
						<p class="overRt">
							<span class="jgt lng_commn">Overall Ratings (34)</span>
							<span class="over-rate">
														    		<span class="ms10"></span>
							    								    		<span class="ms10"></span>
							    								    		<span class="ms10"></span>
							    								    		<span class="ms10"></span>
							    								    		<span class="ms3"></span>
							    								</span>
						</p>
						<div class="overlr">
							<img alt="" title="" src="https://chart.googleapis.com/chart?cht=bhs&amp;chs=320x120&amp;chco=FA9C5E&amp;chbh=a,5,15&amp;chds=0,100&amp;chxt=y&amp;chxl=0:|Poor|Average|Good|Very Good|Excellent&amp;chxr=1,0,100,1&amp;chm=N%20*f1*%20%25,000000,0,-1,11|r,FFFFFF,0,-0.01,1|R,FFFFFF,0,0.01,1&amp;chd=t:55.9,23.5,17.6,3,0&amp;chxp=1,10,30,50,70,90&amp;chxtc=1,15&amp;chxs=0,000000,10,-1,t,FFFFFF&amp;chof=gif">
						</div>
					</div>
										</div>
		</div>
	</section>
	
		


<% 
}
	
}
catch (Exception e) {
e.printStackTrace();
}

%>
	<section id="my_graph_div" class="jug" style="display:none"></section>
	<section id="friend_graph_div" class="jug" style="display: none;">
		<div id="allfratings" class="allratingM" style="display: block;"><section id="bftr" class=""><section class="jpbg"><p><span style="font-weight: bold;" class="lng_commn">Login</span> <span class="lng_commn">to view your friends ratings</span></p><a class="jbtn" href="javascript:void(0);" onclick="fn_loginStart();"><span class="lng_commn">Login</span></a></section></section></div>
	</section>
	<div id="allfratings" class="allratingM" style="display: none;"></div>
	<section id="allmratings" class="jurat" style="display:none;">
		<div class="allratingM" style="display: block;"><section id="bftr" class=""><section class="jpbg"><p><span style="font-weight: bold;" class="lng_commn">Login</span> <span class="lng_commn">to view your friends ratings</span></p><a class="jbtn" href="javascript:void(0);" onclick="fn_loginStart();"><span class="lng_commn">Login</span></a></section></section></div>
	</section>
									</section>
    </div>
    <div class="tab-pane fade" id="tabB">
	<div class="panel panel-default" style="width: 45%;margin-left: 220px;">
																<div class="panel-heading">
	<p>Login to view your friend's rating</p>
        <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
</div>
</div>
<div id="id01" class="modal" >
  
  <form class="modal-content animate" action="#">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     
    </div>

    <div class="container">
      
      <input type="text" placeholder="Enter Username" name="uname" required>

     
      <input type="password" placeholder="Enter Password" name="psw" required>
        <br>
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container"style="background-color:#f1f1f1;width:100%;">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
    </div>
    <div class="tab-pane fade" id="tabC">
	<div class="panel panel-default" style="width: 45%;margin-left: 220px;">
																<div class="panel-heading">
	<p>Login to view your friend's rating</p>
           <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Login</button>
</div></div>
<div id="id02" class="modal" >
  
  <form class="modal-content animate" action="#">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
     
    </div>

    <div class="container">
      
      <input type="text" placeholder="Enter Username" name="uname" required>

     
      <input type="password" placeholder="Enter Password" name="psw" required>
        <br>
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container"style="background-color:#f1f1f1;width:100%;">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
    </div>
   
</div>
<!-- End Tabs -->


<script>
(function (factory) {
    "use strict";
    //noinspection JSUnresolvedVariable
    if (typeof define === 'function' && define.amd) { // jshint ignore:line
        // AMD. Register as an anonymous module.
        define(['jquery'], factory); // jshint ignore:line
    } else { // noinspection JSUnresolvedVariable
        if (typeof module === 'object' && module.exports) { // jshint ignore:line
            // Node/CommonJS
            // noinspection JSUnresolvedVariable
            module.exports = factory(require('jquery')); // jshint ignore:line
        } else {
            // Browser globals
            factory(window.jQuery);
        }
    }
}(function ($) {
    "use strict";

    $.fn.ratingLocales = {};
    $.fn.ratingThemes = {};

    var $h, Rating;

    // global helper methods and constants
    $h = {
        NAMESPACE: '.rating',
        DEFAULT_MIN: 0,
        DEFAULT_MAX: 5,
        DEFAULT_STEP: 0.5,
        isEmpty: function (value, trim) {
            return value === null || value === undefined || value.length === 0 || (trim && $.trim(value) === '');
        },
        getCss: function (condition, css) {
            return condition ? ' ' + css : '';
        },
        addCss: function ($el, css) {
            $el.removeClass(css).addClass(css);
        },
        getDecimalPlaces: function (num) {
            var m = ('' + num).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
            return !m ? 0 : Math.max(0, (m[1] ? m[1].length : 0) - (m[2] ? +m[2] : 0));
        },
        applyPrecision: function (val, precision) {
            return parseFloat(val.toFixed(precision));
        },
        handler: function ($el, event, callback, skipOff, skipNS) {
            var ev = skipNS ? event : event.split(' ').join($h.NAMESPACE + ' ') + $h.NAMESPACE;
            if (!skipOff) {
                $el.off(ev);
            }
            $el.on(ev, callback);
        }
    };

    // rating constructor
    Rating = function (element, options) {
        var self = this;
        self.$element = $(element);
        self._init(options);
    };
    Rating.prototype = {
        constructor: Rating,
        _parseAttr: function (vattr, options) {
            var self = this, $el = self.$element, elType = $el.attr('type'), finalVal, val, chk, out;
            if (elType === 'range' || elType === 'number') {
                val = options[vattr] || $el.data(vattr) || $el.attr(vattr);
                switch (vattr) {
                    case 'min':
                        chk = $h.DEFAULT_MIN;
                        break;
                    case 'max':
                        chk = $h.DEFAULT_MAX;
                        break;
                    default:
                        chk = $h.DEFAULT_STEP;
                }
                finalVal = $h.isEmpty(val) ? chk : val;
                out = parseFloat(finalVal);
            } else {
                out = parseFloat(options[vattr]);
            }
            return isNaN(out) ? chk : out;
        },
        _parseValue: function (val) {
            var self = this, v = parseFloat(val);
            if (isNaN(v)) {
                v = self.clearValue;
            }
            return (self.zeroAsNull && (v === 0 || v === '0') ? null : v);
        },
        _setDefault: function (key, val) {
            var self = this;
            if ($h.isEmpty(self[key])) {
                self[key] = val;
            }
        },
        _initSlider: function (options) {
            var self = this, v = self.$element.val();
            self.initialValue = $h.isEmpty(v) ? 0 : v;
            self._setDefault('min', self._parseAttr('min', options));
            self._setDefault('max', self._parseAttr('max', options));
            self._setDefault('step', self._parseAttr('step', options));
            if (isNaN(self.min) || $h.isEmpty(self.min)) {
                self.min = $h.DEFAULT_MIN;
            }
            if (isNaN(self.max) || $h.isEmpty(self.max)) {
                self.max = $h.DEFAULT_MAX;
            }
            if (isNaN(self.step) || $h.isEmpty(self.step) || self.step === 0) {
                self.step = $h.DEFAULT_STEP;
            }
            self.diff = self.max - self.min;
        },
        _initHighlight: function (v) {
            var self = this, w, cap = self._getCaption();
            if (!v) {
                v = self.$element.val();
            }
            w = self.getWidthFromValue(v) + '%';
            self.$filledStars.width(w);
            self.cache = {caption: cap, width: w, val: v};
        },
        _getContainerCss: function () {
            var self = this;
            return 'rating-container' +
                $h.getCss(self.theme, 'theme-' + self.theme) +
                $h.getCss(self.rtl, 'rating-rtl') +
                $h.getCss(self.size, 'rating-' + self.size) +
                $h.getCss(self.animate, 'rating-animate') +
                $h.getCss(self.disabled || self.readonly, 'rating-disabled') +
                $h.getCss(self.containerClass, self.containerClass);
        },
        _checkDisabled: function () {
            var self = this, $el = self.$element, opts = self.options;
            self.disabled = opts.disabled === undefined ? $el.attr('disabled') || false : opts.disabled;
            self.readonly = opts.readonly === undefined ? $el.attr('readonly') || false : opts.readonly;
            self.inactive = (self.disabled || self.readonly);
            $el.attr({disabled: self.disabled, readonly: self.readonly});
        },
        _addContent: function (type, content) {
            var self = this, $container = self.$container, isClear = type === 'clear';
            if (self.rtl) {
                return isClear ? $container.append(content) : $container.prepend(content);
            } else {
                return isClear ? $container.prepend(content) : $container.append(content);
            }
        },
        _generateRating: function () {
            var self = this, $el = self.$element, $rating, $container, w;
            $container = self.$container = $(document.createElement("div")).insertBefore($el);
            $h.addCss($container, self._getContainerCss());
            self.$rating = $rating = $(document.createElement("div")).attr('class', 'rating-stars').appendTo($container)
                .append(self._getStars('empty')).append(self._getStars('filled'));
            self.$emptyStars = $rating.find('.empty-stars');
            self.$filledStars = $rating.find('.filled-stars');
            self._renderCaption();
            self._renderClear();
            self._initHighlight();
            $container.append($el);
            if (self.rtl) {
                w = Math.max(self.$emptyStars.outerWidth(), self.$filledStars.outerWidth());
                self.$emptyStars.width(w);
            }
            $el.appendTo($rating);
        },
        _getCaption: function () {
            var self = this;
            return self.$caption && self.$caption.length ? self.$caption.html() : self.defaultCaption;
        },
        _setCaption: function (content) {
            var self = this;
            if (self.$caption && self.$caption.length) {
                self.$caption.html(content);
            }
        },
        _renderCaption: function () {
            var self = this, val = self.$element.val(), html, $cap = self.captionElement ? $(self.captionElement) : '';
            if (!self.showCaption) {
                return;
            }
            html = self.fetchCaption(val);
            if ($cap && $cap.length) {
                $h.addCss($cap, 'caption');
                $cap.html(html);
                self.$caption = $cap;
                return;
            }
            self._addContent('caption', '<div class="caption">' + html + '</div>');
            self.$caption = self.$container.find(".caption");
        },
        _renderClear: function () {
            var self = this, css, $clr = self.clearElement ? $(self.clearElement) : '';
            if (!self.showClear) {
                return;
            }
            css = self._getClearClass();
            if ($clr.length) {
                $h.addCss($clr, css);
                $clr.attr({"title": self.clearButtonTitle}).html(self.clearButton);
                self.$clear = $clr;
                return;
            }
            self._addContent('clear',
                '<div class="' + css + '" title="' + self.clearButtonTitle + '">' + self.clearButton + '</div>');
            self.$clear = self.$container.find('.' + self.clearButtonBaseClass);
        },
        _getClearClass: function () {
            var self = this;
            return self.clearButtonBaseClass + ' ' + (self.inactive ? '' : self.clearButtonActiveClass);
        },
        _toggleHover: function (out) {
            var self = this, w, width, caption;
            if (!out) {
                return;
            }
            if (self.hoverChangeStars) {
                w = self.getWidthFromValue(self.clearValue);
                width = out.val <= self.clearValue ? w + '%' : out.width;
                self.$filledStars.css('width', width);
            }
            if (self.hoverChangeCaption) {
                caption = out.val <= self.clearValue ? self.fetchCaption(self.clearValue) : out.caption;
                if (caption) {
                    self._setCaption(caption + '');
                }
            }
        },
        _init: function (options) {
            var self = this, $el = self.$element.addClass('rating-input'), v;
            self.options = options;
            $.each(options, function (key, value) {
                self[key] = value;
            });
            if (self.rtl || $el.attr('dir') === 'rtl') {
                self.rtl = true;
                $el.attr('dir', 'rtl');
            }
            self.starClicked = false;
            self.clearClicked = false;
            self._initSlider(options);
            self._checkDisabled();
            if (self.displayOnly) {
                self.inactive = true;
                self.showClear = false;
                self.showCaption = false;
            }
            self._generateRating();
            self._initEvents();
            self._listen();
            v = self._parseValue($el.val());
            $el.val(v);
            return $el.removeClass('rating-loading');
        },
        _initEvents: function () {
            var self = this;
            self.events = {
                _getTouchPosition: function (e) {
                    var pageX = $h.isEmpty(e.pageX) ? e.originalEvent.touches[0].pageX : e.pageX;
                    return pageX - self.$rating.offset().left;
                },
                _listenClick: function (e, callback) {
                    e.stopPropagation();
                    e.preventDefault();
                    if (e.handled !== true) {
                        callback(e);
                        e.handled = true;
                    } else {
                        return false;
                    }
                },
                _noMouseAction: function (e) {
                    return !self.hoverEnabled || self.inactive || (e && e.isDefaultPrevented());
                },
                initTouch: function (e) {
                    //noinspection JSUnresolvedVariable
                    var ev, touches, pos, out, caption, w, width, params, clrVal = self.clearValue || 0,
                        isTouchCapable = 'ontouchstart' in window ||
                            (window.DocumentTouch && document instanceof window.DocumentTouch);
                    if (!isTouchCapable || self.inactive) {
                        return;
                    }
                    ev = e.originalEvent;
                    //noinspection JSUnresolvedVariable
                    touches = !$h.isEmpty(ev.touches) ? ev.touches : ev.changedTouches;
                    pos = self.events._getTouchPosition(touches[0]);
                    if (e.type === "touchend") {
                        self._setStars(pos);
                        params = [self.$element.val(), self._getCaption()];
                        self.$element.trigger('change').trigger('rating:change', params);
                        self.starClicked = true;
                    } else {
                        out = self.calculate(pos);
                        caption = out.val <= clrVal ? self.fetchCaption(clrVal) : out.caption;
                        w = self.getWidthFromValue(clrVal);
                        width = out.val <= clrVal ? w + '%' : out.width;
                        self._setCaption(caption);
                        self.$filledStars.css('width', width);
                    }
                },
                starClick: function (e) {
                    var pos, params;
                    self.events._listenClick(e, function (ev) {
                        if (self.inactive) {
                            return false;
                        }
                        pos = self.events._getTouchPosition(ev);
                        self._setStars(pos);
                        params = [self.$element.val(), self._getCaption()];
                        self.$element.trigger('change').trigger('rating:change', params);
                        self.starClicked = true;
                    });
                },
                clearClick: function (e) {
                    self.events._listenClick(e, function () {
                        if (!self.inactive) {
                            self.clear();
                            self.clearClicked = true;
                        }
                    });
                },
                starMouseMove: function (e) {
                    var pos, out;
                    if (self.events._noMouseAction(e)) {
                        return;
                    }
                    self.starClicked = false;
                    pos = self.events._getTouchPosition(e);
                    out = self.calculate(pos);
                    self._toggleHover(out);
                    self.$element.trigger('rating:hover', [out.val, out.caption, 'stars']);
                },
                starMouseLeave: function (e) {
                    var out;
                    if (self.events._noMouseAction(e) || self.starClicked) {
                        return;
                    }
                    out = self.cache;
                    self._toggleHover(out);
                    self.$element.trigger('rating:hoverleave', ['stars']);
                },
                clearMouseMove: function (e) {
                    var caption, val, width, out;
                    if (self.events._noMouseAction(e) || !self.hoverOnClear) {
                        return;
                    }
                    self.clearClicked = false;
                    caption = '<span class="' + self.clearCaptionClass + '">' + self.clearCaption + '</span>';
                    val = self.clearValue;
                    width = self.getWidthFromValue(val) || 0;
                    out = {caption: caption, width: width, val: val};
                    self._toggleHover(out);
                    self.$element.trigger('rating:hover', [val, caption, 'clear']);
                },
                clearMouseLeave: function (e) {
                    var out;
                    if (self.events._noMouseAction(e) || self.clearClicked || !self.hoverOnClear) {
                        return;
                    }
                    out = self.cache;
                    self._toggleHover(out);
                    self.$element.trigger('rating:hoverleave', ['clear']);
                },
                resetForm: function (e) {
                    if (e && e.isDefaultPrevented()) {
                        return;
                    }
                    if (!self.inactive) {
                        self.reset();
                    }
                }
            };
        },
        _listen: function () {
            var self = this, $el = self.$element, $form = $el.closest('form'), $rating = self.$rating,
                $clear = self.$clear, events = self.events;
            $h.handler($rating, 'touchstart touchmove touchend', $.proxy(events.initTouch, self));
            $h.handler($rating, 'click touchstart', $.proxy(events.starClick, self));
            $h.handler($rating, 'mousemove', $.proxy(events.starMouseMove, self));
            $h.handler($rating, 'mouseleave', $.proxy(events.starMouseLeave, self));
            if (self.showClear && $clear.length) {
                $h.handler($clear, 'click touchstart', $.proxy(events.clearClick, self));
                $h.handler($clear, 'mousemove', $.proxy(events.clearMouseMove, self));
                $h.handler($clear, 'mouseleave', $.proxy(events.clearMouseLeave, self));
            }
            if ($form.length) {
                $h.handler($form, 'reset', $.proxy(events.resetForm, self), true);
            }
            return $el;
        },
        _getStars: function (type) {
            var self = this, stars = '<span class="' + type + '-stars">', i;
            for (i = 1; i <= self.stars; i++) {
                stars += '<span class="star">' + self[type + 'Star'] + '</span>';
            }
            return stars + '</span>';
        },
        _setStars: function (pos) {
            var self = this, out = arguments.length ? self.calculate(pos) : self.calculate(), $el = self.$element,
                v = self._parseValue(out.val);
            $el.val(v);
            self.$filledStars.css('width', out.width);
            self._setCaption(out.caption);
            self.cache = out;
            return $el;
        },
        showStars: function (val) {
            var self = this, v = self._parseValue(val);
            self.$element.val(v);
            return self._setStars();
        },
        calculate: function (pos) {
            var self = this, defaultVal = $h.isEmpty(self.$element.val()) ? 0 : self.$element.val(),
                val = arguments.length ? self.getValueFromPosition(pos) : defaultVal,
                caption = self.fetchCaption(val), width = self.getWidthFromValue(val);
            width += '%';
            return {caption: caption, width: width, val: val};
        },
        getValueFromPosition: function (pos) {
            var self = this, precision = $h.getDecimalPlaces(self.step), val, factor, maxWidth = self.$rating.width();
            factor = (self.diff * pos) / (maxWidth * self.step);
            factor = self.rtl ? Math.floor(factor) : Math.ceil(factor);
            val = $h.applyPrecision(parseFloat(self.min + factor * self.step), precision);
            val = Math.max(Math.min(val, self.max), self.min);
            return self.rtl ? (self.max - val) : val;
        },
        getWidthFromValue: function (val) {
            var self = this, min = self.min, max = self.max, factor, $r = self.$emptyStars, w;
            if (!val || val <= min || min === max) {
                return 0;
            }
            w = $r.outerWidth();
            factor = w ? $r.width() / w : 1;
            if (val >= max) {
                return 100;
            }
            return (val - min) * factor * 100 / (max - min);
        },
        fetchCaption: function (rating) {
            var self = this, val = parseFloat(rating) || self.clearValue, css, cap, capVal, cssVal, caption,
                vCap = self.starCaptions, vCss = self.starCaptionClasses;
            if (val && val !== self.clearValue) {
                val = $h.applyPrecision(val, $h.getDecimalPlaces(self.step));
            }
            cssVal = typeof vCss === "function" ? vCss(val) : vCss[val];
            capVal = typeof vCap === "function" ? vCap(val) : vCap[val];
            cap = $h.isEmpty(capVal) ? self.defaultCaption.replace(/\{rating}/g, val) : capVal;
            css = $h.isEmpty(cssVal) ? self.clearCaptionClass : cssVal;
            caption = (val === self.clearValue) ? self.clearCaption : cap;
            return '<span class="' + css + '">' + caption + '</span>';
        },
        destroy: function () {
            var self = this, $el = self.$element;
            if (!$h.isEmpty(self.$container)) {
                self.$container.before($el).remove();
            }
            $.removeData($el.get(0));
            return $el.off('rating').removeClass('rating rating-input');
        },
        create: function (options) {
            var self = this, opts = options || self.options || {};
            return self.destroy().rating(opts);
        },
        clear: function () {
            var self = this, title = '<span class="' + self.clearCaptionClass + '">' + self.clearCaption + '</span>';
            if (!self.inactive) {
                self._setCaption(title);
            }
            return self.showStars(self.clearValue).trigger('change').trigger('rating:clear');
        },
        reset: function () {
            var self = this;
            return self.showStars(self.initialValue).trigger('rating:reset');
        },
        update: function (val) {
            var self = this;
            return arguments.length ? self.showStars(val) : self.$element;
        },
        refresh: function (options) {
            var self = this, $el = self.$element;
            if (!options) {
                return $el;
            }
            return self.destroy().rating($.extend(true, self.options, options)).trigger('rating:refresh');
        }
    };

    $.fn.rating = function (option) {
        var args = Array.apply(null, arguments), retvals = [];
        args.shift();
        this.each(function () {
            var self = $(this), data = self.data('rating'), options = typeof option === 'object' && option,
                theme = options.theme || self.data('theme'), lang = options.language || self.data('language') || 'en',
                thm = {}, loc = {}, opts;
            if (!data) {
                if (theme) {
                    thm = $.fn.ratingThemes[theme] || {};
                }
                if (lang !== 'en' && !$h.isEmpty($.fn.ratingLocales[lang])) {
                    loc = $.fn.ratingLocales[lang];
                }
                opts = $.extend(true, {}, $.fn.rating.defaults, thm, $.fn.ratingLocales.en, loc, options, self.data());
                data = new Rating(this, opts);
                self.data('rating', data);
            }

            if (typeof option === 'string') {
                retvals.push(data[option].apply(data, args));
            }
        });
        switch (retvals.length) {
            case 0:
                return this;
            case 1:
                return retvals[0] === undefined ? this : retvals[0];
            default:
                return retvals;
        }
    };

    $.fn.rating.defaults = {
        theme: '',
        language: 'en',
        stars: 5,
        filledStar: '<i class="glyphicon glyphicon-star"></i>',
        emptyStar: '<i class="glyphicon glyphicon-star-empty"></i>',
        containerClass: '',
        size: 'md',
        animate: true,
        displayOnly: false,
        rtl: false,
        showClear: true,
        showCaption: true,
        starCaptionClasses: {
            0.5: 'label label-danger badge-danger',
            1: 'label label-danger badge-danger',
           1.5: 'label label-warning badge-warning',
            2: 'label label-warning badge-warning',
           2.5: 'label label-info badge-info',
    	   3: 'label label-info badge-info',
            3.5: 'label label-primary badge-primary',
         	  4: 'label label-primary badge-primary',
            4.5: 'label label-success badge-success',
            5: 'label label-success badge-success'
        },
        clearButton: '<i class="glyphicon glyphicon-minus-sign"></i>',
        clearButtonBaseClass: 'clear-rating',
        clearButtonActiveClass: 'clear-rating-active',
        clearCaptionClass: 'label label-default',
        clearValue: null,
        captionElement: null,
        clearElement: null,
        hoverEnabled: true,
        hoverChangeCaption: true,
        hoverChangeStars: true,
        hoverOnClear: true,
        zeroAsNull: true
    };
  $.fn.ratingLocales.en = {
        defaultCaption: '{rating} Stars',
        starCaptions: {
            0.5: 'Half Star',
            1: 'One Star',
            1.5: 'One & Half Star',
            2: 'Two Stars',
            2.5: 'Two & Half Stars',
            3: 'Three Stars',
            3.5: 'Three & Half Stars',
            4: 'Four Stars',
            4.5: 'Four & Half Stars',
            5: 'Five Stars'
        },
        clearButtonTitle: 'Clear',
        clearCaption: 'Not Rated'
    };

    $.fn.rating.Constructor = Rating;

    /**
     * Convert automatically inputs with class 'rating' into Krajee's star rating control.
     */
    $(document).ready(function () {
        var $input = $('input.rating');
        if ($input.length) {
            $input.removeClass('rating-loading').addClass('rating-loading').rating();
        }
    });
}));

</script>
	<script>
	(function (root, factory) {
    if (typeof define === 'function' && define.amd) {
        define(['exports'], factory);
    } else if (typeof exports !== 'undefined') {
        factory(exports);
    } else {
        factory((root.dragscroll = {}));
    }
}(this, function (exports) {
    var _window = window;
    var _document = document;
    var mousemove = 'mousemove';
    var mouseup = 'mouseup';
    var mousedown = 'mousedown';
    var EventListener = 'EventListener';
    var addEventListener = 'add'+EventListener;
    var removeEventListener = 'remove'+EventListener;
    var newScrollX, newScrollY;

    var dragged = [];
    var reset = function(i, el) {
        for (i = 0; i < dragged.length;) {
            el = dragged[i++];
            el = el.container || el;
            el[removeEventListener](mousedown, el.md, 0);
            _window[removeEventListener](mouseup, el.mu, 0);
            _window[removeEventListener](mousemove, el.mm, 0);
        }
   // cloning into array since HTMLCollection is updated dynamically
        dragged = [].slice.call(_document.getElementsByClassName('dragscroll'));
        for (i = 0; i < dragged.length;) {
            (function(el, lastClientX, lastClientY, pushed, scroller, cont){
                (cont = el.container || el)[addEventListener](
                    mousedown,
                    cont.md = function(e) {
                        if (!el.hasAttribute('nochilddrag') ||
                            _document.elementFromPoint(
                                e.pageX, e.pageY
                            ) == cont
                        ) {
                            pushed = 1;
                            lastClientX = e.clientX;
                            lastClientY = e.clientY;

                            e.preventDefault();
                        }
                    }, 0
                );
           _window[addEventListener](
                    mouseup, cont.mu = function() {pushed = 0;}, 0
                );
                _window[addEventListener](
                    mousemove,
                    cont.mm = function(e) {
                        if (pushed) {
                            (scroller = el.scroller||el).scrollLeft -=
                                newScrollX = (- lastClientX + (lastClientX=e.clientX));
                            scroller.scrollTop -=
                                newScrollY = (- lastClientY + (lastClientY=e.clientY));
                            if (el == _document.body) {
                                (scroller = _document.documentElement).scrollLeft -= newScrollX;
                                scroller.scrollTop -= newScrollY;
                            }
                        }
                    }, 0
                );
             })(dragged[i++]);
        }
    }
   
    if (_document.readyState == 'complete') {
        reset();
    } else {
        _window[addEventListener]('load', reset, 0);
    }

    exports.reset = reset;
}));
</script>
     
    </div>
    
  </div>
</div>
</div>
</div>
	</div>
	

	<footer class="footer">
			<div class="container">
				<div id="ctyovrly" class="ctyovrly"></div>
				<div class="main-footer">
					<div class="sec-1 col-sm-12 hidden-xs padding0">
						<div class="left-sec-1 col-sm-10 col-md-10 padding0">

								&nbsp;<a onclick="_ct('werhrng', 'dtpg');" href="" id="f_werh" title="We're hiring">We're hiring</a>
								&nbsp;<a id="f_custcare" onclick="_ct('ftcustcare', 'dtpg');" href="" title="Customer care">Customer care</a>
								&nbsp;<a id="f_adv" onclick="_ct('bads', 'dtpg');" href="" title="Advertise">Advertise</a>
								<a id="f_abut_us" onclick="_ct('ftabtus', 'dtpg');" href="" title="About us">About us</a>
								&nbsp;<a id="f_media" onclick="_ct('ftprs', 'dtpg');" href="" title="Media">Media</a>
								&nbsp;<a id="f_testi" href="javascript:void(0);" onclick="getTestimonials();
										_ct('jdtest', 'dtpg');" title="Testimonial">Testimonials</a>
								<!-- <li><a href="https://www.justdial.com/feedback" data-toggle="modal" data-target="" onclick="_ct('lnkfeedback', 'dtpg');" title="Feedback">Feedback</a></li> -->
								&nbsp;<a  id="f_feed" href="javascript:void(0);" data-toggle="modal" data-target="#cms_contactus_popup" onclick="_ct('lnkfeedback', 'dtpg');" title="Feedback">Feedback</a>
								&nbsp;<a id="f_bwigt" onclick="_ct('bdgsss', 'dtpg');" href="" title="Business Badge">Business Badge</a>
							
						</div>
						
					</div>

					
				
					
		<!-- #Footer Hotkeys Ends-->
								
					<div class="sec-4 col-sm-12">
						<div class="cpy-rgt col-sm-12 col-md-12 text-center">
							<p class="col-xs-12"><span id="f_cpyrt">Copyrights 2008-18. All Rights Reserved. </span><a id="f_plcy" href="">Privacy</a> | <a href="" id="f_trms"> Terms</a> | <a id="f_infrm" href=""> Infringement</a>
																| 
									<span id="f_vjd">View Just Dial on </span><a href=""><span id="f_smfn">Smartphone</span></a>| <a onclick="_ct('wap', 'dtpg');" href=""><span id="f_vmbl">Mobile</span></a>

									</p>
						</div>

					</div>
				</div>
		<!-- /* User Login */ -->
<section role="dialog" tabindex="1" id="jul" class="modal modal-container fade">
	<div role="document" class="modal-dialog modal-sm">
		<div class="modal-content">
		  <div class="modal-header p-15">
			<button aria-label="Close" data-dismiss="modal" class="close" type="button"><span aria-hidden="true">&times;</span></button>
			<span class="modal-title" id="lgn_lg"><b>Login</b></span>
		  </div>		  
		  <div class="modal-body paddT0">
				<form class="wrapper">
					<div class="error dn wrapper" id="iup">Invalid username or Password</div>
					<div class="wrapper mb-15 ">
						<label class="modal-label" id="lgn_mob" for="em">Mobile</label>
						<div class="modal-input-group input-group">
							<span class="input-group-addon" id="">+91</span>
							<input type="tel" value="" id="em" name="em" class="form-control modal-input"  maxlength="10">
						</div>
					</div>
					<div class="wrapper mb-15">
						<label class="modal-label" id="lgn_pass" for="pass">Password</label>
						<div class="modal-input-group">
							<input type="password" size="20" onkeydown="jd_Login(event);" value="" id="pass" name="pass" class="form-control modal-input">
						</div>
					</div>
					<input type="hidden" name="viaMod" id="viaMod" value='' />
					<input type="hidden" name="from" id="from"/>
					<div class="wrapper mb-20 text-center">
						<input type="hidden" id="fvrtgo" value="">
						<span class="pull-left"><a id="fgp_pass" class="forgtlnk" onclick="hideshowPopUp('jul','jfp','3000');" href="javascript:void(0)">Forgot Password?</a></span>
						<button class="pull-right btn btn-primary modal-button-small" id="lgn_smt" onclick="jd_Login(13);" type="button">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<section class="modal-container fade modal" id="jfp" tabindex="1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div id="fp1">
			<div class="modal-header p-10">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span  aria-hidden="true">&times;</span></button>
				<span class="modal-title" id="lgn_fpass">Forgot Your Password</span>
			</div>
			<div class="modal-body">
				<div class="wrapper mb-15">
					<label class="modal-label" id="lgn_entpass">Please enter your mobile number</label>
					<div class="modal-input-group input-group">
						<span id="" class="input-group-addon">+91</span>
						<input type="tel" class="form-control modal-input" name="flid" id="flid" value="" >
					</div>
					<span class="modal-error" id="fpcE"></span>
				</div>
				<div class="wrapper">
					<label class="modal-label wrapper" id="lng_cod">Enter the code as displayed in the image below (not case sensitive)</label>
					<div class="modal-input-group input-group wrapper">
						<span class="captcha" id="divCaptchCode"></span>
						<input type="text" class="form-control modal-input" id="captcha_code" name="captcha_code">
					</div>
					<span class="wrapper modal-label"><span id="fg_unbl"> Unable to view the image, to reload </span>
						<a href="#" onclick="document.getElementById('captcha').src = 'https://www.justdial.com/securimage/securimage_show.php?' + Math.random(); return false"><span id="lgn_chr">click here</span></a>
					</span>
					<span class="modal-error" id="fpcErs"></span>
				</div>
			</div>
			<div class="modal-footer text-center">
				<button type="button" id="fgp_sbmt" class="btn btn-primary modal-button" onclick="submitForgotPassword();">Submit</button>
			</div>
		</div>
		<!--otp-->
<div class="modal-header p-10 urstnoptwpr dn" id='fp2'>

	<span class="usrstnspn">
	          <span class="frgtpwd pwdlck"></span>
			  <span>verification</span>
			  <!--<a href="#" class="frgtpwd crsbtnwp pull-right"></a>-->
			  <button aria-label="Close" data-dismiss="modal" class="close" type="button"><span aria-hidden="true">Ã—</span></button>
			</span>
		
		<div class="jdpaswdauth">
			<div class="jdfrgtmpswd" id='contactInfo'>
				<span class="jdfrgtpswdwpr dn" id="OTP_0">		
				<span class="modal-error" id='otpErr'></span>
                    <span class="entrvrftn">Enter verification code sent on +91 <span id='mbVal'></span></span>				
					<span class="entrotpwpr">
						<input type='text' class="entrotp" id="entrotp_0" name="entrotp_0" placeholder="" maxlength="3" onkeyup="shiftFocusToNextTextBox('entrotp_0','entrotp_1');" onkeydown="keyEvent(event);"/>
						<span class="hyphn">-</span>
						<input type='text' class="entrotp" id="entrotp_1" name="entrotp_1" placeholder="" maxlength="3" onkeydown="validateOTP('0',event);" />
						<span class="jdsndotpwp">
						  <a href="javascript:void(0);" onclick="validateOTP('0',13);" class="btn btn-jdsndotp">Submit</a>
						</span>  
					</span>
					<input type="hidden" id="userMobile_0" value="" />
				</span>
			</div>
			<span class="jdfrgtxt dn" id='resndlk'>
				<a href='javascript:void(0);' onclick="sendOPT('resend');">Re-send verification code</a>
			</span>
		 </div>
	</div>
	
	<div id='new_pass' class="dn" >
	<div class="modal-header p-10">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã—</span></button>
				<span class="modal-title ">Change Password</span>
	</div>
		<div class="modal-body">
			<form role="form">
				<span class='frtpwderr col-xs-12 padding0 text-left cstmgn' id='pwdErr'></span>
				<div class="form-group sclicns cstpadng cstmrgn">
				    <label for="pwd1" class="pswdlbtxt">New Password</label>
					<input type="password" onkeyup="chkPass();" id='pwd1' class="form-control" placeholder="">
				</div>
				<div class="form-group sclicns cstpadng cstmrgn">
				    <label for="pwd2" class="pswdlbtxt rentrpwdwp">
					   <span>Re-enter Password</span>					   
					</label>
					<input type="password" id='pwd2' class="form-control" placeholder="" onkeydown='changePwd(event);'>					
				</div>
				<div class="col-xs-12 padding0 pastrnthwp">
                <div class="padding0 col-xs-8">
				<span class="paswdstngh pwdstngh dn" id='weak'>
					<span class="pwdftshwpr">
						<span class="pswdftstn">Password Strength: <span class="pswdftsts">Weak</span></span>
						<span class="strnwpr">
							<span class="pswdftwk"></span>
						</span>
					</span>
				</span>
				
				<span class="paswdstngh pwdstngh dn" id='medium'>
					<span class="pwdftshwpr">
						<span class="pswdftstn">Password Strength: <span class="pswdftsts">Medium</span></span>
						<span class="strnwpr">
							<span class="pswdftmd"></span>
						</span>
					</span>
				</span>
				
				<span class="paswdstngh pwdstngh dn" id='strong'>
					<span class="pwdftshwpr">
						<span class="pswdftstn">Password Strength: <span class="pswdftsts">Strong</span></span>
						<span class="strnwpr">
							<span class="pswdftstg"></span>
						</span>
					</span>
				</span>
				</div>
				</div>
				<div class="modal-footer text-center">
				<input type="hidden" id='mo' value='' />
				<a href='javascript:void(0);' onclick='changePwd(13);' class="btn btn-primary modal-button">Submit</a>
				</div>
			  </div>	
			</form>
	</div>
	<div class="col-sm-12 col-xs-12 urstnoptwpr dn" id='fp3'>
	<div class="modal-header p-10">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span  aria-hidden="true">&times;</span></button>
				<span class="modal-title ">Change Password</span>
			</div>
		<div class="jdpaswdauth">
			<div class="col-sm-12 col-xs-12 chgscswpr">
				<img src="//akam.cdn.jdmagicbox.com/images/icontent/jdrwd_new/tickmark.png"  class="chng_tickimg" alt="">
				    <span class="pwdscs">Your password has been changed successfully</span>
			</div>
		 </div>
		 <div class="modal-footer text-center">
			<button type="button" class="btn btn-primary modal-button cstmrgn" data-dismiss="modal" aria-label="Close">Done</button>
		</div>
	</div> 

		</div>
	</div>
</section>

<section class="modal-container modal fade" id="password_reset" tabindex="1" role="dialog">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="wrapper p-10">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
				<span class="modal-title text-center">Forgot Password</span>
				<p class="text-center" id="smsg"></p>
			</div>
			<div class="wrapper mb-20 text-center">
				<button type="button" class="btn btn-primary modal-button-small" onclick="hideshowPopUp('password_reset','','3000');">Ok</button>
				<input type="hidden" id="redirectToRegister" value="">
			</div>
		</div>
	</div>
</section>


<!-- /* Switch Profile */ -->


 

<!-- Contactus Popup Modal Start -->

<!-- Contactus Popup Modal End-->

								
			</div>
		</footer>
	</body>
	</html>