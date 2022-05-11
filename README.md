This is part of the Forms Project in The Odin Project’s Ruby on Rails Curriculum. Find it at http://www.theodinproject.com

<h1>Create new user.</h1>
<form accept-charset="UTF-8" action='/users' method="post">
    <label for='username'>Username: </label>
    <input type='text' name='user[username]'><br>

    <label for='email'>Email: </label>
    <input type='text' name='user[email]'><br>

    <label for='password'>Password: </label>
    <input type='text' name='user[password]'><br>

    <input type='submit' value='Submit'>
</form> 

<%= form_with(url: '/users', method: 'post') do%>
    <%= label_tag(:username, "Username: ")%>
    <%= text_field_tag(:username)%>

    <%= label_tag(:email, "Email: ")%>
    <%= text_field_tag(:email)%>

    <%= label_tag(:password, "Password: ")%>
    <%= text_field_tag(:password)%>

    <%= submit_tag('Submit')%>
<%end%>