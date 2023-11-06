Return-Path: <devicetree+bounces-14056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E49E7E1E29
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A01A01C20926
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:22:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4CA117983;
	Mon,  6 Nov 2023 10:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="WcodCoSL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260654422
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:22:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C650FA9;
	Mon,  6 Nov 2023 02:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699266141; x=1730802141;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JP77JuXadXlcyyGj4/V5z2uuMm7pBizXqmlsL1zSEBk=;
  b=WcodCoSLLooXOcsthiyTeEUziCCO3w810MxniKimR+4KnIuGbe7FLlbw
   IJY4vp/jAfOdyxvhpVlZTsC9wabEh1nmECXTytLmTbzv7fHTicgkMRDvK
   CvCbR1mqMlr5wKdnhu9CEsHLMNyUZCW7D9Q3W8tcQgyL4VGkl1pP4r4ar
   70UBe5KmMud/pnT+/P7XWxspm+bjNAilxLLqCYpuPoWrHH1b5pftWTrge
   BA8u79F7tvL305K7aH/HIp0W5O+15VHlSBZxER5GR8+xSKkzrcl+EOaH0
   HBWhpXzPo2E1p/Pdtum+P3GcLBjghmCW7aQNhZH9e6zY+9po2B5bu/zqk
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="2235015"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="2235015"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 02:22:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="935755023"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="935755023"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 02:22:15 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC3)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qzwkG-0000000BlCT-0ZNB;
	Mon, 06 Nov 2023 12:22:12 +0200
Date: Mon, 6 Nov 2023 12:22:11 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: alisadariana@gmail.com
Cc: Alisa-Dariana Roman <alisa.roman@analog.com>,
	Alexandru Tachici <alexandru.tachici@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maksim Kiselev <bigunclemax@gmail.com>,
	Cosmin Tanislav <demonsingur@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Liam Beguin <liambeguin@gmail.com>,
	Marius Cristea <marius.cristea@microchip.com>,
	Ibrahim Tilki <Ibrahim.Tilki@analog.com>,
	ChiaEn Wu <chiaen_wu@richtek.com>,
	Ivan Mikhaylov <fr0st61te@gmail.com>,
	Marcus Folkesson <marcus.folkesson@gmail.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] iio: adc: ad7192: Use device api
Message-ID: <ZUi-U0taha9MdhIy@smile.fi.intel.com>
References: <20231105193132.47009-1-alisadariana@gmail.com>
 <20231105193132.47009-2-alisadariana@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231105193132.47009-2-alisadariana@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Sun, Nov 05, 2023 at 09:31:29PM +0200, alisadariana@gmail.com wrote:
> From: Alisa-Dariana Roman <alisa.roman@analog.com>
> 
> Replace of.h and corresponding functions with preferred device specific
> functions.
> 
> Also replace of_device_get_match_data function with

of_device_get_match_data()

> spi_get_device_match_data.

spi_get_device_match_data()

With the above fixed,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

The first patch should be documentation of the properties as Krzysztof noted.

P.S. Also consider using or taking an ideas from the "smart" script [1] I wrote
to send patches, it will put the better list of people into the proper places,
including maintainers and mailing lists.

[1]: https://github.com/andy-shev/home-bin-tools/blob/master/ge2maintainer.sh

-- 
With Best Regards,
Andy Shevchenko



