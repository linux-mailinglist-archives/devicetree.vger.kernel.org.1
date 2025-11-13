Return-Path: <devicetree+bounces-238398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A471C5AADA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:48:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDE463ACEF6
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672AF320CCD;
	Thu, 13 Nov 2025 23:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Triv6O5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789F813A258;
	Thu, 13 Nov 2025 23:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763077649; cv=none; b=IAfShb0N9eBzJmn+F2ckBLmaOuanhWbLpMBote3xTgv7ubrH1gJ+6SWclSWimFXm8JIApvND0pdZRAHijfCGfqyfoRgQo1BTTcvNjbsG7mwkOj5tbGawU0c/tRwjH4SBlR8Gt5L5pqhRYuw8vOs+MtE18qxSuictS8HEDNzkHJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763077649; c=relaxed/simple;
	bh=Y0Rj4ZRe5ERECMPOL/Tf/uw4avMT1HmU7UJTbesrIqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B7n/Ao/PvbPWX/GbSexx81oysdALIWC/shL38BXPf0LGtXFSpdCT88xdWBYjO5bOg4XgglNyVv9dbQGZMGyWIVWxlg26WV7rL1PX8vhhbAsUADGFSHquzoeTtgHx5WUzWAa5/IDYsy/5cuN5XEoWvtry50DJZO0EaPx31r8Z6xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Triv6O5Y; arc=none smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763077647; x=1794613647;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Y0Rj4ZRe5ERECMPOL/Tf/uw4avMT1HmU7UJTbesrIqc=;
  b=Triv6O5YyhEuDtftxm6vCYHXXjk8ZN3FtuAn3ElBBa45iSMSxx+8K6x/
   /erXCAJ6Ohuv/L6ofnnhO++IN3RwEqfdkjd/AsQXXkFIk9GYmzMos5/t6
   eaSShOF+VsdJmqPZJRFCGda0msFGqyp1d/y13JljQJ7wQOfs0SpSmr+HF
   xoxicZcfi1w7oAIjUfzwmJfZEem9tthdYR1pB5hbGbM3BX84wCaZ83EJN
   pQtgTn1uE0YDdktsRUch0cO5KCu4sOi8woj4fQ90QHwrlsFGdZRwBSsrj
   h9FBcw2l4vqeS5SnKP5OmB8W6vbudkCRQ0I4hi1SECX5YeebGzE2OkURK
   Q==;
X-CSE-ConnectionGUID: Ki4wgjdnSg+2PsWR45StnQ==
X-CSE-MsgGUID: S888nDTyRquS/ehiMQWm/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="87816449"
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; 
   d="scan'208";a="87816449"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 15:47:26 -0800
X-CSE-ConnectionGUID: Dq9YV3/3QBC9a11GdiOapg==
X-CSE-MsgGUID: nXbXL0z/T6OqbjgYjMo1qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; 
   d="scan'208";a="189267507"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 13 Nov 2025 15:47:21 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vJh27-0005zX-2L;
	Thu, 13 Nov 2025 23:47:19 +0000
Date: Fri, 14 Nov 2025 07:46:40 +0800
From: kernel test robot <lkp@intel.com>
To: Yuntao Wang <yuntao.wang@linux.dev>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: oe-kbuild-all@lists.linux.dev,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	James Morse <james.morse@arm.com>,
	Chen Zhou <chenzhou10@huawei.com>, Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: Re: [PATCH 04/10] of/reserved_mem: Use dt_root_addr_size_bytes()
 instead of open-coding it
Message-ID: <202511140700.auD70FDr-lkp@intel.com>
References: <20251112143520.233870-5-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112143520.233870-5-yuntao.wang@linux.dev>

Hi Yuntao,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.18-rc5 next-20251113]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yuntao-Wang/of-fdt-Introduce-dt_root_addr_size_cells-and-dt_root_addr_size_bytes/20251112-232000
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20251112143520.233870-5-yuntao.wang%40linux.dev
patch subject: [PATCH 04/10] of/reserved_mem: Use dt_root_addr_size_bytes() instead of open-coding it
config: i386-randconfig-011-20251114 (https://download.01.org/0day-ci/archive/20251114/202511140700.auD70FDr-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.4.0-5) 12.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251114/202511140700.auD70FDr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511140700.auD70FDr-lkp@intel.com/

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: vmlinux: section mismatch in reference: dt_root_addr_size_bytes+0x1 (section: .text) -> dt_root_size_cells (section: .init.data)
>> WARNING: modpost: vmlinux: section mismatch in reference: dt_root_addr_size_bytes+0x7 (section: .text) -> dt_root_addr_cells (section: .init.data)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

