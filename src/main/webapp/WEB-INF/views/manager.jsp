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
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="http://www.sonata-software.com/"><img src="media/images/logo.png" title="Sonata Software" /></a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Welcome XYZ </a></li>
                            <li><a class="navdivider">|</a></li>
                            <li><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <form:form modelAttribute="loginModel" action="login" method="post">
        <div class="empDboardCont">
            <div class="container">
                <div class="well">
                    <h1>Title</h1>
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
                             <c:forEach items="${Login.employeeDetailsList}" var="employee">
                                <tr class="row_main">
                                    <td><c:out value="1"/></td>
                                    <td><c:out value="${employee.empName}"/></td>
                                    <td><c:out value="${employee.empId}"/></td>
                                    <td><c:out value="${employee.currentGrade}"/></td>
                                    <td><c:out value="${employee.projectname}"/></td>
                                    <td><c:out value="${employee.pm}"/></td>
                                    <td class="status"><span class="closed">Closed</span></td>
                                </tr>
                             </c:forEach>
                             
                             <c:forEach items="${Login.employeeDetailsList}" var="employee">
                                <tr>
                                    <td class="table-action" colspan="7">
                                        <div class="empActionTabs">
                                            <ul class="nav nav-pills">
                                                <li class="active"><a data-toggle="pill" href="#PersonalDetails">Personal Details</a></li>
                                                <li><a data-toggle="pill" href="#AdviceDetails">Advice Details</a></li>
                                            </ul>

                                            <div class="tab-content">
                                                <div id="PersonalDetails" class="tab-pane fade in active">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <form>
                                                                <div class="row">
                                                                    <div class="form-group col-md-3">
                                                                        <label>Employee Id</label>
                                                                        <input type="text" class="form-control" value="${employee.empId}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Employee Name</label>
                                                                        <input type="text" class="form-control" value="${employee.empName}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Date of Joining</label>
                                                                        <input type="text" class="form-control" value="${employee.doj}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Current Grade</label>
                                                                        <input type="text" class="form-control" value="${employee.currentgrade}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>HCC</label>
                                                                        <input type="text" class="form-control" value="${employee.hcc}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Project Name</label>
                                                                        <input type="text" class="form-control" value="${employee.empName}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Project Manager</label>
                                                                        <input type="text" class="form-control" value="${employee.empName}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Type & Years Completed</label>
                                                                        <input type="text" class="form-control" value="${employee.empName}">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Current CTC</label>
                                                                        <input type="text" class="form-control" value="${employee.empName}">
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="AdviceDetails" class="tab-pane fade">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <form>
                                                                <div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Current CTC</label>
                                                                        <input type="text" class="form-control" value="">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>CBF Role</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Role Cluster</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>CBF Level</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Performance Category</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <hr />

                                                                    <div class="form-group col-md-3">
                                                                        <label>Min</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Max</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Kitty</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Benchmark Salary</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label>% inc required to reach Benchmark</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Range</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Sub-Range</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <hr />
                                                                    <div class="form-group col-md-3">
                                                                        <label>Wtd % Increment</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Wtd Increment</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>New CTC</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Final % Increment</label>
                                                                        <input type="text" class="form-control">   
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>New Increment</label>
                                                                        <input type="number" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Revised CTC</label>
                                                                        <input type="number" class="form-control">
                                                                    </div>
                                                                    <hr />
                                                                    <div class="form-group col-md-4">
                                                                        <label>Reason For Change</label>
                                                                        <textarea class="form-control" rows="3"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label>Recommend for Special Bonus(Amount)</label>
                                                                        <textarea class="form-control" rows="3"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label>Reason for Special Bonus</label>
                                                                        <textarea class="form-control" rows="3"></textarea>
                                                                    </div>
                                                                    <hr />
                                                                    <div class="form-group col-md-3">
                                                                        <label>Current Grade</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Maximum Grade</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Promotion Recommendation</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label>Revised Grade</label>
                                                                        <input type="text" class="form-control">
                                                                    </div>
                                                                    <hr />
                                                                    <div class="form-group col-md-6" id="approvercomments">
                                                                            <label>Approver Justification</label>
                                                                            <textarea class="form-control" rows="3"></textarea>                                                                        </div>
                                                                    </div>
                                                                    </form>
                                                                    <div class="form-group col-md-6" id="hrcomments">
                                                                        <label>HR Justification</label>
                                                                        <textarea class="form-control" rows="3"></textarea>                                                                        </div>
                                                                     </div>
                                                                    </hr>
                                                                     <div class="col-md-12 text-right">
                                                                        <button type="button" class="btn btn-success">Submit</button>
                                                                    </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                               </c:forEach>
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
                                    <td class="status"><span class="inprogress">In Progress</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        </form:form>
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
                                © Sonata Software 2017
                                <span>|</span>
                                <a>Sitemap</a>
                                <span>|</span>
                                <a>Disclaimer</a>
                                <span>|</span>
                                <a>Privacy Statement</a>
                            </div>
                        </div>
                        <div class="col-md-6 text-right">
                            <ul class="son-social">
                                <li class="facebook"><a href="" title="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li class="linkedin"><a href="" title="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                <li class="twitter last"><a href="" title="twitter"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>

</body>
</html>
