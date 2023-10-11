Return-Path: <devicetree+bounces-7764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D197C55BB
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0AD11C20D59
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1262B200A7;
	Wed, 11 Oct 2023 13:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="auYk2Z/N"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97421F956
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:42:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F10DF98;
	Wed, 11 Oct 2023 06:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697031767; x=1728567767;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7YfsHhsopKCCqEyes/Zq8paien7jAELVx6130kYHaq0=;
  b=auYk2Z/NX3U1qGvG+HR+IS68IAOAG9+3F03wBJ8sDDj0Ss4P97BLFxPG
   bPwRgK3ke0Ruo3gmOcUIuQO4CG1/TSp2ZFltGDMSrFrnEKxJeqmNDm53b
   xN8E0smmM/nO/8jCBnsPwLJCy0/LllMkWoQd8gzp/zJSRkOVZrfgIwHTT
   8thl1eamT6h8FMBHs5GGQgOBRwz1vh2JrxmmWCnBqEqPbtQAaNUFZIOw3
   tqUSF9GheXxqnsOpF/xVrRvKOQd6SSXgYp+WSVQdY9bEBUUsRN7w7cCBY
   VKIoNZJenM9UxuBGcoZxiJrxNPMQX5jPmT3PZSFGeQX8Ytb+21p+gA7Ys
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="448864022"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="448864022"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 06:42:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="753823924"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="753823924"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 11 Oct 2023 06:42:39 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qqZTq-0002Fv-2r;
	Wed, 11 Oct 2023 13:42:32 +0000
Date: Wed, 11 Oct 2023 21:42:13 +0800
From: kernel test robot <lkp@intel.com>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/4] PCI: epf-mhi: Add support for SA8775P
Message-ID: <202310112157.VcDgcECw-lkp@intel.com>
References: <1697023109-23671-4-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1697023109-23671-4-git-send-email-quic_msarkar@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Mrinmay,

kernel test robot noticed the following build warnings:

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus robh/for-next linus/master v6.6-rc5 next-20231011]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mrinmay-Sarkar/dt-bindings-PCI-qcom-ep-Add-support-for-SA8775P-SoC/20231011-192329
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/1697023109-23671-4-git-send-email-quic_msarkar%40quicinc.com
patch subject: [PATCH v2 3/4] PCI: epf-mhi: Add support for SA8775P
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20231011/202310112157.VcDgcECw-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231011/202310112157.VcDgcECw-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310112157.VcDgcECw-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/pci/endpoint/functions/pci-epf-mhi.c:126:23: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     126 |         .epf_header = &sa8775p_header,
         |                       ^


vim +/const +126 drivers/pci/endpoint/functions/pci-epf-mhi.c

   123	
   124	static const struct pci_epf_mhi_ep_info sa8775p_info = {
   125		.config = &mhi_v1_config,
 > 126		.epf_header = &sa8775p_header,
   127		.bar_num = BAR_0,
   128		.epf_flags = PCI_BASE_ADDRESS_MEM_TYPE_32,
   129		.msi_count = 32,
   130		.mru = 0x8000,
   131	};
   132	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

