module ApplicationHelper
  def vimeo_iframe(vimeo_num)
    iframe = content_tag(
      :iframe,
      '',
      width: 640,
      height: 360,
      src: "https://player.vimeo.com/video/#{vimeo_num}?loop=1&title=0&byline=0&portrait=0",
      frameborder: 0,
      allow: 'autoplay',
      fullscreeen: 'allowfullscreen'
    )
    content_tag(:div, iframe, class: 'vimeo-container')
  end
end
