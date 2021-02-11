<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="table-responsive"> <%-- Per rendere responsive la tabella--%>
    <table id="allUsersTable">
        <thead>
            <tr>
                <th scope="col">Username</th>
                <th scope="col">Nome</th>
                <th scope="col">Cognome</th>
                <th scope="col">Data di nascita</th>
                <th scope="col">Stato</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <th scope="row">${user.username}</th>
                    <td>${user.name}</td>
                    <td>${user.surname}</td>
                    <td> <fmt:formatDate value="${user.birthDate}" type="date" /></td>
                    <td>${user.deleted ? "Disabilitato" : "Attivo"}</td>
                    <td><a href="#" class="btn btn-success">Modifica</a><a href="#" class="btn btn-danger">Elimina</a></td>
            </c:forEach>
        </tbody>
    </table>
</div>