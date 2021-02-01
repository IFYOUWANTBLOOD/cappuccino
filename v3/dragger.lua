--made by ririchi
local dragger = {};
local mouse = game:GetService("Players").LocalPlayer:GetMouse();
local inputService = game:GetService('UserInputService');
local heartbeat = game:GetService("RunService").Heartbeat;
function dragger.new(frame)
    local s, event = pcall(function()
        return frame.MouseEnter
    end)

    if s then
        frame.Active = true;

        event:connect(function()
            local input = frame.InputBegan:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 then
                    local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                    while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        pcall(function()
                            game:service('TweenService'):Create(frame,TweenInfo.new(0.001,Enum.EasingStyle.Linear),{Position = UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y))}):Play()
                        end)
                    end
                end
            end)

            local leave;
            leave = frame.MouseLeave:connect(function()
                input:disconnect();
                leave:disconnect();
            end)
        end)
    end
end
return dragger
