<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchMap.ascx.cs" Inherits="RealEstateWebRole.Controls.SearchMap" %>
<div class="map_search">
    <script type="text/javascript">
        function showArea(value) {
            switch (value) {
                case 1:
                    document.getElementById('gautenglink').style.border = '0px solid #bbb';
                    document.getElementById('gautenglink').style.background = '#FFFFFF'
                    break;
                case 2:
                    document.getElementById('kwazulunatallink').style.border = '0px solid #bbb';
                    document.getElementById('kwazulunatallink').style.background = '#FFFFFF'
                    break;
                case 3:
                    document.getElementById('easterncapelink').style.border = '0px solid #bbb';
                    document.getElementById('easterncapelink').style.background = '#FFFFFF'
                    break;
                case 4:
                    document.getElementById('mpumalangalink').style.border = '0px solid #bbb';
                    document.getElementById('mpumalangalink').style.background = '#FFFFFF'
                    break;
                case 5:
                    document.getElementById('limpopolink').style.border = '0px solid #bbb';
                    document.getElementById('limpopolink').style.background = '#FFFFFF'
                    break;
                case 6:
                    document.getElementById('freestatelink').style.border = '0px solid #bbb';
                    document.getElementById('freestatelink').style.background = '#FFFFFF'
                    break;
                case 7:
                    document.getElementById('northwestlink').style.border = '0px solid #bbb';
                    document.getElementById('northwestlink').style.background = '#FFFFFF'
                    break;
                case 8:
                    document.getElementById('northerncapelink').style.border = '0px solid #bbb';
                    document.getElementById('northerncapelink').style.background = '#FFFFFF'
                    break;
                case 9:
                    document.getElementById('westerncapelink').style.border = '0px solid #bbb';
                    document.getElementById('westerncapelink').style.background = '#FFFFFF'
                    break;
            }
        }
        function hideArea(value) {
            switch (value) {
                case 1:
                    document.getElementById('gautenglink').style.background = 'none';
                    document.getElementById('gautenglink').style.border = '0px solid #EAEAEA';
                    break;
                case 2:
                    document.getElementById('kwazulunatallink').style.background = 'none';
                    document.getElementById('kwazulunatallink').style.border = '0px solid #EAEAEA';
                    break;
                case 3:
                    document.getElementById('easterncapelink').style.background = 'none';
                    document.getElementById('easterncapelink').style.border = '0px solid #EAEAEA';
                    break;
                case 4:
                    document.getElementById('mpumalangalink').style.background = 'none';
                    document.getElementById('mpumalangalink').style.border = '0px solid #EAEAEA';
                    break;
                case 5:
                    document.getElementById('limpopolink').style.background = 'none';
                    document.getElementById('limpopolink').style.border = '0px solid #EAEAEA';
                    break;
                case 6:
                    document.getElementById('freestatelink').style.background = 'none';
                    document.getElementById('freestatelink').style.border = '0px solid #EAEAEA';
                    break;
                case 7:
                    document.getElementById('northwestlink').style.background = 'none';
                    document.getElementById('northwestlink').style.border = '0px solid #EAEAEA';
                    break;
                case 8:
                    document.getElementById('northerncapelink').style.background = 'none';
                    document.getElementById('northerncapelink').style.border = '0px solid #EAEAEA';
                    break;
                case 9:
                    document.getElementById('westerncapelink').style.background = 'none';
                    document.getElementById('westerncapelink').style.border = '0px solid #EAEAEA';
                    break;
            }
        }
    </script>
    <asp:Label runat="server" ID="lblTitle"></asp:Label>
    <div class="searchmaplinks" style="border: 0px">
        <table>
            <tr>
                <td  valign="top" style="background: #fff; background-image: none; border: 0px;width: 500px; margin-right: 30px" >
                    <div style="font-size: 16px; color: #000000; font-weight: bolder; margin-bottom: 10px;
                        margin-left: 10px">
                        Featured Agent</div>
                    <br />
                    <asp:ListView runat="server" ID="ltvThumbnail" OnItemDataBound="ltvThumbnail_itemDataBound"
                        GroupItemCount="3">
                        <LayoutTemplate>
                            <table id="Table1" runat="server">
                                <tr runat="server" id="groupPlaceHolder">
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <GroupTemplate>
                            <tr id="Tr1" runat="server">
                                <td runat="server" id="itemPlaceHolder">
                                </td>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <td style="padding: 5px">
                                <a runat="server" id="link">
                                    <img width="100px" height="100px" src='<%#Eval("ProfilePhotoUrl") %>' alt='<%#Eval("BusinessName") %>' />
                                </a>
                                
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                   
                </td>
                <td class="searchprovince" style="background: #fff; background-image: none; border: 0px">
                    <div style="padding: 10px">
                        <div id="gautenglink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Gauteng&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gauteng</a></div>
                        <div id="kwazulunatallink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=KwaZulu Natal&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kwazulu Natal</a>
                        </div>
                        <div id="easterncapelink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Eastern Cape&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eastern Cape</a>
                        </div>
                        <div id="mpumalangalink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Mpumalanga&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mpumalanga</a>
                        </div>
                        <div id="limpopolink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Limpopo&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Limpopo</a></div>
                        <div id="freestatelink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Free State&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Free State</a></div>
                        <div id="northwestlink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=North West&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;North West</a>
                        </div>
                        <div id="northerncapelink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Northern Cape&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Northern Cape</a>
                        </div>
                        <div id="westerncapelink">
                            <a class="search_links" href="../Public/SearchResult.aspx?SearchTerm=Western Cape&SearchType=5">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Western Cape</a></div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
