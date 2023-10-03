Return-Path: <devicetree+bounces-5459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 711A57B66AB
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id BB576B20953
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C507179BA;
	Tue,  3 Oct 2023 10:45:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1ECCFBFF
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:45:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 187AAAC;
	Tue,  3 Oct 2023 03:45:10 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="362215516"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; 
   d="scan'208";a="362215516"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 03:45:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="786058702"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; 
   d="scan'208";a="786058702"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 03:45:04 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC1)
	(envelope-from <andy@kernel.org>)
	id 1qnctg-00000002SXq-1k5x;
	Tue, 03 Oct 2023 13:45:00 +0300
Date: Tue, 3 Oct 2023 13:45:00 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Ceclan Dumitru-Ioan <mitrutzceclan@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, linus.walleij@linaro.org,
	brgl@bgdev.pl, linux-gpio@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Walle <michael@walle.cc>, Arnd Bergmann <arnd@arndb.de>,
	ChiaEn Wu <chiaen_wu@richtek.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Leonard =?iso-8859-1?Q?G=F6hrs?= <l.goehrs@pengutronix.de>,
	Mike Looijmans <mike.looijmans@topic.nl>,
	Haibo Chen <haibo.chen@nxp.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: adc: ad7173: add AD7173 driver
Message-ID: <ZRvwrDcT770sJXkd@smile.fi.intel.com>
References: <20230928125443.615006-1-mitrutzceclan@gmail.com>
 <20230928125443.615006-2-mitrutzceclan@gmail.com>
 <20230930150531.083c51d4@jic23-huawei>
 <c52afe87-eaa0-eb7f-090f-b22aec95e49d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c52afe87-eaa0-eb7f-090f-b22aec95e49d@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 01:33:36PM +0300, Ceclan Dumitru-Ioan wrote:
> On 9/30/23 17:05, Jonathan Cameron wrote:
> > On Thu, 28 Sep 2023 15:54:43 +0300
> > Dumitru Ceclan <mitrutzceclan@gmail.com> wrote>> +config AD7173
> >> +	tristate "Analog Devices AD7173 driver"
> >> +	depends on SPI_MASTER
> >> +	select AD_SIGMA_DELTA
> >> +	select GPIO_REGMAP
> > If you are selecting it, why does it have if guards in the driver.
> > I prefer the select here, so drop this if guards.
> 
> From what i checked, selecting GPIO_REGMAP does not select GPIOLIB but only REGMAP.
> 
> Also, in the thread from V1 Arnd Bergmann suggested:
> 	" I think the best way to handle these is to remove both
> 	 the 'select' and the #ifdef in the driver and instead use
> 	 'if (IS_ENABLED(CONFIG_GPIOLIB))' to handle optional gpio
> 	 providers in the code. "

Why not simply to be dependent on GPIOLIB like other drivers do in this folder?


-- 
With Best Regards,
Andy Shevchenko



