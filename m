Return-Path: <devicetree+bounces-73914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4D89014DC
	for <lists+devicetree@lfdr.de>; Sun,  9 Jun 2024 09:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5178B281FFF
	for <lists+devicetree@lfdr.de>; Sun,  9 Jun 2024 07:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D141864C;
	Sun,  9 Jun 2024 07:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OlipSbee"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AED1BF47
	for <devicetree@vger.kernel.org>; Sun,  9 Jun 2024 07:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717918920; cv=none; b=sIkdcISONkc7Us5uBbkBUYzpryXoc0/pqMp4vrjUU4Aqa6aeYg//sxBRkIYCIKkQdRPwAWCLWY3zHMOSnodbBEpBuW4n/ByqbOVJmu59ukLD2b5nreftijdiAwM0olnD5sAJMFoI/iu4AzSJNTZhQ6n+VwrNCIxqJ2FbfY3oQ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717918920; c=relaxed/simple;
	bh=dX7VKy7q+axQu+bHJFz1EYYCDsVZIEyeDCieuI3GZW0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZyZaeZ+tt1QfW1msAlD9UOT04MU8pcvuVwEOzaz2RnTr6/7K8nRAzue0t4K8MJrYyemegYjQns1kp+7tN+Zi5HFHNM+XEZnCYQ/F7ePVLaQnVa/SnzRDBnoqWcHDhaNti85ROJgorpS2VQtgmFd61fTexjTql9oEHVfuyOwbkGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OlipSbee; arc=none smtp.client-ip=198.175.65.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717918918; x=1749454918;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dX7VKy7q+axQu+bHJFz1EYYCDsVZIEyeDCieuI3GZW0=;
  b=OlipSbeeS6PD549tYJntIgb69QRoynAYGHdyTHuIOdu68wdNVFKyLyQG
   XcNw8PIKKN7ZrmfrNlU2a9sMR51HubeZMxd8D+axQ+flF/cMA0bhRux3h
   0gX2yKTzcJ4cDC5oEKfN7jI4W9A/hvZANZ/EgSVQeV3jdf5+NeJr9dakY
   0gqd2w2rLcW9VoXwCDyZFRtHPSGpmb93xA6UljVXaNhEHwjCWKN6u9SlB
   a1FRP1AQCcLb+jYxOcFosAbmfIdFgEMzCi48wINGDfn0VtRgPJG8enuw2
   QrHruMe9qJ61J/RrZXaw56YgVveigL0UW+kHKAgYp4h+L87xc1i6VfwRW
   Q==;
X-CSE-ConnectionGUID: oRhA/fRYTCaP8IJ2wVxmxg==
X-CSE-MsgGUID: 5vSDnfn6Rt2JMGjl2FKaXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11097"; a="14717882"
X-IronPort-AV: E=Sophos;i="6.08,225,1712646000"; 
   d="scan'208";a="14717882"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2024 00:41:58 -0700
X-CSE-ConnectionGUID: HUkKljE/TiKgcRplNmWa7w==
X-CSE-MsgGUID: zbFNtJXkQLqRr2Hdub33uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,225,1712646000"; 
   d="scan'208";a="43679288"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 09 Jun 2024 00:41:56 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sGDBZ-0000xQ-32;
	Sun, 09 Jun 2024 07:41:53 +0000
Date: Sun, 9 Jun 2024 15:41:09 +0800
From: kernel test robot <lkp@intel.com>
To: Florian Vaussard <florian.vaussard@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: socfpga: Add support for Terasic
 DE1-SOC board
Message-ID: <202406091536.8TYvBmx2-lkp@intel.com>
References: <20240606194421.1465667-3-florian.vaussard@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606194421.1465667-3-florian.vaussard@gmail.com>

Hi Florian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 1536dc8edc653e0e4a333035a73ff146d0517749]

url:    https://github.com/intel-lab-lkp/linux/commits/Florian-Vaussard/dt-bindings-altera-Add-Terasic-DE1-SOC-board/20240607-034627
base:   1536dc8edc653e0e4a333035a73ff146d0517749
patch link:    https://lore.kernel.org/r/20240606194421.1465667-3-florian.vaussard%40gmail.com
patch subject: [PATCH v2 2/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC board
compiler: arm-linux-gnueabi-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev1+g833054f
reproduce: (https://download.01.org/0day-ci/archive/20240609/202406091536.8TYvBmx2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406091536.8TYvBmx2-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: fpga_bridge@ff400000: $nodename:0: 'fpga_bridge@ff400000' does not match '^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$'
   	from schema $id: http://devicetree.org/schemas/fpga/altr,socfpga-hps2fpga-bridge.yaml#
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: fpga_bridge@ff500000: $nodename:0: 'fpga_bridge@ff500000' does not match '^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$'
   	from schema $id: http://devicetree.org/schemas/fpga/altr,socfpga-hps2fpga-bridge.yaml#
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/fpgamgr@ff706000: failed to match any schema with compatible: ['altr,socfpga-fpga-mgr']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/ethernet@ff700000: failed to match any schema with compatible: ['altr,socfpga-stmmac', 'snps,dwmac-3.70a', 'snps,dwmac']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/ethernet@ff702000: failed to match any schema with compatible: ['altr,socfpga-stmmac', 'snps,dwmac-3.70a', 'snps,dwmac']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/eccmgr: failed to match any schema with compatible: ['altr,socfpga-ecc-manager']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/eccmgr/l2-ecc@ffd08140: failed to match any schema with compatible: ['altr,socfpga-l2-ecc']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/eccmgr/ocram-ecc@ffd08144: failed to match any schema with compatible: ['altr,socfpga-ocram-ecc']
>> arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/l3regs@ff800000: failed to match any schema with compatible: ['altr,l3regs', 'syscon']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: sram@ffff0000: '#address-cells' is a required property
   	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: sram@ffff0000: '#size-cells' is a required property
   	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: sram@ffff0000: 'ranges' is a required property
   	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: spi@ff705000: resets: [[6, 37]] is too short
   	from schema $id: http://devicetree.org/schemas/spi/cdns,qspi-nor.yaml#
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/sdramedac: failed to match any schema with compatible: ['altr,sdram-edac']
   arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dtb: /soc/sysmgr@ffd08000: failed to match any schema with compatible: ['altr,sys-mgr', 'syscon']

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

