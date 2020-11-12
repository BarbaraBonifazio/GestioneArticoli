<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.utente eq null}"><c:redirect url="LogoutServlet"/></c:if>
<%@page import="it.gestionearticoli.model.articolo.Articolo"%>
<!doctype html>
<html lang="it">
<head>
<jsp:include page="header.jsp" />
<title>Visualizza elemento</title>

<!-- style per le pagine diverse dalla index -->
<link href="./assets/css/global.css" rel="stylesheet">

</head>



<body>
	<jsp:include page="navbar.jsp" />

	<main role="main" class="container">

		<div class='card'>
			<div class='card-header'>Visualizza dettaglio</div>

			<Input type="hidden" name="categoriaPerShow" id="categoriaPerShow"
				class="form-control"
				value="${requestScope.categoriaPerShow.idCategoria}">
			<div class='card-body'>
				<dl class="row">


					<dt class="col-sm-3 text-right">Id Categoria:</dt>
					<dd class="col-sm-9">${categoriaPerShow.idCategoria}</dd>
				</dl>


				<dl class="row">
					<dt class="col-sm-3 text-right">Descrizione:</dt>
					<dd class="col-sm-9">${categoriaPerShow.descrizione}</dd>
				</dl>


			</div>

			<div class='card-footer'>
				<a href="${pageContext.request.contextPath}/ListCategorieServlet"
					class='btn btn-outline-secondary' style='width: 80px'> <i
					class='fa fa-chevron-left'></i> Back
				</a>
			</div>
		</div>



		<!-- end main container -->
	</main>
	<jsp:include page="footer.jsp" />

</body>
</html>