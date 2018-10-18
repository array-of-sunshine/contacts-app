class Api::ContactsController < ApplicationController
  def show
    # get some data from the db, and show it to the user
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end
end
