#Author: Tife Odumosu
#Unit 5.4: Nested Data Structures

jar_head = {
  home: 'Jar:Head',

    about: {
        official_name: 'About',
        page_info: {
            education: ["African Leadership Academy", "Davidson College"],
            background: ["Studio art", "Mathematics", "Entrepreneurship", "Leadership"],
            values: ["Empathy", "Creativity", "Humility", "Excellence", ""],
            goals: ["Software Developer", "UX/UI Designer", "Interaction Designer", "Senior Designer"]
        }
    },
    portfolio: {
        official_name: 'Portfolio',
        page_info: {
          illustration: ["Comic illustration", "Caricatures", "Childrens books", "Concept Art"],
          art_coursework: ["African Leadership Academy", "Davidson College"],
          photography: ["Drawing", "Painting", "Sculpture", "Print"],
          graphic_design: ["Logo Design", "Covers + Posters", "Info-graphics", "cheese"],
          videography: ["Story-telling", "Motion Graphics", "Campaign videos", "Interview videos"],
          design_code: ["UX/UI design", "Web design", "Web development"]
        }
    },
    contact: {
        official_name: 'Contact',
        page_info: {
          email: "tife@gmail.com",
          phone: 678 999 8212,
          github: "bosmandarin@github.io"
        },
        meals: []
    }
}

head_haunter_labs[:home]

head_haunter_labs[:about][:official_name]

head_haunter_labs[:about][:page_info][:education]

head_haunter_labs[:about][:page_info][:education].push("Dev Bootcamp")

head_haunter_labs[:portfolio][:page_info][:graphic_design].pop()

head_haunter_labs[:portfolio][:page_info][:graphic_design].reverse
