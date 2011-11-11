//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package org.robotlegs.v2.extensions.viewInjectionMap.impl
{
	import org.robotlegs.v2.core.api.ITypeFilter;
	import flash.utils.Dictionary;
	import org.swiftsuspenders.Injector;
	import flash.display.DisplayObject;
	
	public class ViewInjectionMapping
	{
		private var _configsByProcessorType:Dictionary;
		
		private var _typeFilter:ITypeFilter;
		
		private var _injector:Injector;
		
		public function get configsByProcessorType():Dictionary
		{
			return _configsByProcessorType;
		}

		public function ViewInjectionMapping(typeFilter:ITypeFilter, injector:Injector)
		{
			_configsByProcessorType = new Dictionary();
			_typeFilter = typeFilter;
			_injector = injector;
		}
		
		public function toProcess(viewProcessorType:Class):ViewInjectionConfig
		{
			const config:ViewInjectionConfig = new ViewInjectionConfig();
			
			_configsByProcessorType[viewProcessorType] = config;
			return config;
		}

		public function process(view:DisplayObject):void
		{
			for (var processorClass:* in _configsByProcessorType)
			{
				var processor:* = _injector.getInstance(processorClass);
				processor.process(view);
			}
		}
		
		public function get hasConfigs():Boolean
		{
			return true;
		}

	}
}