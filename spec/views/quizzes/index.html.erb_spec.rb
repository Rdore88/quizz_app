require 'rails_helper'

RSpec.describe "quizzes/index", type: :view do
  before(:each) do
    assign(:quizzes, [
      Quiz.create!(
        :title => "Title",
        :published => false,
        :user => nil
      ),
      Quiz.create!(
        :title => "Title",
        :published => false,
        :user => nil
      )
    ])
  end

  it "renders a list of quizzes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
