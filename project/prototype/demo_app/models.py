from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User

feedback_type_status = (
	('A', 'Active'),
	('I', 'Inactive')
	)

feedback_status = (
	('I', 'Incomplete'),
	('C', 'complete')
	)

class FeedbackType(models.Model):
	name = models.CharField(max_length=48, unique=True)
	status = models.CharField(max_length=10, options=feedback_type_status, default='A')

class Feedback(models.Model):
	name = models.CharField(max_length=48)
	user = models.ForeignKey(User)
	created_by = models.ForeignKey(User)
	code = models.CharField(max_length=16, unique=True)
	started_on = models.DateTimeField(auto_now=True)
	ended_on = models.DateTimeField(auto_now=False)
	status = models.CharField(max_length=10, options=feedback_status, default='I')

class Question(models.Model):
	text = models.TextField()

class FeedbackQusetionMap(models.Model):
	feedback = models.ForeignKey(Feedback, null=False)
	question = models.ForeignKey(Question, null=False)
	submitted_answers = 
	submitted_at = started_on = models.DateTimeField(auto_now=True)

class FeedbackTypeQuestionMap(models.Model):
	feedback_type = feedback = models.ForeignKey(Feedback, null=False)
	question = models.ForeignKey(Question, null=False)
# Create your models here.
