<%@ page import="atividade3.Tarefa" %>



<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="tarefa.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${atividade3.Categoria.list()}" optionKey="id" required="" value="${tarefaInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="tarefa.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${tarefaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'dtFinal', 'error')} required">
	<label for="dtFinal">
		<g:message code="tarefa.dtFinal.label" default="Data Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dtFinal" precision="day"  value="${tarefaInstance?.dtFinal}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="tarefa.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${tarefaInstance?.status}" />
</div>

