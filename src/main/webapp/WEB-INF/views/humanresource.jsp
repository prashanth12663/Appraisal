<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Sonata</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="resources/images/favicon.ico" type="resources/image/x-icon">
<script src="resources/vendors/jquery/jquery.min.js"></script>
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<script src="resources/vendors/bootstrap/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/vendors/fontawesome/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/styles.css">
<script>
        $(document).ready(function () {
            $('.table-action div.empActionTabs').hide();
            $(".add-salbands").click(function(){
            var hcc = "<input type='text' class='form-control' id=''/>";
            var max1 ="<input type='text' class='form-control' id=''/>";
            var min1 ="<input type='text' class='form-control' id=''/>";
            var max2 ="<input type='text' class='form-control' id=''/>";
            var min2 ="<input type='text' class='form-control' id=''/>";
            var max3 ="<input type='text' class='form-control' id=''/>";
            var min3 ="<input type='text' class='form-control' id=''/>";
            var max4 ="<input type='text' class='form-control' id=''/>";
            var min4 ="<input type='text' class='form-control' id=''/>";
            var delete_sal ="<a href=">Delete</a>";
            var markup = "<tr><td>" + hcc + "</td><td>" + max1 + "</td><td>" + min1 + "</td><td>" + max2 + "</td><td>" + min2 + "</td><td>" + max3 + "</td><td>" + min3 + "</td><td>" + max4 + "</td><td>" + min4 + "</td><td>" + delete_sal + "</td></tr>";
            $("table.salband-table tbody").append(markup);
        });
        $(".add-clusters").click(function(){
            var cluster = "<input type='text' class='form-control' id=''/>";
            var role ="<input type='text' class='form-control' id=''/>";
            var typgrade ="<input type='text' class='form-control' id=''/>";
            var clusterrow = "<tr><td>" + cluster + "</td><td>" + role + "</td><td>" + typgrade + "</td></tr>";
            $("table.clusters-table tbody").append(clusterrow);
        });
            $('tr.row_main').click(function () {

                var toggleDiv = $(this).next('tr').find('.table-action .empActionTabs');

                if (toggleDiv.is(':visible')) {
                    toggleDiv.slideUp();
                    // Other stuff to do on slideUp
                } else {
                    $('.table-action div.empActionTabs').slideUp();
                    toggleDiv.slideDown();
                    // Other stuff to down on slideDown
                }
            });           
        });
        

    </script>
