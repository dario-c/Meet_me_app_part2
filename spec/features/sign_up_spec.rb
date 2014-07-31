
feature 'Usermanagement' do
  scenario "adds a new user" do
    visit '/'

    click_link 'Sign up'
    #fill_in 'field', with: value

    #expect{
    #  click_button 'button'
    #  }.to change(Model, count)

    expect(current_path).to eq('/users/sign_up')
    
    #expect(page).to have_content 'Some content'
    #within 'hi' do 
    # expect(page).to have_content('A title')
    
  end
end



