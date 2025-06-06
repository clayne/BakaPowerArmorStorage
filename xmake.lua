-- set minimum xmake version
set_xmakever("2.9.4")

-- includes
includes("lib/commonlibf4")

-- set project
set_project("BakaPowerArmorStorage")
set_version("2.0.0")
set_license("GPL-3.0")

-- set defaults
set_languages("c++23")
set_warnings("allextra")

-- set policies
set_policy("build.optimization.lto", true)
set_policy("package.requires_lock", true)

-- add rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- set config
set_config("commonlib_ini", true)
set_config("commonlib_json", true)

-- targets
target("BakaPowerArmorStorage")
    -- bind local dependencies
    add_deps("commonlibf4")

    -- add commonlibf4 plugin
    add_rules("commonlibf4.plugin", {
        name = "BakaPowerArmorStorage",
        author = "shad0wshayd3"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")

    -- add extra files
    add_extrafiles(".clang-format")
