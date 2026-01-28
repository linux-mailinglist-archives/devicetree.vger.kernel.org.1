Return-Path: <devicetree+bounces-260164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAeyFvdYeWlnwgEAu9opvQ
	(envelope-from <devicetree+bounces-260164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 01:31:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC9D9BAB2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 01:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CAFB23004040
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 00:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5951D6193;
	Wed, 28 Jan 2026 00:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="FS+YHLR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FB11F95C;
	Wed, 28 Jan 2026 00:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769560305; cv=none; b=Fz04BTWELM8oi0kFT/aNrwKoHBv1vI7GCK+bqhz4u0kuCo/m9VqUuXJxv8X+lulOnGGWTirop5UDtOyjEV0Acr8M0zFZxAcxuspFzkFKqzUOQZjWiqDEhw4m/h/RMwUGa2BzrXpgV95QTqtC2JSrSa17IU8Zp2xLL/p5XhaRESU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769560305; c=relaxed/simple;
	bh=Tiw/EOrYwH8Y6t6NaJEyTlwqUXtWs6umlmGrrdrcwdw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+bhdmYMKugZ1q/e6O3YfUPNc2gPURCp0GLBFr5DBEefRfJpytk+6e6X7yztPTWwJw9teRDbF5Ix18vTNoyW0igK5Y8ySegkH/Q+Pq5mtsz74uzTHf1GLSspwQu78CChkud8kVQPCCytG0H4v93q0XsgUu72oMSROOi6aJNgd7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FS+YHLR4; arc=none smtp.client-ip=192.198.163.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769560304; x=1801096304;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Tiw/EOrYwH8Y6t6NaJEyTlwqUXtWs6umlmGrrdrcwdw=;
  b=FS+YHLR4ib0ei6N9ZO9YH6Uq2GNORXqVH0BT5mg5OF3d28KB9eRFl0NZ
   sgbEEPQvebIPtuze1vWqp4WKymES1HRn6ikcSp0YFqyuMeHcRRejM5B6C
   hbC0vprEeDH5gy4At7xh20Lg6HLaMay+YJNgoSbJRepfczDm0+Irl8qtJ
   5AEM0m2QxkUvpsRbulgW8xtTPpwfNYvals9KXz2RqXft41UJLgWDXnk/H
   UxeMLXmuW194y7JfqFDdcREtG3wdC8SZjOS72QxErp6bUQwQ8KPrTrboQ
   rml16cl8tz/fEbGSsFUAQ7Iu04n2YsNWwTK+ZVzp2DWeKTXK8Tg92+IvB
   w==;
X-CSE-ConnectionGUID: DBol3oEYQEmV9jXRk4pgFg==
X-CSE-MsgGUID: e9FS+vm3RdaBRYoRBXNVrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="73358497"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="73358497"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 16:31:43 -0800
X-CSE-ConnectionGUID: yad6J91uS2u81M+B0sb+uA==
X-CSE-MsgGUID: C9/9Rd1aTmWhYJ4Gaaa8Og==
X-ExtLoop1: 1
Received: from igk-lkp-server01.igk.intel.com (HELO afc5bfd7f602) ([10.211.93.152])
  by fmviesa003.fm.intel.com with ESMTP; 27 Jan 2026 16:31:40 -0800
Received: from kbuild by afc5bfd7f602 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vktT8-000000001xN-23Ms;
	Wed, 28 Jan 2026 00:31:38 +0000
Date: Wed, 28 Jan 2026 01:30:38 +0100
From: kernel test robot <lkp@intel.com>
To: Romain Gantois <romain.gantois@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Gazzillo <paul@pgazz.com>,
	Necip Fazil Yildiran <fazilyildiran@gmail.com>,
	oe-kbuild-all@lists.linux.dev,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Romain Gantois <romain.gantois@bootlin.com>
Subject: Re: [PATCH 2/2] misc: ti_fpc202: Support special-purpose GPIO lines
 with LED features
Message-ID: <202601280105.Lu065wxA-lkp@intel.com>
References: <20260127-fpc202-leds-v1-2-ebd0cfb9f9a1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-fpc202-leds-v1-2-ebd0cfb9f9a1@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[pgazz.com,gmail.com,lists.linux.dev,bootlin.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-260164-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,01.org:url]
X-Rspamd-Queue-Id: 6BC9D9BAB2
X-Rspamd-Action: no action

Hi Romain,

kernel test robot noticed the following build warnings:

[auto build test WARNING on a8a6d9b4da001a84dd715d92f034d2bf777199c8]

url:    https://github.com/intel-lab-lkp/linux/commits/Romain-Gantois/dt-bindings-misc-Describe-FPC202-LED-features/20260127-215935
base:   a8a6d9b4da001a84dd715d92f034d2bf777199c8
patch link:    https://lore.kernel.org/r/20260127-fpc202-leds-v1-2-ebd0cfb9f9a1%40bootlin.com
patch subject: [PATCH 2/2] misc: ti_fpc202: Support special-purpose GPIO lines with LED features
config: i386-kismet-CONFIG_LEDS_GPIO-CONFIG_MERAKI_MX100-0-0 (https://download.01.org/0day-ci/archive/20260128/202601280105.Lu065wxA-lkp@intel.com/config)
reproduce: (https://download.01.org/0day-ci/archive/20260128/202601280105.Lu065wxA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601280105.Lu065wxA-lkp@intel.com/

kismet warnings: (new ones prefixed by >>)
>> kismet: WARNING: unmet direct dependencies detected for LEDS_GPIO when selected by MERAKI_MX100
   WARNING: unmet direct dependencies detected for LEDS_CLASS
     Depends on [n]: NEW_LEDS [=n]
     Selected by [y]:
     - TI_FPC202 [=y] && I2C [=y]
   
   WARNING: unmet direct dependencies detected for LEDS_GPIO
     Depends on [n]: NEW_LEDS [=n] && LEDS_CLASS [=y] && (GPIOLIB [=y] || COMPILE_TEST [=n])
     Selected by [y]:
     - MERAKI_MX100 [=y] && X86_PLATFORM_DEVICES [=y] && GPIOLIB [=y] && GPIO_ICH [=y] && LEDS_CLASS [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

