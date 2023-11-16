Return-Path: <devicetree+bounces-16142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E117EDB9B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 07:36:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 230221F237CB
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 06:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ED0120E7;
	Thu, 16 Nov 2023 06:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="gX0jXVQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AECEED44;
	Wed, 15 Nov 2023 22:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700116558; x=1731652558;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NhJFAkjBjxz5fsTOs2J5L3f/p7315LrIQIeFZVA13Qc=;
  b=gX0jXVQ0Kl9BURLQTjTLLc8p+h4tw6mFQZrhGNkKzlZBLzm1OLLO0ooE
   KMmCfYY9RZT0kOzYT6zD2WTeHzEFQpX6IDyGFoJglYhgf6FbiygUVQzvz
   aLentn6XEt9fsev7ZmdzJv1/VvpJAc71px2O1Ov12S6mgbVhiiB5vq+qC
   75humB1I1avKtoy5aeE0tDqwKJ9YrL+BE563n98aVTR45uKqGREbHz2Uc
   hR+honIZb2LayGX3xR+jAntK20xKZOXTFVK30fuXoULxbb4zzRvPW/66j
   E/54eI83RcuNDQqfonHRmcmszdYWtP5UYqZ2LJ5zh8/fvL6SLwBYxkTRf
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="457519149"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="457519149"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2023 22:35:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="909017849"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="909017849"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2023 22:35:55 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r3Vyj-0001P9-0n;
	Thu, 16 Nov 2023 06:35:53 +0000
Date: Thu, 16 Nov 2023 14:35:52 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Davis <afd@ti.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Andrew Davis <afd@ti.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: clock: Convert keystone-gate.txt to
 YAML
Message-ID: <202311161400.qg1QNgEh-lkp@intel.com>
References: <20231114212911.429951-2-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114212911.429951-2-afd@ti.com>

Hi Andrew,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on vkoul-dmaengine/next broonie-spi/for-next clk/clk-next linus/master v6.7-rc1 next-20231116]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andrew-Davis/dt-bindings-clock-Convert-keystone-gate-txt-to-YAML/20231115-053346
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20231114212911.429951-2-afd%40ti.com
patch subject: [PATCH v2 2/4] dt-bindings: clock: Convert keystone-gate.txt to YAML
reproduce: (https://download.01.org/0day-ci/archive/20231116/202311161400.qg1QNgEh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311161400.qg1QNgEh-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt references a file that doesn't exist: Documentation/devicetree/bindings/clock/keystone-gate.txt

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

