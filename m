Return-Path: <devicetree+bounces-70919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A748D4FD0
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:28:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EFF31F21C2D
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5C2A22EED;
	Thu, 30 May 2024 16:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Q2BwHdq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063646AA1;
	Thu, 30 May 2024 16:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717086475; cv=none; b=JncoI5bgamcATSa2p769OgV70oanMVe7q8JVhFFAcNGd/Xi0AwR0bia+PpS9A+BZNMoP7ucGdzM+KC5tkPMD68ninO4mJRO85VGpfSb6DGH9DPcgfhUZgtxqhof+TXAPoy593MR610Rz5+jPxrgKB54B/sPTh9MBxQ6GtpDEquE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717086475; c=relaxed/simple;
	bh=V5jL3YeJSOZuNv8eie3xUsJZRp5cjt/a7+eb3E2Xd18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jmn6RforL9BsgD9jgqwJGBkw3FOcst1I1XC/u4+36/Lk9Cg+TNxsEfVIJn4B2NOklPlhe2zpBM9JgEkMqNcn9w0tNdTP+vYjcT6QpZ7IsVDLI5zvl8GDD90zS+FSW+HeJg4N7yftJUhhwSIW5G9FTk9yX2+mxaWfvcxm821NhDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Q2BwHdq8; arc=none smtp.client-ip=198.175.65.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717086473; x=1748622473;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=V5jL3YeJSOZuNv8eie3xUsJZRp5cjt/a7+eb3E2Xd18=;
  b=Q2BwHdq8SfYmeP02ckEOBnQX5F+LZdFQmiX2nYebcW3nm/lEhsfsXFmI
   d7lS3decQP3s/YeRn3dh4dbKQJuKYNyildx/Rhph0CbJyqrG6QWnXVaWN
   9CmxEktPfGiclsOdAuIP1b37yDu8c6K18AYeIV1pPtUx1z3s2EKhXBMlT
   mP6lZUf1yM+UXJ+dlyYB703f5QXqvrMq67VM5qcHrhBdCaNwrM2qiaNlI
   O9K6YWDF0wdDl2jSCfIcBu82anj8y65J92EJsW1FbUMujmBISELlKoOYl
   pme2vDTZKm3p/OePPYApvKrcX50y7BpjqnH59pkCHJk3z77T1IkgXXDQH
   Q==;
X-CSE-ConnectionGUID: cN2BzRArQKWAuE9jr2NMiA==
X-CSE-MsgGUID: 1gcMooU1Q8+M3Cdzy8XG2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="31079642"
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; 
   d="scan'208";a="31079642"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2024 09:27:53 -0700
X-CSE-ConnectionGUID: 0kgeBN53RyuN1pWdGZFt5w==
X-CSE-MsgGUID: tN9PKlTvR9uscOJpeKxwFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; 
   d="scan'208";a="36356667"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
  by orviesa006.jf.intel.com with ESMTP; 30 May 2024 09:27:47 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sCicx-000FhT-0H;
	Thu, 30 May 2024 16:27:43 +0000
