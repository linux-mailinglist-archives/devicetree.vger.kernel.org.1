Return-Path: <devicetree+bounces-14958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9897E7A87
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 10:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E0031C20ACF
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 09:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931FC10A1F;
	Fri, 10 Nov 2023 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="lsoLL6te"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46DC10968
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 09:17:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C0A02B7F2;
	Fri, 10 Nov 2023 01:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699607850; x=1731143850;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0OaHHlwLItjCt3c5YKtM0WKbl6EAt2dHV4q+Vl4Xx3o=;
  b=lsoLL6tefeOOacmGgP8QkW7W2rpqD4kwEtkBEJUUhBgIri62WyB3HpFc
   t5qYEXV0wa0qgO66w4Vudyd/ajw8yDIV85/Xf08bLlT1IH8oTzdSDxUCB
   Op5GrpvxNDocWRI5zGiXCTLGOIiXN8j62rNiJEMjKbq2ZkAmHvvf/lLOT
   qUxzwUzjJsWl57B0nMC4Y/71X6Z/Kx5XIZNvLljrKX9z70fpfVSC4UhKA
   owspbt3e3q0wpEava1e7dQsxTD1FSaNFRvG5Qon1X0zALVFJIwRupZoqz
   egeSrEKxAO49+DNYybD7M4rtZTKyxWS9Xlf4jzJqfTCrkOaKKbG2tnU2x
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="394064250"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; 
   d="scan'208";a="394064250"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2023 01:17:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="854347489"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; 
   d="scan'208";a="854347489"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 10 Nov 2023 01:17:24 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r1Ndi-0009WM-1t;
	Fri, 10 Nov 2023 09:17:22 +0000
Date: Fri, 10 Nov 2023 17:16:57 +0800
From: kernel test robot <lkp@intel.com>
To: Jyan Chou <jyanchou@realtek.com>, ulf.hansson@linaro.org,
	adrian.hunter@intel.com, jh80.chung@samsung.com,
	riteshh@codeaurora.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	conor+dt@kernel.org, asutoshd@codeaurora.org,
	p.zabel@pengutronix.de, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	arnd@arndb.de, briannorris@chromium.org, doug@schmorgal.com,
	tonyhuang.sunplus@gmail.com, abel.vesa@linaro.org,
	william.qiu@starfivetech.com, jyanchou@realtek.com
Subject: Re: [PATCH V6][1/4] mmc: solve DMA boundary limitation of CQHCI
 driver
Message-ID: <202311101711.FFnMF7iH-lkp@intel.com>
References: <20231109082043.27147-2-jyanchou@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109082043.27147-2-jyanchou@realtek.com>

Hi Jyan,

kernel test robot noticed the following build errors:

[auto build test ERROR on linus/master]
[also build test ERROR on v6.6 next-20231110]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jyan-Chou/mmc-solve-DMA-boundary-limitation-of-CQHCI-driver/20231109-190435
base:   linus/master
patch link:    https://lore.kernel.org/r/20231109082043.27147-2-jyanchou%40realtek.com
patch subject: [PATCH V6][1/4] mmc: solve DMA boundary limitation of CQHCI driver
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20231110/202311101711.FFnMF7iH-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231110/202311101711.FFnMF7iH-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311101711.FFnMF7iH-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/mmc/host/cqhci-core.c:519:20: error: no member named 'setup_tran_desc' in 'struct cqhci_host_ops'
           if (cq_host->ops->setup_tran_desc) {
               ~~~~~~~~~~~~  ^
   drivers/mmc/host/cqhci-core.c:520:17: error: no member named 'setup_tran_desc' in 'struct cqhci_host_ops'
                   cq_host->ops->setup_tran_desc(data, cq_host, desc, sg_count);
                   ~~~~~~~~~~~~  ^
   2 errors generated.


vim +519 drivers/mmc/host/cqhci-core.c

   498	
   499	static int cqhci_prep_tran_desc(struct mmc_request *mrq,
   500					struct cqhci_host *cq_host, int tag)
   501	{
   502		struct mmc_data *data = mrq->data;
   503		int i, sg_count, len;
   504		bool end = false;
   505		bool dma64 = cq_host->dma64;
   506		dma_addr_t addr;
   507		u8 *desc;
   508		struct scatterlist *sg;
   509	
   510		sg_count = cqhci_dma_map(mrq->host, mrq);
   511		if (sg_count < 0) {
   512			pr_err("%s: %s: unable to map sg lists, %d\n",
   513					mmc_hostname(mrq->host), __func__, sg_count);
   514			return sg_count;
   515		}
   516	
   517		desc = get_trans_desc(cq_host, tag);
   518	
 > 519		if (cq_host->ops->setup_tran_desc) {
   520			cq_host->ops->setup_tran_desc(data, cq_host, desc, sg_count);
   521			return 0;
   522		}
   523	
   524		for_each_sg(data->sg, sg, sg_count, i) {
   525			addr = sg_dma_address(sg);
   526			len = sg_dma_len(sg);
   527	
   528			if ((i+1) == sg_count)
   529				end = true;
   530			cqhci_set_tran_desc(desc, addr, len, end, dma64);
   531			desc += cq_host->trans_desc_len;
   532		}
   533	
   534		return 0;
   535	}
   536	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

