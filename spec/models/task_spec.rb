describe "Task" do
  it "has a name and due date" do
    task = Task.create(name: "some task", due_date: Time.now)

    saved_task = Task.all.last
    saved_task.should == task
    saved_task.name.should == task.name
  end
end