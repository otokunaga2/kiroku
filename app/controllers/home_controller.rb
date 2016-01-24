class HomeController < ApplicationController
  def index
    @documents = Document.paginate(:page =>10).order('id DESC');
  end
end
