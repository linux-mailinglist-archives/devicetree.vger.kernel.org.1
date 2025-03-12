Return-Path: <devicetree+bounces-156930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F0CA5DEA0
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 15:08:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BB2E189BE8C
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 14:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1149724BD14;
	Wed, 12 Mar 2025 14:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ARls7idO"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464A71E48A
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 14:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741788511; cv=none; b=rWbTH4s7l50Z28hoFPscy+UyPcEzkS/VwhfGExRfbM/jQCMILXswadUBuA/IaPrGSkwUhA674QOkTd+qU0/5LIn/VG13cX7xB7k0JJqgPpMbV3Z0pyS4/awvpke7yZXjNEf/src5s5U+mZ/XA80RSkWVtDjbr2N/eP32Ndstc/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741788511; c=relaxed/simple;
	bh=nPru4QrnmaYN1sJ2YcIMaUd6EP+y9ovxrlluxJxdhsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aaKj68OY/zbAzBNEXJ7H+JcMq0h0wBof/Be35ysT3S0Dz/lXYuBtFBiHPfYH7iUeCqGcrfvgG4BJ8ywE3yqSsmf4rhEebRNIUeR1bLskqSha2LFLA+aG3WsWxcuXLYFqNuQ7uyifgiyh+mgoqQrYRmfZ9u48gYSIfoTSbb6tOoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ARls7idO; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1741788508; x=1773324508;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nPru4QrnmaYN1sJ2YcIMaUd6EP+y9ovxrlluxJxdhsQ=;
  b=ARls7idO1VZrQsimkdiPLIZ7Hidm2qvBJ66NnPSObuHPz+vXxREg3IhU
   xKCDRkWI9e6Z0sOpr8hsOpGgMw1f0+I6FEPWctg3h17tzGbP3CITNyp03
   c+6T8aM7CwJwV1YwCfAmdoMfGdnikXpWAtCJyJorM3A7jzsh5kkojm4Ox
   pLjHfVBYUyP/XhLahMSJrqsiFCA+prWG/GBL+bqHF5iv0ub/aFowWlR4A
   z69ZwFX/kSLNAfVJL8pwSWqNc5xg0+UDc5sZJru2oj4KFXA5OLkPUAaH1
   tzStFMUYUD3vAU8PNdzCwJjLP5VrCAbx9aFlp5ABoszipSsGWoKsYZfLv
   g==;
X-CSE-ConnectionGUID: 7DfHVFVuSDG93ebpo3N1YA==
X-CSE-MsgGUID: QK0/XJ1HQLqMpBxaRBP1Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42726591"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; 
   d="scan'208";a="42726591"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2025 07:08:28 -0700
X-CSE-ConnectionGUID: Cj8KSxffRoywGcljWx1K5w==
X-CSE-MsgGUID: No9uvvM5Qf+dtRseybNkJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; 
   d="scan'208";a="120879356"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
  by fmviesa008.fm.intel.com with ESMTP; 12 Mar 2025 07:08:22 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tsMkt-0008bY-2K;
	Wed, 12 Mar 2025 14:08:19 +0000
Date: Wed, 12 Mar 2025 22:07:19 +0800
From: kernel test robot <lkp@intel.com>
To: Roman Kisel <romank@linux.microsoft.com>, arnd@arndb.de,
	bhelgaas@google.com, bp@alien8.de, catalin.marinas@arm.com,
	conor+dt@kernel.org, dave.hansen@linux.intel.com,
	decui@microsoft.com, haiyangz@microsoft.com, hpa@zytor.com,
	joey.gouly@arm.com, krzk+dt@kernel.org, kw@linux.com,
	kys@microsoft.com, lenb@kernel.org, lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
	maz@kernel.org, mingo@redhat.com, oliver.upton@linux.dev,
	rafael@kernel.org, robh@kernel.org, ssengar@linux.microsoft.com,
	sudeep.holla@arm.com, suzuki.poulose@arm.com, tglx@linutronix.de,
	wei.liu@kernel.org, will@kernel.org, yuzenghui@huawei.com,
	devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH hyperv-next v5 01/11] arm64: kvm, smccc: Introduce and
 use API for detectting hypervisor presence
Message-ID: <202503122113.trcjnau3-lkp@intel.com>
References: <20250307220304.247725-2-romank@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307220304.247725-2-romank@linux.microsoft.com>

Hi Roman,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 3a7f7785eae7cf012af128ca9e383c91e4955354]

url:    https://github.com/intel-lab-lkp/linux/commits/Roman-Kisel/arm64-kvm-smccc-Introduce-and-use-API-for-detectting-hypervisor-presence/20250308-060639
base:   3a7f7785eae7cf012af128ca9e383c91e4955354
patch link:    https://lore.kernel.org/r/20250307220304.247725-2-romank%40linux.microsoft.com
patch subject: [PATCH hyperv-next v5 01/11] arm64: kvm, smccc: Introduce and use API for detectting hypervisor presence
config: arm64-randconfig-r131-20250312 (https://download.01.org/0day-ci/archive/20250312/202503122113.trcjnau3-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce: (https://download.01.org/0day-ci/archive/20250312/202503122113.trcjnau3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503122113.trcjnau3-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
   drivers/firmware/smccc/smccc.c:19:21: sparse: sparse: symbol 'smccc_soc_id_version' was not declared. Should it be static?
   drivers/firmware/smccc/smccc.c:20:21: sparse: sparse: symbol 'smccc_soc_id_revision' was not declared. Should it be static?
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer
>> drivers/firmware/smccc/smccc.c:81:37: sparse: sparse: restricted __le32 degrades to integer

vim +81 drivers/firmware/smccc/smccc.c

    69	
    70	bool arm_smccc_hyp_present(const uuid_t *hyp_uuid)
    71	{
    72		struct arm_smccc_res res = {};
    73	
    74		if (arm_smccc_1_1_get_conduit() != SMCCC_CONDUIT_HVC)
    75			return false;
    76		arm_smccc_1_1_hvc(ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID, &res);
    77		if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
    78			return false;
    79	
    80		return ({
  > 81			const uuid_t uuid = SMCCC_RES_TO_UUID(res.a0, res.a1, res.a2, res.a3);
    82			const bool present = uuid_equal(&uuid, hyp_uuid);
    83	
    84			present;
    85		});
    86	}
    87	EXPORT_SYMBOL_GPL(arm_smccc_hyp_present);
    88	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

