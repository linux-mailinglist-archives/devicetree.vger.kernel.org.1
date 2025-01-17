Return-Path: <devicetree+bounces-139378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A36AA1578D
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 19:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E112B3A05E8
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 18:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7B71EE7B6;
	Fri, 17 Jan 2025 18:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="YOo5Ogzw"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA731EE00A;
	Fri, 17 Jan 2025 18:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737139350; cv=none; b=BJLqXCFyEwi2YrIF2xJ83QGROe2rfNFMgrb2TBNu3KiD3l7tnNMfZ12Bb1baQpBLbcsLGYoty4EjqhyeqV2499uNwe5IgdR/pCfmavXC4koUS1MBt4J/JtapV60iHb8h8eKzAEyw+J08PYawT7iBrBMCaQ5LBxFxPf8jQSz+NeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737139350; c=relaxed/simple;
	bh=+2nmW2NKMU28nyZzdx1UxlGMW1MKoytc0yORwfK08tI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MiEXD4Bh0gZoXiIQ47IIwwGxHWGulNFI5ERuI046jKit8I6zRQGWfaBYeqnxHDCQj3YTm1iIOk67J9O4IJ7C9cdVXRh3ID9Ns9LOUOr2/QZFuWnLc9CYYklluxQHWQqqFGnf+ft7AhTw48ujb3imFvklnT8H4eSzSFFhqz1gOw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=YOo5Ogzw; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737139348; x=1768675348;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+2nmW2NKMU28nyZzdx1UxlGMW1MKoytc0yORwfK08tI=;
  b=YOo5OgzwMVkBRAVTpGwsbu+gnw6kXUAMdSXlZ9zdhdieKQb6g74qoUfw
   csWN0bFgS49KLcgq5QGSiWBuVeMilM4cwDwff/kvPXeKPlhvJnmwZE1xg
   VxopNovbANy1z/Q9g4NGsAsp90htnOcD7bJ18L5xpMgPkwJ6V241l6qpI
   ITF+RmAD2k4H9tiPeu+FdHrFzwz+z8uywro0b3VDYMb+CeRFf2daUZ/Du
   o7BizAKwcZ365KSzEj9zF6PjmFen9AZhog+bpQhMQLIxzp4+SFgqAuodP
   wYotYHl5jejPT61I2k2DkxWyUTnV5p9HK5/FlA97uA8jRcKNkTGmyWMx8
   g==;
X-CSE-ConnectionGUID: fcQZOzecTjWDePR5Th/mTQ==
X-CSE-MsgGUID: lqLdkzTaRAymssjHGSE0Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48244881"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; 
   d="scan'208";a="48244881"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2025 10:42:27 -0800
X-CSE-ConnectionGUID: DFlZGaCrRF+VTsoFUySQWw==
X-CSE-MsgGUID: sC6n3vS5Tt2eoHcile/hHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; 
   d="scan'208";a="110871489"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 17 Jan 2025 10:42:21 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tYrIQ-000TaB-2o;
	Fri, 17 Jan 2025 18:42:18 +0000
Date: Sat, 18 Jan 2025 02:41:24 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	chunkuang.hu@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, ck.hu@mediatek.com,
	jitao.shi@mediatek.com, jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, dmitry.baryshkov@linaro.org,
	lewis.liao@mediatek.com, ives.chenjh@mediatek.com,
	tommyyl.chen@mediatek.com, jason-jh.lin@mediatek.com
Subject: Re: [PATCH v5 32/34] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Message-ID: <202501180257.A2Og8gLK-lkp@intel.com>
References: <20250113145232.227674-33-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113145232.227674-33-angelogioacchino.delregno@collabora.com>

