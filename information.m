input = zeros(100:100);
for u = 0:1:50
    for v = 0:1:50
        if u <= 40
            if u >= -2*v+60
                if u >= 2*v-40
                    input(u,v)=1;
                end
            end
        end
    end
end
for u = 0:1:50
    for v = 50:1:100
        if u <=40
            if u >= 10
                if v <= 90
                    if v >=60
                        input (u,v)=1;
                    end
                end
            end
        end
    end
end
r = 20;
for u = 50:1:100
    for v = 1:1:50
        if r >= sqrt((u-75)^2 + (v-25)^2)
            input(u,v)=1;
        end
    end
end
reference=zeros(100:100);
for u = 0:1:100
    for v = 0:1:100
        if u <= 65
            if u >= -2*v+135
                if u >= 2*v-65
                    reference(u,v)=1;
                end
            end
        end
    end
end
