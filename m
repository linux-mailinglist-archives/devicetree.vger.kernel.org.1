Return-Path: <devicetree+bounces-80515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F792919DB9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 05:10:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 193AC282CDC
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 03:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188E0134B1;
	Thu, 27 Jun 2024 03:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="IRnbt0qE"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F911171C
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 03:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719457845; cv=none; b=H4+xLSg6SCMOI+rAMFBmZFJoOIlS+NdgTkHFhJTasOsv3ggqw8ZW8XibE0progGqYAqGlxzQxAgwfF1upN4jnbTrQ5e0SG6/QrY05J/6slgpL/O833szF13NhWVsh7FEOMif/fk4IDtQPfCq47jXhUdusMmfeanMtaZOXAYx2KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719457845; c=relaxed/simple;
	bh=Iv0TX8+ql2MOey4aAWUSVCb5ilQa09SBI4ZV3oNClBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uP1InyqymPbiGVRwAJxJiGYywv47joYDK0j9waL5l6+sFeobAhNMqW7rjRidgKEQa8E00rckAs19kqkwKfYO1+EnMAYJrcSTT0aMTF5uhcHj5gbS6f7sXowRcF8rHAj97MeufyoZH/m8354PnfohNDN6/+3+vYQ3oDVRD/673CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=IRnbt0qE; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719457843; x=1750993843;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Iv0TX8+ql2MOey4aAWUSVCb5ilQa09SBI4ZV3oNClBY=;
  b=IRnbt0qEM9CNA+x/9JZfvbEKX26EAXCb0GRnFif5685hdfgnmcLpz7zT
   Awph2j1TX1W2lmU1a4+Ayl6gqzNLF/ArQqlcE4YAFii5wD6kf26xCWgU8
   IaHUKtkFwRQiOk6nVht8cJvwDHpSQC6yR/682IGSxRKjYfyr8tpkbozbI
   R9JghWa7lZGyDiYOy/hF0+mp0SPvOzAQm23FsySdNePfFIVbZOI2SBCEY
   oBPH7L3Y33vsaUO/OeaefKa1TFOmMVvq8CK92pcrrG/ly+BuIaNYlktM4
   Fs3z79V+ldM/dqpOP0WltEl30AJT9afm2u2fLh1b/QNMX7DGlnng1h8Tr
   A==;
X-CSE-ConnectionGUID: X5j1ObxAR4yI/6zI5aGWSw==
X-CSE-MsgGUID: 77dvwLngQtyLKnBKXFQTFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16307513"
X-IronPort-AV: E=Sophos;i="6.08,268,1712646000"; 
   d="scan'208";a="16307513"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2024 20:10:39 -0700
X-CSE-ConnectionGUID: m3UuDaYvRimU1gdCXbFVrA==
X-CSE-MsgGUID: iErufESYQA2i2oCOOH8X2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,268,1712646000"; 
   d="scan'208";a="44288214"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa009.fm.intel.com with ESMTP; 26 Jun 2024 20:10:36 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sMfWs-000Fp4-1y;
	Thu, 27 Jun 2024 03:10:34 +0000
Date: Thu, 27 Jun 2024 11:09:36 +0800
From: kernel test robot <lkp@intel.com>
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
	kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet support for DH STM32MP13xx
 DHCOR DHSBC board
Message-ID: <202406271050.ws9ieZOd-lkp@intel.com>
References: <20240623195233.81550-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240623195233.81550-1-marex@denx.de>

Hi Marek,

kernel test robot noticed the following build errors:

[auto build test ERROR on atorgue-stm32/stm32-next]
[also build test ERROR on next-20240626]
[cannot apply to arm/for-next arm/fixes arm64/for-next/core clk/clk-next kvmarm/next rockchip/for-next shawnguo/for-next soc/for-next linus/master v6.10-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Marek-Vasut/ARM-dts-stm32-Add-ethernet-support-for-DH-STM32MP13xx-DHCOR-DHSBC-board/20240625-233637
base:   https://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git stm32-next
patch link:    https://lore.kernel.org/r/20240623195233.81550-1-marex%40denx.de
patch subject: [PATCH] ARM: dts: stm32: Add ethernet support for DH STM32MP13xx DHCOR DHSBC board
config: arm-randconfig-051-20240626 (https://download.01.org/0day-ci/archive/20240627/202406271050.ws9ieZOd-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev1+g833054f
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240627/202406271050.ws9ieZOd-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406271050.ws9ieZOd-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts:77.1-11 Label or path ethernet1 not found
>> Error: arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts:104.1-11 Label or path ethernet2 not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

