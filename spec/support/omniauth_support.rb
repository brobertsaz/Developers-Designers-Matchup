OmniAuth.config.test_mode = true

def login_with_omniauth(service = :twitter)
  visit "/auth/#{service}"
end

def mock_login
  OmniAuth.config.add_mock(:twitter, {
    "provider"=>"twitter",
    "uid"=>"199393780",
    "credentials"=>{
      "token"=>"199393780-517UvpvD7uvbG16pkc5jKxUK4fN8ibN5WnDHyGCc",
      "secret"=>"mVjIrBHlbo7UP9kjz5pFVjiLN9ohAZT9piKAXx78Bw",
      },      
    "user_hash"=>{
        "id_str"=>"199393780",
        "profile_link_color"=>"0084B4",
        "followers_count"=>"145",
        "protected"=>"false",
        "default_profile"=>"false",
        "profile_image_url_https"=>"https=>//si0.twimg.com/profile_images/1186723392/img_normal.jpg",
        "name"=>"Bob Roberts",
        "profile_background_color"=>"2e020b",
        "listed_count"=>"13",
        "lang"=>"en",
        "profile_background_tile"=>"false",
        "utc_offset"=>"-28800",
        "created_at"=>"Wed Oct 06 19:11:38 +0000 2010",
        "show_all_inline_media"=>"false",
        "contributors_enabled"=>"false",
        "favourites_count"=>"0",
        "profile_sidebar_fill_color"=>"801019",
        "notifications"=>"false"
      }  
    })
end                