function visualisation(q)
    parameters;
    
    robot = zeros(3);
    robot(3,2) = links(1);
    robot(1,3) = (links(2)+q(3))*cos(q(1))*cos(q(2));
    robot(2,3) = (links(2)+q(3))*sin(q(1))*cos(q(2));
    robot(3,3) = links(1) + (links(2)+q(3))*sin(q(2));
    
    plt = plot3(robot(1,:),robot(2,:),robot(3,:));
    grid on;
    set(plt, 'LineWidth', 7 );
    title('Polar robot')
    xlabel('X,mm')
    ylabel('Y,mm')
    zlabel('Z,mm')
    xlim([-3,3]);
    ylim([-3,3]);
    zlim([0,6]);
    
    saveas(gcf,'pictures/polar_robot.png');
end

