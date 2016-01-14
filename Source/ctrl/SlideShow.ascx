<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlideShow.ascx.cs" Inherits="TheGioiSanKhau.ctrl.SlideShow" %>
<%@ Import Namespace="TheGioiSanKhau" %>
<script type='text/javascript' src='../Scripts/jquery.min.js'></script>
<script type='text/javascript' src='../scripts/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='../scripts/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='../scripts/camera.js'></script>
<link href="../Styles/camera.css" rel="stylesheet" type="text/css" />
<div id="slideshow" class="camera_wrap">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div data-src="/NewsAvarta/<%#Eval("ThumnailImagePath") %>" data-link="/NewsDetail/<%#Utilities.ConvertUnicodeToAscii(Eval("NewsTitle").ToString()) %>/<%#Eval("NewsID") %>">
                <div class="fadeIn camera_caption">
                    <span class="sildeTitle cut-title-540"><%#Eval("NewsTitle") %></span>
                    <span class="sildeShort cut-title-height-56"><%#Eval("ShortContent")%></span>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<script>
    jQuery(function () {

        jQuery('#slideshow').camera({
            height: "360px",
            fx: "simpleFade",
            playPause: false,
            loader: 'none',
            navigation: false,
            time: 3000
        });
    });
</script>
