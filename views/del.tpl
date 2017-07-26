<!-- 삭제 -->
% rebase('base.tpl')
<div id="tool">
    <nav class="menu">
        <a class="menu-item selected" href="#" onclick="return false">
            {{sub}}
        </a>
        <a class="menu-item" href="/w/{{get('page', '')}}">문서</a>
    </nav>
</div>
<h1 class="title">
    {{title}}
    <sub> ({{sub}})</sub>
</h1>
<form id="usrform" method="POST" action="/delete/{{page}}">
    {{plus}}
    <br>
    <br>
    <input style="width:100%;" class="form-control input-sm" name="send" type="text">
    <br>
    <br>
    <button class="btn btn-primary" type="submit">삭제</button>
</form>
% if(login == 0):
    <span>비 로그인 상태입니다. 비 로그인으로 작업 시 아이피가 역사에 기록됩니다.</span>
% end