Return-Path: <devicetree+bounces-6803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 254D77BCE9D
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50A441C208B2
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C0DC8C6;
	Sun,  8 Oct 2023 13:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="HVFnBtlF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81113C158
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 13:43:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EE41BA;
	Sun,  8 Oct 2023 06:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696772585; x=1728308585;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=UnShy3kaCAxnlIm0eC/1gEl3tYl34rChOv1Lq+WHkzk=;
  b=HVFnBtlF4d7Q1TebhdoheoZqDP8Y0a6/3p3M00q36nkxxxN48D0BV/rM
   cRxO7G1S/99tt+p7job/Jc50cdihLC6WAegOQRUa3mLpa589DbcpX1LpJ
   ogONTrEmlDjI4KMf2JyPgCNFWe5qKxFqdISsK8ck/hBQ9WCANoE544ThD
   /UpjJL0nO0ZxbD3zJuJNfi9a1BIee809LSDJRM/Wnk4PjPuuekt0KIsf4
   DCPZVunxvZNJIAayJJl9DQpGEAV7nufMXFnrIWYVBXm9h8iWu7aFOz0mI
   vaN0OKX6hscexo8GxinGbIa1rJ6sn8dFSznEqTtEPnQWlx2Pt5EQTEOg4
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="386837870"
X-IronPort-AV: E=Sophos;i="6.03,207,1694761200"; 
   d="scan'208";a="386837870"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 06:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="926500645"
X-IronPort-AV: E=Sophos;i="6.03,207,1694761200"; 
   d="scan'208";a="926500645"
Received: from lkp-server01.sh.intel.com (HELO 8a3a91ad4240) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 08 Oct 2023 06:43:00 -0700
Received: from kbuild by 8a3a91ad4240 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qpU3e-0005SX-1m;
	Sun, 08 Oct 2023 13:42:58 +0000
Date: Sun, 8 Oct 2023 21:42:01 +0800
From: kernel test robot <lkp@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: oe-kbuild-all@lists.linux.dev, Michael Walle <michael@walle.cc>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Robert Marko <robert.marko@sartura.hr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Randy Dunlap <rdunlap@infradead.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular
 devices
Message-ID: <202310082134.KFshrVpM-lkp@intel.com>
References: <20231005155907.2701706-6-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005155907.2701706-6-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Miquel,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.6-rc4 next-20231006]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Miquel-Raynal/of-device-Export-of_device_make_bus_id/20231006-000111
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20231005155907.2701706-6-miquel.raynal%40bootlin.com
patch subject: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular devices
config: sh-se7705_defconfig (https://download.01.org/0day-ci/archive/20231008/202310082134.KFshrVpM-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231008/202310082134.KFshrVpM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310082134.KFshrVpM-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/nvmem/core.c:22:
   drivers/nvmem/internals.h: In function 'nvmem_destroy_layout':
>> drivers/nvmem/internals.h:54:47: error: no return statement in function returning non-void [-Werror=return-type]
      54 | static inline int nvmem_destroy_layout(struct nvmem_device *nvmem) { }
         |                                               ^~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +54 drivers/nvmem/internals.h

    53	
  > 54	static inline int nvmem_destroy_layout(struct nvmem_device *nvmem) { }
    55	#endif /* CONFIG_OF */
    56	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

