require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_register'

class   BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInpage.new
  end

  def bbc_register_page
    BbcRegisterPage.new
  end

end
