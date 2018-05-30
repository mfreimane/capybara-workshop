require 'date'
module Users
  def Users.contact_form_user
    @contact_form_user ||= User.new() #args = {name: 'Namename'})
    @contact_form_user
  end

  def Users.contact_form_invalid_user
    @contact_form_invalid_user ||= User.new(args = {email: 'name@name'})
    @contact_form_invalid_user
  end

  class User
    attr_reader :name, :email, :password, :projectname, :loginname
    def initialize(args = {})
      defaults = {name: DateTime.now.strftime('%Q'), email: DateTime.now.strftime('%Q')+'@test.com', password: DateTime.now, projectname: DateTime.now.strftime('%Q')+' project', loginname: DateTime.now.strftime('%Q')}
      args = defaults.merge(args)
      @name = args[:name]
      @email = args[:email]
      @password = args[:password]
      @projectname = args[:projectname]
      @loginname = args [:loginname]
    end
  end
end