init("com.yitantech.gaigai",0);
runApp("com.yitantech.gaigai");
require "funcation";
require "account";

res,results=showUI("ui.json");      --显示未更改的UI界面
local number = results["selectId"];
local accountList = 账号的集合();

function 登陆账号密码(k)
if(输入账号(k.account)==1)then
	输入密码(k.password);
	过程(number);
end
end

while true do
	--找到登陆界面
	if(找登陆界面()==1)then
		for j,k in ipairs(accountList) do
			登陆账号密码(k);
		end
		break;
	end
end



