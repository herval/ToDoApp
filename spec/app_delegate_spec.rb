describe "AppDelegate" do
  before do
    @delegate = AppDelegate.new
  end

  describe "newTaskButton" do
    before do
      UIImage.mock!(:imageNamed)
      @button = @delegate.newTaskButton
    end

    it "renders a custom button" do
      @button.buttonType.should == UIButtonTypeCustom
      @button.frame.should == CGRectMake(0, 0, 50, 50)
    end
  end

  describe "newTask" do
    before do
      @delegate.setupNavBar
    end

    #it "renders a new task window" do
    #  @delegate.newTask
    #  @delegate.tabController.presentedViewController.class.should == UITabBarController
    #end
  end

  describe "setupNavBar" do
    before do
      @controller = @delegate.setupNavBar
    end

    it "is a tab bar" do
      @controller.class.should == UITabBarController
    end

    it "has two tabs" do
      @controller.viewControllers.size.should == 2
      @controller.viewControllers[0].title.should == "My Tasks"
      @controller.viewControllers[1].title.should == "About"
    end

    it "wires up new task button" do
      button = @controller.view.subviews.last
      button.class.should == UIButton

      clickTargets = button.allTargets.allObjects
      clickTargets.size.should == 1
      clickTargets[0].class.should == AppDelegate
    end
  end
end