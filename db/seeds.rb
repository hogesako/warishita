# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#demo data

categories = Category.create(
    [
        { name: 'TICKET' },
        { name: 'TV' },
        { name: 'RADIO' },
        { name: 'MEDIA' },
        { name: 'MAGAZINE' },
        { name: 'LIVE' },
        { name: 'RELEASE' },
        { name: 'EVENT' },
        { name: 'GOODS' },
        { name: 'STAGE' },
        { name: 'GAME' },
        { name: 'NICONICO生放送' }
    ])


    photo_categories = PhotoCategory.create(
        [
            { name: 'CALENDAR' },
            { name: 'WALLPAPER' }
        ])

    img_sizes = ImgSize.create(
        [
            { name: 'SP', width: 356, height: 640},
            { name: 'WUXGA', width: 1920, height: 1200 },
            { name: 'UXGA', width: 1600, height: 1200 }
        ])

100.times do |i|
    Content.create(title: "テストタイトル #{i}", body: "テスト記事 #{i}" ,category_id: categories[i % categories.length ].id )
end

100.times do |i|
    Photo.create(title: "#{photo_categories[i % photo_categories.length ].name} #{i} ",
        img_url: "/uploaded/photos/sample.jpg" ,
        photo_category_id: photo_categories[i % photo_categories.length ].id,
        img_size_id: img_sizes[i % img_sizes.length].id,
        require_payment:true)
end