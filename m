Return-Path: <devicetree+bounces-133240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3859FA040
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 12:04:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C8EE167002
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 11:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BD5B1F0E44;
	Sat, 21 Dec 2024 11:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="LmAVfz5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894CB163;
	Sat, 21 Dec 2024 11:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734779071; cv=none; b=nYE7T7Z89zwk4v4lSnvAFNbl/V6E/rpARWA75JCgtJeCPxkB3hbUd9huNbtyQgFY4trpJ3iH7iPvVdleEwzWKtNXdWMYYerp4YkrEe2MBUpISlyuo6org/bqOdRu/cl6GrI2jx9sDHZ94fJ72isXZ06bWcTdwGw2KJRK6/XjYGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734779071; c=relaxed/simple;
	bh=ES8Y72tN7tCHNq2hsEeiaznpfJMqN6LAm9ib+DuisM4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKGKYE2Z5w2oUnQc6N3YMpTGdE1J6pAXuIKMZS2WT3BzzGey33n7p67+NeYL591dLeR+ubv1UM+jNscLGVzjzJrVTVTLQUHvd7BMdES36q/bp0ukVy2kxGluQNgr7hV3+ndrXbrvPKK0ZjaXn6iMXsGVNyQrRHBJO6gIxBwxwuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=LmAVfz5e; arc=none smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734779070; x=1766315070;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ES8Y72tN7tCHNq2hsEeiaznpfJMqN6LAm9ib+DuisM4=;
  b=LmAVfz5ebS24+5eUmdW/2PU+S/hkeXA9VY5TuS7UIEXqduf8fOTBXXcd
   +4cPjpsUAD+zqGpXs14K6f3aG9PupEcKbXMY0HBfTsLoeLMttxIYaE5T7
   ZCYUPthYmSYmIKe/EaFeqlGn0sVmi5jJcFxzwPJsDIOwUiKrBp1/1ae3K
   cdeDQ3F0sU/aMvJG9AawyCL0GY3ZW2wNtZOZOy8J+Lc+NDnWkZP7Ubo0L
   bYp6v8xmKcW8ObOQ7GGcJrXsGb67XnUrdYzZaVDNWhsh8Dwj3yyWEmaAD
   Ug5Bs1EW/Ne4I9jkWYvk5JvCEeztoVQOvmEUOGo4Wz7MIRC2sV2fMXvkm
   A==;
X-CSE-ConnectionGUID: VTXAWAr6TW+7h99AKuCFEA==
X-CSE-MsgGUID: MI19gvH4TZu+jnVqFKDCRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="39253551"
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; 
   d="scan'208";a="39253551"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Dec 2024 03:04:29 -0800
X-CSE-ConnectionGUID: uFj1EdARQcqphn1GerJJrA==
X-CSE-MsgGUID: Lnl/soBsT22O45oTf0M77A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; 
   d="scan'208";a="99145758"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
  by fmviesa010.fm.intel.com with ESMTP; 21 Dec 2024 03:04:26 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tOxHT-000295-2w;
	Sat, 21 Dec 2024 11:04:23 +0000
Date: Sat, 21 Dec 2024 19:03:27 +0800
From: kernel test robot <lkp@intel.com>
To: Crystal Guo <crystal.guo@mediatek.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH 1/2] memory/mediatek: Add an interface to get current DDR
 data rate
Message-ID: <202412211805.ulwSEmZa-lkp@intel.com>
References: <20241212090029.13692-2-crystal.guo@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241212090029.13692-2-crystal.guo@mediatek.com>

Hi Crystal,

kernel test robot noticed the following build errors:

[auto build test ERROR on krzk-mem-ctrl/for-next]
[also build test ERROR on robh/for-next krzk-dt/for-next linus/master v6.13-rc3 next-20241220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Crystal-Guo/memory-mediatek-Add-an-interface-to-get-current-DDR-data-rate/20241212-170306
base:   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux-mem-ctrl.git for-next
patch link:    https://lore.kernel.org/r/20241212090029.13692-2-crystal.guo%40mediatek.com
patch subject: [PATCH 1/2] memory/mediatek: Add an interface to get current DDR data rate
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20241221/202412211805.ulwSEmZa-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 9daf10ff8f29ba3a88a105aaa9d2379c21b77d35)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241221/202412211805.ulwSEmZa-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412211805.ulwSEmZa-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/memory/mediatek/mtk-dramc.c:300:12: error: incompatible function pointer types initializing 'void (*)(struct platform_device *)' with an expression of type 'int (struct platform_device *)' [-Wincompatible-function-pointer-types]
     300 |         .remove = dramc_remove,
         |                   ^~~~~~~~~~~~
   1 error generated.


vim +300 drivers/memory/mediatek/mtk-dramc.c

   297	
   298	static struct platform_driver dramc_drv = {
   299		.probe = dramc_probe,
 > 300		.remove = dramc_remove,
   301		.driver = {
   302			.name = "dramc_drv",
   303			.owner = THIS_MODULE,
   304			.of_match_table = dramc_of_ids,
   305		},
   306	};
   307	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

