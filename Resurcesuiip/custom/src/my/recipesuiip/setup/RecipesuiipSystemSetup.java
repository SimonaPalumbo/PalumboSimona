/*
 * [y] hybris Platform
 * 
 * Copyright (c) 2000-2016 SAP SE
 * All rights reserved.
 * 
 * This software is the confidential and proprietary information of SAP 
 * Hybris ("Confidential Information"). You shall not disclose such 
 * Confidential Information and shall use it only in accordance with the 
 * terms of the license agreement you entered into with SAP Hybris.
 */
package my.recipesuiip.setup;

import static my.recipesuiip.constants.RecipesuiipConstants.PLATFORM_LOGO_CODE;

import de.hybris.platform.core.initialization.SystemSetup;

import java.io.InputStream;

import my.recipesuiip.constants.RecipesuiipConstants;
import my.recipesuiip.service.RecipesuiipService;


@SystemSetup(extension = RecipesuiipConstants.EXTENSIONNAME)
public class RecipesuiipSystemSetup
{
	private final RecipesuiipService recipesuiipService;

	public RecipesuiipSystemSetup(final RecipesuiipService recipesuiipService)
	{
		this.recipesuiipService = recipesuiipService;
	}

	@SystemSetup(process = SystemSetup.Process.INIT, type = SystemSetup.Type.ESSENTIAL)
	public void createEssentialData()
	{
		recipesuiipService.createLogo(PLATFORM_LOGO_CODE);
	}

	private InputStream getImageStream()
	{
		return RecipesuiipSystemSetup.class.getResourceAsStream("/recipesuiip/sap-hybris-platform.png");
	}
}
