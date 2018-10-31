class Api::ContactsController < ApplicationController
  def show
    # get some data from the db, and show it to the user
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  # authentication
  def index
    # show all the contacts in a particular group
    # find the group
    # group.contacts


    # # show all the contacts that belong to a current_user
    p 'current_user' * 10
    p current_user
    # @contacts = Contact.where(user_id: current_user.id)
    if current_user
      group = Group.find_by(name: params[:group_name])
      @contacts = group.contacts
      @contacts = @contacts.where(user_id: current_user.id)
    else
      @contacts = []
    end
    render "index.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      user_id: current_user.id
    )
    @contact.save
    render "show.json.jbuilder"
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "You just deleted the item"}
  end
end
