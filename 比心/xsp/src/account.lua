-- 声明账号对象存放账号密码
Account = {account,password}
function Account:new(o)
    o = o or{};
    setmetatable(o,self);
    self.__index = self;
    return o;
end
-- 字符串分割
function split( str,reps )
    local resultStrList = {}
    string.gsub(str,'[^'..reps..']+',function ( w )
        table.insert(resultStrList,w)
    end)
    return resultStrList
end
function readFile(fileName)
    fileList = {};
    file = io.open(fileName,"r");
    for line in file:lines() do
        table.insert(fileList,line);
    end
    file:close();
    return fileList;
end
accountMap = {};
fileList = readFile("/storage/emulated/0/XMod/com.xxscript.idehelperb/public/account.txt");

for j,k in ipairs(fileList) do
    local account = Account:new();
    accountList = split(k,"-");
    account.account = accountList[1];
    account.password = accountList[2];
    table.insert(accountMap,account);
end

function 账号的集合()
return accountMap;
end
