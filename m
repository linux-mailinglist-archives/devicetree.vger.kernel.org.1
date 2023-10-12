Return-Path: <devicetree+bounces-8152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0597C6E43
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:37:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BADB1282576
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E650320B2E;
	Thu, 12 Oct 2023 12:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="AwlN7FIN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5D208D5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:37:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3526BB8;
	Thu, 12 Oct 2023 05:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697114227; x=1728650227;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RVAyq8urYvbxioVev4L9z0lHxyn1dJLpCfJM/A2MUGY=;
  b=AwlN7FIN2eMCvmE789kNauzxs7cqqh1VVMF6oIUo+oLWkuhSB292T14V
   bFv7VwWb7j7ADgmOcCUbwEjNHR1Ki/WnPkWrWAQpjwFX87JJsxM+jzOcO
   CcnDOkZfAj8BfYCAu9qGAQf98XTnyxkf71fv1tUpcgJ7cGTyHxbBbFYng
   jkm+4wBQVallET8bKHbCq9u94dapymiGR8cW3lGbEY47Ezw/yQyIwnYFH
   CRQZEh/RV62Gr+HII1P5GKuMj51As6DsPxcc4Mq5M3/WRgBQqqJfEpK2e
   J53FAb3lOsszw71uRJeg5b/10BoxUO3/LSktypb69NcbnYk2Szjv36ZKA
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382142910"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="382142910"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2023 05:36:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="704145786"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="704145786"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 12 Oct 2023 05:36:50 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qquvo-0003RF-0k;
	Thu, 12 Oct 2023 12:36:48 +0000
Date: Thu, 12 Oct 2023 20:36:17 +0800
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
Subject: Re: [PATCH v13 2/6] nvmem: Move of_nvmem_layout_get_container() in
 another header
Message-ID: <202310122053.hkVvz5jI-lkp@intel.com>
References: <20231011111529.86440-3-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011111529.86440-3-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Miquel,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.6-rc5 next-20231012]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Miquel-Raynal/of-device-Export-of_device_make_bus_id/20231011-191637
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20231011111529.86440-3-miquel.raynal%40bootlin.com
patch subject: [PATCH v13 2/6] nvmem: Move of_nvmem_layout_get_container() in another header
config: um-randconfig-001-20231012 (https://download.01.org/0day-ci/archive/20231012/202310122053.hkVvz5jI-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231012/202310122053.hkVvz5jI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310122053.hkVvz5jI-lkp@intel.com/

All errors (new ones prefixed by >>):

   /usr/bin/ld: drivers/nvmem/core.o: in function `nvmem_layout_get_match_data':
   core.c:(.text+0x46d): undefined reference to `of_nvmem_layout_get_container'
   /usr/bin/ld: drivers/nvmem/core.o: in function `nvmem_register':
   core.c:(.text+0x1805): undefined reference to `of_nvmem_layout_get_container'
   /usr/bin/ld: core.c:(.text+0x1abd): undefined reference to `of_nvmem_layout_get_container'
   /usr/bin/ld: drivers/nvmem/layouts/sl28vpd.o: in function `sl28vpd_add_cells':
>> sl28vpd.c:(.text+0x1ba): undefined reference to `of_nvmem_layout_get_container'
   /usr/bin/ld: drivers/nvmem/layouts/onie-tlv.o: in function `onie_tlv_parse_table':
>> onie-tlv.c:(.text+0x182): undefined reference to `of_nvmem_layout_get_container'
   collect2: error: ld returned 1 exit status

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

