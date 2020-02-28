# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Project.destroy_all
UserProject.destroy_all
PostFavorite.destroy_all
ProjectFavorite.destroy_all

ann = User.create(name: "Ann", github_profile: "https://github.com/", cohort_name: "Live fast pry young", cohort_start: 01/27/2020)
carl = User.create(name: "Carl", github_profile: "https://github.com/cjp34", cohort_name: "Live fast pry young", cohort_start: 01/27/2020)
paul = User.create(name: "Paul", github_profile: "https://github.com/bumbot", cohort_name: "Live fast pry young", cohort_start: 01/27/2020)
matteo = User.create(name: "Matteo", github_profile: "https://github.com/matteoaricci", cohort_name: "Live fast pry young", cohort_start: 01/27/2020)
bri = User.create(name: "Bri", github_profile: "https://github.com/briannalturner", cohort_name: "Live fast pry young", cohort_start: 01/27/2020)

post1 = Post.create(title: "Post 1", user_id: carl.id, content: "This is test content")
post2 = Post.create(title: "Post 2", user_id: carl.id, content: "This is test content")
post3 = Post.create(title: "Post 3", user_id: carl.id, content: "This is test content")
post4 = Post.create(title: "Post 4", user_id: paul.id, content: "This is test content")
post5 = Post.create(title: "Post 5", user_id: paul.id, content: "This is test content")
post6 = Post.create(title: "Post 6", user_id: paul.id, content: "This is test content")
post7 = Post.create(title: "Post 7", user_id: ann.id, content: "This is test content")
post8 = Post.create(title: "Post 8", user_id: ann.id, content: "This is test content")
post9 = Post.create(title: "Post 9", user_id: matteo.id, content: "This is test content")
post10 = Post.create(title: "Post 10", user_id: bri.id, content: "This is test content")

project1 = Project.create(name: "Project 1", github_url: "https://github.com/", description: "This is a test description")
project2 = Project.create(name: "Project 2", github_url: "https://github.com/", description: "This is a test description")
project3 = Project.create(name: "Project 3", github_url: "https://github.com/", description: "This is a test description")
project4 = Project.create(name: "Project 4", github_url: "https://github.com/", description: "This is a test description")
project5 = Project.create(name: "Project 5", github_url: "https://github.com/", description: "This is a test description")
project6 = Project.create(name: "Project 6", github_url: "https://github.com/", description: "This is a test description")
project7 = Project.create(name: "Project 7", github_url: "https://github.com/", description: "This is a test description")
project8 = Project.create(name: "Project 8", github_url: "https://github.com/", description: "This is a test description")
project9 = Project.create(name: "Project 9", github_url: "https://github.com/", description: "This is a test description")
project10 = Project.create(name: "Project 10", github_url: "https://github.com/", description: "This is a test description")

user_project1 = UserProject.create(user_id: carl.id, project_id: project1.id)
user_project2 = UserProject.create(user_id: paul.id, project_id: project1.id)
user_project3 = UserProject.create(user_id: ann.id, project_id: project1.id)
user_project4 = UserProject.create(user_id: matteo.id, project_id: project2.id)
user_project5 = UserProject.create(user_id: bri.id, project_id: project2.id)
user_project6 = UserProject.create(user_id: carl.id, project_id: project3.id)
user_project7 = UserProject.create(user_id: paul.id, project_id: project4.id)
user_project8 = UserProject.create(user_id: ann.id, project_id: project5.id)
user_project9 = UserProject.create(user_id: bri.id, project_id: project6.id)
user_project10 = UserProject.create(user_id: matteo.id, project_id: project7.id)
user_project11 = UserProject.create(user_id: carl.id, project_id: project8.id)
user_project12 = UserProject.create(user_id: paul.id, project_id: project9.id)
user_project13 = UserProject.create(user_id: carl.id, project_id: project10.id)

post_favorites1 = PostFavorite.create(user_id: carl.id, post_id: post1.id)
post_favorites2 = PostFavorite.create(user_id: paul.id, post_id: post1.id)
post_favorites3 = PostFavorite.create(user_id: ann.id, post_id: post1.id)
post_favorites4 = PostFavorite.create(user_id: matteo.id, post_id: post2.id)
post_favorites5 = PostFavorite.create(user_id: bri.id, post_id: post2.id)
post_favorites6 = PostFavorite.create(user_id: carl.id, post_id: post3.id)
post_favorites7 = PostFavorite.create(user_id: paul.id, post_id: post4.id)
post_favorites8 = PostFavorite.create(user_id: ann.id, post_id: post5.id)
post_favorites9 = PostFavorite.create(user_id: bri.id, post_id: post6.id)
post_favorites10 = PostFavorite.create(user_id: matteo.id, post_id: post7.id)
post_favorites11 = PostFavorite.create(user_id: carl.id, post_id: post8.id)
post_favorites12 = PostFavorite.create(user_id: paul.id, post_id: post9.id)
post_favorites13 = PostFavorite.create(user_id: carl.id, post_id: post10.id)

project_favorites1 = ProjectFavorite.create(user_id: carl.id, project_id: project1.id)
project_favorites2 = ProjectFavorite.create(user_id: paul.id, project_id: project1.id)
project_favorites3 = ProjectFavorite.create(user_id: ann.id, project_id: project1.id)
project_favorites4 = ProjectFavorite.create(user_id: matteo.id, project_id: project2.id)
project_favorites5 = ProjectFavorite.create(user_id: bri.id, project_id: project2.id)
project_favorites6 = ProjectFavorite.create(user_id: carl.id, project_id: project3.id)
project_favorites7 = ProjectFavorite.create(user_id: paul.id, project_id: project4.id)
project_favorites8 = ProjectFavorite.create(user_id: ann.id, project_id: project5.id)
project_favorites9 = ProjectFavorite.create(user_id: bri.id, project_id: project6.id)
project_favorites10 = ProjectFavorite.create(user_id: matteo.id, project_id: project7.id)
project_favorites11 = ProjectFavorite.create(user_id: carl.id, project_id: project8.id)
project_favorites12 = ProjectFavorite.create(user_id: paul.id, project_id: project9.id)
project_favorites13 = ProjectFavorite.create(user_id: carl.id, project_id: project10.id)