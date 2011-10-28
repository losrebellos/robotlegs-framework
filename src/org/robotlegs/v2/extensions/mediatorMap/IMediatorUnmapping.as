//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package org.robotlegs.v2.extensions.mediatorMap
{
	import org.robotlegs.v2.core.api.ITypeMatcher;

	public interface IMediatorUnmapping
	{

		function fromMatcher(typeMatcher:ITypeMatcher):void;
		function fromView(viewClazz:Class):void;
	}

}
