describe "POST create" do
  context "with valid attributes" do
    it "creates a new user" do
      expect { 
        post :create, params: { "user" => { email: Faker::Internet.email, password: Faker::Internet.password } }
      }.to change(User,:count).by(1)
    end
    
    it "redirects to the new user" do
      post :create, params: { "user" => { email: Faker::Internet.email, password: Faker::Internet.password } }

      # en général tu rediriges vers le show de ce que tu viens de créer
      response.should redirect_to User.last
    end
  end
  
  context "with invalid attributes" do
    it "doest not create a new user" do
      expect { 
        post :create, params: { "user" => { invalide_magueule } }
      }.to_not change(User, :count)
    end
    
    it "re-renders the new method" do
      post :create, params: { "user" => { invalide_magueule } }
      response.should render_template :new
    end
  end
end
