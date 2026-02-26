Return-Path: <devicetree+bounces-268739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wG5MIJggoGkDfwQAu9opvQ
	(envelope-from <devicetree+bounces-268739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:29:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCC11A43F1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A9FE300B857
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 269AB3A4F48;
	Thu, 26 Feb 2026 10:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="DjD5UReD"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41004318BB5;
	Thu, 26 Feb 2026 10:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772101780; cv=none; b=ke5E8RQCD1auFDeuEY4PDwmuEE3yVCZk5GcAnJz/ppPEEasGWCOkz2LTLUwDC7SVNYLnpOvJv+U+rOksNtttjYfNGyLACAdExbHDYAANgLPVgwSO7DQbToMWreFy7fcW1NBaxdmEM+JB80NSCe78N9frvr+JxIbSaZJdN+D1/9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772101780; c=relaxed/simple;
	bh=587btXg/pksuFB2qmSKC7x4NgEDzZdzpKT6zLzMapik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u7nx1ZTPDOnlocu5PrIB0MbOXg6CfC76CmrC6kW8Df8HuV6YP7l22dV9buH6FC4eax+Ru/DPJEw7bdUCOuJP72WnksVdTDy+TriMaBvkbBmZm7Y5ap0YMqmWhgFqUEwSjwiQrra+5UEnUAvAQJ/JvAwFR4yBb6CvEEb4LzvgU7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=DjD5UReD; arc=none smtp.client-ip=192.198.163.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772101778; x=1803637778;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=587btXg/pksuFB2qmSKC7x4NgEDzZdzpKT6zLzMapik=;
  b=DjD5UReDjXHjmnvD3/uAdco2Wt7l5Wi0oDO4pmGTStNPMdX4FzmHZVbE
   biQmci+GxN17lZ1DA0QOaw/0u1uNgwJ+dSjh+/Qu1kIY9e7NW/Tr3d/Jl
   8M1SM8qXwXOu2wPMztwMB3DHZH5F8oT8tE2op01F+G1ilf7YgyJUr3N2F
   ad2ir/+3FBHzhLI9CpVRgS152ETC7LdELOcScKVP3HK764NVD7Zftlyxj
   j3irZLEO47iw3BhQPyZZYxf2jyc8e7D3ptc6Nt4EyANHJcud+XSVLLuK7
   EFvHcx3iKzpF71Y7ygGDWSs3hb5x7pEEcePpzDmrbRWX9gabwOJJ05kbM
   A==;
X-CSE-ConnectionGUID: cN2Yb3OMQai7q2sCcRMSqw==
X-CSE-MsgGUID: /t1r2dC5T1iXUU6PCe0BiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="75761991"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; 
   d="scan'208";a="75761991"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 02:29:37 -0800
X-CSE-ConnectionGUID: sZFd+mQNSyKkVlnbOv4SVA==
X-CSE-MsgGUID: +9uUq9jDRLuGHVx0T4nL2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; 
   d="scan'208";a="214090461"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by fmviesa006.fm.intel.com with ESMTP; 26 Feb 2026 02:29:34 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vvYcL-0000000091Z-34qn;
	Thu, 26 Feb 2026 10:29:22 +0000
Date: Thu, 26 Feb 2026 18:29:10 +0800
From: kernel test robot <lkp@intel.com>
To: Rosen Penev <rosenp@gmail.com>, devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv2 4/4] ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram
Message-ID: <202602261850.DL7ZVo3w-lkp@intel.com>
References: <20260225230827.21715-5-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225230827.21715-5-rosenp@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-268739-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,git-scm.com:url]
X-Rspamd-Queue-Id: DCCC11A43F1
X-Rspamd-Action: no action

Hi Rosen,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v7.0-rc1 next-20260225]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Rosen-Penev/ARM-dts-BCM5301X-EA9200-set-WAN-MAC-from-nvram/20260226-071232
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20260225230827.21715-5-rosenp%40gmail.com
patch subject: [PATCHv2 4/4] ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram
config: arm-allyesconfig (https://download.01.org/0day-ci/archive/20260226/202602261850.DL7ZVo3w-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260226/202602261850.DL7ZVo3w-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602261850.DL7ZVo3w-lkp@intel.com/

All errors (new ones prefixed by >>):

   also defined at arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts:128.10-133.5
>> ERROR: Input tree has errors, aborting (use -f to force output)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

