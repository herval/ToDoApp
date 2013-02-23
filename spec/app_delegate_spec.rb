describe "AppDelegate" do
  before do
    @delegate = AppDelegate.new
  end

  describe "#setup_navbar" do
    before do
      @controller = @delegate.setup_nav_bar
    end

    it "is a tab bar" do
      @controller.class.should == UITabBarController
    end

    it "has two tabs" do
      @controller.viewControllers.size.should == 2
      @controller.viewControllers[0].title.should == "My Tasks"
      @controller.viewControllers[1].title.should == "About"
    end
  end
end