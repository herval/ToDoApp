class NewTaskController < UIViewController

  def viewDidLoad
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame, style: UITableViewStylePlain)
  end
end