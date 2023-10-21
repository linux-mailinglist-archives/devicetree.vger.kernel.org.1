Return-Path: <devicetree+bounces-10580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3CF7D205F
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 01:02:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C81881C20938
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 23:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACA38208AB;
	Sat, 21 Oct 2023 23:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="f4ORRdYK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3864D517
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 23:02:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B4B8D52;
	Sat, 21 Oct 2023 16:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697929352; x=1729465352;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pmt27KfT/G9bsDK7DiYG9O0wXtKd+XBGH+QWyFzX+ic=;
  b=f4ORRdYK1O6k2+tB9pblKx2e/2Rj4KH1OdSQiwMzV7YVqe1K81MGAyk8
   3DHEF+xcckEUk43MGvtMmz5QXU7FozrG5sBakN9VHPJF2zi2RQk9qqn5i
   ZdAC+mZniFmCyO6RD92Y8Lt3kPRMzveyb5PFDAjTABYzsQaX5p/XWISAj
   BPLHunpJCSNVwOl0W7LSPjk0yS+xbsJ3FyVBGffsdpZ1+BO67mryyZscJ
   S8dQuzLFunksC/izei0MdTu4rCUGl8iBBdysF03biALDYO/PO/HjXKIVy
   S1iQDPoiQdgewS9QNSBtgEFqffrWq4YNSwYW3YtavmUbFwR0U0HjNqd8a
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10870"; a="366893169"
X-IronPort-AV: E=Sophos;i="6.03,242,1694761200"; 
   d="scan'208";a="366893169"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2023 16:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10870"; a="787125344"
X-IronPort-AV: E=Sophos;i="6.03,242,1694761200"; 
   d="scan'208";a="787125344"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 21 Oct 2023 16:02:27 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1quKzB-0005Ju-18;
	Sat, 21 Oct 2023 23:02:25 +0000
Date: Sun, 22 Oct 2023 07:02:16 +0800
From: kernel test robot <lkp@intel.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
	agross@kernel.org, konrad.dybcio@linaro.org,
	mturquette@baylibre.com, sboyd@kernel.org,
	dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jonathan@marek.ca, quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: Re: [PATCH v4 1/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for
 sc8280xp
Message-ID: <202310220607.A7eqpgZt-lkp@intel.com>
References: <20231012113100.3656480-2-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012113100.3656480-2-bryan.odonoghue@linaro.org>

Hi Bryan,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.6-rc6 next-20231020]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Bryan-O-Donoghue/arm64-dts-qcom-sc8280xp-Add-in-CAMCC-for-sc8280xp/20231017-105406
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20231012113100.3656480-2-bryan.odonoghue%40linaro.org
patch subject: [PATCH v4 1/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20231022/202310220607.A7eqpgZt-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231022/202310220607.A7eqpgZt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310220607.A7eqpgZt-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from arch/arm64/boot/dts/qcom/sa8540p.dtsi:7,
                    from arch/arm64/boot/dts/qcom/sa8295p-adp.dts:13:
>> arch/arm64/boot/dts/qcom/sc8280xp.dtsi:11:10: fatal error: dt-bindings/clock/qcom,sc8280xp-camcc.h: No such file or directory
      11 | #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +11 arch/arm64/boot/dts/qcom/sc8280xp.dtsi

  > 11	#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
    12	#include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
    13	#include <dt-bindings/interconnect/qcom,osm-l3.h>
    14	#include <dt-bindings/interconnect/qcom,sc8280xp.h>
    15	#include <dt-bindings/interrupt-controller/arm-gic.h>
    16	#include <dt-bindings/mailbox/qcom-ipcc.h>
    17	#include <dt-bindings/phy/phy-qcom-qmp.h>
    18	#include <dt-bindings/power/qcom-rpmpd.h>
    19	#include <dt-bindings/soc/qcom,gpr.h>
    20	#include <dt-bindings/soc/qcom,rpmh-rsc.h>
    21	#include <dt-bindings/sound/qcom,q6afe.h>
    22	#include <dt-bindings/thermal/thermal.h>
    23	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

