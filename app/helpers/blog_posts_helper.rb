module BlogPostsHelper
  ONE_YEAR = (525600 * 60)
  ONE_MONTH = (60*60*24*30)
  ONE_WEEK = (60*60*24*7)
  ONE_DAY = (60*24)

  def time_ago(post)
    dt = (Time.now - post.pub_date)
    [['year', ONE_YEAR], ['month',ONE_MONTH],
     ['week', ONE_WEEK], ['day',ONE_DAY]].each do |name, period|
       if dt >= 2 * period
         return "#{(dt / period).floor} #{name.pluralize} ago"
       elsif dt > period
         return "#{(dt / period).floor} #{name} ago"
       end
    end
  end
end
