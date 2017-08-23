﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REQRequests.aspx.cs" Inherits="PRM.Web.Req.REQRequests" %>

<%@ Register Src="~/UserControl/UCFooterJS.ascx" TagPrefix="uc1" TagName="UCFooterJS" %>
<%@ Register Src="~/UserControl/UCTopMenu.ascx" TagPrefix="uc1" TagName="UCTopMenu" %>
<%@ Register Src="~/UserControl/UCLeftMenu.ascx" TagPrefix="uc1" TagName="UCLeftMenu" %>
<%@ Register Src="~/UserControl/UCFooter.ascx" TagPrefix="uc1" TagName="UCFooter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/assets/img/icons/search-line-icon.png" type="image/x-icon" />
    <title></title>

    <!-- Bootstrap CSS -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="/assets/css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="/assets/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="/assets/Components/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="/assets/Components/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="/assets/Components/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="/assets/css/owl.carousel.css" type="text/css" />
    <link href="/assets/css/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link rel="stylesheet" href="/assets/css/fullcalendar.css" />
    <link href="/assets/css/widgets.css" rel="stylesheet" />
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link href="/assets/css/style-responsive.css" rel="stylesheet" />
    <link href="/assets/css/xcharts.min.css" rel=" stylesheet" />
    <link href="/assets/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
    <link href="/assets/css/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section id="container" class="">
            <uc1:UCTopMenu runat="server" ID="UCTopMenu" />
            <uc1:UCLeftMenu runat="server" ID="UCLeftMenu" />
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 class="page-header"><i class="icon_mail_alt"></i>Talepler<meta charset="utf-8" /></h3>

                            <ol class="breadcrumb">
                                <li><i class="fa fa-home"></i><a href="/Default.aspx">Ana Sayfa</a></li>
                                <li><i class=""></i>Talepler</li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <section class="panel">

                                <div class="panel-body progress-panel ">
                                    <div class="row">
                                        <div class="col-lg-8 task-progress pull-left">
                                            <h1>Talepler</h1>
                                        </div>
                                        <div class="col-lg-4">
                                            <span class="pull-right MR6">
                                                <asp:LinkButton ID="lnKAdd" runat="server" CssClass="btn btn-success btn-sm" href="/Req/REQRequestAdd.aspx"><i class="fa fa-plus-circle"></i>&nbsp;Yeni Ekle</asp:LinkButton>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <asp:Repeater ID="rptRqst" runat="server">
                                    <HeaderTemplate>
                                        <table class="table table-striped table-advance table-hover ">
                                            <thead>
                                                <tr>
                                                    <th><i class="icon_mail_alt"></i>&nbsp Talep Adı</th>
                                                    <th><i class="fa fa-suitcase"></i>&nbsp Proje Adı</th>
                                                    <th><i class="fa fa-spinner"></i>&nbsp Talep Durumu</th>
                                                    <th><i class="fa fa-adjust"></"></i>&nbsp Açık/Kapalı</th>
                                                    <th><i class="icon_profile"></i>&nbsp Talep Eden</th>
                                                    <th><i class="fa fa-calendar"></i>&nbsp Talep Tarihi</th>
                                                    <th><i class="icon_cogs"></i>&nbsp İşlem</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("NAME") %></td>
                                            <td><%#Eval("PROJECTNAME") %></td>
                                            <td><%#Eval("TYPEREQUESTSTATUSNAME") %></td>
                                            <td><%# Convert.ToBoolean(Eval("ISOPEN")) ? "<span class='label label-success'>Açık</span>" : "<span class='label label-danger'>Kapalı </span>" %></td>
                                            <td><%#Eval("USERFULLNAME") %></td>
                                            <td><%#Eval("REQUESTDATE") %></td>
                                            <td>
                                                <div class="btn-group">
                                                    <a href='/Req/REQRequestDetail.aspx?ID=<%#Eval("ID") %>' class="btn btn-info"><i class="fa fa-info-circle"></i></a>
                                                    <div class="btn-group">
                                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" CommandName="Delete" CommandArgument='<%#Eval("ID") %>'><i class="fa fa-times"></i></asp:LinkButton>
                                                </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                    </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </section>
                        </div>
                    </div>
                </section>
            </section>
        </section>
    </form>
    <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    <script type="text/javascript">
    </script>
</body>
</html>
