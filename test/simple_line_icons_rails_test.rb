require 'test_helper'

class SimpleLineIconsRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, SimpleLineIcons::Rails::Engine.superclass
  end

  test "fonts are served" do
    get "/assets/Simple-Line-Icons.eot"
    assert_response :success
    get "/assets/Simple-Line-Icons.ttf"
    assert_response :success
    get "/assets/Simple-Line-Icons.woff"
    assert_response :success
    get "/assets/Simple-Line-Icons.woff2"
    assert_response :success
    get "/assets/Simple-Line-Icons.svg"
    assert_response :success
  end

  test "stylesheets are served" do
    get "/assets/simple-line-icons.css"
    assert_simple_line_icons(response)
  end

  test "stylesheets contain asset pipeline references to fonts" do
    get "/assets/simple-line-icons.css"
    assert_match %r{/assets/Simple-Line-Icons(-\w+)?\.eot\?v=2.4.0},  response.body
    assert_match %r{/assets/Simple-Line-Icons(-\w+)?\.eot\?v=2.4.0#iefix}, response.body
    assert_match %r{/assets/Simple-Line-Icons(-\w+)?\.woff\?v=2.4.0},  response.body
    assert_match %r{/assets/Simple-Line-Icons(-\w+)?\.ttf\?v=2.4.0},  response.body
    assert_match %r{/assets/Simple-Line-Icons(-\w+)?\.svg#Simple-Line-Icons\?v=2.4.0},  response.body
  end

  test "stylesheet is available in a css sprockets require" do
    get "/assets/sprockets-require.css"
    assert_simple_line_icons(response)
  end

  test "stylesheet is available in a sass import" do
    get "/assets/sass-import.css"
    assert_simple_line_icons(response)
  end

  test "stylesheet is available in a scss import" do
    get "/assets/scss-import.css"
    assert_simple_line_icons(response)
  end

  test "helpers should be available in the view" do
    get "/icons"
    assert_response :success
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_simple_line_icons(response)
    assert_response :success
    assert_match(/font-family:\s*'Simple-Line-Icons';/, response.body)
  end
end