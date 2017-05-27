require 'rails_helper'

RSpec.describe "user_files/new", type: :view do
  before(:each) do
    assign(:user_file, UserFile.new(
      :user_id => 1,
      :file_id => 1,
      :directory_id => 1,
      :full_name => "MyString",
      :short_name => "MyString",
      :cover => "MyString"
    ))
  end

  it "renders new user_file form" do
    render

    assert_select "form[action=?][method=?]", user_files_path, "post" do

      assert_select "input#user_file_user_id[name=?]", "user_file[user_id]"

      assert_select "input#user_file_file_id[name=?]", "user_file[file_id]"

      assert_select "input#user_file_directory_id[name=?]", "user_file[directory_id]"

      assert_select "input#user_file_full_name[name=?]", "user_file[full_name]"

      assert_select "input#user_file_short_name[name=?]", "user_file[short_name]"

      assert_select "input#user_file_cover[name=?]", "user_file[cover]"
    end
  end
end
