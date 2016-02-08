class DocumentsController < ApplicationController
  before_action :authenticate_user!
  #authenticate_user!はdeviseによって，ユーザのセッション認証をチェックしている
  def new
    @document = current_user.documents.build
  end
  def create
    @document = current_user.documents.build(document_params)
    if @document.save
      redirect_to @document, notice: '作成しました'
    else
      render :new
    end
  end
  def edit
    @document = current_user.documents.find(params[:id])
  end
  def show
    @document = current_user.documents.find(params[:id])
  end
  def destroy
    @document = current_user.documents.find(params[:id])
    @document.destroy!
    redirect_to root_path, notice: '削除しました'
  end
  private 
  def document_params
    params.require(:document).permit(
      :name, :url, :body
    ) 
  end
end
