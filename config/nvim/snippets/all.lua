local t = require("luasnip").text_node
local i = require("luasnip").insert_node

return {
    require("luasnip").snippet({
        trig = "figure",
    },
    {
        t("<figure class=\"w100\">"),
        t("<img src=\""), i(1), t("\">"),
        t("<figcaption>"), i(2), t("</figcaption>"),
        t("</figure>"),
    }),
}

