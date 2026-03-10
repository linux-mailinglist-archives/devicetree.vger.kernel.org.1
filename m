Return-Path: <devicetree+bounces-273757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJU+LKaZsGkukgIAu9opvQ
	(envelope-from <devicetree+bounces-273757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:22:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B385258DE8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19F57302BA7A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAE438D693;
	Tue, 10 Mar 2026 22:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="hqHY5PiI"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9C8317166;
	Tue, 10 Mar 2026 22:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773181300; cv=none; b=hD4QxHbZBpBkl2ERxJrxGXiafYmCZfVtmXNn7yYSdC9PVp9ARBWRIJJgohQa4rFRfmdHBON8nuv+/uZJWf0Y1fL9wElkQr4ZStcvs6QQxjBSoRl721uyzMpeYTYmaNyKrRA+BWekAIfPTuJT8rWabQmFuWkhxhP9jFPwVVEWrjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773181300; c=relaxed/simple;
	bh=l0MvmofzaAztY8ncplwIItHVRuWm+6ox8A6D2zUvm20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PksfkK18q3VhWgeg3fme3VUr9fUdCXdf01ybQOOrwuF0ccUmicG5AwLbnacqlOCBdWX3jvpmiaZ3BaIE8JoZoMVxZz242IJybSidPOJ/ST5KFLVpnfjaokN9yjyiwDcj66GQPk5eONZ2DRQn8ziJkR1Zu+addXpaiT7aOGZz8Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=hqHY5PiI; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773181299; x=1804717299;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=l0MvmofzaAztY8ncplwIItHVRuWm+6ox8A6D2zUvm20=;
  b=hqHY5PiIxNqGnx8+YhzAV27TxepEc1Eic+nsvKTd7J4OPrrxtPxqWpPx
   kCptTsMVR72RbvhOMYrkgIAbBeHOY9LOkiYENRyONj5DbjdLDVkrvuZau
   U88tt9pEptR1Tsjs9rWo2luXbbkbgQWHYp9bC4zHAbeiY/RrdbMNxMywc
   eAJzW1NMk6zMfQSrzAIvHo+IDd1hFLoEJh64OzEnVpqUB+LwlX0HyYByw
   0Gy05yPJ3KLnXPFDD+mpXt+fwmlV2rfdLpRgvvoy7V7DUrmw1h5tw0spr
   cN/Oi04Nhep4hhpWbgTzW7SSIzEdjCp7DhVodwA7vVANfvNc8Q5vMLk1t
   Q==;
X-CSE-ConnectionGUID: 3KxRYjbfRQCjlSVTtceVcw==
X-CSE-MsgGUID: R+1aj8hoQ4qxp9j6va4FqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74139918"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="74139918"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2026 15:21:38 -0700
X-CSE-ConnectionGUID: R519bXzISKmyupU28W3UtA==
X-CSE-MsgGUID: 8QRpzhe+RzK8kKwGRKEIcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="220436941"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
  by orviesa007.jf.intel.com with ESMTP; 10 Mar 2026 15:21:34 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w05SE-000000000N4-44dk;
	Tue, 10 Mar 2026 22:21:30 +0000
Date: Wed, 11 Mar 2026 06:20:54 +0800
From: kernel test robot <lkp@intel.com>
To: Alexander Koskovich <akoskovich@pm.me>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexander Koskovich <akoskovich@pm.me>
Subject: Re: [PATCH v3 2/2] drm/panel: Add support for Tianma TA066VVHM03
 panel
Message-ID: <202603110640.rd02o2cM-lkp@intel.com>
References: <20260310-tianma-ta066vvhm03-v3-2-fc2938971d79@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-tianma-ta066vvhm03-v3-2-fc2938971d79@pm.me>
X-Rspamd-Queue-Id: 1B385258DE8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273757-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[pm.me,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Alexander,

kernel test robot noticed the following build errors:

[auto build test ERROR on 1f318b96cc84d7c2ab792fcc0bfd42a7ca890681]

url:    https://github.com/intel-lab-lkp/linux/commits/Alexander-Koskovich/dt-bindings-display-panel-Document-Tianma-TA066VVHM03/20260310-125055
base:   1f318b96cc84d7c2ab792fcc0bfd42a7ca890681
patch link:    https://lore.kernel.org/r/20260310-tianma-ta066vvhm03-v3-2-fc2938971d79%40pm.me
patch subject: [PATCH v3 2/2] drm/panel: Add support for Tianma TA066VVHM03 panel
config: arm64-randconfig-002-20260311 (https://download.01.org/0day-ci/archive/20260311/202603110640.rd02o2cM-lkp@intel.com/config)
compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project 122f0b13a237b5024747b4ee99002590cc9a220a)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260311/202603110640.rd02o2cM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603110640.rd02o2cM-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/panel/panel-tianma-ta066vvhm03.c:335:7: error: no member named 'dsc_slice_per_pkt' in 'struct mipi_dsi_device'
     335 |         dsi->dsc_slice_per_pkt = 2;
         |         ~~~  ^
   1 error generated.


vim +335 drivers/gpu/drm/panel/panel-tianma-ta066vvhm03.c

   286	
   287	static int tianma_ta066vvhm03_probe(struct mipi_dsi_device *dsi)
   288	{
   289		struct device *dev = &dsi->dev;
   290		struct tianma_ta066vvhm03 *ctx;
   291		int ret;
   292	
   293		ctx = devm_drm_panel_alloc(dev, struct tianma_ta066vvhm03, panel,
   294					   &tianma_ta066vvhm03_panel_funcs,
   295					   DRM_MODE_CONNECTOR_DSI);
   296		if (IS_ERR(ctx))
   297			return PTR_ERR(ctx);
   298	
   299		ret = devm_regulator_bulk_get_const(dev,
   300						    ARRAY_SIZE(tianma_ta066vvhm03_supplies),
   301						    tianma_ta066vvhm03_supplies,
   302						    &ctx->supplies);
   303		if (ret < 0)
   304			return ret;
   305	
   306		ctx->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
   307		if (IS_ERR(ctx->enable_gpio))
   308			return dev_err_probe(dev, PTR_ERR(ctx->enable_gpio),
   309					     "Failed to get enable-gpios\n");
   310	
   311		ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
   312		if (IS_ERR(ctx->reset_gpio))
   313			return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
   314					     "Failed to get reset-gpios\n");
   315	
   316		ctx->dsi = dsi;
   317		mipi_dsi_set_drvdata(dsi, ctx);
   318	
   319		dsi->lanes = 4;
   320		dsi->format = MIPI_DSI_FMT_RGB888;
   321		dsi->mode_flags = MIPI_DSI_MODE_NO_EOT_PACKET |
   322				  MIPI_DSI_CLOCK_NON_CONTINUOUS;
   323	
   324		ctx->panel.prepare_prev_first = true;
   325	
   326		ctx->panel.backlight = tianma_ta066vvhm03_create_backlight(dsi);
   327		if (IS_ERR(ctx->panel.backlight))
   328			return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
   329					     "Failed to create backlight\n");
   330	
   331		drm_panel_add(&ctx->panel);
   332	
   333		/* This panel only supports DSC; unconditionally enable it */
   334		dsi->dsc = &ctx->dsc;
 > 335		dsi->dsc_slice_per_pkt = 2;
   336	
   337		ctx->dsc.dsc_version_major = 1;
   338		ctx->dsc.dsc_version_minor = 1;
   339	
   340		ctx->dsc.slice_height = 20;
   341		ctx->dsc.slice_width = 540;
   342		WARN_ON(1080 % ctx->dsc.slice_width);
   343		ctx->dsc.slice_count = 1080 / ctx->dsc.slice_width;
   344		ctx->dsc.bits_per_component = 10;
   345		ctx->dsc.bits_per_pixel = 8 << 4; /* 4 fractional bits */
   346		ctx->dsc.block_pred_enable = true;
   347	
   348		ret = mipi_dsi_attach(dsi);
   349		if (ret < 0) {
   350			drm_panel_remove(&ctx->panel);
   351			return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
   352		}
   353	
   354		return 0;
   355	}
   356	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

