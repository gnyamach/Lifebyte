﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuPlaceHolder" runat="server">
    <div id="menu">
        <ul>
            <li><%: Html.ActionLink("Home", "Index", "Home") %></li>
            <li><%: Html.ActionLink("Donate", "Index", "Donate")%></li>
            <li class="current_page_item"><%: Html.ActionLink("Request", "Index", "Request")%></li>
            <li><%: Html.ActionLink("Volunteer", "Index", "Volunteer")%></li>
            <li><%: Html.ActionLink("Inventory", "Index", "Inventory")%></li>
            <li><%: Html.ActionLink("Recipients", "Index", "Recipients")%></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Welcome to the Request Page!</h2>
    <p>
        If you live in the Denver area, please call us at
        303-256-1224. A Lifebyte member will contact you as soon as possible. Please be
        patient, as sometimes request fulfillments can take over a month or two.
    </p>
    <p>
        The Microsoft <a href="http://www.techsoup.org/mar/marFAQ.aspx#eligible">TAP</a>
        requirements for receiving a computer are:</p>
    <ul>
        <li>Live in a community with limited access to technology.</li>
        <li>Are registered as disabled.</li>
        <li>Is a member of a low income family.</li>
    </ul>
    <p>
        Computers are prepared with a Windows operating system, a virus scan application
        and Sun's Open Office suite (word processor, spreadsheet and presentation). Computers
        are bundled with a monitor, keyboard and mouse and are internet ready.
    </p>
    <p>
        As a service of God, The Lifebyte Computer Ministry Team will do our best to repair
        any equipment that breaks under normal use.
    </p>
    <p>
        The form below is another way to request a computer. Please be aware that this site
        does not use SSL to encrypt the information you enter. The data will be sent over
        clear text to our servers. Do not enter any information that you feel is too private
        to be read by third parties.
    </p>
    <div>
        <label for="FirstNameTextBox">
            * First Name:</label><br />
        <input name="FirstNameTextBox" type="text" maxlength="50" id="FirstNameTextBox" />
    </div>
    <div>
        <label for="LastNameTextBox">
            * Last Name:</label><br />
        <input name="LastNameTextBox" type="text" maxlength="50" id="LastNameTextBox" />
    </div>
    <div>
        <label for="PhoneTextBox">
            * Phone Number:</label><br />
        <input name="PhoneTextBox" type="text" maxlength="50" id="PhoneTextBox" />
    </div>
    <div>
        <input type="submit" name="SubmitButton" value="Submit" id="SubmitButton" />
    </div>
    <p>
        <%: Html.ActionLink("Privacy Policy", "Index", "Privacy") %>
    </p>
</asp:Content>
