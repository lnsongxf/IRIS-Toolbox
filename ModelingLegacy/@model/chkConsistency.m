function flag = chkConsistency(this)
% chkConsistency  Check internal consistency of object properties.
%
% Backend IRIS function.
% No help provided.

% -IRIS Macroeconomic Modeling Toolbox.
% -Copyright (c) 2007-2019 IRIS Solutions Team.

%--------------------------------------------------------------------------

flag = chkConsistency@shared.GetterSetter(this) && ...
    chkConsistency@shared.UserDataContainer(this) && ...
    checkConsistency(this.Quantity) && ...
    chkConsistency(this.Equation) && ...
    model.component.Pairing.chkConsistency(this.Pairing, this.Quantity, this.Equation);

end

