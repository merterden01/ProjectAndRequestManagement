﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyInfo.aspx.cs" Inherits="PRM.Web.MyInfo" %>

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
                            <h3 class="page-header"><i class="fa fa-user"></i>Kullanıcı Profili</h3>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-home"></i><a href="/Default.aspx">Ana Sayfa</a></li>
                                <li><i class="fa fa-user"></i>Profil</li>
                            </ol>
                        </div>
                    </div>
                    <div class="row" id="dvInfoView" runat="server">
                        <div class="col-lg-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Kullanıcı Profili
                                </header>
                                <div class="panel-body">
                                    <div class="form">
                                        <div class="form-validate form-horizontal">
                                            <div class="form-group ">

                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <label for="cname" class="control-label col-lg-1 col-md-2 col-sm-2 MT10">Adı</label>
                                                        <div class="col-lg-5 col-md-4 col-sm-4 MT10">
                                                            <asp:TextBox ID="txtName" runat="server" MaxLength="50" CssClass="form-control" onKeyPress="return sadeceHarf(event)"></asp:TextBox>
                                                        </div>
                                                        <label for="cname" class="control-label col-lg-1 col-md-2 col-sm-2 MT10">Soyadı</label>
                                                        <div class="col-lg-5 col-md-4 col-sm-4 MT10">
                                                            <asp:TextBox ID="txtSurname" runat="server" MaxLength="50" CssClass="form-control" onKeyPress="return sadeceHarf(event)"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <label for="cemail" class="control-label col-lg-1 col-md-2 col-sm-2 MT10">E-posta</label>
                                                        <div class="col-lg-5 col-md-4 col-sm-4 MT10">
                                                            <div class="input-group input-icon input-icon-right padding-right-2n">
                                                                <asp:TextBox ID="txtEposta" runat="server" MaxLength="50" CssClass="form-control" onKeyPress="return validateEmail(email)" placeholder="example@prm.com"></asp:TextBox>
                                                                <span class="input-group-addon"><i class="ace-icon fa fa-envelope-o bigger-120"></i></span>
                                                            </div>
                                                        </div>
                                                        <label for="cname" class="control-label col-lg-1 col-md-2 col-sm-2 MT10">Telefon</label>
                                                        <div class="col-lg-5 col-md-4 col-sm-4 MT10">
                                                            <div class="input-group input-icon input-icon-right padding-right-2n">
                                                                <asp:TextBox ID="txtTelephone" runat="server" CssClass="form-control" onKeyPress="return sadeceSayi(event)" MaxLength="11" placeholder="(05xxxxxxxxx)"></asp:TextBox>
                                                                <span class="input-group-addon"><i class="ace-icon fa fa-phone bigger-120"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <label for="cname" class="control-label col-lg-1 col-md-2 col-sm-2 MT10">Şifre</label>
                                                        <div class="col-lg-5 col-md-4 col-sm-4 MT10">
                                                            <div class="input-group input-icon input-icon-right padding-right-2n">
                                                                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="************"></asp:TextBox>
                                                                 <span class="input-group-addon"><i class="ace-icon icon_key_alt bigger-120"></i></span>
                                                            </div>
                                                        </div>
                                                        <label for="cname" class="control-label col-lg-1 col-md-2 col-sm-2 MT10">Şifre(Tekrar)</label>
                                                        <div class="col-lg-5 col-md-4 col-sm-4 MT10">
                                                            <div class="input-group input-icon input-icon-right padding-right-2n">
                                                                <asp:TextBox ID="txtrePassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="************"></asp:TextBox>
                                                                 <span class="input-group-addon"><i class="ace-icon icon_key_alt bigger-120"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="col-lg-12 col-xs-12">
                                                    <asp:Literal ID="lblError1" runat="server"></asp:Literal>
                                                </div>
                                            </div>
                                            <div class="form-group MT20 MT10">
                                                <div class="col-lg-12">
                                                    <div class="col-lg-12">
                                                        <div class="pull-right">
                                                            <asp:LinkButton ID="btnRedirect" runat="server" CssClass="btn btn-warning" href="/Default.aspx"><i class="fa fa-minus-circle"></i>&nbsp;İptal</asp:LinkButton>
                                                            <asp:LinkButton ID="btnAdd" OnClick="btnAdd_Click" runat="server" CssClass="btn btn-success"><i class="fa fa-floppy-o"></i>&nbsp;Kaydet</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </section>
                        </div>
                    </div>
                </section>


            </section>
        </section>
    </form>
    <uc1:UCFooterJS runat="server" ID="UCFooterJS" />
    <script type="text/javascript">
        function validateEmail(email) {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }
        function sadeceSayi(evt) {
            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false
            }
            return true
        }
        function sadeceHarf(evt) {
            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if ((charCode > 96 && charCode < 123) || (charCode > 64 && charCode < 91) || (charCode == 32) || (charCode > 198 && charCode < 352)) {
                return true
            }
            return false
        }
        function nothing(evt) {

            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if ((charCode >= 0 && charCode <= 127)) {
                return false
            }
            return true
        }
        function hide(event) {
            $("#btnCal").click();
        }
    </script>
</body>
</html>
