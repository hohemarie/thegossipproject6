describe "PUT update" do
  before :each do
    @user = User.create(email: Faker::Internet.email, password: Faker::Internet.password )
  end


  context "with valid attributes" do
    it "located the requested @user" do
      put :update, id: @user, params: { "user" => { email: Faker::Internet.email, password: Faker::Internet.password } }
      assigns(:user).should eq(@user)      
    end
  
    it "changes @user's attributes" do
      email = Faker::Internet.email
      password = Faker::Internet.password
      put :update, id: @user, params: { "user" => { email: email, password: password } }
      @user.reload
      @user.firstname.should eq(email)
      @user.lastname.should eq(password)
    end
  
    it "redirects to the updated contact" do
      put :update, id: @user, params: { "user" => { email: Faker::Internet.email, password: Faker::Internet.password } }

      # redirige où tu veux
      response.should redirect_to @user
    end
  end
  
  context "with invalid attributes" do
    it "locates the requested @user" do
      put :update, id: @user, params: { "user" => { invalide_magueule } }
      assigns(:user).should eq(@user)      
    end
    
    it "does not change @user's attributes" do
      put :update, id: @user, params: { "user" => { invalide_magueule } }
      @user.reload
      @user.firstname.should_not eq("Jean")
      @user.lastname.should eq("Bon")
    end
    
    it "re-renders the edit method" do
      put :update, id: @user, params: { "user" => { invalide_magueule } }
      response.should render_template :edit
    end
  end
end
