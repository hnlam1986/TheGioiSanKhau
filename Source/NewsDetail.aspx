<%@ Page Title="" Language="C#" MasterPageFile="~/TGSK.Master" AutoEventWireup="true"
    CodeBehind="NewsDetail.aspx.cs" Inherits="TheGioiSanKhau.NewsDetail" %>

<%@ Register Src="ctrl/ListNewsLink.ascx" TagName="ListNewsLink" TagPrefix="uc2" %>
<%@ Register Src="ctrl/BigAds.ascx" TagName="BigAds" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">        stLight.options({ publisher: "4db767b1-620c-4397-9558-7dafd3cb1b01", doNotHash: false, doNotCopy: false, hashAddressBar: false });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt10">
        <div id="fb-root">
        </div>
        <script>            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=320513998102002&version=v2.0";
                fjs.parentNode.insertBefore(js, fjs);
            } (document, 'script', 'facebook-jssdk'));</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-539f0d711e7f88ea"></script>
        <div id="news_content" class="mt15" style="float: left; width: 718px;">
            <div id="dvTitle" runat="server" class="news-title">
            </div>
            <span style="color: #d9b303">Tin từ:
                <asp:Label ID="lblFrom" runat="server" Style="color: #585959"></asp:Label>
                Đăng lúc:
                <asp:Label ID="lblDangluc" runat="server" Style="color: #585959"></asp:Label>
                
            </span>
            <div id="fbTool" style="height: 37px; margin: 10px 0;">
                <div style="float: left">
                <span style="color: #d9b303">Lượt xem:<asp:Label ID="lblLuotXem" runat="server" Style="color: #585959"></asp:Label></span>
                </div>
                
                <div class="addthis_sharing_toolbox" style="float: left">
                </div>
                <div class="fb-like" data-href="<%=NewsUrl %>" data-layout="button" data-action="like" data-show-faces="false" data-share="false" style="padding-top: 12px;padding-left: 2px"></div>
            </div>
            <div id="shortContent" runat="server" style="font-weight: bold">
            </div>
            <div id="content" runat="server">
            </div>
            <%--<div id="source" runat="server"></div>--%>
        </div>
        <uc1:BigAds ID="BigAds1" runat="server" />
        <div style="display: block">
            <div style="width: 352px; float: left">
                <uc2:ListNewsLink ID="lnlTinLienQuan" runat="server" Title="TIN LIÊN QUAN" Height="180px"
                    StoreProcedureName="News_GetNewsByNewIDAndCateId" />
            </div>
            <div style="width: 352px; float: left; margin-left: 10px">
                <uc2:ListNewsLink ID="ListNewsLink1" runat="server" Title="CÁC TIN KHÁC" Height="180px"
                    StoreProcedureName="News_GetNewsByNewIDAndDiffrentCateId" />
            </div>
        </div>
        <div class="fb-comments" data-href="<%=Request.Url.ToString() %>" data-width="717px"
            data-numposts="5" data-colorscheme="light">
        </div>
        <script>
            $(document).ready(function () {
                $("span.cut-title").each(function () {
                    var trim = JSUtilities.TrimByPixel(this, 320);
                    $(this).text(trim);
                });
            });
        </script>
    </div>
</asp:Content>
