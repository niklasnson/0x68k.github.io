def say_what? message
  print message
  STDIN.gets.chomp
end

def sluggize str
  str.downcase.gsub(/[^a-z0-9]+/, '-').gsub(/^-|-$/, '');
end

desc "Create a new post"
task :new do
  title     = say_what?('Title of post: ')

  is_draft  = say_what?('Create post as draft (y/n): ')
  case is_draft
  when "Y"
    filename  = "_drafts/#{sluggize title}.md"
  else
    filename  = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{sluggize title}.md"
  end

  if File.exist? filename
    puts "Can't create new post: \e[33m#{filename}\e[0m"
    puts "  \e[31m- Path already exists.\e[0m"
    exit 1
  end

  File.open(filename, "w") do | post |
    post.puts "---"
    post.puts "layout: post book-review"
    post.puts "title: #{title}"
    post.puts "categories: open-source, project"
    post.puts "tags: ruby, rspec, json, rails, scripting, testing, 68kasm, 6510asm, hyrox, fitness, words"
    post.puts "latest_posts: "
    post.puts "   enabled: true"
    post.puts "   limit: 5"
    post.puts "image:"
    post.puts "book_review:"
    post.puts "   title:"
    post.puts "   author:"
    post.puts " isbn:"
    post.puts "---"
    post.puts ""
    post.puts "You’ll find this post in your `_posts` directory"
  end
  puts "A new post was created for at:"
  puts "  \e[32m#{filename}\e[0m"
end

desc "Create a new draft"
task :draft do
  title     = say_what?('Title of draft: ')
  filename  = "_drafts/#{sluggize title}.md"

  if File.exist? filename
    puts "Can't create new draft: \e[33m#{filename}\e[0m"
    puts "  \e[31m- Path already exists.\e[0m"
    exit 1
  end

  File.open(filename, "w") do | post |
    post.puts "---"
    post.puts "layout: post book-review"
    post.puts "title: #{title}"
    post.puts "categories: open-source, project"
    post.puts "tags: ruby, rspec, json, rails, scripting, testing, 68kasm, 6510asm, hyrox, fitness, words"
    post.puts "latest_posts: "
    post.puts "   enabled: true"
    post.puts "   limit: 5"
    post.puts "image:"
    post.puts "book_review:"
    post.puts "   title:"
    post.puts "   author:"
    post.puts "   isbn:"
    post.puts "---"
    post.puts ""
  end
  puts "A new draft was created for at:"
  puts "  \e[32m#{filename}\e[0m"
end
