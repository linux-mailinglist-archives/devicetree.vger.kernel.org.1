Return-Path: <devicetree+bounces-38278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 785B88486AD
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 15:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D40B6285F2E
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 14:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B958A5DF16;
	Sat,  3 Feb 2024 14:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="NyGQ7ZOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D655DF18;
	Sat,  3 Feb 2024 14:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706970098; cv=none; b=ZmOCXVVJrQIkwnu7SAAHpY2aFz8Bra6BztfOIeX2zJi5NIF9LsTf7F+yofpnDQzuyyWFxHVOHG2gvMvO3X/HRidFuXWZVElM1AYtNc/WlLDLZY7A3z9zD7iN/NnXEmldebxqoEkPpTxxlmrXP24z1hg9QkP/yjzRFLd9qyXNuBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706970098; c=relaxed/simple;
	bh=iKJsA8qrv4b0XlTNT8h8NVU8w8Bmbd2G3WGljcs7ppQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2RpEceocSq4NJ7/4HDi2SIaTkJ2MHZO7NcDR2tEFqZLZASrKHLEEoVcwxTpVBbVVZYV+0duMBc8PuIL+Nv2ZN3cQV13mGTRJQHfbJxFrPeAm4acHrUlsE9gyCHCcfUYcvXQEKck5MYCy+2/N5xR8yFs0QttC6J0760GeZIBWeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=NyGQ7ZOE; arc=none smtp.client-ip=198.175.65.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706970097; x=1738506097;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iKJsA8qrv4b0XlTNT8h8NVU8w8Bmbd2G3WGljcs7ppQ=;
  b=NyGQ7ZOERf61SOSJBHZsksGW1H5qeRpHAfbo2uga7RYwWAvAsYpk83QJ
   6StWZaTz4GNOWYIH9sN+Hc57ylHOA/P9E47aLfiUWSL8UFTZOzHaNiCa4
   qkCxhnd3TFJEamojdtLH7JBXaLsd9XfApE7e3/EnNZ05R/rdST1PhVmqa
   rh4sl7j12A1GYA+Iw3nSyVUcmhp80dCKqmSOp+UcebJ3YPaQ/zC8nw1nR
   9fY75ObTf3F1njZVdwjjn561L+Bzfz2DMlFsMBxZCxgdtHxmQigesqHXH
   PApP+wWDrZ5At9ytd21Q7SsaYYBVJ4o+267n6/FqOBJA1iJOxk6lGc5Bl
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="474803"
X-IronPort-AV: E=Sophos;i="6.05,240,1701158400"; 
   d="scan'208";a="474803"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2024 06:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="932751511"
X-IronPort-AV: E=Sophos;i="6.05,240,1701158400"; 
   d="scan'208";a="932751511"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2024 06:21:31 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rWGtd-00059K-24;
	Sat, 03 Feb 2024 14:21:29 +0000
Date: Sat, 3 Feb 2024 22:20:41 +0800
From: kernel test robot <lkp@intel.com>
To: Dharma Balasubiramani <dharma.b@microchip.com>,
	manikandan.m@microchip.com, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux4microchip@microchip.com
Subject: Re: [PATCH 2/3] drm/bridge: add lvds controller support for sam9x7
Message-ID: <202402032248.6puqAuzM-lkp@intel.com>
References: <20240122082947.21645-3-dharma.b@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122082947.21645-3-dharma.b@microchip.com>

Hi Dharma,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v6.8-rc2 next-20240202]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dharma-Balasubiramani/dt-bindings-display-bridge-add-sam9x7-lvds-compatible/20240122-163209
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20240122082947.21645-3-dharma.b%40microchip.com
patch subject: [PATCH 2/3] drm/bridge: add lvds controller support for sam9x7
config: arm-randconfig-r112-20240203 (https://download.01.org/0day-ci/archive/20240203/202402032248.6puqAuzM-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240203/202402032248.6puqAuzM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402032248.6puqAuzM-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/bridge/microchip-lvds.c:236:24: sparse: sparse: symbol 'mchp_lvds_driver' was not declared. Should it be static?

vim +/mchp_lvds_driver +236 drivers/gpu/drm/bridge/microchip-lvds.c

   235	
 > 236	struct platform_driver mchp_lvds_driver = {
   237		.probe = mchp_lvds_probe,
   238		.remove = mchp_lvds_remove,
   239		.driver = {
   240			   .name = "microchip-lvds",
   241			   .of_match_table = mchp_lvds_dt_ids,
   242		},
   243	};
   244	module_platform_driver(mchp_lvds_driver);
   245	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

