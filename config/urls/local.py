from django.conf.urls.static import static

from config.settings import local
from config.urls.base import *

urlpatterns += static(local.STATIC_URL,
                      document_root=local.STATIC_ROOT)
urlpatterns += static(local.MEDIA_URL,
                      document_root=local.MEDIA_ROOT)
