<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    My Wishlist 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
     <div class="col-lg-3"> <%--Side Bar--%>
            <h4>My Wishlists</h4>
         <a href="AddWishlist.aspx" class="btn btn-success btn btn-md">Add a wishlist</a>
        </div>

    <div class="col-lg-9"> <%--Main Content--%>
            <asp:ListView ID="lvWishlist" runat="server"> 
                
                <ItemTemplate>
                    <div class="col-lg-4">
                        <div class="thumbnail" style="height: 200px;">
                            <a href='WishlistDetails.aspx?ID=<%# Eval("Wishlist_ID") %>'><h2><%# Eval("Name") %></h2></a>

                            <div class="caption">
                            <p><%# Eval("Description").ToString().Length >= 50 ? 
                                   string.Concat(Eval("Description").ToString().Substring(0, 50), 
                                   "<small><a href='WishlistDetails.aspx?ID=", 
                                   Eval("Wishlist_ID"), "'> see more...</a></small>")  : Eval("Description") %></p>
                            </div>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
</asp:Content>

