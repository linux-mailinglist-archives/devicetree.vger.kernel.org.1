Return-Path: <devicetree+bounces-70918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 918BD8D4FB9
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DEF5286956
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC8FE1CF94;
	Thu, 30 May 2024 16:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="i9bcp7z9"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AD518757E;
	Thu, 30 May 2024 16:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717086004; cv=none; b=R/f+P6JoNtrVwUANKNySUqkRlASM0sP1MsafCFtylt+8aiiEWGDefAdymFLIv1ipR6EFQo9cAdreZOrDXF7+HdTmgLbEkfWHrAPjsFjAtBkKNO4FZ3BU+X+2PI4wMeVdDicooeMG3iLchTlhmoNdBlaDYe/6lQ1w/ZCd5tiK29o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717086004; c=relaxed/simple;
	bh=4kn4vjazlOgWAkFWvL+DJ8Sb/gYaYuXSroU8uHXVN+E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EcI033o7hcJCCMl/FLc9gLICL4qNoEkaH2WkLvaXK8jvhA1CejFMRb6ARiiWMepuCtgom1d5yHYQQCDPQjnPujhBJDjqDdyk/C3Bw4mHQxOn4mh/8hr8eca+dl/HX34SKcGs5wsfsKg1rxJ/Oiw6L7Asr+cQDE1+y5cZlbqnQEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=i9bcp7z9; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717086002; x=1748622002;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4kn4vjazlOgWAkFWvL+DJ8Sb/gYaYuXSroU8uHXVN+E=;
  b=i9bcp7z9cUQPWsM66F9gpkedj/44ojTM1xxRwu8123LfwpvAac8bIGhV
   1le5szQFuqXxHy2z1nIthaAqkXEGQFODdBYCHqIBR+heeFYSd39RPd26O
   p4V9IVT1JOhNsjFw4PFnlpfmvXWJSpDXPgIz1eB2WDBuv6vFiaNn730kX
   H6HVxfHUseAeoP3BXTnR7ZS+tKSqyPqXBhmMe6xS55A2i3pS1DIcQVGH5
   9jZu3EZEvvKw+GPDeySDoGdZJPFWkPxA1V62PYaTH+tAWbyJ/YkbEtZ5P
   iy50kI6PrxANwS3NYYR12TOS8sYwMLSjy57UQSztqIlr6Mw882WVFaENo
   Q==;
X-CSE-ConnectionGUID: s7Gi7y3ITwC9dln9imOF0g==
X-CSE-MsgGUID: cYsad6qXQmOOMdIx3sxmCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24139715"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; 
   d="scan'208";a="24139715"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2024 09:19:45 -0700
X-CSE-ConnectionGUID: aEyrTQvAS7ivZk9nl5t0+g==
X-CSE-MsgGUID: Ydc/93sIThmnu9UFkE6+XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; 
   d="scan'208";a="35946498"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
  by fmviesa010.fm.intel.com with ESMTP; 30 May 2024 09:19:40 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sCiUl-000Fgf-2G;
	Thu, 30 May 2024 16:19:20 +0000
Date: Fri, 31 May 2024 00:15:28 +0800
From: kernel test robot <lkp@intel.com>
To: Chen-Yu Tsai <wenst@chromium.org>, Frank Binns <frank.binns@imgtec.com>,
	Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: oe-kbuild-all@lists.linux.dev, Chen-Yu Tsai <wenst@chromium.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] clk: mediatek: Add mt8173-mfgtop driver
Message-ID: <202405310018.2eeqgDyV-lkp@intel.com>
References: <20240530083513.4135052-3-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530083513.4135052-3-wenst@chromium.org>

Hi Chen-Yu,

kernel test robot noticed the following build errors:

[auto build test ERROR on 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0]

