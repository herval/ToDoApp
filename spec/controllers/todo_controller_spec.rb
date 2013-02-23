describe "TodoController" do
  before do
    Task.create(name: "some task")
    Task.create(name: "other task")
    # stubs don't get 'unstubbed' in other test files (bug on motion_stump)
    #Task.stub!(:all, return: existing_tasks)
    #Task.stub!(:count, return: existing_tasks.size)

    @controller = TodoController.new
  end

  describe "tableView:cellForRowAtIndexPath:" do
    it "renders the task name" do
      cell = @controller.tableView(@controller.view, cellForRowAtIndexPath: Struct.new(:row).new(0))
      cell.textLabel.text.should == Task.all[0].name
    end
  end

  describe "tableView:numberOfRowsInSection:" do
    it "renders all the tasks" do
      rows = @controller.tableView(@controller.view, numberOfRowsInSection: 0)
      rows.should == Task.count
    end
  end

  describe "viewDidLoad" do
    it "initializes with a list of tasks" do
      @controller.viewDidLoad
      @controller.view.numberOfRowsInSection(0).should == Task.count
    end
  end

end