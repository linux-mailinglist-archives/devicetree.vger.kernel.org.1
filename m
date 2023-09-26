Return-Path: <devicetree+bounces-3401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E97AB7AEC0F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 49EF2281584
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44702273E0;
	Tue, 26 Sep 2023 12:02:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10B5273C3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:02:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1BD910A;
	Tue, 26 Sep 2023 05:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695729767; x=1727265767;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SP3EbuY1pr3nX/kVEaXbBUjA6EJivYJ3T6z0pZl7O7Q=;
  b=euvei/xoi6xC2mePoA9b8cO9lS8sQCnpxYfu+9hli5dBU3cWoVLXokeU
   1EzWNqlraBk42DxODsJOCr/tJf/M3NGtIBHW6fM6kIDWLyMKgM9o2JI/d
   nMGLAcuxXDz8hcnvU+kDyFiFc22+Oid8wRzIpz2lgfUK/qYZmhm1t2XiG
   JoHnUxMWzPoNmfsHZkvdvH6P1hrpQixqnJXwsUQERj5ApGETvQpzEYvn8
   hTBMmNHseznaYrZNCTbI/leB3fJKVp+ViC1D0rRT0QyirS6wKy3xN02m+
   BEtKAHeuc0rW7mf/gO9nSSEksetognRztmogqPL5YR0fa8MT39CFTRV4r
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381448624"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; 
   d="scan'208";a="381448624"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2023 05:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="752153507"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; 
   d="scan'208";a="752153507"
Received: from lkp-server02.sh.intel.com (HELO 32c80313467c) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 26 Sep 2023 05:02:32 -0700
Received: from kbuild by 32c80313467c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ql6lq-0002mp-22;
	Tue, 26 Sep 2023 12:02:30 +0000
Date: Tue, 26 Sep 2023 20:02:15 +0800
From: kernel test robot <lkp@intel.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v5 07/10] drm/msm/a6xx: Mostly implement A7xx gpu_state
Message-ID: <202309261932.Dha9doOl-lkp@intel.com>
References: <20230628-topic-a7xx_drmmsm-v5-7-3dc527b472d7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230628-topic-a7xx_drmmsm-v5-7-3dc527b472d7@linaro.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Konrad,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8fff9184d1b5810dca5dd1a02726d4f844af88fc]

url:    https://github.com/intel-lab-lkp/linux/commits/Konrad-Dybcio/dt-bindings-display-msm-gmu-Add-Adreno-7-34-0-GMU/20230925-225348
base:   8fff9184d1b5810dca5dd1a02726d4f844af88fc
patch link:    https://lore.kernel.org/r/20230628-topic-a7xx_drmmsm-v5-7-3dc527b472d7%40linaro.org
patch subject: [PATCH v5 07/10] drm/msm/a6xx: Mostly implement A7xx gpu_state
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20230926/202309261932.Dha9doOl-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230926/202309261932.Dha9doOl-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309261932.Dha9doOl-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c:8:
>> drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h:360:36: warning: 'a7xx_gbif_reglist' defined but not used [-Wunused-const-variable=]
     360 | static const struct a6xx_registers a7xx_gbif_reglist =
         |                                    ^~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h:356:36: warning: 'a7xx_ahb_reglist' defined but not used [-Wunused-const-variable=]
     356 | static const struct a6xx_registers a7xx_ahb_reglist[] = {
         |                                    ^~~~~~~~~~~~~~~~


vim +/a7xx_gbif_reglist +360 drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h

   355	
 > 356	static const struct a6xx_registers a7xx_ahb_reglist[] = {
   357		REGS(a7xx_ahb_registers, 0, 0),
   358	};
   359	
 > 360	static const struct a6xx_registers a7xx_gbif_reglist =
   361		REGS(a7xx_gbif_registers, 0, 0);
   362	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

