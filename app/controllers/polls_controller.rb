class PollsController < ApplicationController

  before_filter :find_all_polls
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @poll in the line below:
    present(@page)
  end

  def show
    @poll = Poll.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @poll in the line below:
    present(@page)
  end

protected

  def find_all_polls
    @polls = Poll.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/polls")
  end

end
