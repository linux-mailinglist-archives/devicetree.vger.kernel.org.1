Return-Path: <devicetree+bounces-10665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D94F97D2622
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 23:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92B37281310
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 21:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD80513AF5;
	Sun, 22 Oct 2023 21:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="PpsoXpZi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F0413AED;
	Sun, 22 Oct 2023 21:47:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B825E5;
	Sun, 22 Oct 2023 14:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698011237; x=1729547237;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Dx6B+Uq17MjpqqV7Z+3SvjBqDXDUCQ6dU1sRUyxAXsY=;
  b=PpsoXpZi4E7W4NxtoZAF+MY763xcXHfoQRcjVJN8EemRe5DSrAt8mNbm
   RLp0660Xd8JbPHUqOeGfs/Gkx2p9+RvHrtLcxeOTpB9SDUQgYyg+32Lih
   1vbghHgs06/nEousQH12YpmzHPMkH/0WJd0pGsyhKrGRquid+rj3BC31r
   buF3DCjIz873nrtWuNx6PTs7PXrl5K5CfSyRatKBe+MYgbLvb5iI6s12E
   Y7PRuSa5L7X4NJQwo76uEo5EXfGS4T8DR8lCz8DqXgc/uI+aon3pglW6J
   hUUta8amCSSq5qU1Xiwe+0jVOCvu672nBMHuyepaPwtRB8i0FeipZ+L1Q
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="390621599"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="390621599"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2023 14:47:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="901624719"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="901624719"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 22 Oct 2023 14:44:55 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qugHs-0006Hg-2m;
	Sun, 22 Oct 2023 21:47:08 +0000
Date: Mon, 23 Oct 2023 05:46:42 +0800
From: kernel test robot <lkp@intel.com>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org, linux-hardening@vger.kernel.org,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Subject: Re: [PATCH v6 7/9] arm64: Kconfig.platforms: Add config for Marvell
 PXA1908 platform
Message-ID: <202310230518.zs9Qpg3j-lkp@intel.com>
References: <20231010-pxa1908-lkml-v6-7-b2fe09240cf8@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010-pxa1908-lkml-v6-7-b2fe09240cf8@skole.hr>

Hi Duje,

kernel test robot noticed the following build errors:

[auto build test ERROR on 94f6f0550c625fab1f373bb86a6669b45e9748b3]

url:    https://github.com/intel-lab-lkp/linux/commits/Duje-Mihanovi/clk-mmp-Switch-to-use-struct-u32_fract-instead-of-custom-one/20231011-012919
base:   94f6f0550c625fab1f373bb86a6669b45e9748b3
patch link:    https://lore.kernel.org/r/20231010-pxa1908-lkml-v6-7-b2fe09240cf8%40skole.hr
patch subject: [PATCH v6 7/9] arm64: Kconfig.platforms: Add config for Marvell PXA1908 platform
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20231023/202310230518.zs9Qpg3j-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231023/202310230518.zs9Qpg3j-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310230518.zs9Qpg3j-lkp@intel.com/

All errors (new ones prefixed by >>):

   /tmp/cc7DnLj6.s: Assembler messages:
>> /tmp/cc7DnLj6.s:2851: Error: unknown mnemonic `ldmia' -- `ldmia x23,{r0,r1,r2,r3}'
>> /tmp/cc7DnLj6.s:2852: Error: unknown mnemonic `stmia' -- `stmia x19!,{r0,r1,r2,r3}'
>> /tmp/cc7DnLj6.s:3125: Error: unknown mnemonic `ldmia' -- `ldmia x19!,{r0,r1,r2,r3}'
>> /tmp/cc7DnLj6.s:3126: Error: unknown mnemonic `stmia' -- `stmia x23,{r0,r1,r2,r3}'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for SND_ARM
   Depends on [n]: SOUND [=y] && SND [=y] && ARM
   Selected by [y]:
   - SND_MMP_SOC_SSPA [=y] && SOUND [=y] && SND [=y] && SND_SOC [=y] && ARCH_MMP [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

