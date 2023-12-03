---
layout: post
title: Normalizes method in Rails 7.1
categories: [ruby]
tags: [rails, rails]
---

I'm refactoring my normalizes methods in Rails with tne new [normalizes](https://edgeapi.rubyonrails.org/classes/ActiveRecord/Normalization/ClassMethods.html#method-i-normalizes) method. Lets take a look together. 

{% highlight ruby %}
class User < ActiveRecord::Base
  normalizes :email, with: -> email { email.strip.downcase }
end

user = User.create(email: " CRUISE-CONTROL@EXAMPLE.COM\n")
user.email                  # => "cruise-control@example.com"
{% endhighlight %}


Code in my project before the refactoring, for the username i use the unicode_normalice function to return a normalized form of str, using Unicode normalizations NFC, NFD, NFKC, or NFKD. 

{% highlight ruby %}
  def normalize_username
    username.unicode_normalize!
    self.username_lower = username.downcase
  end
}
{% endhighlight %}

After refactoring the code it looks like this: 

{% highlight ruby %}
class User < ApplicationRecord
  normalizes :username, with: -> username { username.unicode_normalize.strip.downcase }
end 
{% endhighlight %}

And we have a bit more clean code with less functions to test.

