
<%@ page import="atividade3.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tarefa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="tarefa.categoria.label" default="Categoria" /></th>
					
						<g:sortableColumn property="descricao" title="${message(code: 'tarefa.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="dtFinal" title="${message(code: 'tarefa.dtFinal.label', default: 'Dt Final')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'tarefa.status.label', default: 'Status')}" />
						
						<g:sortableColumn property="status" title="${message(code: 'tarefa.status.label', default: 'Valor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tarefaInstanceList}" status="i" var="tarefaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tarefaInstance.id}">${fieldValue(bean: tarefaInstance, field: "categoria")}</g:link></td>
					
						<td>${fieldValue(bean: tarefaInstance, field: "descricao")}</td>
					
						<td><g:formatDate date="${tarefaInstance.dtFinal}" /></td>
					
						<td><g:formatBoolean boolean="${tarefaInstance.status}" /></td>
						
						<td>
								
								
						<g:form url="[resource:tarefaInstance, action:'delete']" method="DELETE">
										<fieldset class="buttons">
											<g:link class="edit" action="edit" resource="${tarefaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
											<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
										</fieldset>
						</g:form>
						
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tarefaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
