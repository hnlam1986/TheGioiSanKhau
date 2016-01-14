<%@ Page Title="" Language="C#" MasterPageFile="~/TGSK.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="TheGioiSanKhau._default" %>

<%@ Register Src="ctrl/SlideShow.ascx" TagName="SlideShow" TagPrefix="uc1" %>
<%@ Register Src="ctrl/ListNewsLink.ascx" TagName="ListNewsLink" TagPrefix="uc2" %>
<%@ Register Src="ctrl/ListNewsTopImage.ascx" TagName="ListNewsTopImage" TagPrefix="uc3" %>
<%@ Register Src="ctrl/QuangCao.ascx" TagName="QuangCao" TagPrefix="uc4" %>
<%@ Register Src="ctrl/HotPhoto.ascx" TagName="HotPhoto" TagPrefix="uc5" %>
<%@ Register Src="ctrl/HotVideo.ascx" TagName="HotVideo" TagPrefix="uc6" %>
<%@ Register Src="ctrl/CongNgheCuoi.ascx" TagName="CongNgheCuoi" TagPrefix="uc7" %>
<%@ Register Src="ctrl/QuangCaoLon.ascx" TagName="QuangCaoLon" TagPrefix="uc8" %>
<%@ Register Src="ctrl/QuangCaoNgang.ascx" TagName="QuangCaoNgang" TagPrefix="uc9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt10">
        <div class="slide-show">
            <uc1:SlideShow ID="SlideShow1" runat="server" />
        </div>
        
        <div class="top-news">
            <uc2:ListNewsLink ID="ListNewsLink1" runat="server" Title="TIN HOT" Height="180px"
                StoreProcedureName="News_GetTop5NewsHot" />
            <uc2:ListNewsLink ID="ListNewsLink2" runat="server" Title="TIN ĐỌC NHIỀU NHẤT" Height="180px"
                StoreProcedureName="News_GetTop5MostView" />
        </div>
    </div>
    <div>
            <uc9:QuangCaoNgang ID="QuangCaoNgang1" runat="server" Width="960px" Height="116px"/>
        </div>
    <div class="mt10 main-news">
        <div style="display: inline-block">
            <div style="float: left; width: 725px;">
                <uc3:ListNewsTopImage ID="ListNewsTopImage1" runat="server" style="margin-right: 10px;"
                    Title="NGHỆ SỸ" Width="352px" Height="395px" StoreProcedureName="News_GetTop6News"
                    PositionKey="Home_NewsTopImage_1" />
                <uc3:ListNewsTopImage ID="ListNewsTopImage2" runat="server" Title="SÂN KHẤU" Width="352px"
                    Height="395px" StoreProcedureName="News_GetTop6News" PositionKey="Home_NewsTopImage_2" />
                <uc3:ListNewsTopImage ID="ListNewsTopImage3" runat="server" style="margin-right: 10px;"
                    Title="THỜI TRANG" Width="352px" Height="395px" StoreProcedureName="News_GetTop6News"
                    PositionKey="Home_NewsTopImage_3" />
                <uc3:ListNewsTopImage ID="ListNewsTopImage4" runat="server" Title="ĐIỆN ẢNH" Width="352px"
                    Height="395px" StoreProcedureName="News_GetTop6News" PositionKey="Home_NewsTopImage_4" />
            </div>
            <div style="float: right;">
                <uc4:QuangCao ID="QuangCao4" runat="server" BigSize="false" OnTop="false" />
            </div>
            <div style="display: block;">
                <uc6:HotVideo ID="HotVideo1" runat="server" Title="VIDEO NỔI BẬT" style="float: left;"
                    Width="352px" />
                <uc5:HotPhoto ID="HotPhoto1" runat="server" Title="HÌNH ẢNH NỔI BẬT" Width="352px" />
            </div>
        </div>
        <div style="display: block" class="mt10">
            <uc8:QuangCaoLon ID="QuangCaoLon1" runat="server" Title="Quảng Cáo" Width="960px"/>
            <%--<uc7:CongNgheCuoi ID="CongNgheCuoi1" runat="server" Title="CÔNG NGHỆ CƯỚI" Width="100%" StoreProcedureName="News_GetTop6News" PositionKey="Home_CongNgheCuoi"/>--%>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $(".cut-title").each(function () {
                var trim = JSUtilities.TrimByPixel(this, 320);
                $(this).text(trim);
            });
            $(".cut-title-310").each(function () {
                var trim = JSUtilities.TrimByPixel(this, 310);
                $(this).text(trim);
            });
            $(".cut-title-280").each(function () {
                var trim = JSUtilities.TrimByPixel(this, 280);
                $(this).text(trim);
            });
            $(".cut-title-460").each(function () {
                var trim = JSUtilities.TrimByPixel(this, 460);
                $(this).text(trim);
            });
            $(".cut-title-540").each(function () {
                var trim = JSUtilities.TrimByPixel(this, 540);
                $(this).text(trim);
            });
            $(".cut-title-height").each(function () {
                var trim = JSUtilities.TrimByHeightPixel(this, 37);
                $(this).text(trim);
            });
            $(".cut-title-height-56").each(function () {
                var trim = JSUtilities.TrimByHeightPixel(this, 56);
                $(this).text(trim);
            });

        });
    </script>
</asp:Content>
