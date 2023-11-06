Return-Path: <devicetree+bounces-14081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9A27E1FCC
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:19:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0030528107B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A80FD1864D;
	Mon,  6 Nov 2023 11:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="cubp9twL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD3A17754
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:19:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C764FB6;
	Mon,  6 Nov 2023 03:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699269568; x=1730805568;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=UZ2mllwSITLMwigLdMMHTXlcJTSw0v3IiGJDOlJ2u+Y=;
  b=cubp9twLVqAxNpl/F+C5/a0vGXxUQc/jCZ87Bau8HV/DZ1YDUumTDWjq
   IEnYptHgPTAaSW3PcIem+V0ZmlHvjWUnuCoHgcGZlFqP8s6VM+Y3LBTXu
   edZOCxQEJZ+IxnuegaWJgiuFFDtcAIFMwquELuZp2K3IHq+CNS7oXzxYA
   vF0rBKFdeQMsUS0+VH/LdSrYY3XVY3d7d09bBOCOoJ8vbZ1/nF3yu3gxe
   whuy21sI0S0aIHD9U1+jDWwqEr/LoksYZvMRjJnpLfce2Wl4O1WOiwTJH
   e7cGTioKKtg18pvDPp4ujXoNmyhVDWK++IK9M4c3uWJv98XXbYEe0Z2tU
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="369461450"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="369461450"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 03:19:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="1009491417"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="1009491417"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 03:19:25 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC3)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qzxda-0000000Blvc-10qR;
	Mon, 06 Nov 2023 13:19:22 +0200
Date: Mon, 6 Nov 2023 13:19:21 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH 1/2] leds: gpio: Add kernel log if devm_fwnode_gpiod_get
 fails
Message-ID: <ZUjLuTPppvI9xlOD@smile.fi.intel.com>
References: <20231105154940.97688-1-wahrenst@gmx.net>
 <20231105154940.97688-2-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231105154940.97688-2-wahrenst@gmx.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Sun, Nov 05, 2023 at 04:49:39PM +0100, Stefan Wahren wrote:
> In case leds-gpio fails to get the GPIO from the DT (e.g. the GPIO is
> already requested) the driver doesn't provide any helpful error log:
> 
>     leds-gpio: probe of leds failed with error -16
> 
> So add a new error log in case devm_fwnode_gpiod_get() fails.

...

>  		led.gpiod = devm_fwnode_gpiod_get(dev, child, NULL, GPIOD_ASIS,
>  						  NULL);
>  		if (IS_ERR(led.gpiod)) {
> +			dev_err(dev, "Failed to get gpio '%pfw': %ld\n",
> +				child, PTR_ERR(led.gpiod));

Perhaps %pe ?

>  			fwnode_handle_put(child);
>  			return ERR_CAST(led.gpiod);
>  		}

-- 
With Best Regards,
Andy Shevchenko



