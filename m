Return-Path: <devicetree+bounces-275723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Vl/CN9V8tWlf1AAAu9opvQ
	(envelope-from <devicetree+bounces-275723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:20:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B7F28DA47
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3FA1301BC19
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A68F23E334;
	Sat, 14 Mar 2026 15:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="NrZ+8Tw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07947202997;
	Sat, 14 Mar 2026 15:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773501650; cv=none; b=h9+6/t67FlrKJmNQKfsfEVamgukti/3Qs60RjOoiPBLwKCJt96iK04yIqjEzS1i3dMZiIHZkJq7tAPfhiVxjZ1C9qfrsnQioRqawNMc6B4nZvCmhytRj4legX1I0bv4GY3mLbotdpcux5ExmmqtW3UdAE9B01WJ/VxQvWFpg/hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773501650; c=relaxed/simple;
	bh=1FtGcHaPzohD23/qb3jPURbq6HHqLOzLRiH5ow2x+iE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GbS6IAVIx6sSEZFgNrrPQJExCcQOEOjFvptXZsWh2/pek6hWtVVKbuNMoEM4veRUy3GNWmH2uZVmBE/oA7HtZ2YL7RD9gTiQw095vdz0M0h4ga1Xds2647YoVFt8KokH+ECpbPFhVA2RofgQ8HB8a3bKHWK2SdJUdJkUJdX3N8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=NrZ+8Tw5; arc=none smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773501649; x=1805037649;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1FtGcHaPzohD23/qb3jPURbq6HHqLOzLRiH5ow2x+iE=;
  b=NrZ+8Tw52c6j1AgcNiy2ThC7Va7ZKRT6t8r5oyvrGzi4+P5GJBktspKW
   HGCeAJvFZAxfmS/QugkjcaWgDOVAXnhSYO4ajdgQzisNdvd+oxQY+9LBu
   5L3rvIaHqMhV+sJ4lB9Njth/ywUn+9uj5W8bPEt3GJ1+YdYBPAg9jczZU
   eJxy1aCOMoaqK5Nn2oVeTmCdfCft9U1aw9BA8VctQXFaXLhLTss9PaHDd
   32Sh4/K6rVpuLJ3GEQ7vWsRR0gBcmXJOvbnZTCyuvxGGpdkLpP2PDRB0n
   MjNdDTKSDBoA3uKudxJN7UJuFwrq6Q+BUfjJfsSrK9ssfsuGOl5cm5fqb
   w==;
X-CSE-ConnectionGUID: 9JcFyyEbR2SVUwRvMrCGxQ==
X-CSE-MsgGUID: fxuEdJCETJqnh3VlZecm9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11729"; a="78476191"
X-IronPort-AV: E=Sophos;i="6.23,119,1770624000"; 
   d="scan'208";a="78476191"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2026 08:20:48 -0700
X-CSE-ConnectionGUID: qNbf0hHhQhu2DsmAtre4nA==
X-CSE-MsgGUID: RSSzsBKMTTmMexgmUNZJ8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,119,1770624000"; 
   d="scan'208";a="221663544"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
  by orviesa007.jf.intel.com with ESMTP; 14 Mar 2026 08:20:45 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w1QnC-000000005I7-1ruy;
	Sat, 14 Mar 2026 15:20:42 +0000
Date: Sat, 14 Mar 2026 23:20:22 +0800
From: kernel test robot <lkp@intel.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mm@kvack.org, iommu@lists.linux.dev
Cc: oe-kbuild-all@lists.linux.dev,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/7] of: reserved_mem: switch to ops based OF_DECLARE()
Message-ID: <202603142347.aops46Bf-lkp@intel.com>
References: <20260313150802.1121442-4-m.szyprowski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313150802.1121442-4-m.szyprowski@samsung.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275723-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url,git-scm.com:url]
X-Rspamd-Queue-Id: 25B7F28DA47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Marek,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on tegra/for-next akpm-mm/mm-everything linus/master v7.0-rc3 next-20260311]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Marek-Szyprowski/of-reserved_mem-remove-fdt-node-from-the-structure/20260314-023123
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20260313150802.1121442-4-m.szyprowski%40samsung.com
patch subject: [PATCH 3/7] of: reserved_mem: switch to ops based OF_DECLARE()
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20260314/202603142347.aops46Bf-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260314/202603142347.aops46Bf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603142347.aops46Bf-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/memory/tegra/tegra210-emc-table.c: In function 'tegra210_emc_table_init':
>> drivers/memory/tegra/tegra210-emc-table.c:79:22: error: 'tegra210_emc_table_ops' undeclared (first use in this function); did you mean 'tegra210_emc_table_init'?
      79 |         rmem->ops = &tegra210_emc_table_ops;
         |                      ^~~~~~~~~~~~~~~~~~~~~~
         |                      tegra210_emc_table_init
   drivers/memory/tegra/tegra210-emc-table.c:79:22: note: each undeclared identifier is reported only once for each function it appears in


vim +79 drivers/memory/tegra/tegra210-emc-table.c

10de21148f7d28 Joseph Lo        2019-05-29  72  
6888259214366b Marek Szyprowski 2026-03-13  73  static int tegra210_emc_table_init(unsigned long node,
6888259214366b Marek Szyprowski 2026-03-13  74  				   struct reserved_mem *rmem)
10de21148f7d28 Joseph Lo        2019-05-29  75  {
10de21148f7d28 Joseph Lo        2019-05-29  76  	pr_debug("Tegra210 EMC table at %pa, size %lu bytes\n", &rmem->base,
10de21148f7d28 Joseph Lo        2019-05-29  77  		 (unsigned long)rmem->size);
10de21148f7d28 Joseph Lo        2019-05-29  78  
10de21148f7d28 Joseph Lo        2019-05-29 @79  	rmem->ops = &tegra210_emc_table_ops;
10de21148f7d28 Joseph Lo        2019-05-29  80  
10de21148f7d28 Joseph Lo        2019-05-29  81  	return 0;
10de21148f7d28 Joseph Lo        2019-05-29  82  }
f954eaa20bd915 Marek Szyprowski 2026-03-13  83  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

