Return-Path: <devicetree+bounces-137614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FD0A0A1DD
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 08:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 392AD7A372B
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 07:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED97165EFC;
	Sat, 11 Jan 2025 07:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="LCR9nuL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C6824B256;
	Sat, 11 Jan 2025 07:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736581701; cv=none; b=r0mcOnet/yngydCChFY0I0nSQ0oB972cw6qkJEA1IQ1M6j+Sfmru20nu8uLHO3U3FKQC2WxCm6q3OP9t/vCP57avfqYfT6KutC8EB3k3UJmWSlLy7OKvYiPdSWoTtK6+cRnmwfCQ2XVOWkoXertPTqMb9FZA256ZOatMzqkvJlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736581701; c=relaxed/simple;
	bh=fo3Nyik4IoaUbdBCHzX/7gw3smsm4pD3krSrVo4Mm+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VjvVRteogmIK1WbOUDfoeEe+di1rWq1O1G9xdlVC50Ns/R3/GIv0Yr4rJE1uUKUtHPYSqrrHqkLVO44qzPyPNJ1P8QaLQ8pO1NYGdXGMeLa1MP3yjj/AJy73jg1QOcqYljTaJaP5tsaOXZ0ux2VS9XET39ZRB0zNncgeSzuvD10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=LCR9nuL4; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736581698; x=1768117698;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fo3Nyik4IoaUbdBCHzX/7gw3smsm4pD3krSrVo4Mm+o=;
  b=LCR9nuL4o3qIQhG2m74BF212oDg8YOVYQ/PgtOj2DFBQsC+x3eMMehgO
   HvpefhZzU7XiuKWtVmR8MCmsslXd63TIcwnlwGfltxFhGt4phFcxiAmfx
   6KgsbZQHJl4DPlAYgyECx3WXUdEZaoRwqZzvZ7qbRswcKLDE3IBXEsrEk
   ouOhsOvnRtrHuErkwqJ2ouKkTeTpirhEw9Q6Ur0giTYDAFp1ddNzhiRr6
   M7akfwQP/wW9XI8SKz2Lf4cbX8/Ip1qOqOTCWKhIiZ7bIPVpCQNw6XDSU
   I7tzNxg5NP5zpv7fM7YBwaaRF6VNS+whoDrttn3EyHROnkKOIvWpL7Mcs
   w==;
X-CSE-ConnectionGUID: NUOm9OWRT/iXUHB0Xzb6Lg==
X-CSE-MsgGUID: XloXI541Qu+xPs1jir9Zhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="54424937"
X-IronPort-AV: E=Sophos;i="6.12,306,1728975600"; 
   d="scan'208";a="54424937"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jan 2025 23:48:17 -0800
X-CSE-ConnectionGUID: GiJZoRTOSeiC0hZFzYsRWg==
X-CSE-MsgGUID: VhYXp1TpQOeJ9sXXpdQuNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="134841946"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 10 Jan 2025 23:48:13 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tWWE6-000KMF-29;
	Sat, 11 Jan 2025 07:48:10 +0000
Date: Sat, 11 Jan 2025 15:47:10 +0800
From: kernel test robot <lkp@intel.com>
To: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Ao Xu <ao.xu@amlogic.com>
Subject: Re: [PATCH 03/11] drm: meson: add S4 compatible for DRM driver
Message-ID: <202501111505.wNSI9zrC-lkp@intel.com>
References: <20250110-drm-s4-v1-3-cbc2d5edaae8@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110-drm-s4-v1-3-cbc2d5edaae8@amlogic.com>

Hi Ao,

kernel test robot noticed the following build errors:

[auto build test ERROR on 6ecd20965bdc21b265a0671ccf36d9ad8043f5ab]

url:    https://github.com/intel-lab-lkp/linux/commits/Ao-Xu-via-B4-Relay/dt-bindings-display-meson-dw-hdmi-Add-compatible-for-S4-HDMI-controller/20250110-134113
base:   6ecd20965bdc21b265a0671ccf36d9ad8043f5ab
patch link:    https://lore.kernel.org/r/20250110-drm-s4-v1-3-cbc2d5edaae8%40amlogic.com
patch subject: [PATCH 03/11] drm: meson: add S4 compatible for DRM driver
config: arm64-randconfig-002-20250111 (https://download.01.org/0day-ci/archive/20250111/202501111505.wNSI9zrC-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project f5cd181ffbb7cb61d582fe130d46580d5969d47a)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250111/202501111505.wNSI9zrC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501111505.wNSI9zrC-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/meson/meson_drv.c:541:3: error: no member named 'dev' in 'struct device'; did you mean 'devt'?
     541 |                 drm_err(dev, "suspend error: %d", ret);
         |                 ^
   include/drm/drm_print.h:601:2: note: expanded from macro 'drm_err'
     601 |         __drm_printk((drm), err,, "*ERROR* " fmt, ##__VA_ARGS__)
         |         ^
   include/drm/drm_print.h:588:35: note: expanded from macro '__drm_printk'
     588 |         dev_##level##type((drm) ? (drm)->dev : NULL, "[drm] " fmt, ##__VA_ARGS__)
         |                                          ^
   include/linux/device.h:794:10: note: 'devt' declared here
     794 |         dev_t                   devt;   /* dev_t, creates the sysfs "dev" */
         |                                 ^
   1 error generated.


vim +541 drivers/gpu/drm/meson/meson_drv.c

   530	
   531	static int __maybe_unused meson_drv_pm_suspend(struct device *dev)
   532	{
   533		int ret;
   534		struct meson_drm *priv = dev_get_drvdata(dev);
   535	
   536		if (!priv)
   537			return 0;
   538	
   539		ret = drm_mode_config_helper_suspend(priv->drm);
   540		if (unlikely(ret)) {
 > 541			drm_err(dev, "suspend error: %d", ret);
   542			return ret;
   543		}
   544	
   545		meson_setup_clk(priv, false);
   546	
   547		return ret;
   548	}
   549	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

