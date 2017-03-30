from django.shortcuts import render, render_to_response
from django.template import RequestContext
from models import Project, Technology, ProjectImage
from django.core.urlresolvers import resolve

# Create your views here.
def project_portfolio(request):
	prj_obj_list = Project.objects.all()
	tech_list = Technology.objects.all()
	data = {'prj_obj_list':prj_obj_list, 'tech_list':tech_list}
	print data
	return render(request, 'index.html', data)

def project_details(request, pid):
	print 'project id : ', pid
	ctx = RequestContext(request)
	project = Project.objects.get(id = pid)
	print dir(ctx)
	ctx.update({'project': project})
	return render_to_response("pages/project_details.html", ctx)

def appname(request):
	return {'appname': resolve(request.path).app_name}