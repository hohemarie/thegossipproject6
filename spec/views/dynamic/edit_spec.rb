describe "GET edit" do
  it "assigns @users" do
    # création d'une instance
    user = User.create

    # on va sur edit
    get :edit, id: user.id

    # @user doit être user
    expect(assigns(:user)).to eq(user)
  end

  it "renders the edit template" do
    # va sur edit
    get :edit

    # on doit rediriger vers edit
    expect(response).to render_template("edit")
  end
end
