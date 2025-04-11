Return-Path: <devicetree+bounces-166196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC20A8692A
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2C5646146B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 23:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D34B2BE7AD;
	Fri, 11 Apr 2025 23:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="eArzfqjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8134278E72
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 23:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744414151; cv=none; b=V6CN+WRBtdoesN/izOZYT+iheWAKpHvsLqhPKyK+gQTbtB7N1mTK7J5IJsemswpInJKgpX3t5HZZzvvs/Fs1M4DBTJZEjUsR9+pXQvzs1HT32vR6mOU9eLG55YlIrfUOpBX2EUPSRhhF7mxpo6Eity3vzkbA8Ws+SvgTVl69ipE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744414151; c=relaxed/simple;
	bh=OJYsQ+v7XiUNwZtukFdPE6VB8Nuu1DBPLSvnq6QW3ZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XA0+H9MDi5j1KUXAuHnVUzggYYKN1W1nCkHqaw9KHxi9QGh83HAHm7D04O7k0YylV/KJETK8z88JK41xMJOLKztq8A456N8ZETdxOjWsC2cRbUPS7q1nNLwCfhnPDSq0OnP4SNfIGBupNAsOm4A+dP4D6r7Ka7jXN4ckktQ7s4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=eArzfqjF; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1744414149; x=1775950149;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OJYsQ+v7XiUNwZtukFdPE6VB8Nuu1DBPLSvnq6QW3ZM=;
  b=eArzfqjFBoZKv/zmdwXwCOegeHV9KQ1t0d1PZP8xO48hHUcmF2BSAXoA
   xAC6QsklHIV+w9e+2CGV4GQr2L4lMGCuGan7vWBX4kKx71zNbKo3okj9D
   uCG7WnJztZfBNCBidP3V+lrPAWQ2A6WTLGjdTBL8uAFB1xD5A2RamPc05
   +aUMZ9hfX58dC1x8fKwt4qTGUf0/QKYfWNqzlLF3VhrpASsbvPQSZAZr1
   PBMQaERdTbbCuwvY/Q21FV/Ekg/l25YFHN7+vwmbxmQAbfOvz7rvLM3lL
   1GCmWtQdwogNf4GXJH6qyXeAUrz7PqGdsvoK4V3o0pvHFJhM/TxrZip3C
   g==;
X-CSE-ConnectionGUID: bOka/c0xQCmQBbhm7OEOyA==
X-CSE-MsgGUID: /qM2PO8RS12lGeE3Rd16ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="46103720"
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; 
   d="scan'208";a="46103720"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2025 16:29:08 -0700
X-CSE-ConnectionGUID: 9OhknDFPTe+BVkcOYOy2Nw==
X-CSE-MsgGUID: GOGtGaBbSAWpi2xE8iassQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,206,1739865600"; 
   d="scan'208";a="166511778"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 11 Apr 2025 16:29:05 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1u3Nnz-000BR8-1g;
	Fri, 11 Apr 2025 23:29:03 +0000
Date: Sat, 12 Apr 2025 07:28:51 +0800
From: kernel test robot <lkp@intel.com>
To: Shyam Saini <shyamsaini@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev
Cc: oe-kbuild-all@lists.linux.dev, jgg@ziepe.ca, will@kernel.org,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 1/3] arm-smmu: move MSI_IOVA macro definitions
Message-ID: <202504120700.1UwOUvMR-lkp@intel.com>
References: <20250410225030.2528385-2-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410225030.2528385-2-shyamsaini@linux.microsoft.com>

Hi Shyam,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.15-rc1 next-20250411]
[cannot apply to soc/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shyam-Saini/arm-smmu-move-MSI_IOVA-macro-definitions/20250411-070014
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250410225030.2528385-2-shyamsaini%40linux.microsoft.com
patch subject: [PATCH v2 1/3] arm-smmu: move MSI_IOVA macro definitions
config: arc-randconfig-001-20250412 (https://download.01.org/0day-ci/archive/20250412/202504120700.1UwOUvMR-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250412/202504120700.1UwOUvMR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504120700.1UwOUvMR-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/iommu/arm/arm-smmu/arm-smmu.c: In function 'arm_smmu_get_resv_regions':
   drivers/iommu/arm/arm-smmu/arm-smmu.c:1597:42: error: 'MSI_IOVA_BASE' undeclared (first use in this function); did you mean 'PCI_IO_BASE'?
    1597 |         region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
         |                                          ^~~~~~~~~~~~~
         |                                          PCI_IO_BASE
   drivers/iommu/arm/arm-smmu/arm-smmu.c:1597:42: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/iommu/arm/arm-smmu/arm-smmu.c:1597:57: error: 'MSI_IOVA_LENGTH' undeclared (first use in this function)
    1597 |         region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
         |                                                         ^~~~~~~~~~~~~~~


vim +/MSI_IOVA_LENGTH +1597 drivers/iommu/arm/arm-smmu/arm-smmu.c

021bb8420d44cf5 drivers/iommu/arm-smmu.c              Robin Murphy 2016-09-14  1590  
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1591  static void arm_smmu_get_resv_regions(struct device *dev,
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1592  				      struct list_head *head)
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1593  {
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1594  	struct iommu_resv_region *region;
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1595  	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1596  
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19 @1597  	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
0251d0107cfb0bb drivers/iommu/arm/arm-smmu/arm-smmu.c Lu Baolu     2022-10-19  1598  					 prot, IOMMU_RESV_SW_MSI, GFP_KERNEL);
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1599  	if (!region)
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1600  		return;
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1601  
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1602  	list_add_tail(&region->list, head);
273df9635385b21 drivers/iommu/arm-smmu.c              Robin Murphy 2017-03-16  1603  
273df9635385b21 drivers/iommu/arm-smmu.c              Robin Murphy 2017-03-16  1604  	iommu_dma_get_resv_regions(dev, head);
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1605  }
f3ebee80b3131d4 drivers/iommu/arm-smmu.c              Eric Auger   2017-01-19  1606  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

