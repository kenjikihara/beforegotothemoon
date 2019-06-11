class Admin::EventsController < AdminController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @event.event_images.build
  end

  def create
    @event = Event.new(event_params)
    if params[:event][:event_images_attributes]["0"][:image].present?
      params[:event][:event_images_attributes]["0"][:image].each do |image|
        @event.event_images.new(image: image)
      end
    end
    @event.save(event_params)

    redirect_to admin_events_path, notice: '作成しました'
  end

  def edit
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :note, :video_path, event_images_attributes: [])
  end
end
