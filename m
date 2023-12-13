Return-Path: <devicetree+bounces-24732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F19F81102F
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B186B1C209F4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F34924200;
	Wed, 13 Dec 2023 11:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="QDOsAyXQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867F3170A;
	Wed, 13 Dec 2023 03:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702467237; x=1734003237;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dL6Em6F9/TJ8e69UFYykBz6xgC2V73mBvEEwVDeutqU=;
  b=QDOsAyXQ5Xej77dKJp6uRLZZ4kqFCiXuTMkb6VT96UrH6Si8sMVRzovg
   gIPp6KADgdAcDNsepmRjx2fta57shXwW4VtJthCJ0o2bV7/k+mpDMvu2v
   llxHVJKJgt1PQoSq8mHH5y4WRc3j5IQbm0Awxqs23YuCuyqV5glqMAPOZ
   OBfRHuhRmlfoyYMoinXNTrcZMX78S663WBIm3yUh7suNcmTRPI1f9NktC
   Uc6M2dolekvYV40UCkYiqer8e1j31GBrgpTvxymM/5mEoc7mUkPHfXLbK
   jf5zlmlHTIJ4xoXWP9jwlwcKrvFRgwrl2V5KzwO4lxQDMu0S3+38YJyF1
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="394702323"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="394702323"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 03:33:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897302957"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="897302957"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 13 Dec 2023 03:33:04 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rDNU5-000KUJ-2l;
	Wed, 13 Dec 2023 11:33:01 +0000
Date: Wed, 13 Dec 2023 19:32:49 +0800
From: kernel test robot <lkp@intel.com>
To: Alexander Graf <graf@amazon.com>, linux-kernel@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-trace-kernel@vger.kernel.org,
	linux-mm@kvack.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kexec@lists.infradead.org,
	linux-doc@vger.kernel.org, x86@kernel.org,
	Eric Biederman <ebiederm@xmission.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	Ashish Kalra <ashish.kalra@amd.com>,
	James Gowans <jgowans@amazon.com>,
	Stanislav Kinsburskii <skinsburskii@linux.microsoft.com>,
	arnd@arndb.de, pbonzini@redhat.com, madvenka@linux.microsoft.com,
	Anthony Yznaga <anthony.yznaga@oracle.com>,
	Usama Arif <usama.arif@bytedance.com>,
	David Woodhouse <dwmw@amazon.co.uk>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 02/15] memblock: Declare scratch memory as CMA
Message-ID: <202312131930.gMiphjju-lkp@intel.com>
References: <20231213000452.88295-3-graf@amazon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231213000452.88295-3-graf@amazon.com>

Hi Alexander,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tip/x86/core]
[also build test WARNING on arm64/for-next/core akpm-mm/mm-everything linus/master v6.7-rc5 next-20231213]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Alexander-Graf/mm-memblock-Add-support-for-scratch-memory/20231213-080941
base:   tip/x86/core
patch link:    https://lore.kernel.org/r/20231213000452.88295-3-graf%40amazon.com
patch subject: [PATCH 02/15] memblock: Declare scratch memory as CMA
config: arc-allnoconfig (https://download.01.org/0day-ci/archive/20231213/202312131930.gMiphjju-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231213/202312131930.gMiphjju-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312131930.gMiphjju-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> mm/memblock.c:2153:13: warning: 'reserve_scratch_mem' defined but not used [-Wunused-function]
    2153 | static void reserve_scratch_mem(phys_addr_t start, phys_addr_t end)
         |             ^~~~~~~~~~~~~~~~~~~


vim +/reserve_scratch_mem +2153 mm/memblock.c

  2152	
> 2153	static void reserve_scratch_mem(phys_addr_t start, phys_addr_t end)
  2154	{
  2155	#ifdef CONFIG_MEMBLOCK_SCRATCH
  2156		ulong start_pfn = pageblock_start_pfn(PFN_DOWN(start));
  2157		ulong end_pfn = pageblock_align(PFN_UP(end));
  2158		ulong pfn;
  2159	
  2160		for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
  2161			/* Mark as CMA to prevent kernel allocations in it */
  2162			set_pageblock_migratetype(pfn_to_page(pfn), MIGRATE_CMA);
  2163		}
  2164	#endif
  2165	}
  2166	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

