Return-Path: <devicetree+bounces-283189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNMJBfs/zGm+RgYAu9opvQ
	(envelope-from <devicetree+bounces-283189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 23:43:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1783721CF
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 23:43:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 885843025F77
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 21:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9694611C6;
	Tue, 31 Mar 2026 21:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="BRNSCFvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8FB45BD48;
	Tue, 31 Mar 2026 21:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774992891; cv=none; b=dfRa7Aou9sSyvilzWGZRv+ryRoKMl60R2io4Yf5IT9ozjijKLt0TkR/0EnVN0pPVNBbiYkDRwhcL54QMgK+E3mX1xZfg9WedKzLzEiBHfH6ZRBTHclByod3Fv9N36FfplJobjRCj7XCN6U12wPXr7lmpbXPdodpdKmhKnNsyfsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774992891; c=relaxed/simple;
	bh=4wR4QylHcmskmt0KG5ly6sLWoHv46ssVh2JkVA+U+Bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZquhFSo7AtIyunq3WURMI5yU3Qo2f9DhPi0LDWZaxzsnJwrp3gMUrCl6/q3Js7c7+99MG4wlYd4hzG0uUAVzDGUcIq5td3D66PDX8A4SoSm3ABDX0nEasGixtZ68l2CQRYDvDxcZddPGWgSs57tqm1aDkJDUuFAVebel9MFHvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=BRNSCFvA; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774992890; x=1806528890;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4wR4QylHcmskmt0KG5ly6sLWoHv46ssVh2JkVA+U+Bk=;
  b=BRNSCFvAohJ3xX6TW7mIg8GMTWiyz2ZO/m0Opg+Quj/1sRoR1k3iTf7Z
   cZ1Gq0seGsSQplTnhp4XPjl2ADpvFOa3MzYspX4ZWWMZKvww8/TqzZGvx
   fyNQDM7a1EkxyZZrZFLJGdl/73IJc1ke2v7S671XkmYat5FfCQ4TTm9qd
   mDaaUYlkfBVWzvHhf3bjdQGvvaSCeH9TA1cnS9FQsOpMY0khLFwYcfN/p
   BlW37UODQCNDmu+3QhJLBe6yVasQ7/oIi1ooO3Yvu1TtDbEu9SKmrL3aU
   d2SUe3PHB8/u8aTbxwkdQmW4Eu8GRIsqeh9ErhidN+Vy9CuP9BUuTslzq
   g==;
X-CSE-ConnectionGUID: 84A+e0W+T6eXspVbjeddxw==
X-CSE-MsgGUID: Y+FEj6bQR5OFWZHIvz4W0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75057564"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; 
   d="scan'208";a="75057564"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2026 14:34:49 -0700
X-CSE-ConnectionGUID: KkhM+YH+RY6ZBfPW8wELwQ==
X-CSE-MsgGUID: Wtm6ipwaSxCfv+Lc/YJdbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; 
   d="scan'208";a="226353128"
Received: from lkp-server01.sh.intel.com (HELO 283bf2e1b94a) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 31 Mar 2026 14:34:47 -0700
Received: from kbuild by 283bf2e1b94a with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w7gjT-000000004JB-2AzA;
	Tue, 31 Mar 2026 21:34:43 +0000
Date: Wed, 1 Apr 2026 05:34:17 +0800
From: kernel test robot <lkp@intel.com>
To: Yixun Lan <dlan@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>
Subject: Re: [PATCH v2] riscv: dts: spacemit: k3: Add USB2.0 support
Message-ID: <202604010550.sTNDXe0k-lkp@intel.com>
References: <20260330-02-k3-usb20-dts-v2-1-46af262fb4a9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260330-02-k3-usb20-dts-v2-1-46af262fb4a9@kernel.org>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283189-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,01.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7F1783721CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Yixun,

kernel test robot noticed the following build errors:

[auto build test ERROR on af62a095eb0c3359d477b55ef72d2afd94c83c8f]

url:    https://github.com/intel-lab-lkp/linux/commits/Yixun-Lan/riscv-dts-spacemit-k3-Add-USB2-0-support/20260331-231732
base:   af62a095eb0c3359d477b55ef72d2afd94c83c8f
patch link:    https://lore.kernel.org/r/20260330-02-k3-usb20-dts-v2-1-46af262fb4a9%40kernel.org
patch subject: [PATCH v2] riscv: dts: spacemit: k3: Add USB2.0 support
config: riscv-randconfig-002-20260401 (https://download.01.org/0day-ci/archive/20260401/202604010550.sTNDXe0k-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 11.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260401/202604010550.sTNDXe0k-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604010550.sTNDXe0k-lkp@intel.com/

All errors (new ones prefixed by >>):

   Lexical error: arch/riscv/boot/dts/spacemit/k3.dtsi:446.27-46 Unexpected 'RESET_APMU_USB2_AHB'
   Lexical error: arch/riscv/boot/dts/spacemit/k3.dtsi:447.20-39 Unexpected 'RESET_APMU_USB2_VCC'
   Lexical error: arch/riscv/boot/dts/spacemit/k3.dtsi:448.20-39 Unexpected 'RESET_APMU_USB2_PHY'
>> FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

