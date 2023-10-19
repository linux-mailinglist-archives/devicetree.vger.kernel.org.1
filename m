Return-Path: <devicetree+bounces-9850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F777CED53
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 03:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7B04B20F41
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 01:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBBF938C;
	Thu, 19 Oct 2023 01:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="WkIA6VRW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A38391
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 01:14:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78880B0;
	Wed, 18 Oct 2023 18:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697678081; x=1729214081;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=aCj+lXWncQM8Ey7orSx9XDRnSYAxxN4+SGACzDG2n98=;
  b=WkIA6VRWFRj7y5fqtvkNOTpejlOHRoPPpJh4eNSjCgQn60zV1UWIy+Wa
   +aop6VHoUXQ78m+4ZDS+DnWsSCeM/1d3dxknY0ZazIr760XwD1joJ5HVT
   dcptTBQiohwhjXsO/3KV6MZpk0bCpdGtunSid/pJa25iKqG29jHgGjPQS
   bYEJDodmjHqNygvKCzSu0U+SdiePz8GNduiSsh4ar2p34SnDSKHSpUf6t
   8Q+6/QhU0lAQ7vIYjPJ4B+cTshFY+kzYx5AacKH6lFMDsF48K3hjzZVxj
   N+DPPxDD8fGg1y0A3bhS/rFR38T1FXJLz9ejipfrsctPGma8qxRCVnQj3
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="383368405"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="383368405"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2023 18:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="760449866"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="760449866"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 18 Oct 2023 18:14:38 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qtHcR-0001Mu-2n;
	Thu, 19 Oct 2023 01:14:35 +0000
Date: Thu, 19 Oct 2023 09:14:21 +0800
From: kernel test robot <lkp@intel.com>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
	Lee Jones <lee@kernel.org>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Karel Balej <balejk@matfyz.cz>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Subject: Re: [PATCH 2/2] backlight: Add Kinetic KTD2801 driver
Message-ID: <202310190928.NGF81Cxq-lkp@intel.com>
References: <20231005-ktd2801-v1-2-43cd85b0629a@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005-ktd2801-v1-2-43cd85b0629a@skole.hr>

Hi Duje,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8a749fd1a8720d4619c91c8b6e7528c0a355c0aa]

url:    https://github.com/intel-lab-lkp/linux/commits/Duje-Mihanovi/dt-bindings-backlight-add-Kinetic-KTD2801-binding/20231006-025106
base:   8a749fd1a8720d4619c91c8b6e7528c0a355c0aa
patch link:    https://lore.kernel.org/r/20231005-ktd2801-v1-2-43cd85b0629a%40skole.hr
patch subject: [PATCH 2/2] backlight: Add Kinetic KTD2801 driver
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20231019/202310190928.NGF81Cxq-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231019/202310190928.NGF81Cxq-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310190928.NGF81Cxq-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/video/backlight/ktd2801-backlight.c:15:9: warning: 'DS' macro redefined [-Wmacro-redefined]
   #define DS              5
           ^
   arch/x86/include/uapi/asm/ptrace-abi.h:14:9: note: previous definition is here
   #define DS 7
           ^
   1 warning generated.


vim +/DS +15 drivers/video/backlight/ktd2801-backlight.c

     8	
     9	#define EW_DELAY	150
    10	#define EW_DET		270
    11	#define LOW_BIT_HIGH	5
    12	#define LOW_BIT_LOW	(4 * HIGH_BIT_LOW)
    13	#define HIGH_BIT_LOW	5
    14	#define HIGH_BIT_HIGH	(4 * HIGH_BIT_LOW)
  > 15	#define DS		5
    16	#define EOD_L		10
    17	#define EOD_H		350
    18	#define PWR_DOWN_DELAY	2600
    19	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

