Return-Path: <devicetree+bounces-102945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1212978E8B
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 08:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 778501F23BDA
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 06:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42441CDA34;
	Sat, 14 Sep 2024 06:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="G0+QHPCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3651CDA2F;
	Sat, 14 Sep 2024 06:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726297015; cv=none; b=JvCi8iqY3gXgTAYbvBCEkWKo7PqYxyv+G5xg9wvipDnbuWtOA5fR3QtHlHVWe8k2+yVVJXjeid/S+hqWSQO6gHd5xQzBFQ5Brq4KgJyzPam0hGBmr+J9k9lilEjjTTqJCqaLBzZojv3SxGBxhskCD6IfbASw/CwecIOcVovKsZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726297015; c=relaxed/simple;
	bh=z82qoXfdXrLYs3jMxnQP89C3VVMg1koj+ufGNLLviTY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H6FvcGUNTdpePSTNjP5C8D4nGtvGZyhr7Z4buH1Wfu2/Uxu1I9O5DBFOz1Xh1zZFxJBvF4n+3CkhnQWjpma/Zv5SCCVt/rAnFA6BgBFmJvVo9xF+A6jX+BUJEhb9YtVYnJiKn8AQX89YXHgJePgX0UPiOenvHRYaWRMXXi3ZA2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=G0+QHPCl; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726297014; x=1757833014;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=z82qoXfdXrLYs3jMxnQP89C3VVMg1koj+ufGNLLviTY=;
  b=G0+QHPClqpztL4q1gszdIj/Jax2lSZlm/wtYKhCDZbyZTgaRi2fM0DkO
   IrF022bg1z49ZT0qKZY5bSmpbuMz/w2sX3aQplbiv+oqOzDAmuEVMXcQZ
   bqaY1CwYyQdbc3+565FHcffjLpO1iZCHGDkB+svefUeXJ12LzSIlxklMb
   qn7qrwoXL0FUsw4hwV/pBXo2flCYNWiaD2eKghFtleViZ8ZOB5OAT1d8x
   Ql77av5CJU2dfkM9tRwlvLw9rbj2OAL1dur0mYplR54RVaYEPyPL8Z+ro
   RSGJD7YT8o8h7hizbz8FBNrwaWHgsY2gx7XUBCyRy5fDTRiiphqrXfntU
   A==;
X-CSE-ConnectionGUID: QVd9BH0OTziphDShyzQA6g==
X-CSE-MsgGUID: cHz493HESm66AzGNDOVU4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="35878469"
X-IronPort-AV: E=Sophos;i="6.10,228,1719903600"; 
   d="scan'208";a="35878469"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2024 23:56:53 -0700
X-CSE-ConnectionGUID: 0Ta95WA3Rs+rO+CmSX4CtQ==
X-CSE-MsgGUID: 5n97j3mcQOyiIWczxHzCcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,228,1719903600"; 
   d="scan'208";a="68320761"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by fmviesa009.fm.intel.com with ESMTP; 13 Sep 2024 23:56:47 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1spMi5-0007TQ-0T;
	Sat, 14 Sep 2024 06:56:45 +0000
Date: Sat, 14 Sep 2024 14:56:27 +0800
From: kernel test robot <lkp@intel.com>
To: Dzmitry Sankouski <dsankouski@gmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Simona Vetter <simona@ffwll.ch>,
	cros-qcom-dts-watchers@chromium.org,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 03/27] gcc-sdm845: Add general purpose clock ops
Message-ID: <202409141429.Wv6WJPEQ-lkp@intel.com>
References: <20240913-starqltechn_integration_upstream-v4-3-2d2efd5c5877@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240913-starqltechn_integration_upstream-v4-3-2d2efd5c5877@gmail.com>

Hi Dzmitry,

kernel test robot noticed the following build errors:

[auto build test ERROR on 5acd9952f95fb4b7da6d09a3be39195a80845eb6]

url:    https://github.com/intel-lab-lkp/linux/commits/Dzmitry-Sankouski/power-supply-add-undervoltage-health-status-property/20240913-231027
base:   5acd9952f95fb4b7da6d09a3be39195a80845eb6
patch link:    https://lore.kernel.org/r/20240913-starqltechn_integration_upstream-v4-3-2d2efd5c5877%40gmail.com
patch subject: [PATCH v4 03/27] gcc-sdm845: Add general purpose clock ops
config: arm-randconfig-001-20240914 (https://download.01.org/0day-ci/archive/20240914/202409141429.Wv6WJPEQ-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240914/202409141429.Wv6WJPEQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409141429.Wv6WJPEQ-lkp@intel.com/

All errors (new ones prefixed by >>):

   arm-linux-gnueabi-ld: drivers/clk/qcom/clk-rcg2.o: in function `clk_rcg2_calc_mnd':
>> drivers/clk/qcom/clk-rcg2.c:437:(.text.clk_rcg2_calc_mnd+0x26): undefined reference to `__aeabi_uldivmod'
>> arm-linux-gnueabi-ld: drivers/clk/qcom/clk-rcg2.c:438:(.text.clk_rcg2_calc_mnd+0x38): undefined reference to `__aeabi_uldivmod'


vim +437 drivers/clk/qcom/clk-rcg2.c

   427	
   428	static void clk_rcg2_calc_mnd(u64 parent_rate, u64 rate, struct freq_tbl *f,
   429				unsigned int mnd_max, unsigned int hid_max)
   430	{
   431		int i = 2, count = 0;
   432		unsigned int pre_div_pure = 1;
   433		unsigned long rates_gcd, scaled_parent_rate;
   434		u16 m, n = 1, n_candidate = 1, n_max;
   435	
   436		rates_gcd = gcd(parent_rate, rate);
 > 437		m = rate / rates_gcd;
 > 438		scaled_parent_rate = parent_rate / rates_gcd;
   439		while (scaled_parent_rate > (mnd_max + m) * hid_max) {
   440			// we're exceeding divisor's range, trying lower scale.
   441			if (m > 1) {
   442				m--;
   443				scaled_parent_rate = mult_frac(scaled_parent_rate, m, (m + 1));
   444			} else {
   445				f->n = mnd_max + m;
   446				f->pre_div = hid_max;
   447				f->m = m;
   448			}
   449		}
   450	
   451		n_max = m + mnd_max;
   452	
   453		while (scaled_parent_rate > 1) {
   454			while (scaled_parent_rate % i == 0) {
   455				n_candidate *= i;
   456				if (n_candidate < n_max)
   457					n = n_candidate;
   458				else if (pre_div_pure * i < hid_max)
   459					pre_div_pure *= i;
   460				else
   461					clk_rcg2_split_div(i, &pre_div_pure, &n, hid_max);
   462	
   463				scaled_parent_rate /= i;
   464			}
   465			i++;
   466			count++;
   467		}
   468	
   469		f->m = m;
   470		f->n = n;
   471		f->pre_div = pre_div_pure > 1 ? pre_div_pure : 0;
   472	}
   473	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

