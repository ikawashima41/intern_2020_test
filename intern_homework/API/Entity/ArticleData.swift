import Foundation

// Qiita API https://qiita.com/api/v2/docs#get-apiv2items
struct ArticleData: Codable {
    
    var renderedBody: String
    var body: String
    var coediting: Bool
    var commentsCount: Int
    var createdAt: String
    var group: Group?
    var id: String
    var likesCount: Int
    var isPrivate: Bool
    var reactionsCount: Int
    var tags: [Tag]
    var title: String
    var updatedAt: String
    var url: String
    var user: User?
    var pageViewsCount: String?

    enum CodingKeys: String, CodingKey {
        case renderedBody = "rendered_body"
        case body
        case coediting
        case commentsCount = "comments_count"
        case createdAt = "created_at"
        case group
        case id
        case likesCount = "likes_count"
        case isPrivate = "private"
        case reactionsCount = "reactions_count"
        case tags
        case title
        case updatedAt = "updated_at"
        case url
        case user
        case pageViewsCount = "page_views_count"
    }
    
    struct Group: Codable {
        var createdAt: Date
        var id: Int
        var name: String
        var isPrivate: Bool
        var updatedAt: String
        var urlName: String
        
        enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"
            case id
            case name
            case isPrivate = "private"
            case updatedAt = "updated_at"
            case urlName = "url_name"
        }
    }
    
    struct Tag: Codable {
        var name: String
        var versions: [String]
    }

    struct User: Codable {
        var description: String?
        var facebookId: String?
        var followeesCount: Int
        var followersCount: Int
        var githubLoginName: String?
        var id: String
        var itemsCount: Int
        var linkedinId: String?
        var location: String?
        var name: String
        var organization: String?
        var permanentId: Int
        var profileImageUrl: String
        var teamOnly: Bool
        var twitterScreenName: String?
        var websiteUrl: String?

        enum CodingKeys: String, CodingKey {
            case description
            case facebookId = "facebook_id"
            case followeesCount = "followees_count"
            case followersCount = "followers_count"
            case githubLoginName = "github_login_name"
            case id
            case itemsCount = "items_count"
            case linkedinId = "linkedin_id"
            case location
            case name
            case organization
            case permanentId = "permanent_id"
            case profileImageUrl = "profile_image_url"
            case teamOnly = "team_only"
            case twitterScreenName = "twitter_screen_name"
            case websiteUrl = "website_url"
        }
    }
}

// Sample GET /api/v2/items?page=1&per_page=20&query=qiita+user%3AQiita

//"rendered_body": "<h1>Example</h1>",
//"body": "# Example",
//"coediting": false,
//"comments_count": 100,
//"created_at": "2000-01-01T00:00:00+00:00",
//"group": {
//  "created_at": "2000-01-01T00:00:00+00:00",
//  "id": 1,
//  "name": "Dev",
//  "private": false,
//  "updated_at": "2000-01-01T00:00:00+00:00",
//  "url_name": "dev"
//},
//"id": "c686397e4a0f4f11683d",
//"likes_count": 100,
//"private": false,
//"reactions_count": 100,
//"tags": [
//  {
//    "name": "Ruby",
//    "versions": [
//      "0.0.1"
//    ]
//  }
//],
//"title": "Example title",
//"updated_at": "2000-01-01T00:00:00+00:00",
//"url": "https://qiita.com/Qiita/items/c686397e4a0f4f11683d",
//"user": {
//  "description": "Hello, world.",
//  "facebook_id": "qiita",
//  "followees_count": 100,
//  "followers_count": 200,
//  "github_login_name": "qiitan",
//  "id": "qiita",
//  "items_count": 300,
//  "linkedin_id": "qiita",
//  "location": "Tokyo, Japan",
//  "name": "Qiita キータ",
//  "organization": "Increments Inc",
//  "permanent_id": 1,
//  "profile_image_url": "https://s3-ap-northeast-1.amazonaws.com/qiita-image-store/0/88/ccf90b557a406157dbb9d2d7e543dae384dbb561/large.png?1575443439",
//  "team_only": false,
//  "twitter_screen_name": "qiita",
//  "website_url": "https://qiita.com"
//},
//"page_views_count": 100
