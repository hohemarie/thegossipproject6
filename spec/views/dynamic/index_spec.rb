describe "GET index" do
  it "assigns @users" do
    # création d'une instance
    user = User.create

    # on va sur index
    get :index

    # @users doit être une array qui contient user
    expect(assigns(:users)).to eq([user])
  end

  it "renders the index template" do
    # va sur index
    get :index

    # on doit rediriger vers index
    expect(response).to render_template("index")
  end
end
