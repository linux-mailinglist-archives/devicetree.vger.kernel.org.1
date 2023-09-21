Return-Path: <devicetree+bounces-2008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 860967A9730
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22C5D1F20FC3
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E431642D;
	Thu, 21 Sep 2023 17:05:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593D16411
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:05:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A4B83A81;
	Thu, 21 Sep 2023 10:05:12 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="466800441"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; 
   d="scan'208";a="466800441"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2023 04:22:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="750351498"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; 
   d="scan'208";a="750351498"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2023 04:22:45 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC0)
	(envelope-from <andy@kernel.org>)
	id 1qjHla-0000000GsMn-22jB;
	Thu, 21 Sep 2023 14:22:42 +0300
Date: Thu, 21 Sep 2023 14:22:42 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
	Krzysztof Halasa <khalasa@piap.pl>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] gpio: ixp4xx: Handle clock output on pin 14 and 15
Message-ID: <ZQwngrU9fxdSGSKs@smile.fi.intel.com>
References: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
 <20230921-ixp4xx-gpio-clocks-v1-2-574942bf944a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921-ixp4xx-gpio-clocks-v1-2-574942bf944a@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Thu, Sep 21, 2023 at 12:23:46AM +0200, Linus Walleij wrote:
> This makes it possible to provide basic clock output on pins
> 14 and 15. The clocks are typically used by random electronics,
> not modeled in the device tree, so they just need to be provided
> on request.

...

> +	val = __raw_readl(g->base + IXP4XX_REG_GPCLK);

Do we need to read this...

>  	/*
>  	 * Make sure GPIO 14 and 15 are NOT used as clocks but GPIO on
>  	 * specific machines.
>  	 */
>  	if (of_machine_is_compatible("dlink,dsm-g600-a") ||
>  	    of_machine_is_compatible("iom,nas-100d"))
> -		__raw_writel(0x0, g->base + IXP4XX_REG_GPCLK);
> +		val = 0;

...if we are going to discard it anyway here?

Maybe

	if (...)
		val = 0;
	else
		val = readl();

?

...

> +	/*
> +	 * Enable clock outputs with default timings of requested clock.
> +	 * If you need control over TC and DC, add these to the device
> +	 * tree bindings and use them here.
> +	 */

Shouldn't this be integrated into PPS subsystem?

-- 
With Best Regards,
Andy Shevchenko



