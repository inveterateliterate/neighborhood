require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input#card_name[name=?]", "card[name]"

      assert_select "input#card_user_id[name=?]", "card[user_id]"
    end
  end
end
