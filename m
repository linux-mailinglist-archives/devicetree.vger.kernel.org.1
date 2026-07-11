Return-Path: <devicetree+bounces-324793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a+vqMKQ+UmptNgMAu9opvQ
	(envelope-from <devicetree+bounces-324793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:01:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0F374199F
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:01:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YDdFWrwi;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324793-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324793-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EAD430156C8
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A583C141F;
	Sat, 11 Jul 2026 13:01:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635823C584D;
	Sat, 11 Jul 2026 13:01:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783774882; cv=none; b=G4kKsib5X1VIz5a6oVLXlO5F1gb0o1tDW8un6nKumsPlZMSHJ9INJNvvGvgSSkDr2DTTCctUOWo08xuBaaDaDzT+N1ZirCIJDEnx/s0gC1bQ2TK9mkawxb4hMOzubMbd8nq/OBYIkazQ2tuHu9gBEMNGq2P2Y/76yjBfmZPcWNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783774882; c=relaxed/simple;
	bh=gDyYXc0xkS1qjYwLDld4FPWvWyjEMY3IdZ86KmQ4NSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uam2aDKvfkkoI9Pu1X7tgDo/kZMWkWbDGh8/1Gn7N1ZaCYzWEO8OusKHpbM6VyvEOMh8aovj2uQ/P9Jsv/taZduiNd3+GjaSuSxzPl2A3+VxQgEDqVpYQSC9a03OMRV8F659AjZr1kjvvjpfMECapVCBlAanqTMiC2skOz4ikFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=YDdFWrwi; arc=none smtp.client-ip=198.175.65.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783774881; x=1815310881;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gDyYXc0xkS1qjYwLDld4FPWvWyjEMY3IdZ86KmQ4NSU=;
  b=YDdFWrwiM3M659bkN49PfunIJDpyQ7KFE93HChZKj/rSzx62CfrgC0vV
   cctyxEhjJFTTiiSA/gWwy0bpMpiMMOogVufpM6G0YEJ6CXVMC5aMTcx1s
   MjbEFBOA1BRZr6SSQ+O4pmcYW8SLwUYQapu87BqC1jGd3aR/B93blN4bZ
   HrLPjaWmqLF0ghFp3Wx0HNsWHEYStu16POpsjj55YdIYor6G70Oj/xrQH
   GkK57mrsYOIgcktPalRtAZX7/rM8ThWHENqmBBnb9uSbCiL6Tcl7dZYyn
   BAXRLe9GAe3Kb7vfyAb5iZv4802mPntG7NkbkQEPUKpjPObUXoWfkUEOT
   g==;
X-CSE-ConnectionGUID: 9sUZTbKZT1WN/pbOZdiXhQ==
X-CSE-MsgGUID: wysp1ngUTWWNgNms4INkBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84474373"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="84474373"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 06:01:20 -0700
X-CSE-ConnectionGUID: H7u5/OdeQhypTaspD0rwew==
X-CSE-MsgGUID: QEf1nTayQUOEsvaa1qOQGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="285214246"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.254])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 06:01:13 -0700
Date: Sat, 11 Jul 2026 16:01:10 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alex Elder <elder@riscstar.com>
Cc: Inochi Amaoto <inochiama@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Christian Bruel <christian.bruel@foss.st.com>,
	Frank Li <Frank.Li@nxp.com>, Nam Cao <namcao@linutronix.de>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Xincheng Zhang <zhangxincheng@ultrarisc.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 2/6] PCI: spacemit-k1: Add multiple PHY handles support
Message-ID: <alI-lmctZShbXCHs@ashevche-desk.local>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-3-inochiama@gmail.com>
 <ak9KzNFF26B0Kttz@ashevche-desk.local>
 <alBNXgMAwXPKwiJ2@inochi.infowork>
 <alCoTEDUY8AO9OzD@ashevche-desk.local>
 <alDNlfb0_T9g-ATO@inochi.infowork>
 <3cece33f-375f-4cb2-b07d-e75f065fe5ea@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3cece33f-375f-4cb2-b07d-e75f065fe5ea@riscstar.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324793-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:elder@riscstar.com,m:inochiama@gmail.com,m:jingoohan1@gmail.com,m:mani@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:christian.bruel@foss.st.com,m:Frank.Li@nxp.com,m:namcao@linutronix.de,m:qiang.yu@oss.qualcomm.com,m:krishna.chundru@oss.qualcomm.com,m:zhangxincheng@ultrarisc.com,m:s-vadapalli@ti.com,m:vidyas@nvidia.com,m:neil.armstrong@linaro.org,m:gustavo.pimentel@synopsys.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,nxp.com,linutronix.de,oss.qualcomm.com,ultrarisc.com,ti.com,nvidia.com,linaro.org,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim,linux.intel.com:from_mime,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A0F374199F

On Fri, Jul 10, 2026 at 07:42:18AM -0500, Alex Elder wrote:
> On 7/10/26 5:55 AM, Inochi Amaoto wrote:
> > > > > > +	k1->phy_count = i;
> > > > > > +	if (k1->phy_count == 0)
> > > > > > +		return -EINVAL;
> > > > > > +
> > > > > > +	return 0;
> > > > > This doesn't seem correct to me, I would expect phy_count to be assigned only
> > > > > when it's valid. (Yes, perhaps 0 is the same as it was, but semantically it's
> > > > > different 0 in this case.)
> > > > I guess you think 0 is a valid number? I can not understand what you thing
> > > > Assign this to 0 if there is no phy is fine to me, which shows there is 0
> > > > vaild phy found.
> > > Isn't it already 0? Semantically code is wrong in a flow (not in the result).
> > > 
> > In fact it is already 0 here. But I am not understand why you thing is wrong.
> > Could you explain it in detail? (Maybe you think it is not good to return
> > -EINVAL?)
> 
> What Andy is saying is that assigning the value of phy_count
> before checking that it is valid is not the expected order of
> things.
> 
> The point is about best practice, not about the end result.
> 
> Best practice would be "don't touch anything if the return
> value will indicate an error."

Yes, precisely.

> And therefore, better coding practice would be to check for
> a bad value, and only after that has been done should you
> assign the k1->phy_count value.

-- 
With Best Regards,
Andy Shevchenko



