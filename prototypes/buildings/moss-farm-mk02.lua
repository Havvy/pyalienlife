RECIPE {
    type = "recipe",
    name = "moss-farm-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"moss-farm-mk01", 1},
        {"assembling-machine-2", 1},
        {"plastic-bar", 20},
        {"engine-unit", 10},
        {"advanced-circuit", 15}
    },
    results = {
        {"moss-farm-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "moss-farm-mk02",
    icon = "__pyalienlife__/graphics/icons/moss-farm-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings",
    order = "c",
    place_result = "moss-farm-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "moss-farm-mk02",
    icon = "__pyalienlife__/graphics/icons/moss-farm-mk02.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "moss-farm-mk02"},
    fast_replaceable_group = "moss-farm-mk02",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"moss"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -25,
    },
    energy_usage = "200kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a1.png",
                width = 64,
                height = 263,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.3,
                shift = util.by_pixel(-64, -34)
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/mask-1.png",
                width = 64,
                height = 263,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.3,
                shift = util.by_pixel(-64, -34),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a2.png",
                width = 64,
                height = 263,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -34)
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/mask-2.png",
                width = 64,
                height = 263,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -34),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/a3.png",
                width = 64,
                height = 263,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.3,
                shift = util.by_pixel(64, -34)
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/mask-3.png",
                width = 64,
                height = 263,
                line_length = 20,
                frame_count = 120,
                animation_speed = 0.3,
                shift = util.by_pixel(64, -34),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/moss-farm/sh.png",
                width = 64,
                height = 201,
                line_length = 20,
                frame_count = 120,
                draw_as_shadow = true,
                animation_speed = 0.3,
                shift = util.by_pixel(128, -3)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/moss-farm.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlife__/sounds/moss-farm.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}