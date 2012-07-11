# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Attribute'
        db.create_table('attributes', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=50)),
        ))
        db.send_create_signal('catalog', ['Attribute'])

        # Adding model 'Category'
        db.create_table('categories', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=50)),
            ('slug', self.gf('django.db.models.fields.SlugField')(unique=True, max_length=50)),
            ('is_active', self.gf('django.db.models.fields.BooleanField')(default=True)),
            ('meta_keywords', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('meta_description', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('created_at', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('updated_at', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('parent', self.gf('django.db.models.fields.related.ForeignKey')(blank=True, related_name='child', null=True, to=orm['catalog.Category'])),
            ('lft', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
            ('rght', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
            ('tree_id', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
            ('level', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
        ))
        db.send_create_signal('catalog', ['Category'])

        # Adding M2M table for field attributes on 'Category'
        db.create_table('categories_attributes', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('category', models.ForeignKey(orm['catalog.category'], null=False)),
            ('attribute', models.ForeignKey(orm['catalog.attribute'], null=False))
        ))
        db.create_unique('categories_attributes', ['category_id', 'attribute_id'])

        # Adding model 'Product'
        db.create_table('products', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=255)),
            ('is_active', self.gf('django.db.models.fields.BooleanField')(default=True)),
            ('price', self.gf('django.db.models.fields.DecimalField')(max_digits=9, decimal_places=2)),
            ('slug', self.gf('django.db.models.fields.SlugField')(unique=True, max_length=255)),
            ('brand_url', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('image', self.gf('utils.fields.ThumbnailImageField')(max_length=100)),
            ('description', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('category', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['catalog.Category'])),
            ('meta_keywords', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('meta_description', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('created_at', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('updated_at', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
        ))
        db.send_create_signal('catalog', ['Product'])

        # Adding model 'ProductAttributeValue'
        db.create_table('product_attribute_value', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('product', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['catalog.Product'])),
            ('attribute', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['catalog.Attribute'])),
            ('value', self.gf('django.db.models.fields.CharField')(max_length='255')),
        ))
        db.send_create_signal('catalog', ['ProductAttributeValue'])


    def backwards(self, orm):
        # Deleting model 'Attribute'
        db.delete_table('attributes')

        # Deleting model 'Category'
        db.delete_table('categories')

        # Removing M2M table for field attributes on 'Category'
        db.delete_table('categories_attributes')

        # Deleting model 'Product'
        db.delete_table('products')

        # Deleting model 'ProductAttributeValue'
        db.delete_table('product_attribute_value')


    models = {
        'catalog.attribute': {
            'Meta': {'object_name': 'Attribute', 'db_table': "'attributes'"},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '50'})
        },
        'catalog.category': {
            'Meta': {'object_name': 'Category', 'db_table': "'categories'"},
            'attributes': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['catalog.Attribute']", 'symmetrical': 'False', 'blank': 'True'}),
            'created_at': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'level': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'lft': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'meta_description': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'meta_keywords': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '50'}),
            'parent': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'child'", 'null': 'True', 'to': "orm['catalog.Category']"}),
            'rght': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '50'}),
            'tree_id': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'updated_at': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
        },
        'catalog.product': {
            'Meta': {'ordering': "['-created_at']", 'object_name': 'Product', 'db_table': "'products'"},
            'attributes': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['catalog.Attribute']", 'symmetrical': 'False', 'through': "orm['catalog.ProductAttributeValue']", 'blank': 'True'}),
            'brand_url': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'category': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['catalog.Category']"}),
            'created_at': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('utils.fields.ThumbnailImageField', [], {'max_length': '100'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'meta_description': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'meta_keywords': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '255'}),
            'price': ('django.db.models.fields.DecimalField', [], {'max_digits': '9', 'decimal_places': '2'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '255'}),
            'updated_at': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'})
        },
        'catalog.productattributevalue': {
            'Meta': {'ordering': "['attribute__name']", 'object_name': 'ProductAttributeValue', 'db_table': "'product_attribute_value'"},
            'attribute': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['catalog.Attribute']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'product': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['catalog.Product']"}),
            'value': ('django.db.models.fields.CharField', [], {'max_length': "'255'"})
        }
    }

    complete_apps = ['catalog']