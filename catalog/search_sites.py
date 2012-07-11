import datetime
from haystack.indexes import *
from haystack import site
from catalog.models import Product


class ProductIndex(SearchIndex):
    text = indexes.CharField(use_template=True, document=True)
    name = indexes.CharField(model_attr='name')
    new_price = indexes.CharField(model_attr='new_price')
    brand_url = indexes.CharField(model_attr='brand_url')
    description = indexes.CharField(model_attr='description')

    def index_queryset(self):
        "Used when the entire index for model is updated."
        return Product.objects.filter(created_at__lte=datetime.datetime.now())

site.register(Product, ProductIndex)
