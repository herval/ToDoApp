describe "NewTaskController" do
  before do
    fakeRoot = Struct.new(:sections).new([
        Struct.new(:elements).new([
          Struct.new(:textValue).new("some name"),
          Struct.new(:dateValue).new(nil),
        ])
    ])

    @controller = NewTaskController.new
    @controller.stub!(:root, return: fakeRoot)
  end

  describe "saveButtonPressed:" do
    it "creates a task" do
      @controller.saveButtonPressed(Object.new)
      createdTask = Task.last
      createdTask.name.should == "some name"
      createdTask.dueDate.should == nil
    end
  end
end