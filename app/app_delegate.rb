class AppDelegate
  attr_reader :tabController

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @window.rootViewController = self.setupNavBar
    true
  end

  def newTaskButton
    buttonImage = UIImage.imageNamed("add_48.png")
    actionButton = UIButton.buttonWithType(UIButtonTypeCustom)
    actionButton.setBackgroundImage(buttonImage, forState: UIControlStateNormal)
    actionButton.frame = CGRectMake(0, 0, 50, 50)
    actionButton
  end

  def setupNavBar
    tasksController = TasksController.new
    tasksController.title = "My Tasks"

    aboutController = UIViewController.new
    aboutController.title = "About"

    tabController = UITabBarController.new
    tabController.viewControllers = [tasksController, aboutController]

    actionButton = self.newTaskButton
    actionButton.center = tabController.tabBar.center
    actionButton.addTarget(self, action: 'newTask', forControlEvents: UIControlEventTouchUpInside)
    tabController.view.addSubview(actionButton)

    @tabController = tabController
  end

  def newTask
    controller = NewTaskForm.new.controller
    self.tabController.presentViewController(controller, animated: true, completion: nil);
  end
end