</head>
<body>

	<div class="">
		<header>
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#myNavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="http://www.sonata-software.com/"><img
							src="media/images/logo.png" title="Sonata Software" /></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#"><i class="fa fa-user-circle-o"
									aria-hidden="true"></i> Welcome XYZ </a></li>
							<li><a class="navdivider">|</a></li>
							<li><a href="#"><i class="fa fa-sign-out"
									aria-hidden="true"></i> Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<div class="empDboardCont">
			<div class="container">
				<div class="well">
					<h1>Title</h1>
					<div class="empActionTabs">
						<ul class="nav nav-pills">
							<li class="active"><a data-toggle="pill" href="#home">HR
									Admin</a></li>
							<li><a data-toggle="pill" href="#menu1">Managers</a></li>
							<li><a data-toggle="pill" href="#salbands">Salary Bands</a></li>
							<li><a data-toggle="pill" href="#clusters">Clusters</a></li>
							<li><a data-toggle="pill" href="#othertables">Other
									Details</a></li>
							<li><a data-toggle="pill" href="#hraction">Action</a></li>
						</ul>
				
						<div class="tab-content hrtab-cont">
						
							<div id="home" class="tab-pane fade in active">
							<form:form action="savefile" method="post" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-12">
										<div class="clearfix"></div>
										<div class="col-md-6">
											<div class="table-responsive">
											
												<table class="table hr-table">
													<thead>
														<tr>
															<th>Type & Years Completed</th>
															<th>Kitty Allocated(in Lakhs)</th>
														</tr>
													</thead>
													 <tbody>
														<tr>
															<td>ETG 1 year(s)</td>
															<td><input type="text" name="etgOne" class="form-control" />
															</td>
														</tr>
														 <tr>
															<td>ETG 2 year(s)</td>
															<td><input type="text" name="etgTwo" class="form-control" />
															</td>
														</tr>
														<tr>
															<td>ETG 3 year(s)</td>
															<td><input type="text" name="etgThree" class="form-control" />
															</td>
														</tr>
														<tr>
															<td>ETG 4 year(s)</td>
															<td><input type="text" name="etgFour" class="form-control" />
															</td>
														</tr>
														<tr>
															<td>ETG 5 year(s)</td>
															<td><input type="text" name="etgFive" class="form-control" />
															</td>
														</tr>
													</tbody> 
												</table>
											</div>
											
														 <input type="file" name="file" />  
														<input type="submit" value="Upload File"/>  
											
										</div>
									</div>
								</div>
							</form:form>
							</div>
							
							<div id="menu1" class="tab-pane fade">
								<div class="row">
									<div class="col-md-8">
										<div class="table-responsive">
											<table class="table kitty-mgrtable">
												<thead>
													<tr>
														<th>Manager Name</th>
														<th>Total Kitty Allocated</th>
														<th>Kitty Utilized</th>
														<th>Kitty Remaining</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>XYZ</td>
														<td><span>1000000</span></td>
														<td><span>600000</span></td>
														<td><span>400000</span></td>
													</tr>
													<tr>
														<td>XYZ1</td>
														<td><span>1000000</span></td>
														<td><span>600000</span></td>
														<td><span>400000</span></td>
													</tr>
													<tr>
														<td>XYZ2</td>
														<td><span>1000000</span></td>
														<td><span>600000</span></td>
														<td><span>400000</span></td>
													</tr>
													<tr>
														<td>XYZ3</td>
														<td><span>1000000</span></td>
														<td><span>600000</span></td>
														<td><span>400000</span></td>
													</tr>
													<tr>
														<td>XYZ4</td>
														<td><span>1000000</span></td>
														<td><span>600000</span></td>
														<td><span>400000</span></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div id="salbands" class="tab-pane fade">
							aaaaaaaaaaaaaaa
							<%@include file="../jspf/salary.jspf"%>
							bbbbbbbbbbbbbb
							</div>
							<div id="clusters" class="tab-pane fade">
								<div class="row">
									<div class="col-md-4">
										<div class="table-responsive">
											<table class="table clusters-table">
												<thead>
													<tr>
														<th>Cluster</th>
														<th>Role</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td><input type="text" id="" class="form-control" /></td>
													</tr>
													<tr>
														<td>2</td>
														<td><input type="text" id="" class="form-control" /></td>
													</tr>
													<tr>
														<td>3</td>
														<td><input type="text" id="" class="form-control" /></td>
													</tr>
													<tr>
														<td>4</td>
														<td><input type="text" id="" class="form-control" /></td>
													</tr>
													<tr>
														<td>5</td>
														<td><input type="text" id="" class="form-control" /></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="hr-submit-btn">
											<button class="btn btn-primary add-clusters" type="button">
												<i class="fa fa-plus-circle" aria-hidden="true"></i> Add Row
											</button>
											<button class="btn btn-success pull-right">Submit</button>
										</div>
									</div>
								</div>
							</div>
							<div id="othertables" class="tab-pane fade">
								<div class="row">
									<div class="">
										<div class="col-md-8">
											<h3>Determination of Benchmark Salary</h3>
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th></th>
															<th colspan="3">CBF Level</th>
														</tr>
														<tr>
															<th>Perf Category</th>
															<th>1</th>
															<th>2</th>
															<th>3</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td><input type="text" class="form-control" /></td>
															<td><input type="text" class="form-control" /></td>
															<td><input type="text" class="form-control" /></td>
														</tr>
														<tr>
															<td>2</td>
															<td><input type="text" class="form-control" /></td>
															<td><input type="text" class="form-control" /></td>
															<td><input type="text" class="form-control" /></td>
														</tr>
														<tr>
															<td>3</td>
															<td><input type="text" class="form-control" /></td>
															<td><input type="text" class="form-control" /></td>
															<td><input type="text" class="form-control" /></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="hr-submit-btn">
												<button class="btn btn-success pull-right">Submit</button>
											</div>
										</div>
										<div class="">
											<div class="col-md-8">
												<h3>Weighted Increase for Below</h3>
												<div class="table-responsive">
													<table class="table">
														<thead>
														<tr>
														    <th></th>
														    <th colspan="8">Weighted % Increment</th>
														    </tr>
															<tr>
																<th>Perf Category</th>
																<th>-30%</th>
																<th>-20%</th>
																<th>-10%</th>
																<th>10%</th>
																<th>20%</th>
																<th>30%</th>
																<th>40%</th>
																<th>50%</th>															
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
															</tr>
															<tr>
																<td>2</td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
															</tr>
															<tr>
																<td>3</td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
															</tr>
															<tr>
																<td>4</td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
																<td><input type="text" class="form-control" /></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="hr-submit-btn">
													<button class="btn btn-success pull-right">Submit</button>
												</div>
											</div>
										</div>										
										<div class="">
											<div class="col-md-8">
												<h3>Grade / Promotion Matrix</h3>
												<div class="table-responsive">
													<table class="table">
														<thead>
															<tr>
																<th></th>
																<th colspan="3">Comp Level</th>
															</tr>
															<tr>
																<th>Cluster</th>
																<th>1</th>
																<th>2</th>
																<th>3</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>1</td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
															</tr>
															<tr>
																<td>2</td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
															</tr>
															<tr>
																<td>3</td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
																<td><select class="form-control" id="">
																		<option>Select</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>A3</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>B3</option>
																		<option>C1</option>
																		<option>C2</option>
																		<option>C3</option>
																		<option>D1</option>
																		<option>D2</option>
																		<option>D3</option>
																		<option>E1</option>
																		<option>E2</option>
																		<option>E3</option>
																		<option>F1</option>
																		<option>F2</option>
																		<option>F3</option>
																</select></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="hr-submit-btn">
													<button class="btn btn-success pull-right">Submit</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="hraction" class="tab-pane fade">
								<div class="table-responsive">
									<table class="table table-hover emp-table">
										<thead>
											<tr>
												<th>S. No</th>
												<th>Employee Name</th>
												<th>Employee ID</th>
												<th>Grade</th>
												<th>Project</th>
												<th>Manager</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<tr class="row_main">
												<td>1</td>
												<td>Vidya</td>
												<td>12644</td>
												<td>A1</td>
												<td>Rezopia</td>
												<td>Pravin Pandey</td>
												<td class="status"><span class="closed">Closed</span></td>
											</tr>
											<tr>
												<td class="table-action" colspan="7">
													<div class="empActionTabs">
														<div class="row">
															<div class="col-md-12">
																<h3>Personal Details</h3>
																<form>
																	<div class="row">
																		<div class="form-group col-md-3">
																			<label>Employee Id</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Employee Name</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Date of Joining</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Current Grade</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>HCC</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Project Name</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Project Manager</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Type & Years Completed</label> <input
																				type="text" class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Current CTC</label> <input type="text"
																				class="form-control">
																		</div>
																	</div>
																</form>
															</div>
															<div class="col-md-12">
																<h3>Advice Details</h3>
																<form>
																	<div class="row">
																		<div class="form-group col-md-3">
																			<label>Current CTC</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>CBF Role</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Role Cluster</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>CBF Level</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Performance Category</label> <input
																				type="text" class="form-control">
																		</div>
																		<div class="col-md-12">
																			<hr />
																		</div>


																		<div class="form-group col-md-3">
																			<label>Min</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Max</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Kitty</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Benchmark Salary</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-4">
																			<label>% inc required to reach Benchmark</label> <input
																				type="text" class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Range</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Sub-Range</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="col-md-12">
																			<hr />
																		</div>
																		<div class="form-group col-md-3">
																			<label>Wtd % Increment</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Wtd Increment</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>New CTC</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Final % Increment</label> <select
																				class="form-control">
																				<option>1%</option>
																				<option>2%</option>
																				<option>3%</option>
																				<option>4%</option>
																			</select>
																		</div>
																		<div class="form-group col-md-3">
																			<label>New Increment</label> <input type="number"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Revised CTC</label> <input type="number"
																				class="form-control">
																		</div>
																		<div class="col-md-12">
																			<hr />
																		</div>
																		<div class="form-group col-md-4">
																			<label>Recommend for Special Bonus(Amount)</label> <input
																				type="number" class="form-control">
																		</div>
																		<div class="form-group col-md-4">
																			<label>Reason For Change</label>
																			<textarea class="form-control" rows="3"></textarea>
																		</div>
																		<div class="form-group col-md-4">
																			<label>Reason for Special Bonus</label>
																			<textarea class="form-control" rows="3"></textarea>
																		</div>
																		<div class="col-md-12">
																			<hr />
																		</div>
																		<div class="form-group col-md-3">
																			<label>Current Grade</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Maximum Grade</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Promotion Recommendation</label> <input
																				type="text" class="form-control">
																		</div>
																		<div class="form-group col-md-3">
																			<label>Revised Grade</label> <input type="text"
																				class="form-control">
																		</div>
																		<div class="col-md-12">
																			<hr />
																		</div>
																		<div class="form-group col-md-4">
																			<label>Approver justification</label>
																			<textarea class="form-control" rows="3"></textarea>
																		</div>
																	</div>
																</form>
															</div>

															<div class="hr-submit-btn col-md-12">
																<button class="btn btn-success pull-right">Submit</button>
															</div>
														</div>
													</div>
													</div>
												</td>
											</tr>
											<tr class="row_main">
												<td>2</td>
												<td>Rashmi</td>
												<td>12643</td>
												<td>A1</td>
												<td>GCG</td>
												<td>ABC</td>
												<td class="status"><span class="pending">Pending</span></td>
											</tr>
											<tr>
												<td colspan="7" class="table-action">
													<div class="empActionTabs">bhgjn</div>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Lakshmi</td>
												<td>12656</td>
												<td>A1</td>
												<td>B2C</td>
												<td>XYZ</td>
												<td class="status"><span class="inprogress">In
														Progress</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<h4>Services</h4>
							<div class="row">
								<div class="col-md-6">
									<ul>
										<li><a>Travel</a></li>
										<li><a>Retail</a></li>
										<li><a>ISV</a></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li><a>Digital Engagement</a></li>
										<li><a>Application Lifecycle Services</a></li>
										<li><a>Technology Infrasructure Services</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<h4>Alliances</h4>
							<div class="row">
								<div class="col-md-6">
									<ul>
										<li><a>Microsoft</a></li>
										<li><a>SAP / Hybris</a></li>
										<li><a>IBM</a></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li><a>Oracle</a></li>
										<li><a>HP</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<h4>People</h4>
							<ul>
								<li><a>Meet the Team</a></li>
								<li><a>Our Work Place</a></li>
								<li><a>Careers</a></li>
								<li><a>CSR</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="copyright-text">
								� Sonata Software 2017 <span>|</span> <a>Sitemap</a> <span>|</span>
								<a>Disclaimer</a> <span>|</span> <a>Privacy Statement</a>
							</div>
						</div>
						<div class="col-md-6 text-right">
							<ul class="son-social">
								<li class="facebook"><a href="" title="facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li class="linkedin"><a href="" title="linkedin"><i
										class="fa fa-linkedin"></i></a></li>
								<li class="twitter last"><a href="" title="twitter"><i
										class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>

