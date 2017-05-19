module ApplicationHelper

  def display_lock(locked, path)
    if locked
      link_to(image_tag('lock.png', :title => 'Lock'), path)
    else
      link_to(image_tag('unlock.png', :title => 'Unlock'), path)
    end
  end

end
