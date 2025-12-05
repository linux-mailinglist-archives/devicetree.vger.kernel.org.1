Return-Path: <devicetree+bounces-244533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 739A8CA61C6
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 05:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A2FC31C02A2
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 04:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E39C2DF125;
	Fri,  5 Dec 2025 04:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OWPP7Uqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05672D5924;
	Fri,  5 Dec 2025 04:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764909244; cv=none; b=boVwoTGsEaP/446FvXijWC1xQNlsvz0bgCxeNK9kbX5rwyvNPTkVVxDXztgQOR6PAR7rC4r7mBgWU/ookzAHnJB+kUfavGxZCGnVSMsibYcrBF4PnX1gWlaNB7FjHvTraB7Ylk0y+CTVO/hhPRfdjW0qLF4BgosAGb7AQkF5/t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764909244; c=relaxed/simple;
	bh=uvNop/61wZWb1qbOjf2+BxB4b3V7SWP+mpy4JmXFPk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qwwgfbWG8ro1ac1xgsaqZNlsNlFqrZYqJR8dZW7buMWJI2iBzW3Z2C7m1SmxuPxvHpqHxS/zcFBWpebXPIUrxz6GeTFGC9PcD6AnMhf0n4iblXpbR7Ekh52Kms/2vr5yWtqA4OuPoAtgDBSovOW1n47YLKnYzewxVyNJrLMUD+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OWPP7Uqu; arc=none smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764909243; x=1796445243;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uvNop/61wZWb1qbOjf2+BxB4b3V7SWP+mpy4JmXFPk4=;
  b=OWPP7UquKNMCwI5nF7fccxB3xWNOKJZdb2a8cy4oeN0ot5+jzvCv/H2z
   +742fir/5PKignUxuUroi2yxPR0ACTbVmqlFxdQVPieGwtlXGEp9mjnpm
   8oR1TooR/MNLELOyEuzXWpgHmUhQOUhetsz2e0fA5aauwQXv3tjWm7ql7
   DtzVURd6bplbqbh/ujb80S8sSPHpQbVEH8pAPhuoE3nwef2UMEE8gMj5m
   YV5mdI3j97tcjKY7fyszAuF5PpJr59XDtcReJMui0KHo78GznZX3IEKpl
   mdbS4qJXz724WY1K0el88oSbLvb/iI6gDV5uQdgi7jiHHkebunAKAqcKU
   w==;
X-CSE-ConnectionGUID: /GM7aoFZR3qE51gNGjYCvQ==
X-CSE-MsgGUID: it+AyZoWSUOMgCXjdFhXVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="70790469"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; 
   d="scan'208";a="70790469"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2025 20:34:01 -0800
X-CSE-ConnectionGUID: J+DagLs/RICSWdPP1WrjAQ==
X-CSE-MsgGUID: QnRLQlv0TZOBWolRgBDNiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; 
   d="scan'208";a="200318239"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 04 Dec 2025 20:33:56 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vRNVx-00000000Eal-3Le1;
	Fri, 05 Dec 2025 04:33:53 +0000
Date: Fri, 5 Dec 2025 12:33:45 +0800
From: kernel test robot <lkp@intel.com>
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>,
	robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
	robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
	bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
	charan.kalla@oss.qualcomm.com, prakash.gupta@oss.qualcomm.com,
	vikash.garodia@oss.qualcomm.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, vijayanand.jitta@oss.qualcomm.com
Subject: Re: [PATCH v2 3/3] of: Respect #{iommu,msi}-cells in maps
Message-ID: <202512051124.ot03fX1c-lkp@intel.com>
References: <20251204095530.8627-4-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204095530.8627-4-vijayanand.jitta@oss.qualcomm.com>

Hi Vijayanand,

kernel test robot noticed the following build errors:

[auto build test ERROR on xen-tip/linux-next]
[also build test ERROR on v6.18]
[cannot apply to robh/for-next pci/next pci/for-linus linus/master next-20251204]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vijayanand-Jitta/of-Add-convenience-wrappers-for-of_map_id/20251204-180719
base:   https://git.kernel.org/pub/scm/linux/kernel/git/xen/tip.git linux-next
patch link:    https://lore.kernel.org/r/20251204095530.8627-4-vijayanand.jitta%40oss.qualcomm.com
patch subject: [PATCH v2 3/3] of: Respect #{iommu,msi}-cells in maps
config: i386-buildonly-randconfig-001-20251205 (https://download.01.org/0day-ci/archive/20251205/202512051124.ot03fX1c-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251205/202512051124.ot03fX1c-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512051124.ot03fX1c-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from kernel/sched/rq-offsets.c:5:
   In file included from kernel/sched/sched.h:31:
   In file included from include/linux/cpufreq.h:17:
>> include/linux/of.h:918:1: error: expected identifier or '('
     918 | {
         | ^
   1 error generated.
   make[3]: *** [scripts/Makefile.build:182: kernel/sched/rq-offsets.s] Error 1 shuffle=4056561518
   make[3]: Target 'prepare' not remade because of errors.
   make[2]: *** [Makefile:1280: prepare0] Error 2 shuffle=4056561518
   make[2]: Target 'prepare' not remade because of errors.
   make[1]: *** [Makefile:248: __sub-make] Error 2 shuffle=4056561518
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:248: __sub-make] Error 2 shuffle=4056561518
   make: Target 'prepare' not remade because of errors.


vim +918 include/linux/of.h

0384e8c6c6fa49 Pantelis Antoniou 2015-01-21  914  
c56888c32d643b Robin Murphy      2025-12-04  915  static inline int of_map_id(const struct device_node *np, u32 id, const char *map_name,
c56888c32d643b Robin Murphy      2025-12-04  916  			    const char *cells_name, const char *map_mask_name,
c56888c32d643b Robin Murphy      2025-12-04  917  			    struct of_map_id_arg *arg);
2a6db719c92dbf Nipun Gupta       2018-09-10 @918  {
2a6db719c92dbf Nipun Gupta       2018-09-10  919  	return -EINVAL;
2a6db719c92dbf Nipun Gupta       2018-09-10  920  }
2a6db719c92dbf Nipun Gupta       2018-09-10  921  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

