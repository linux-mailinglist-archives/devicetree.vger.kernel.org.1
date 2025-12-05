Return-Path: <devicetree+bounces-244532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9D1CA611A
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 05:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EA8E306451E
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 04:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965D9271470;
	Fri,  5 Dec 2025 04:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="aBWE4Xr4"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151D2246BCD;
	Fri,  5 Dec 2025 04:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764907321; cv=none; b=Ifl9e7+vZyJ/AJ3+ZSgOrWexVmX+kNIWF/k+XzcocQnyFAp2A0onoOeNXSSZfkLAb+Utwl0plHpYzWUgo7jZTt4N3ttTSd+bLWNe03Cda/eAcaRyxiiSAmMeFofv6itjrBDdHzm75oPqGVRKPHSScJfQlWcMbYmT+Cg4+qmLONw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764907321; c=relaxed/simple;
	bh=/HYSq2q8FIz1wnGGNePYMUnGmk31R61gQ3VbZFQprkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q8J+F/b0L5QoWNkhob4EA6pZoFFbKLlpdj/RwEMr2wfgK4p4r90cd0jOnHhwIK6mh2PdURMZZ7aDtvj2fM2ephxOho7+psXGpQZUPgw2e5a8k99xlskEdxPawGedkLnsG2aTPSF4FqFJvLYV7wVftzwqOJ6NKAeLMSfPMOxH6BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=aBWE4Xr4; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764907320; x=1796443320;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/HYSq2q8FIz1wnGGNePYMUnGmk31R61gQ3VbZFQprkI=;
  b=aBWE4Xr4nXs7BQwpf6sZ8MxQgoxpBFco8yyXbMjBI8yecb1M2dipZAJb
   dp3Nt5HAcOnBQh8WnZyEYL4vw62yEj6qsm38/8VFtulAC/RuBQlT7TWYk
   SCj6FB6YClR8Uvc9g0lXTBnPs8YTUZxU2K8eVvPTVaRLz5dAWhkn4a3kb
   mRRQtc0/aIa6Fi5OfUIeBE5Zs9gmrl8pAZ0BO0z5k9M8RlpvTyl+5oQiI
   xX/WSI9I3ClgVIK7B/eYW58WrSf//jskQQrvIvxn7rgyr1rAu/QFVo11T
   FMYAUKheF4cWV9ZuQi5vGTAETLSVhDEjY4D+nPrdwxXOE1PPiarqw224Y
   A==;
X-CSE-ConnectionGUID: YNZAUtV9T96Ho5R2lpFz0A==
X-CSE-MsgGUID: dfsCb5FWS1mAVYHwWdkKpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="77558376"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; 
   d="scan'208";a="77558376"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2025 20:01:59 -0800
X-CSE-ConnectionGUID: VM1ts6KRROOxQ4VmbQSegw==
X-CSE-MsgGUID: epgX+wDHRP6/T/3YhI2TCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; 
   d="scan'208";a="199663552"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 04 Dec 2025 20:01:54 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vRN0y-00000000EZJ-2Fku;
	Fri, 05 Dec 2025 04:01:52 +0000
Date: Fri, 5 Dec 2025 12:01:41 +0800
From: kernel test robot <lkp@intel.com>
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>,
	robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
	robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
	bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
	charan.kalla@oss.qualcomm.com, prakash.gupta@oss.qualcomm.com,
	vikash.garodia@oss.qualcomm.com
Cc: oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	vijayanand.jitta@oss.qualcomm.com
Subject: Re: [PATCH v2 3/3] of: Respect #{iommu,msi}-cells in maps
Message-ID: <202512051121.ivp77JHU-lkp@intel.com>
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
config: alpha-allnoconfig (https://download.01.org/0day-ci/archive/20251205/202512051121.ivp77JHU-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251205/202512051121.ivp77JHU-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512051121.ivp77JHU-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/cpufreq.h:17,
                    from kernel/sched/sched.h:31,
                    from kernel/sched/rq-offsets.c:5:
>> include/linux/of.h:918:1: error: expected identifier or '(' before '{' token
     918 | {
         | ^
>> include/linux/of.h:915:19: warning: 'of_map_id' used but never defined
     915 | static inline int of_map_id(const struct device_node *np, u32 id, const char *map_name,
         |                   ^~~~~~~~~
   make[3]: *** [scripts/Makefile.build:182: kernel/sched/rq-offsets.s] Error 1
   make[3]: Target 'prepare' not remade because of errors.
   make[2]: *** [Makefile:1280: prepare0] Error 2
   make[2]: Target 'prepare' not remade because of errors.
   make[1]: *** [Makefile:248: __sub-make] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:248: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +918 include/linux/of.h

0384e8c6c6fa49d Pantelis Antoniou 2015-01-21  914  
c56888c32d643b3 Robin Murphy      2025-12-04 @915  static inline int of_map_id(const struct device_node *np, u32 id, const char *map_name,
c56888c32d643b3 Robin Murphy      2025-12-04  916  			    const char *cells_name, const char *map_mask_name,
c56888c32d643b3 Robin Murphy      2025-12-04  917  			    struct of_map_id_arg *arg);
2a6db719c92dbfe Nipun Gupta       2018-09-10 @918  {
2a6db719c92dbfe Nipun Gupta       2018-09-10  919  	return -EINVAL;
2a6db719c92dbfe Nipun Gupta       2018-09-10  920  }
2a6db719c92dbfe Nipun Gupta       2018-09-10  921  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

