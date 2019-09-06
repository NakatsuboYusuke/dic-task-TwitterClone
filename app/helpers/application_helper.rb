module ApplicationHelper
  def convert_create_time(created_at)
    created_at.strftime("%p %I:%M %Y年%m月%d日")
    # AM => 午前 PM => 午後 に変換したい
  end
end
