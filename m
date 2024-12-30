Return-Path: <devicetree+bounces-134642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A79FE9FE227
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FA19188206D
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 03:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D7C7E792;
	Mon, 30 Dec 2024 03:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="SFlCjTpV"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183F940BF5
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 03:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735527894; cv=none; b=QigytX9t45OKl2hydIyqMrEN2oP6+ASkGL2GqLGcYSuTP/b2GBd1OWWI6TbPROCdp0j/1aqab7Qt4NTn5G6emp22iy2YaI6gi7UP40GPuXd5X93U9li7tY+QKcm30tn9I0ge6S2+LZCoYzRSacZpbPk4x10426ZOXXVG6qSkGWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735527894; c=relaxed/simple;
	bh=M6nCHa9Ey66A5jxQHmJjtx5jpwPsgKxN28xApbDPEkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t5hXv7DXu+j/oxKY3ssgG1tbPVgRO7s2gdvbykeDUxCS5AUu7G7lve7nbY5uxbwk2taEsPC30n8dEnvmG9LkrgsVJgfZQS14TJs42PvumNIfvYjMk9dVN4WFxp+2DBmiiMcbfZdFmEZWWeRwot5rEEHa96ZtAujQm6hJQD67jBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SFlCjTpV; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1735527892; x=1767063892;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=M6nCHa9Ey66A5jxQHmJjtx5jpwPsgKxN28xApbDPEkI=;
  b=SFlCjTpVtu8JS/uBxpnSAOc2m821fa/aLalbhi163WTi4fgyTjfb7d5q
   KShPuDpm172WWBUb2V35e9p3jHJU08bHHoJiICyiAvJCQr4dyypx7+In8
   0KBF/KpEPRiYtUoFD6WMWXDCaPzjurdY9Sip/CviLk/PYWLfkLe6LElZ/
   WsY25DQvXXU33Sw2PKWVOS3urLl8w9oiAhfALGerPJwMlczCKdYdFQ+KN
   +UM1E3VRrD5T5an0/6bcsAw+N43vFvdV6rsiVQeTrU9RC7+rl8/JalYGZ
   PpVFrw5zhd5X2AVUbM4FAUGQ/T6BQWAxNIqnzZrbuNAep8JtkfTd/Cyr+
   w==;
X-CSE-ConnectionGUID: SQKltP0LQUuANCTjby+Yww==
X-CSE-MsgGUID: 0pGCCb84SPOz3QwvkndYDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11299"; a="35977024"
X-IronPort-AV: E=Sophos;i="6.12,275,1728975600"; 
   d="scan'208";a="35977024"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Dec 2024 19:04:51 -0800
X-CSE-ConnectionGUID: /2SdGqVkSP6n5nJdtLySpg==
X-CSE-MsgGUID: w+bSGEFJTHGSxxdiD4Jv/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="105663454"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 29 Dec 2024 19:04:49 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tS65G-0005Jc-20;
	Mon, 30 Dec 2024 03:04:46 +0000
Date: Mon, 30 Dec 2024 11:04:26 +0800
From: kernel test robot <lkp@intel.com>
To: Jimmy Hon <honyuenkwun@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: oe-kbuild-all@lists.linux.dev, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Message-ID: <202412301002.E6G16osA-lkp@intel.com>
References: <20241229184256.1870-11-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241229184256.1870-11-honyuenkwun@gmail.com>

Hi Jimmy,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on robh/for-next linus/master v6.13-rc5 next-20241220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jimmy-Hon/arm64-dts-rockchip-refactor-common-rk3588-orangepi-5-dtsi/20241230-064740
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20241229184256.1870-11-honyuenkwun%40gmail.com
patch subject: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
config: arm64-randconfig-001-20241230 (https://download.01.org/0day-ci/archive/20241230/202412301002.E6G16osA-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241230/202412301002.E6G16osA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412301002.E6G16osA-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:53.1-7 Label or path hdmi1 not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:60.1-10 Label or path hdmi1_in not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:66.1-11 Label or path hdmi1_out not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:76.1-11 Label or path hdptxphy1 not found
   FATAL ERROR: Syntax error parsing input tree

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FB_IOMEM_HELPERS
   Depends on [n]: HAS_IOMEM [=y] && FB_CORE [=n]
   Selected by [m]:
   - DRM_XE_DISPLAY [=y] && HAS_IOMEM [=y] && DRM [=m] && DRM_XE [=m] && DRM_XE [=m]=m [=m] && HAS_IOPORT [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

