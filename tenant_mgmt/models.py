from __future__ import unicode_literals

from django.db import models
from tenant_schemas.models import TenantMixin

import common


# class State(models.Model)
#     name = models.CharField(max_length = 80, unique = True)
#     code = models.CharField(max_length=16, unique = True)
#     status = models.CharField(max_length=20, choices = common.STATUS_CHOICES, default = common.STATUS_ACTIVE)

#     def __unicode__(self):
#         return self.name


# class Institute(TenantMixin):
#     name = models.CharField(max_length=80, unique = True)
#     code = models.CharField(max_length=48, unique = True)
#     sub_domain = models.CharField(max_length=48, unique = True)
#     logo = models.ImageField(max_length=500, blank = True, null=True, 
#                                     upload_to="logos")
#     type = models.CharField(max_length=20, choices = common.INSTITUTE_TYPE_CHOICES, default = common.INSTITUTE_TYPE_APPLICATION)
#     # address = models.ForeignKey()
#     status = models.CharField(max_length=20, choices = common.STATUS_CHOICES, default = common.STATUS_ACTIVE)

#     def __unicode__(self):
#         return self.name
