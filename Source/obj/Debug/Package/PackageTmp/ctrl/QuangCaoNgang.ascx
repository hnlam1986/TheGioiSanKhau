<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCaoNgang.ascx.cs"
    Inherits="TheGioiSanKhau.ctrl.QuangCaoNgang" %>
<div style="position: relative; width: <%=Width%>; float: left;">
    <div style="margin-top: 10px">
        <div id="scrollbox_img" class="vertical-scroll-img">
            <ul>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <li><a href="<%#Eval("LinkURL")%>">
                            <img style="width: 960px" src="/AdvImage/<%#Eval("AdvImagePath")%>" />
                        </a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</div>
<script>
    $(function () {
        $('#scrollbox_img').scrollbox({
            switchItems: 1,
            distance: 116
        });
    });
</script>