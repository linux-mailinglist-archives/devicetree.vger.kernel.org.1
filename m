Return-Path: <devicetree+bounces-95146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DBA9583A3
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:08:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDBC81F241BD
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C182418CBEA;
	Tue, 20 Aug 2024 10:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="CJxfOzmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCA4158545;
	Tue, 20 Aug 2024 10:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724148458; cv=none; b=kZNW3nGifvNSBZLTjTyfkWz7NxGzmrmC20qYaDrTr+EeRufApPxP+5NzANvb7LHj1ne8zaaNm+T6sZlzCzhRbCHnNyrVmoOCN6CxxyqysSvVx4Lh7qplfF/9O/776DnPJabTTbvownlXl9995rcx+Zs6JsTIIAvfhU4nrhn5GyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724148458; c=relaxed/simple;
	bh=bf8kz5/zs+nVRfuhgFLeuqKgKIYboF3ngFXVlrv2Df8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tn1QHqQJmFFFxqxjSkQ1NijgHwPY4frQir5+LnXeDd+gbPcOoF3j0OpxB/BFtsskUkvxmOIIEnm026RvR3Dam/We022E9uIqA9cQzuQZJRwIutaeLIfvWYsEk6ruNuzkUOiU/tILytaAq2MMRcH4JupccC5r32AIyA1GhRxLlAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=CJxfOzmF; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724148455; x=1755684455;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bf8kz5/zs+nVRfuhgFLeuqKgKIYboF3ngFXVlrv2Df8=;
  b=CJxfOzmFZQNNFoKCwI/T5IOQhNEX5nA6wn6+3aR//sdwtFBR2rReFBa6
   X5GufE6KJnppSbgeS4s3M61XOCCpp8ee2X7A7gTcAnjwcwWIZSqqbz+ko
   qnPklIwr+YXdtSjkCwo7svYS1KnJpKwJCljgfFGwPkTrcUg0Y7w7CFeu2
   tQE9Sw/Is4rDjyjU3JPSPYuNudKQBJUiBIFRXcQtTXlnypf36bzmGxF/A
   DUn3Wh5Xk07cqNVbYWqULXFSWVSWg71PxeISw7E8pXYCgIuakmxU5KSgv
   dooAQrOqrmUzOCzXp7mx+qDONNAARk+k8csEfe0nqltgNSN0kNXEjZ442
   A==;
X-CSE-ConnectionGUID: 1GckCjsKS5Oq0v3zB9y8uQ==
X-CSE-MsgGUID: Kf9J2zOqRCWRkopEwuaUqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22573981"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; 
   d="scan'208";a="22573981"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Aug 2024 03:07:34 -0700
X-CSE-ConnectionGUID: 8GozAOEARt6+rmkkO6VlTg==
X-CSE-MsgGUID: ZD0Ym3zqSZunJLBRXJd9aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; 
   d="scan'208";a="60659356"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 20 Aug 2024 03:07:28 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sgLlu-000A1A-05;
	Tue, 20 Aug 2024 10:07:26 +0000
Date: Tue, 20 Aug 2024 18:06:31 +0800
From: kernel test robot <lkp@intel.com>
To: Stephen Boyd <swboyd@chromium.org>, chrome-platform@lists.linux.dev
Cc: oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org,
	patches@lists.linux.dev, devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Guenter Roeck <groeck@chromium.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lee Jones <lee@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Prashant Malani <pmalani@chromium.org>,
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>
Subject: Re: [PATCH v3 09/17] drm/bridge: dp_typec: Allow users to hook hpd
 notify path
Message-ID: <202408201747.NMpzuToG-lkp@intel.com>
References: <20240819223834.2049862-10-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240819223834.2049862-10-swboyd@chromium.org>

Hi Stephen,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8400291e289ee6b2bf9779ff1c83a291501f017b]

url:    https://github.com/intel-lab-lkp/linux/commits/Stephen-Boyd/drm-atomic-helper-Introduce-lane-remapping-support-to-bridges/20240820-064107
base:   8400291e289ee6b2bf9779ff1c83a291501f017b
patch link:    https://lore.kernel.org/r/20240819223834.2049862-10-swboyd%40chromium.org
patch subject: [PATCH v3 09/17] drm/bridge: dp_typec: Allow users to hook hpd notify path
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20240820/202408201747.NMpzuToG-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240820/202408201747.NMpzuToG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408201747.NMpzuToG-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/bridge/aux-hpd-bridge.c:61: warning: Function parameter or struct member 'orientation_switch' not described in 'drm_dp_typec_bridge_typec_port'
>> drivers/gpu/drm/bridge/aux-hpd-bridge.c:336: warning: Function parameter or struct member 'typec_bridge_dev' not described in 'drm_dp_typec_bridge_add_hpd_notify'


vim +336 drivers/gpu/drm/bridge/aux-hpd-bridge.c

   327	
   328	/**
   329	 * drm_dp_typec_bridge_add_hpd_notify: Register a callback called when the
   330	 * bridge chain hpd state changes
   331	 * @hpd_notify: callback for bridge hot plug detect events
   332	 * @hpd_data: data passed to @hpd_notify callback
   333	 */
   334	void drm_dp_typec_bridge_add_hpd_notify(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
   335						hpd_notify_fn_t hpd_notify, void *hpd_data)
 > 336	{
   337		typec_bridge_dev->hpd_notify = hpd_notify;
   338		typec_bridge_dev->hpd_data = hpd_data;
   339	}
   340	EXPORT_SYMBOL_GPL(drm_dp_typec_bridge_add_hpd_notify);
   341	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

