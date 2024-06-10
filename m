Return-Path: <devicetree+bounces-74244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C609026B0
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 18:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 744FF1F20C85
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 16:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD3814373E;
	Mon, 10 Jun 2024 16:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="CuCYTibq"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202ED5B1F8;
	Mon, 10 Jun 2024 16:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718036871; cv=none; b=CKNLz+wBE+UvL/6eO/1MlPmJf9NEdj5vsfpAYLs36WKuiGQnfyUCl3RPVEeFrIl/GcTpZiFU8acROEHKSU3KZ7dDkcy+2vRszsjqX1YeCjnjk5rTF/uUCcZP6Q1iVDbXHQGPJZbjvG1X8Y5d9xwg70/dKzKrWxUXHXkWcFOLctk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718036871; c=relaxed/simple;
	bh=DcihTn0YHBSSJZt1LVKqAtveahkzXP8JX+xsNNIgiP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=axV4cEPR3qs/DUIqqwc8dvQejS2Dcev6s8+ISEqTOfuRMBsmP4AhGcYGOp2r9h4zN43wIiDEpW7dClK1jSYFBonGkG4KpoMUA1YGGu3vblCL0OEYhl1FyVIUojQcYXRaSeLiiNv/fDoF6UdQma4aWVZXmPrCQy76lQulOPqopjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=CuCYTibq; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718036870; x=1749572870;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DcihTn0YHBSSJZt1LVKqAtveahkzXP8JX+xsNNIgiP4=;
  b=CuCYTibqfd6y9Ps7B+D3DlJSG+yHBHBpIHsJHQQNozXOz6yhyxir0WHl
   RCZKjF/IxChdO9FnVT1+u72ohE5xTr3tWBoW1yI7Is51rEHtKx33uKKgf
   A7TPfKgQmHUMxq7K+iE7Fiynxwh+bEqg2SRQ4A6+HYZVkHa6xFXD8N/5T
   MfjhxyZEVG4I3kGB46FYuWCsL5Lz1c3jN67WSepUQlPUjvH6jpaIQHiXG
   BP+1M/WlID1zJng1WAn+2zHYTlBqUlC8aD+a27/ZJmogIDD1K1lMozFQv
   i41jmf3WWC7XBdde0an/OIo1w/LZq07FoWOsDSSxjmEEKbwQgej+ZFMq6
   g==;
X-CSE-ConnectionGUID: xbp6YpewSiKOaaqWnKM8pQ==
X-CSE-MsgGUID: TDscMbMwQauTqRtefNSI/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14438616"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="14438616"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2024 09:27:49 -0700
X-CSE-ConnectionGUID: UcpnBwF1TuObjJxVgwGOVQ==
X-CSE-MsgGUID: vFfDV1u3TQiu5UCs/KNtcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="70282034"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 10 Jun 2024 09:27:47 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sGhs0-0002Hh-3D;
	Mon, 10 Jun 2024 16:27:45 +0000
Date: Tue, 11 Jun 2024 00:26:51 +0800
From: kernel test robot <lkp@intel.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] ASoC: dt-bindings: convert tas571x.txt to dt-schema
Message-ID: <202406110056.TzGN9DUA-lkp@intel.com>
References: <20240607-topic-amlogic-upstream-bindings-convert-tas57xx-v1-1-ebf1e4919bb1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240607-topic-amlogic-upstream-bindings-convert-tas57xx-v1-1-ebf1e4919bb1@linaro.org>

Hi Neil,

kernel test robot noticed the following build warnings:

[auto build test WARNING on c3f38fa61af77b49866b006939479069cd451173]

url:    https://github.com/intel-lab-lkp/linux/commits/Neil-Armstrong/ASoC-dt-bindings-convert-tas571x-txt-to-dt-schema/20240607-175726
base:   c3f38fa61af77b49866b006939479069cd451173
patch link:    https://lore.kernel.org/r/20240607-topic-amlogic-upstream-bindings-convert-tas57xx-v1-1-ebf1e4919bb1%40linaro.org
patch subject: [PATCH] ASoC: dt-bindings: convert tas571x.txt to dt-schema
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20240611/202406110056.TzGN9DUA-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project d7d2d4f53fc79b4b58e8d8d08151b577c3699d4a)
dtschema version: 2024.6.dev1+g833054f
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240611/202406110056.TzGN9DUA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406110056.TzGN9DUA-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:263.22-266.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@3: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:268.22-273.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@4: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:275.24-278.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@5: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:280.22-283.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@6: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:285.22-288.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@7: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:290.29-293.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@8: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:305.11-309.6: Warning (unit_address_vs_reg): /soc@0/codec@57900000/port@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi:311.11-315.6: Warning (unit_address_vs_reg): /soc@0/codec@57900000/port@1: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts:71.10-75.5: Warning (unit_address_vs_reg): /spdif-out/port@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts:82.10-86.5: Warning (unit_address_vs_reg): /comp-spdif-out/port@0: node has a unit name, but no reg or ranges property
>> arch/arm64/boot/dts/socionext/uniphier-ld11-global.dtb: audio-codec@1d: Unevaluated properties are not allowed ('port' was unexpected)
   	from schema $id: http://devicetree.org/schemas/sound/ti,tas57xx.yaml#
   arch/arm64/boot/dts/socionext/uniphier-ld11-global.dtb: /soc@0/smpctrl@59801000: failed to match any schema with compatible: ['socionext,uniphier-smpctrl']
   arch/arm64/boot/dts/socionext/uniphier-ld11-global.dtb: spdif-out: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#
   arch/arm64/boot/dts/socionext/uniphier-ld11-global.dtb: comp-spdif-out: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#
--
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:396.22-399.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@3: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:401.22-406.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@4: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:408.24-411.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@5: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:413.22-416.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@6: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:418.22-421.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@7: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:423.29-426.6: Warning (unit_address_vs_reg): /soc@0/audio@56000000/port@8: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:438.11-442.6: Warning (unit_address_vs_reg): /soc@0/codec@57900000/port@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi:444.11-448.6: Warning (unit_address_vs_reg): /soc@0/codec@57900000/port@1: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts:71.10-75.5: Warning (unit_address_vs_reg): /spdif-out/port@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts:82.10-86.5: Warning (unit_address_vs_reg): /comp-spdif-out/port@0: node has a unit name, but no reg or ranges property
>> arch/arm64/boot/dts/socionext/uniphier-ld20-global.dtb: audio-codec@1b: Unevaluated properties are not allowed ('port' was unexpected)
   	from schema $id: http://devicetree.org/schemas/sound/ti,tas57xx.yaml#
   arch/arm64/boot/dts/socionext/uniphier-ld20-global.dtb: /soc@0/smpctrl@59801000: failed to match any schema with compatible: ['socionext,uniphier-smpctrl']
   arch/arm64/boot/dts/socionext/uniphier-ld20-global.dtb: /soc@0/usb@65a00000: failed to match any schema with compatible: ['socionext,uniphier-dwc3', 'snps,dwc3']
   arch/arm64/boot/dts/socionext/uniphier-ld20-global.dtb: spdif-out: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#
   arch/arm64/boot/dts/socionext/uniphier-ld20-global.dtb: comp-spdif-out: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

