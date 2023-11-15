Return-Path: <devicetree+bounces-14050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C38DB7E1DE0
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D885E1C209E4
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F0E917728;
	Mon,  6 Nov 2023 10:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="XQB9+tCY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432A4171D9
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:07:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 031E81BF;
	Mon,  6 Nov 2023 02:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699265255; x=1730801255;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=XJEcXmB6TalkxyxKKmu2KMtpz3YCZ01vFQnK5Fy50Hk=;
  b=XQB9+tCYgDUP8mAlBcBOKu4kaUVutdSzWW7QfWmIOhFxRQvefaR3bVEu
   b28GOCmggXDlQIzo9lLYyW3o+tNyICpweNjt2H/XhywNHdg6wn108saR4
   Q6LKnSMm1JthYdOm0lMpEVfvPWN2NU+nZnSfrStw8kLNzJ3bwsC3egQgW
   zMqCAyzhUy7VsR7KO7msvB0oXuhAGmsu7PkgTBcUKRfro7gEg05/RQ0eC
   VjWYV7awDh3MhFzGxNhXqabEMTcVDWj5mbjcNus0CG1iNgkMzVHqwRNBc
   RB6o7WEaU1wP4kkeQX8j0EDKWFk/hb02dM3mTOlVq38nnKrsk3Jv4kWL6
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="392113610"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="392113610"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 02:07:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="832680493"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="832680493"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 02:07:29 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC3)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qzwVy-0000000Bku0-1d3n;
	Mon, 06 Nov 2023 12:07:26 +0200
Date: Mon, 6 Nov 2023 12:07:26 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Paul Gazzillo <paul@pgazz.com>, llvm@lists.linux.dev,
	oe-kbuild-all@lists.linux.dev, Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Message-ID: <ZUi63hP2ifKTBHL8@smile.fi.intel.com>
References: <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <202311052102.1GrBH0gk-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202311052102.1GrBH0gk-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Sun, Nov 05, 2023 at 10:22:07PM +0800, kernel test robot wrote:

> >> drivers/iio/light/apds9306.c:598:10: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
>      598 |                 return ret;
>          |                        ^~~
>    drivers/iio/light/apds9306.c:593:9: note: initialize the variable 'ret' to silence this warning
>      593 |         int ret, intg_old, gain_old, gain_new, gain_new_closest;
>          |                ^
>          |                 = 0
>    1 warning generated.

Bad advice, just use correct error code instead of ret.

>    590	static int apds9306_intg_time_set(struct apds9306_data *data, int val2)
>    591	{
>    592		struct device *dev = data->dev;
>    593		int ret, intg_old, gain_old, gain_new, gain_new_closest;
>    594		bool ok;
>    595	
>    596		if (!iio_gts_valid_time(&data->gts, val2)) {
>    597			dev_err(dev, "Unsupported integration time %u\n", val2);
>  > 598			return ret;
>    599		}
>    600	
>    601		intg_old = iio_gts_find_int_time_by_sel(&data->gts,
>    602							data->intg_time_idx);
>    603		if (ret < 0)
>    604			return ret;
>    605	
>    606		if (intg_old == val2)
>    607			return 0;
>    608	
>    609		gain_old = iio_gts_find_gain_by_sel(&data->gts, data->gain_idx);
>    610		if (gain_old < 0)
>    611			return gain_old;
>    612	
>    613		ret = iio_gts_find_new_gain_by_old_gain_time(&data->gts, gain_old,
>    614							     intg_old, val2, &gain_new);
>    615		if (gain_new < 0) {
>    616			dev_err(dev, "Unsupported gain with time\n");
>    617			return gain_new;
>    618		}
>    619	
>    620		gain_new_closest = iio_find_closest_gain_low(&data->gts, gain_new, &ok);
>    621		if (gain_new_closest < 0) {
>    622			gain_new_closest = iio_gts_get_min_gain(&data->gts);
>    623			if (gain_new_closest < 0)
>    624				return gain_new_closest < 0;
>    625		}
>    626		if (!ok)
>    627			dev_dbg(dev, "Unable to find optimum gain, setting minimum");
>    628	
>    629		ret = iio_gts_find_sel_by_int_time(&data->gts, val2);
>    630		if (ret < 0)
>    631			return ret;
>    632	
>    633		ret = apds9306_intg_time_set_hw(data, ret);
>    634		if (ret)
>    635			return ret;
>    636	
>    637		ret = iio_gts_find_sel_by_gain(&data->gts, gain_new_closest);
>    638		if (ret < 0)
>    639			return ret;
>    640	
>    641		return apds9306_gain_set_hw(data, ret);
>    642	}

-- 
With Best Regards,
Andy Shevchenko



