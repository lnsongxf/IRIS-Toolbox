classdef DynamicDataWrapper < handle
    properties
        YXEPG
    end
    %{
    methods (Static)
        function this = withProperties(varargin)
            this = DynamicDataWrapper( );
            for i = 1 : numel(varargin)
                addprop(this, varargin{i});
            end
        end%
    end
    %}
end

