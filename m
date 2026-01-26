Return-Path: <devicetree+bounces-259437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG26Ig9Ad2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:21:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E8286BB8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FDFD3014139
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B12E32ED46;
	Mon, 26 Jan 2026 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="mPyfcySK"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF7721B191;
	Mon, 26 Jan 2026 10:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422695; cv=none; b=GBUSbQOh3iDNQcN97NSkt8tXs0wAMF2J9MhWh519Y/fxuFzSw7xI/30ysYRqOHeB0qwzLXSM8B8kpAmM5wxaVEv8fcKInKXujlSfP0fzkyUmlaYY/MC6+RuiwhZqMmCUBqcTedDTBr+qXPAR0suMrVCZen5Fr4ZbS6wlV+qJH58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422695; c=relaxed/simple;
	bh=quqRkVFthBroWqgig1FsNhPaP4WnTvGnsAf91QGigAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WNgQD6qv1q5U8y7xH7N6LJljtMDSIw3xT0EVWbAGxyuT9x0g/FS4LdIWjR761fTy1+jtGBbGjPsJPsPGpkVnPf2wA42t9hDOiUbogNkSCuUBCib1SS6Mg9Zv+OMUbDsUeEdSw1cR9Pamt5bTWT1YI7BTh4dXHqiyGZbcjlKsgKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=mPyfcySK; arc=none smtp.client-ip=198.175.65.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769422694; x=1800958694;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=quqRkVFthBroWqgig1FsNhPaP4WnTvGnsAf91QGigAk=;
  b=mPyfcySKXEHWHRuaeX3QepwZgYyxBvhi9SxNlqr3XB66SppgL3a6zhg7
   XTpu7qikDGJAE5DBGud4ecpxbQdcV62ekCAOuDUwmS48hkIuutvo2iFe1
   76JNcOhYKg/bM9s2gFDu6lc1BAMdkK+Ocbtdc3RjyGOKgaWST8mXUaUqF
   vNNcWgOvf/jU2fK3B7DHR7cmtUW9entAxkuqCjrPv9vsNEjGayPmiJTX4
   QEA8R5wVuq3S0PbojYGb173ir8YwQOB3DhqfeIROdEmr51fuOS2r2BQLr
   p97O4tflZ8ODiZpUV4bcI9cA9wfYDQZxQcRuH4kb8A/RixhvIhbcZvKkg
   w==;
X-CSE-ConnectionGUID: B4kyHF9lR5mPlpKxo/SnPQ==
X-CSE-MsgGUID: y5KQnqhvQeyvlxDBDDZH0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="70501576"
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; 
   d="scan'208";a="70501576"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2026 02:18:14 -0800
X-CSE-ConnectionGUID: EZyT1F7jTTazaVY3kxp/rQ==
X-CSE-MsgGUID: Wla4yzLASDOGBJsv28hOPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; 
   d="scan'208";a="211736576"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.122])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2026 02:18:10 -0800
Date: Mon, 26 Jan 2026 12:18:07 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Kyle Hsieh <kylehsieh1995@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Beguin <liambeguin@gmail.com>, llvm@lists.linux.dev,
	oe-kbuild-all@lists.linux.dev, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: ltc2309: add support for ltc2305
Message-ID: <aXc_XxDxc5PuI7Tu@smile.fi.intel.com>
References: <20260126-add_ltc2305_driver-v3-2-951349a87f97@gmail.com>
 <202601261441.M4qQzY72-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202601261441.M4qQzY72-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,metafoo.de,analog.com,kernel.org,baylibre.com,lists.linux.dev,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259437-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,smile.fi.intel.com:mid,intel.com:email,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1E8286BB8
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:22:21PM +0800, kernel test robot wrote:
> Hi Kyle,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on 9448598b22c50c8a5bb77a9103e2d49f134c9578]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Kyle-Hsieh/dt-bindings-adc-ltc2497-add-support-for-ltc2305/20260126-093339
> base:   9448598b22c50c8a5bb77a9103e2d49f134c9578
> patch link:    https://lore.kernel.org/r/20260126-add_ltc2305_driver-v3-2-951349a87f97%40gmail.com
> patch subject: [PATCH v3 2/2] iio: adc: ltc2309: add support for ltc2305
> config: i386-buildonly-randconfig-006-20260126 (https://download.01.org/0day-ci/archive/20260126/202601261441.M4qQzY72-lkp@intel.com/config)
> compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260126/202601261441.M4qQzY72-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202601261441.M4qQzY72-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/iio/adc/ltc2309.c:209:20: warning: variable 'chip_info' is uninitialized when used here [-Wuninitialized]
>      209 |         indio_dev->name = chip_info->name;
>          |                           ^~~~~~~~~
>    drivers/iio/adc/ltc2309.c:195:43: note: initialize the variable 'chip_info' to silence this warning
>      195 |         const struct ltc2309_chip_info *chip_info;
>          |                                                  ^
>          |                                                   = NULL

This is so wrong advice!

>    1 warning generated.

...

The device_get_match_data() call is missing.

-- 
With Best Regards,
Andy Shevchenko



