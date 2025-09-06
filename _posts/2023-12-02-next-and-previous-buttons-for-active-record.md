---
layout: post
title: Next and previous buttons for active record
categories: ruby snippets
tags: ruby rails
---
Having buttons to go to the next or back out of an actice record is a desired function, for example, when creating a photo album. So how can one create this functionality in Rails?

Class:
{% highlight ruby %}
  def next()
    Photo.where("id < ? AND user_id = ?", id, user_id).order(id: :desc).first
  end

  def previous()
    Photo.where("id > ? AND user_id = ?", id, user_id).order(id: :asc).first
  end
{% endhighlight %}
*In my case this is in the photo class*

View:
{% highlight html %}
 <div class="mb-auto">
      <% unless @photo.previous.nil? %>
          <%= link_to "Previous",
            user_photo_url(user_username: @photo.user.username_lower, id: @photo.previous.id),
              class: "btn btn-dark btn-lg border-0", "data-photo-target": "previous" %>
        <% end %>
    </div>
{% endhighlight %}
*This is from the view file*

So by retrieving higher or lower than the id that we have currently uploaded, we get the next and earlier, in my case I have also added user_id to filter on which user uploaded. This could of course be a different filter or be missing altogether.
