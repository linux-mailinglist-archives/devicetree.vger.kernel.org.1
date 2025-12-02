Return-Path: <devicetree+bounces-243660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2A8C9B066
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0EA4D4E3C47
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393E82F6565;
	Tue,  2 Dec 2025 10:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="m3U7LOTm"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CAB1FD4;
	Tue,  2 Dec 2025 10:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764669984; cv=none; b=qf5NxbNrK8Q2FLhutz8k+fxqzgnvtYUGYrOxz41gUrgJZ3aG4ppsBq4d6gcMYgj2Cww5ucShVw7XFVmNdy8VoawLFu9knRXyWXibkbJ2hYSH/cyLom6lV50Lpb6VoOQzNaxKy9dvPaIAoSfqULGtcYVZ/L0NJU4O0+jxAhunlYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764669984; c=relaxed/simple;
	bh=oQlaqUeREC8Pc2NqxB4xgOj6FQuw9eUxeGBxZjH6Sgc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D/VNQq0Qjj2PBf0Zaf1JyIcfEUER/pBvxKSaDavGe+bJbn4Qwirjvv2c71Cv8LNFApckGpMP+7KuI55oxsNcC2VGUq6BdDzEcCGr1PDsijMRI2Qws922cmLypE05ndx4L9ync2n+AaeAWzQdWRm8PNeZckmxWA5ia/F8RnW2FJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=m3U7LOTm; arc=none smtp.client-ip=192.198.163.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764669982; x=1796205982;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oQlaqUeREC8Pc2NqxB4xgOj6FQuw9eUxeGBxZjH6Sgc=;
  b=m3U7LOTmSu7DKVjWXzAeDHIribeVglwLZPGs8+l0g8suR6OCr3dsW3QK
   uE90RNV87hSZdo22PUhR/L7zOzZY2xFCc/HsIcH+2S8GAXJxQ1yGrMC+9
   6SMyha50zdKrYJSW24PdITRPpkYQxznj+JGvh6+ozzJA2fhml9ldIMXTn
   sFbrofEsoA1fn23b5fkkzXXJ9blzRhogEZryYETdyiasUVh1q8ycEWEfr
   tT3xJCgtSGItJyCwif9cagNkzxiqgsut1ZniNmecuMIQfhfGUkGHl8Zdl
   Oj8bjv/W6GCKFYue/kNmJ0rzHUVFbiYj6v9R2hXfgtfYVFNYSM1b12Kq+
   g==;
X-CSE-ConnectionGUID: fYQd/U7zQDqUBUB0lMEb2w==
X-CSE-MsgGUID: iuzEiirfTxiwAgzz2/Ms7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69223297"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; 
   d="scan'208";a="69223297"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Dec 2025 02:06:21 -0800
X-CSE-ConnectionGUID: PITpErWwRNmDgKnxiyeQcw==
X-CSE-MsgGUID: 4OdsEXdETKmHXxBiAj8Kiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; 
   d="scan'208";a="217680052"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 02 Dec 2025 02:06:15 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vQNGv-000000009fR-1YFs;
	Tue, 02 Dec 2025 10:06:13 +0000
Date: Tue, 2 Dec 2025 18:06:03 +0800
From: kernel test robot <lkp@intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Liu Ying <victor.liu@nxp.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v6 2/3] drm/bridge: imx: Add i.MX93 parallel display
 format configuration support
Message-ID: <202512021733.cIbkorvY-lkp@intel.com>
References: <20251201-v6-18-topic-imx93-parallel-display-v6-2-7b056e1e5b1e@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201-v6-18-topic-imx93-parallel-display-v6-2-7b056e1e5b1e@pengutronix.de>

Hi Marco,

kernel test robot noticed the following build errors:

[auto build test ERROR on 3a8660878839faadb4f1a6dd72c3179c1df56787]

url:    https://github.com/intel-lab-lkp/linux/commits/Marco-Felsch/dt-bindings-soc-imx93-media-blk-ctrl-Add-PDFC-subnode-to-schema-and-example/20251202-011707
base:   3a8660878839faadb4f1a6dd72c3179c1df56787
patch link:    https://lore.kernel.org/r/20251201-v6-18-topic-imx93-parallel-display-v6-2-7b056e1e5b1e%40pengutronix.de
patch subject: [PATCH v6 2/3] drm/bridge: imx: Add i.MX93 parallel display format configuration support
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20251202/202512021733.cIbkorvY-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251202/202512021733.cIbkorvY-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512021733.cIbkorvY-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/bridge/imx/imx93-pdfc.c:55:9: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      55 |                 val = FORMAT_RGB888_TO_RGB888;
         |                       ^
   drivers/gpu/drm/bridge/imx/imx93-pdfc.c:21:34: note: expanded from macro 'FORMAT_RGB888_TO_RGB888'
      21 | #define FORMAT_RGB888_TO_RGB888         FIELD_PREP(PARALLEL_DISP_FORMAT, 0)
         |                                         ^
   1 error generated.


vim +/FIELD_PREP +55 drivers/gpu/drm/bridge/imx/imx93-pdfc.c

    42	
    43	static void imx93_pdfc_bridge_atomic_enable(struct drm_bridge *bridge,
    44						    struct drm_atomic_state *state)
    45	{
    46		struct imx93_pdfc *pdfc = bridge->driver_private;
    47		const struct drm_bridge_state *bridge_state;
    48		unsigned int mask = PARALLEL_DISP_FORMAT;
    49		unsigned int val;
    50	
    51		bridge_state = drm_atomic_get_new_bridge_state(state, bridge);
    52	
    53		switch (bridge_state->output_bus_cfg.format) {
    54		case MEDIA_BUS_FMT_RGB888_1X24:
  > 55			val = FORMAT_RGB888_TO_RGB888;
    56			if (pdfc->phy_bus_width == 18) {
    57				/*
    58				 * Can be valid if physical bus limitation exist,
    59				 * therefore use dev_dbg().
    60				 */
    61				dev_dbg(pdfc->dev, "Truncate two LSBs from each color\n");
    62				val = FORMAT_RGB888_TO_RGB666;
    63			}
    64			break;
    65		case MEDIA_BUS_FMT_RGB666_1X18:
    66			val = FORMAT_RGB888_TO_RGB666;
    67			break;
    68		case MEDIA_BUS_FMT_RGB565_1X16:
    69			val = FORMAT_RGB565_TO_RGB565;
    70			break;
    71		}
    72	
    73		regmap_update_bits(pdfc->regmap, pdfc->disp_mux_reg_off, mask, val);
    74	}
    75	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

