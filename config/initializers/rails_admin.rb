RailsAdmin.config do |config|

  config.main_app_name = ["Công ty Cổ phần Vinatex", "Đà Nẵng"]
  config.navigation_static_links = {
    'Vinatex Đà Nẵng'   => 'http://vinatexdn.com.vn',
    'Nhà máy Phù Mỹ'    => 'https://www.facebook.com/nhamaymayphumy',
    'Nhà máy Dung Quất' => 'https://www.facebook.com/NhaMayMayDungQuat',
    'Google'            => 'https://google.com'
  }
  config.navigation_static_label = "My Links"


  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  config.show_gravatar = false

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    visible do
      # controller bindings is available here. Example:
      bindings[:controller].current_user.name == "admin"
    end
    list do
      field :id
      field :name
      field :email
      field :groups
    end
    create do
      field :name
      field :email
      field :password
      field :password_confirmation
      field :groups
    end
    edit do
      field :name
      field :email
      field :password
      field :password_confirmation
      field :groups
    end
  end

  config.model 'Mistake' do
    list do 
      configure :updated_at do
        hide
      end
      configure :id do
        sort_reverse false
      end
    end
  end

  config.model 'Group' do
    list do 
      configure :id do
        sort_reverse false
      end
    end
  end

  config.model 'DailyReport' do
    list do 
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end
end
