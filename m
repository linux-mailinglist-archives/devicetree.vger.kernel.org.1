Return-Path: <devicetree+bounces-12352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC8A7D9065
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ECD31C20EB8
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37D7DF68;
	Fri, 27 Oct 2023 07:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Ppia+k/A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A4B10A02
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:54:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CAF2196;
	Fri, 27 Oct 2023 00:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698393260; x=1729929260;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9f7KCpcClMX4zOG+PhlFub8CGNanF6tmYlOOi+MezcI=;
  b=Ppia+k/AbKndg2sOnN7Y1pfjqyz70ZXBAipQouq9wVGYmOkc+lzzA1By
   ARcBywpygSU4CCByJM4DKwH/HnSNvW9/IOnYFj5dZShrHcPWl5Gd5yUP/
   mX5yR4f5ZnTeu78k0hyZwkWn6LazJPNkyWbV9I6Y+pUArqfB5soGWT3X6
   vpdpW5D7QTzpeCooJybEudKbSwhlUhN0TnEp27OIOcxWR3aE3qs5jYRh4
   G/AxxvyavlI/6QAr2jujMakZLz8G9/Q2CbWAG0zN6aG8eKd0wud5Gif8A
   77Bc2cF8n9AgNEm3du0gObap2e+XynasrpL+rv7IpxIfiXNHdWIE3q80J
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="473969570"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="473969570"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2023 00:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="709343915"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="709343915"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Oct 2023 00:54:15 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qwHfZ-000Abn-1k;
	Fri, 27 Oct 2023 07:54:13 +0000
Date: Fri, 27 Oct 2023 15:53:51 +0800
From: kernel test robot <lkp@intel.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Lizhi Hou <lizhi.hou@amd.com>
Cc: oe-kbuild-all@lists.linux.dev, Max Zhen <max.zhen@amd.com>,
	Sonal Santan <sonal.santan@amd.com>,
	Stefano Stabellini <stefano.stabellini@xilinx.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Bjorn Helgaas <helgaas@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH v2 3/3] of: unittest: Add tests for address translations
Message-ID: <202310271513.8MUErCK4-lkp@intel.com>
References: <20231017110221.189299-4-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017110221.189299-4-herve.codina@bootlin.com>

Hi Herve,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.6-rc7 next-20231026]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Herve-Codina/of-address-Fix-address-translation-when-address-size-is-greater-than-2/20231017-190414
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20231017110221.189299-4-herve.codina%40bootlin.com
patch subject: [PATCH v2 3/3] of: unittest: Add tests for address translations
config: s390-randconfig-002-20231027 (https://download.01.org/0day-ci/archive/20231027/202310271513.8MUErCK4-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231027/202310271513.8MUErCK4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310271513.8MUErCK4-lkp@intel.com/

All errors (new ones prefixed by >>):

   s390-linux-ld: drivers/of/unittest.o: in function `of_unittest_check_addr':
>> unittest.c:(.init.text+0x5ad2): undefined reference to `of_address_to_resource'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

