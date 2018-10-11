class Api::ContactsController < ApplicationController
  def show_contact
    # get some data from the db, and show it to the user
    @contact = Contact.first
    render "contact.json.jbuilder"
  end
end