url:    https://github.com/intel-lab-lkp/linux/commits/Chen-Yu-Tsai/dt-bindings-clock-mediatek-Add-mt8173-mfgtop/20240530-163739
base:   1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
patch link:    https://lore.kernel.org/r/20240530083513.4135052-3-wenst%40chromium.org
patch subject: [PATCH 2/6] clk: mediatek: Add mt8173-mfgtop driver
config: arc-randconfig-001-20240530 (https://download.01.org/0day-ci/archive/20240531/202405310018.2eeqgDyV-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240531/202405310018.2eeqgDyV-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405310018.2eeqgDyV-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/pmdomain/core.c: In function 'genpd_queue_power_off_work':
   drivers/pmdomain/core.c:701:20: error: 'pm_wq' undeclared (first use in this function)
     701 |         queue_work(pm_wq, &genpd->power_off_work);
         |                    ^~~~~
   drivers/pmdomain/core.c:701:20: note: each undeclared identifier is reported only once for each function it appears in
   drivers/pmdomain/core.c: In function 'genpd_dev_pm_qos_notifier':
   drivers/pmdomain/core.c:900:39: error: 'struct dev_pm_info' has no member named 'ignore_children'
     900 |                 if (!dev || dev->power.ignore_children)
         |                                       ^
   drivers/pmdomain/core.c: In function 'rtpm_status_str':
>> drivers/pmdomain/core.c:3111:23: error: 'struct dev_pm_info' has no member named 'runtime_error'
    3111 |         if (dev->power.runtime_error)
         |                       ^
>> drivers/pmdomain/core.c:3113:28: error: 'struct dev_pm_info' has no member named 'disable_depth'
    3113 |         else if (dev->power.disable_depth)
         |                            ^
>> drivers/pmdomain/core.c:3115:28: error: 'struct dev_pm_info' has no member named 'runtime_status'
    3115 |         else if (dev->power.runtime_status < ARRAY_SIZE(status_lookup))
         |                            ^
   drivers/pmdomain/core.c:3116:45: error: 'struct dev_pm_info' has no member named 'runtime_status'
    3116 |                 p = status_lookup[dev->power.runtime_status];
         |                                             ^

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for PM_GENERIC_DOMAINS
   Depends on [n]: PM [=n]
   Selected by [m]:
   - COMMON_CLK_MT8173_MFGTOP [=m] && COMMON_CLK [=y] && (ARCH_MEDIATEK || COMPILE_TEST [=y]) && COMMON_CLK_MT8173 [=m]


vim +3111 drivers/pmdomain/core.c

2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3095  
8b0510b52478a4e drivers/base/power/domain.c Jon Hunter        2016-08-11  3096  #ifdef CONFIG_DEBUG_FS
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3097  /*
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3098   * TODO: This function is a slightly modified version of rtpm_status_show
d30d819dc831078 drivers/base/power/domain.c Rafael J. Wysocki 2014-11-27  3099   * from sysfs.c, so generalize it.
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3100   */
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3101  static void rtpm_status_str(struct seq_file *s, struct device *dev)
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3102  {
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3103  	static const char * const status_lookup[] = {
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3104  		[RPM_ACTIVE] = "active",
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3105  		[RPM_RESUMING] = "resuming",
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3106  		[RPM_SUSPENDED] = "suspended",
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3107  		[RPM_SUSPENDING] = "suspending"
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3108  	};
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3109  	const char *p = "";
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3110  
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15 @3111  	if (dev->power.runtime_error)
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3112  		p = "error";
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15 @3113  	else if (dev->power.disable_depth)
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3114  		p = "unsupported";
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15 @3115  	else if (dev->power.runtime_status < ARRAY_SIZE(status_lookup))
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3116  		p = status_lookup[dev->power.runtime_status];
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3117  	else
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3118  		WARN_ON(1);
2bd5306a8764d94 drivers/base/power/domain.c Maciej Matraszek  2014-09-15  3119  
45fbc464b047b3f drivers/base/power/domain.c Dmitry Osipenko   2021-01-21  3120  	seq_printf(s, "%-25s  ", p);
45fbc464b047b3f drivers/base/power/domain.c Dmitry Osipenko   2021-01-21  3121  }
45fbc464b047b3f drivers/base/power/domain.c Dmitry Osipenko   2021-01-21  3122  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

