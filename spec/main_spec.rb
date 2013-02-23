describe "Application 'todo_app'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  it "rootController is a tab bar" do
    @app.windows.first.rootViewController.class.should.equal(UITabBarController)
  end

end
