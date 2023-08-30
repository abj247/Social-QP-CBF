classdef ARobotariumBuilder < handle
    %ARobotariumBuilder This is an abstract class for the RobotariumBuilder class
    %that models the manner in which a Robotarium object is created
    
    properties (GetAccess = public, SetAccess = protected)
        available_agents
        number_of_agents
        save_data = true
        show_figure = true
    end
    
    methods (Abstract)
        % Builds the Robotarium object.  Definitely backend/sim dependent.
        get_available_agents(this);
        build(this);
    end
    
    methods                         
        function this = set_number_of_agents(this, number_of_agents)            
            assert(number_of_agents > 0, 'The provided number of agents (%i) must be > 0', number_of_agents);
            
            this.number_of_agents = number_of_agents;
        end
        
        function this = set_show_figure(this, show_figure)
           assert(show_figure >= 0 || show_figure < 0, 'Save data must evaluate to true or false in a boolean expression');
           
           this.show_figure = show_figure;
        end
        
        function this = set_save_data(this, save_data)            
            assert(save_data >= 0 || save_data < 0, 'Save data must evaluate to true or false in a boolean expression');
            
            this.save_data = save_data;
        end
    end   
end

