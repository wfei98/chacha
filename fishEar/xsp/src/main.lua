init("com.yupaopao.yuer",0);
runApp("com.yupaopao.yuer");
require "account";
require "funcation"

res,results=showUI("ui.json");      --显示未更改的UI界面
local number = results["RadioGroup1"];
local accountList = 账号的集合();

function 输入账号(account)
x, y = findColor({37, 506, 382, 581}, 
{
	{x=0,y=0,color=0xececeb},
	{x=-1,y=0,color=0xececeb},
	{x=-2,y=0,color=0xececeb}
},
95, 0, 0, 0)
if x > -1 then
tap(320,527);
mSleep(100);
i = 0;
while(i<=3) do
	inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
	mSleep(20);
	i = i + 1;
end
mSleep(100);
inputText(account);
end
end

function 输入密码(password)
x, y = findColor({43, 602, 372, 680}, 
{
	{x=0,y=0,color=0xffffff},
	{x=181,y=-108,color=0xffffff},
	{x=9,y=146,color=0xc8c8c8},
	{x=-31,y=-64,color=0xececeb},
	{x=-32,y=-64,color=0xececeb},
	{x=-33,y=-64,color=0xececeb},
	{x=44,y=-20,color=0xffffff}
},
95, 0, 0, 0)
if x > -1 then
tap(279,626);
mSleep(200);
inputText(password);
end
end

function 登陆账号密码(k)
toast("账号"..k.account);
mSleep(2000);
输入账号(k.account);
mSleep(2000);
输入密码(k.password);
return;
end



while true do
	--找到登陆界面
	if(找登陆界面()==1)then
			for j,k in ipairs(accountList) do
				toast("第"..j.."个");
				登陆账号密码(k);
				过程(number);
			end
	end
end




