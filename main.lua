require "lib.madlib"

--get all ents
require.tree(ent_path)

function love.load()
	mad:load();
	mad:changeRoom("AMPHIBIANS")

	--add bg/debug
	local _bg = bg:new(0, 0)
	local d = debug:new(0, 0)
end

function love.update(dt)
	mad:update(dt)

	mad:runRoom("AMPHIBIANS", function()
		mad:addEnt(bug, rand(0, 800), rand(0, 600))
		mad:addEnt(bug, rand(0, 800), rand(0, 600))
		mad:addEnt(test, 0, 0)
	end)
end

function love.keypressed(key)
	mad:pressed(key)
end

function love.draw()
	mad:draw()
end