<%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 05.02.2018
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<div class="row">
    <div class="col-xs-12">
        <p/>
        <a href="${pageContext.request.contextPath}/mcon/addArticle"><button>AddArticle</button></a>
        <a href="${pageContext.request.contextPath}/mcon/logout"><button>Logout</button></a>
        <span style="color: red; float: right; text-align: right;">User: [${loginedUser.name}]</span>
    </div>
</div>
