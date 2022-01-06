class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/snacks" do
    Snack.all.to_json(include: :employee)
  end

  get "/comments" do
    Comment.all.to_json(include: :employee)
  end

  post "/comments" do
    comment = Comment.create(
      employee_id: params[:employee_id],
      comment_content: params[:comment_content],
    )
    comment.to_json
  end

  get "/employees" do
    Employee.all.to_json
  end

  delete '/comments/:id' do
   comment = Comment.find(params[:id])
   comment.destroy
   comment.to_json
  end

  post "/snacks" do
    snack = Snack.create(
      employee_id: params[:employee_id],
      name: params[:name],
      keto: params[:keto], 
      gluten_free: params[:gluten_free], 
      vegetarian: params[:veggie], 
      dairy_free: params[:dairy_free], 
      nut_free: params[:nut_free], 
      picture: params[:picture]
    )
    snack.to_json
  end

  delete '/snacks/:id' do
    snack = Snack.find(params[:id])
    snack.destroy
    snack.to_json
   end

   patch '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.update(
      employee_id: params[:employee_id],
      comment_content: params[:comment_content],
    )
    comment.to_json
  end

end
