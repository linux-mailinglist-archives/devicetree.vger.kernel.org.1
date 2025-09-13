Return-Path: <devicetree+bounces-216687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED30B55AA9
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 02:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA4991D607B0
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 00:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AB41BC3F;
	Sat, 13 Sep 2025 00:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="IKq+su/0"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3289B11CA9
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 00:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757723043; cv=none; b=mbZ6JCX9Z1FRHsCDqU62WeWAxsJwYM5GYkbm4OwLH1DYTeWJiJDiW/XVoZZ8ZK5XaNyY7x8dIentgGfaY1ZjXgWsFcmMiJp07PaPaICxVhU/PbZYoLNuZ47Je0GxKOE8CvPOBSy4I9/yiaGTYuiA8d5ku6NKMZ2rVEHP+EQ08cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757723043; c=relaxed/simple;
	bh=LcYX22alJBWBcVaGqP0BLEghs+L/k9ZQqKP706ZqU8Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XwdsWX/4Vchakk2+DXQPXuHlOdhS/5K58848RA+JAYreoCr+/ei03E3FFATlCRVz24Wko8GmKGzJrNVVUrD6EJymPQGgFDQCIGEBDOaie6+NEz7viADmjOiJUbeTXuG1XpZ+gfnc3P5K6gHMHAy1RpRpjYqhcAGTICP/dB3I62o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=IKq+su/0; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757723042; x=1789259042;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LcYX22alJBWBcVaGqP0BLEghs+L/k9ZQqKP706ZqU8Q=;
  b=IKq+su/0RGtEf7fv0vI/12Gs1pE51YQHU3sgcGB/2DudkcYGAYOoyN1d
   uop67yXMGsq7Nl8E0QTXBMBjdRxycxhjQWiUJSD9QgdEyapMk96EC2ona
   KDVpIWlHOMepnYxjt/11MW3E8M0gPtmzAyCNPVNunMgyJHqwPLMy8i3V5
   ts+jFWHaKcKK7LIOCNIt16jGwlWGv6XI3QdSzbzm7jnJF4MqWw+44UDOg
   S2eCG73Wk7nToN/dj8DFUDYUzU2D2quOTR3SLgNzFlg13qMC88eY36s6c
   AHCxs5gr8iHqbgn75qyq73mPXErGEloKzfFCI1oT0gAksC+TM5gQntah7
   A==;
X-CSE-ConnectionGUID: 5VKiBbjWTYqVNJmbMKgT6A==
X-CSE-MsgGUID: URsPoqqSTneN66aXV09mkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="77683415"
X-IronPort-AV: E=Sophos;i="6.18,260,1751266800"; 
   d="scan'208";a="77683415"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2025 17:24:01 -0700
X-CSE-ConnectionGUID: ROkWgZtmSS2R4fjBU22Qww==
X-CSE-MsgGUID: MAL35EIDS72UkFilz2BhNg==
X-ExtLoop1: 1
Received: from lkp-server02.sh.intel.com (HELO eb5fdfb2a9b7) ([10.239.97.151])
  by fmviesa003.fm.intel.com with ESMTP; 12 Sep 2025 17:23:57 -0700
Received: from kbuild by eb5fdfb2a9b7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uxE3W-0001H6-2F;
	Sat, 13 Sep 2025 00:23:54 +0000
Date: Sat, 13 Sep 2025 08:23:37 +0800
From: kernel test robot <lkp@intel.com>
To: Shyam Saini <shyamsaini@linux.microsoft.com>, thierry.reding@gmail.com,
	robin.murphy@arm.com, robh@kernel.org, joro@8bytes.org,
	jgg@ziepe.ca
Cc: oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 4/4] drivers: iommu: refactor arm_smmu_get_resv_regions
Message-ID: <202509130836.idXoj3z8-lkp@intel.com>
References: <20250909154600.910110-5-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909154600.910110-5-shyamsaini@linux.microsoft.com>

Hi Shyam,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.17-rc5 next-20250912]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shyam-Saini/arm-smmu-move-MSI_IOVA-macro-definitions/20250909-235141
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250909154600.910110-5-shyamsaini%40linux.microsoft.com
patch subject: [PATCH v4 4/4] drivers: iommu: refactor arm_smmu_get_resv_regions
config: arm64-randconfig-002-20250913 (https://download.01.org/0day-ci/archive/20250913/202509130836.idXoj3z8-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250913/202509130836.idXoj3z8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509130836.idXoj3z8-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "iommu_set_sw_msi" [drivers/iommu/arm/arm-smmu/arm_smmu.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

