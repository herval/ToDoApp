describe "New Task Form" do
  before do
    @builder = NewTaskForm.new
    @root = @builder.root
  end

  it "sets the title" do
    @root.title.should == "New Task"
  end

  it "builds a single session" do
    @root.sections.size.should == 1
  end

  it "includes two fields and a button" do
    section = @root.sections[0]
    section.elements.size.should == 3
    section.elements[0].class.should == QEntryElement
    section.elements[1].class.should == QDateTimeElement
    section.elements[2].class.should == QButtonElement
  end

  it "builds a navigation controller" do
    @builder.controller.class.should == UINavigationController
  end

  it "adds a cancel button" do
    btn = @builder.controller.navigationBar.topItem.leftBarButtonItem
    btn.title.should == "Cancel"
  end
end