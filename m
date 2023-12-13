Return-Path: <devicetree+bounces-24780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ADB811335
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:45:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4465B1F214A1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C3F2D624;
	Wed, 13 Dec 2023 13:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="CoklJOec"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A5F9C;
	Wed, 13 Dec 2023 05:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702475115; x=1734011115;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OuVJcynRVfgCAEWcQt4z1sKsI1HyzVA74uhdyZjaBoI=;
  b=CoklJOecJEDoaH5eAkiYX0Y23ECCLKqLaysG/QCf17HQYI4zfNaojVyh
   VcFiJn9mqmE1LMFzOe5XCwhHeli3OQwYQxwOdW5GR8fcD1PV09KWlAxpw
   tKOIkSVAkmtG1kPJxVITIwaMeCDZ9IcN5fAjjRpzRREwr7jafj1lnE2IH
   lri/lbNFspEiC9qqOIHo5Rkjn6hZ/YuaMpnMDVJBsmLtbypqem9acWr20
   kRdm6YhxsXWQy0YSqBrvSLt//t1K1CrYLYEOUNHKBqa570DDYxU7pyv1t
   NHZ+RBON+CiH5dZ8mFqM0/zcC4HUf48ycU/3OgAlVgX8HEB9hsY9iwnPn
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1806056"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="1806056"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 05:45:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="723652972"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="723652972"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 05:45:09 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1rDPXt-00000005XPs-42VY;
	Wed, 13 Dec 2023 15:45:05 +0200
Date: Wed, 13 Dec 2023 15:45:05 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Shenghao Ding <shenghao-ding@ti.com>
Cc: broonie@kernel.org, conor+dt@kernel.org, krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org, lgirdwood@gmail.com,
	perex@perex.cz, pierre-louis.bossart@linux.intel.com,
	13916275206@139.com, linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org, liam.r.girdwood@intel.com,
	soyer@irl.hu, tiwai@suse.de, peeyush@ti.com, navada@ti.com
Subject: Re: [PATCH v1] ASoC: tas2562: remove tas2563 into driver
Message-ID: <ZXm1YcSOND-LjpLn@smile.fi.intel.com>
References: <20231212050831.982-1-shenghao-ding@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212050831.982-1-shenghao-ding@ti.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Tue, Dec 12, 2023 at 01:08:31PM +0800, Shenghao Ding wrote:
> Remove tas2563 from tas2562, it will be supported in separated driver code.

No objection from the code perspective. The Q is, what is the behaviour of the
current users? Imagine we have a used of this chip and this driver gets it
enumerated. Does it work? if so, this patch can not be applied right now.
Otherwise the commit message above is missing an elaboration of the case.

-- 
With Best Regards,
Andy Shevchenko



