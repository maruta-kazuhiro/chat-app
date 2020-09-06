module SignInSupport
  def sign_in(user)
<<<<<<< Updated upstream
    visit root_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_on("Log in")
=======
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    find('input[name="commit"]').click
>>>>>>> Stashed changes
    expect(current_path).to eq root_path
  end
end