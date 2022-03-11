# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<p>
        <strong> <%= f.label :title %></strong><br/>
        <%= f.text_field :title%>
    </p>
    <p>
        <strong><%= f.label :description%></strong><br/>
        <%= f.text_area :description%>
    </p>
    <p>
        <%= f.submit%> |
        <%= link_to "Back", articles_path(@articles)%>

    </p>

