from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.views.generic import View
from django.contrib import messages
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse

from models import *
from datetime import datetime
import pdb

class FeedBackView(View):
	"""
	"""

	def get(self, request, code):
		"""
		"""
		obj = Feedback.objects.get(code=code)
		user = obj.user
		grade_obj = UserGradeMap.objects.filter(user=user)
		print "grade_obj  >>>", grade_obj
		if not obj.is_completed():
			obj.start_feedback()
			return render(request, 'feedback_form.html', {'objs':obj, 'grade_objs':grade_obj})
		else:
			return render(request, 'thanks.html', {'msg': 'Oops! You have already submitted this feedback'})

	def post(self, request, code):
		"""
		"""
		feedback_qusetion_map_ids = request.POST.getlist('feedback_qusetion_map_id')
		for index, feedback_qusetion_map_id in enumerate(feedback_qusetion_map_ids):
			obj = FeedbackQusetionMap.objects.get(id=feedback_qusetion_map_id)
			if obj.question.is_subjective():
				answer = request.POST.get("answer-%s" %(feedback_qusetion_map_id))
				obj.submitted_answer = answer
				obj.submitted_at=datetime.now()
				obj.save()
			elif obj.question.is_objective():
				answer = request.POST.get("answer-%s" %(feedback_qusetion_map_id))
				option= Option.objects.get(id=answer)
				FeedbackQusetionOptionMap(feedback_qusetion_map=obj,
										  submitted_option=option).save()
				obj.submitted_at=datetime.now()
				obj.save()
			else:
				answer = request.POST.getlist("answer-%s" %(feedback_qusetion_map_id))
				for single_answer in answer:
					option= Option.objects.get(id=single_answer)
					FeedbackQusetionOptionMap(feedback_qusetion_map=obj,
												  submitted_option=option).save()
					obj.submitted_at=datetime.now()
					obj.save()
					
		obj = Feedback.objects.get(code=code)
		obj.end_feedback()
		return HttpResponseRedirect(reverse('view_thanks'))

class FeedbackSubmittedView(View):
	"""
	"""

	def get(self, request):
		"""
		"""
		return render(request, 'thanks.html', {'msg': 'Thanks for spending your valuable time with us. We have recorded your feedback.'})

class ViewFeedback(View):
	"""
	"""

	def get(self, request, feedback_id):
		feedback = Feedback.objects.get(id=feedback_id)
		return render(request, 'view_feedback.html', {'feedback': feedback})
