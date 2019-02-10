describe 'DELETE destroy' do
  before :each do
    @user = User.create
  end
  
  it "deletes the user" do
    expect{
      delete :destroy, id: @user        
    }.to change(User, :count).by(-1)
  end
    
  it "redirects to users#index" do
    delete :destroy, id: @user
    response.should redirect_to contacts_url
  end
end