Date: Fri, 31 May 2024 00:26:10 +0800
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
Message-ID: <202405310025.nOseddVa-lkp@intel.com>
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
config: arc-randconfig-002-20240530 (https://download.01.org/0day-ci/archive/20240531/202405310025.nOseddVa-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240531/202405310025.nOseddVa-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405310025.nOseddVa-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/pmdomain/core.c: In function 'genpd_queue_power_off_work':
>> drivers/pmdomain/core.c:701:20: error: 'pm_wq' undeclared (first use in this function)
     701 |         queue_work(pm_wq, &genpd->power_off_work);
         |                    ^~~~~
   drivers/pmdomain/core.c:701:20: note: each undeclared identifier is reported only once for each function it appears in
   drivers/pmdomain/core.c: In function 'genpd_dev_pm_qos_notifier':
>> drivers/pmdomain/core.c:900:39: error: 'struct dev_pm_info' has no member named 'ignore_children'
     900 |                 if (!dev || dev->power.ignore_children)
         |                                       ^
--
   drivers/pmdomain/governor.c: In function 'default_suspend_ok':
>> drivers/pmdomain/governor.c:87:24: error: 'struct dev_pm_info' has no member named 'ignore_children'
      87 |         if (!dev->power.ignore_children)
         |                        ^

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for PM_GENERIC_DOMAINS
   Depends on [n]: PM [=n]
   Selected by [y]:
   - COMMON_CLK_MT8173_MFGTOP [=y] && COMMON_CLK [=y] && (ARCH_MEDIATEK || COMPILE_TEST [=y]) && COMMON_CLK_MT8173 [=y]


vim +/pm_wq +701 drivers/pmdomain/core.c

c8f0ea45169c57 drivers/base/power/domain.c Geert Uytterhoeven 2014-11-10  691  
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  692  /**
86e12eac1f7f84 drivers/base/power/domain.c Ulf Hansson        2016-12-08  693   * genpd_queue_power_off_work - Queue up the execution of genpd_power_off().
a3d09c73492e57 drivers/base/power/domain.c Moritz Fischer     2016-01-27  694   * @genpd: PM domain to power off.
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  695   *
86e12eac1f7f84 drivers/base/power/domain.c Ulf Hansson        2016-12-08  696   * Queue up the execution of genpd_power_off() unless it's already been done
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  697   * before.
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  698   */
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  699  static void genpd_queue_power_off_work(struct generic_pm_domain *genpd)
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  700  {
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02 @701  	queue_work(pm_wq, &genpd->power_off_work);
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  702  }
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  703  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  704  /**
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  705   * genpd_power_off - Remove power from a given PM domain.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  706   * @genpd: PM domain to power down.
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson        2017-02-17  707   * @one_dev_on: If invoked from genpd's ->runtime_suspend|resume() callback, the
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson        2017-02-17  708   * RPM status of the releated device is in an intermediate state, not yet turned
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson        2017-02-17  709   * into RPM_SUSPENDED. This means genpd_power_off() must allow one device to not
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson        2017-02-17  710   * be RPM_SUSPENDED, while it tries to power off the PM domain.
763663c9715f5f drivers/base/power/domain.c Yang Yingliang     2021-05-12  711   * @depth: nesting count for lockdep.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  712   *
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  713   * If all of the @genpd's devices have been suspended and all of its subdomains
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  714   * have been powered down, remove power from @genpd.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  715   */
2da835452a0875 drivers/base/power/domain.c Ulf Hansson        2017-02-17  716  static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
2da835452a0875 drivers/base/power/domain.c Ulf Hansson        2017-02-17  717  			   unsigned int depth)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  718  {
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  719  	struct pm_domain_data *pdd;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  720  	struct gpd_link *link;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  721  	unsigned int not_suspended = 0;
f63816e43d9044 drivers/base/power/domain.c Ulf Hansson        2020-09-24  722  	int ret;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  723  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  724  	/*
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  725  	 * Do not try to power off the domain in the following situations:
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  726  	 * (1) The domain is already in the "power off" state.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  727  	 * (2) System suspend is in progress.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  728  	 */
41e2c8e0060db2 drivers/base/power/domain.c Ulf Hansson        2017-03-20  729  	if (!genpd_status_on(genpd) || genpd->prepared_count > 0)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  730  		return 0;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  731  
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson        2017-03-20  732  	/*
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson        2017-03-20  733  	 * Abort power off for the PM domain in the following situations:
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson        2017-03-20  734  	 * (1) The domain is configured as always on.
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson        2017-03-20  735  	 * (2) When the domain has a subdomain being powered on.
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson        2017-03-20  736  	 */
ed61e18a4b4e44 drivers/base/power/domain.c Leonard Crestez    2019-04-30  737  	if (genpd_is_always_on(genpd) ||
ed61e18a4b4e44 drivers/base/power/domain.c Leonard Crestez    2019-04-30  738  			genpd_is_rpm_always_on(genpd) ||
ed61e18a4b4e44 drivers/base/power/domain.c Leonard Crestez    2019-04-30  739  			atomic_read(&genpd->sd_count) > 0)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  740  		return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  741  
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  742  	/*
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  743  	 * The children must be in their deepest (powered-off) states to allow
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  744  	 * the parent to be powered off. Note that, there's no need for
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  745  	 * additional locking, as powering on a child, requires the parent's
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  746  	 * lock to be acquired first.
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  747  	 */
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  748  	list_for_each_entry(link, &genpd->parent_links, parent_node) {
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  749  		struct generic_pm_domain *child = link->child;
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  750  		if (child->state_idx < child->state_count - 1)
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  751  			return -EBUSY;
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  752  	}
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson        2022-02-17  753  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  754  	list_for_each_entry(pdd, &genpd->dev_list, list_node) {
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  755  		/*
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  756  		 * Do not allow PM domain to be powered off, when an IRQ safe
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  757  		 * device is part of a non-IRQ safe domain.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  758  		 */
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  759  		if (!pm_runtime_suspended(pdd->dev) ||
7a02444b8fc25a drivers/base/power/domain.c Ulf Hansson        2022-05-11  760  			irq_safe_dev_in_sleep_domain(pdd->dev, genpd))
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  761  			not_suspended++;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  762  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  763  
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson        2017-02-17  764  	if (not_suspended > 1 || (not_suspended == 1 && !one_dev_on))
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  765  		return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  766  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  767  	if (genpd->gov && genpd->gov->power_down_ok) {
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  768  		if (!genpd->gov->power_down_ok(&genpd->domain))
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  769  			return -EAGAIN;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  770  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  771  
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson        2018-10-03  772  	/* Default to shallowest state. */
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson        2018-10-03  773  	if (!genpd->gov)
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson        2018-10-03  774  		genpd->state_idx = 0;
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson        2018-10-03  775  
f63816e43d9044 drivers/base/power/domain.c Ulf Hansson        2020-09-24  776  	/* Don't power off, if a child domain is waiting to power on. */
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  777  	if (atomic_read(&genpd->sd_count) > 0)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  778  		return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  779  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  780  	ret = _genpd_power_off(genpd, true);
c6a113b52302ad drivers/base/power/domain.c Lina Iyer          2020-10-15  781  	if (ret) {
c6a113b52302ad drivers/base/power/domain.c Lina Iyer          2020-10-15  782  		genpd->states[genpd->state_idx].rejected++;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  783  		return ret;
c6a113b52302ad drivers/base/power/domain.c Lina Iyer          2020-10-15  784  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  785  
49f618e1b669ef drivers/base/power/domain.c Ulf Hansson        2020-09-24  786  	genpd->status = GENPD_STATE_OFF;
afece3ab9a3640 drivers/base/power/domain.c Thara Gopinath     2017-07-14  787  	genpd_update_accounting(genpd);
c6a113b52302ad drivers/base/power/domain.c Lina Iyer          2020-10-15  788  	genpd->states[genpd->state_idx].usage++;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  789  
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  790  	list_for_each_entry(link, &genpd->child_links, child_node) {
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  791  		genpd_sd_counter_dec(link->parent);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  792  		genpd_lock_nested(link->parent, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  793  		genpd_power_off(link->parent, false, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  794  		genpd_unlock(link->parent);
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  795  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  796  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  797  	return 0;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  798  }
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson        2017-02-17  799  
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  800  /**
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  801   * genpd_power_on - Restore power to a given PM domain and its parents.
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  802   * @genpd: PM domain to power up.
0106ef5146f9e8 drivers/base/power/domain.c Marek Szyprowski   2016-01-20  803   * @depth: nesting count for lockdep.
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  804   *
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  805   * Restore power to @genpd and all of its parents so that it is possible to
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  806   * resume a device belonging to it.
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  807   */
86e12eac1f7f84 drivers/base/power/domain.c Ulf Hansson        2016-12-08  808  static int genpd_power_on(struct generic_pm_domain *genpd, unsigned int depth)
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  809  {
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  810  	struct gpd_link *link;
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  811  	int ret = 0;
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  812  
41e2c8e0060db2 drivers/base/power/domain.c Ulf Hansson        2017-03-20  813  	if (genpd_status_on(genpd))
3f241775c30365 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  814  		return 0;
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  815  
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  816  	/*
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  817  	 * The list is guaranteed not to change while the loop below is being
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  818  	 * executed, unless one of the parents' .power_on() callbacks fiddles
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  819  	 * with it.
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  820  	 */
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  821  	list_for_each_entry(link, &genpd->child_links, child_node) {
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  822  		struct generic_pm_domain *parent = link->parent;
0106ef5146f9e8 drivers/base/power/domain.c Marek Szyprowski   2016-01-20  823  
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  824  		genpd_sd_counter_inc(parent);
0106ef5146f9e8 drivers/base/power/domain.c Marek Szyprowski   2016-01-20  825  
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  826  		genpd_lock_nested(parent, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  827  		ret = genpd_power_on(parent, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  828  		genpd_unlock(parent);
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  829  
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  830  		if (ret) {
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  831  			genpd_sd_counter_dec(parent);
9e08cf42969709 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  832  			goto err;
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  833  		}
5063ce1571b738 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  834  	}
5248051b9afb66 drivers/base/power/domain.c Rafael J. Wysocki  2011-07-01  835  
86e12eac1f7f84 drivers/base/power/domain.c Ulf Hansson        2016-12-08  836  	ret = _genpd_power_on(genpd, true);
9e08cf42969709 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  837  	if (ret)
9e08cf42969709 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  838  		goto err;
0140d8bd47f798 drivers/base/power/domain.c Rafael J. Wysocki  2011-12-01  839  
49f618e1b669ef drivers/base/power/domain.c Ulf Hansson        2020-09-24  840  	genpd->status = GENPD_STATE_ON;
afece3ab9a3640 drivers/base/power/domain.c Thara Gopinath     2017-07-14  841  	genpd_update_accounting(genpd);
afece3ab9a3640 drivers/base/power/domain.c Thara Gopinath     2017-07-14  842  
3f241775c30365 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  843  	return 0;
9e08cf42969709 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  844  
9e08cf42969709 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  845   err:
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  846  	list_for_each_entry_continue_reverse(link,
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  847  					&genpd->child_links,
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  848  					child_node) {
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  849  		genpd_sd_counter_dec(link->parent);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  850  		genpd_lock_nested(link->parent, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  851  		genpd_power_off(link->parent, false, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook          2020-07-08  852  		genpd_unlock(link->parent);
29e47e2173349e drivers/base/power/domain.c Ulf Hansson        2015-09-02  853  	}
9e08cf42969709 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  854  
3f241775c30365 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  855  	return ret;
3f241775c30365 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  856  }
3f241775c30365 drivers/base/power/domain.c Rafael J. Wysocki  2011-08-08  857  
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  858  static int genpd_dev_pm_start(struct device *dev)
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  859  {
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  860  	struct generic_pm_domain *genpd = dev_to_genpd(dev);
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  861  
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  862  	return genpd_start_dev(genpd, dev);
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  863  }
ea71c59669f17d drivers/base/power/domain.c Ulf Hansson        2019-10-16  864  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  865  static int genpd_dev_pm_qos_notifier(struct notifier_block *nb,
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  866  				     unsigned long val, void *ptr)
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  867  {
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  868  	struct generic_pm_domain_data *gpd_data;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  869  	struct device *dev;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  870  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  871  	gpd_data = container_of(nb, struct generic_pm_domain_data, nb);
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  872  	dev = gpd_data->base.dev;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  873  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  874  	for (;;) {
f38d1a6d002526 drivers/base/power/domain.c Ulf Hansson        2022-05-11  875  		struct generic_pm_domain *genpd = ERR_PTR(-ENODATA);
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  876  		struct pm_domain_data *pdd;
66d29d802ef3bf drivers/base/power/domain.c Ulf Hansson        2022-05-11  877  		struct gpd_timing_data *td;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  878  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  879  		spin_lock_irq(&dev->power.lock);
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  880  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  881  		pdd = dev->power.subsys_data ?
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  882  				dev->power.subsys_data->domain_data : NULL;
b4883ca449473e drivers/base/power/domain.c Viresh Kumar       2017-05-16  883  		if (pdd) {
66d29d802ef3bf drivers/base/power/domain.c Ulf Hansson        2022-05-11  884  			td = to_gpd_data(pdd)->td;
f38d1a6d002526 drivers/base/power/domain.c Ulf Hansson        2022-05-11  885  			if (td) {
66d29d802ef3bf drivers/base/power/domain.c Ulf Hansson        2022-05-11  886  				td->constraint_changed = true;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  887  				genpd = dev_to_genpd(dev);
f38d1a6d002526 drivers/base/power/domain.c Ulf Hansson        2022-05-11  888  			}
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  889  		}
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  890  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  891  		spin_unlock_irq(&dev->power.lock);
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  892  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  893  		if (!IS_ERR(genpd)) {
35241d12f750d2 drivers/base/power/domain.c Lina Iyer          2016-10-14  894  			genpd_lock(genpd);
f38d1a6d002526 drivers/base/power/domain.c Ulf Hansson        2022-05-11  895  			genpd->gd->max_off_time_changed = true;
35241d12f750d2 drivers/base/power/domain.c Lina Iyer          2016-10-14  896  			genpd_unlock(genpd);
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  897  		}
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  898  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  899  		dev = dev->parent;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01 @900  		if (!dev || dev->power.ignore_children)
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  901  			break;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  902  	}
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  903  
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  904  	return NOTIFY_DONE;
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  905  }
6ff7bb0d02f829 drivers/base/power/domain.c Rafael J. Wysocki  2012-05-01  906  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