Hi AngeloGioacchino,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250113]
[cannot apply to robh/for-next pza/reset/next linus/master pza/imx-drm/next drm-misc/drm-misc-next v6.13-rc7 v6.13-rc6 v6.13-rc5 v6.13-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/dt-bindings-display-mediatek-dpi-Add-MT8195-and-MT8188-compat/20250113-225554
base:   next-20250113
patch link:    https://lore.kernel.org/r/20250113145232.227674-33-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v5 32/34] drm/mediatek: Introduce HDMI/DDC v2 for MT8195/MT8188
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20250118/202501180257.A2Og8gLK-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project c23f2417dc5f6dc371afb07af5627ec2a9d373a0)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250118/202501180257.A2Og8gLK-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501180257.A2Og8gLK-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:345:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     345 |         val = FIELD_PREP(SD0_MAP, sd0) | FIELD_PREP(SD1_MAP, sd1);
         |               ^
   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:378:51: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     378 |         regmap_update_bits(hdmi->regs, AIP_CTRL, I2S_EN, FIELD_PREP(I2S_EN, chnum));
         |                                                          ^
   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:410:13: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     410 |         fifo_map = FIELD_PREP(FIFO0_MAP, 0) | FIELD_PREP(FIFO1_MAP, 1);
         |                    ^
   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:477:53: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     477 |         regmap_update_bits(hdmi->regs, AIP_CTRL, SPDIF_EN, FIELD_PREP(SPDIF_EN, spdif_i2s));
         |                                                            ^
   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:554:7: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     554 |                            FIELD_PREP(MAX_2UI_I2S_HI_WRITE, swapbit));
         |                            ^
   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:579:7: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     579 |                            FIELD_PREP(MAX_1UI_WRITE, 4));
         |                            ^
   drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:715:7: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     715 |                            FIELD_PREP(TMDS_PACK_MODE, TMDS_PACK_MODE_8BPP));
         |                            ^
>> drivers/gpu/drm/mediatek/mtk_hdmi_v2.c:812:16: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     812 |         hpd_pin_sta = FIELD_GET(HPD_PIN_STA, hpd_status);
         |                       ^
   8 errors generated.
--
>> drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:59:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      59 |                                    FIELD_PREP(DDC_CTRL_CMD, DDC_CMD_CLOCK_SCL));
         |                                    ^
   drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:87:7: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      87 |                            FIELD_PREP(HPD_DDC_DELAY_CNT, DDC2_DLY_CNT));
         |                            ^
   drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:133:7: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     133 |                            FIELD_PREP(DDC_CTRL_CMD, DDC_CMD_CLEAR_FIFO));
         |                            ^
   drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:139:9: warning: comparison of distinct pointer types ('typeof ((loop_counter)) *' (aka 'unsigned short *') and 'uint64_t *' (aka 'unsigned long long *')) [-Wcompare-distinct-pointer-types]
     139 |                 rem = do_div(loop_counter, temp_length);
         |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/div64.h:183:28: note: expanded from macro 'do_div'
     183 |         (void)(((typeof((n)) *)0) == ((uint64_t *)0));  \
         |                ~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
>> drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:139:9: error: incompatible pointer types passing 'u16 *' (aka 'unsigned short *') to parameter of type 'uint64_t *' (aka 'unsigned long long *') [-Werror,-Wincompatible-pointer-types]
     139 |                 rem = do_div(loop_counter, temp_length);
         |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/div64.h:199:22: note: expanded from macro 'do_div'
     199 |                 __rem = __div64_32(&(n), __base);       \
         |                                    ^~~~
   include/asm-generic/div64.h:174:38: note: passing argument to parameter 'dividend' here
     174 | extern uint32_t __div64_32(uint64_t *dividend, uint32_t divisor);
         |                                      ^
>> drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:207:26: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     207 |                         puc_value[read_idx] = FIELD_GET(DDC_DATA_OUT, val);
         |                                               ^
   drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c:139:9: warning: shift count >= width of type [-Wshift-count-overflow]
     139 |                 rem = do_div(loop_counter, temp_length);
         |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/div64.h:195:25: note: expanded from macro 'do_div'
     195 |         } else if (likely(((n) >> 32) == 0)) {          \
         |                                ^  ~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
      76 | # define likely(x)      __builtin_expect(!!(x), 1)
         |                                             ^
   2 warnings and 5 errors generated.


vim +/FIELD_PREP +345 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c

   333	
   334	static u32 mtk_hdmi_v2_aud_output_channel_map(u8 sd0, u8 sd1, u8 sd2, u8 sd3,
   335						      u8 sd4, u8 sd5, u8 sd6, u8 sd7)
   336	{
   337		u32 val;
   338	
   339		/*
   340		 * Each of the Output Channels (0-7) can be mapped to get their input
   341		 * from any of the available Input Channels (0-7): this function
   342		 * takes input channel numbers and formats a value that must then
   343		 * be written to the TOP_AUD_MAP hardware register by the caller.
   344		 */
 > 345		val = FIELD_PREP(SD0_MAP, sd0) | FIELD_PREP(SD1_MAP, sd1);
   346		val |= FIELD_PREP(SD2_MAP, sd2) | FIELD_PREP(SD3_MAP, sd3);
   347		val |= FIELD_PREP(SD4_MAP, sd4) | FIELD_PREP(SD5_MAP, sd5);
   348		val |= FIELD_PREP(SD6_MAP, sd6) | FIELD_PREP(SD7_MAP, sd7);
   349	
   350		return val;
   351	}
   352	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

