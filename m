Return-Path: <devicetree+bounces-277088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCTXHrJ1umm/WwIAu9opvQ
	(envelope-from <devicetree+bounces-277088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:51:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F37CE2B96F7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3A743051A86
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E94333440;
	Wed, 18 Mar 2026 09:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="PIyg29IR"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3142B2E5B27;
	Wed, 18 Mar 2026 09:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773827211; cv=none; b=a6zEqd+viziiQ6TnI387RWAMkEovE/3w/2nGiWAzNIJ2j/ZM+cIE82ZANGL5B7p4gYZc/lEJGHFsZhutI6UEeFhAyTefoYw0JBn5p3tt0GeitsV/99btTWydkyFw3K5V/CdVb1EUQJIcTYjXpPNyet7N6dlEJKyW8O/ZNBEJOnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773827211; c=relaxed/simple;
	bh=ihjhU69L0KQ3hSQ0nv4BylA0DtPfOoTddmdqvoNOxvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rqIVXrEHSEFWEbU+28c84kTeWLSU5vvZ5LbEcT48S63Tm1X1lo97JNlFa/+TosSM7vWzmOkS2l4q1ziEq+N5xAbFKn8R0/iZ94vPuqjv83SmNZFZvnX+hBnAhgdaQI5E4fq/SYExIDpOz+WHDOYWdxNFgXx6U/GBXWWMcERwjws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=PIyg29IR; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773827205; x=1805363205;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ihjhU69L0KQ3hSQ0nv4BylA0DtPfOoTddmdqvoNOxvU=;
  b=PIyg29IRNa8/jPIpJuF918iVGSnPAQXrCDOtYpepU6H070bPA3WkEWYt
   99lIj0uUzeqTN0cI7dtt4ogAfxOvgfQoyaKIdIaGG0RvGMJpwLNrRzoiN
   q19rDfhZkCGTs5uZtDIod7BRmBDG1ZvwmDHMQXBXHNvP7g8N+AxUy2r7u
   ZvL4H74GhRNCHKJQQSMhDAki2ITCANn8s/uINorWJA/S5QuT+AlsnOsu6
   C0j4N/HmLzlOhpErE2k5kLoyGmdlQdeCvfZl92/r7uxBMuwRyd8mtoLFR
   LZs0fMMdnmV0jFVCCmA6Mh6bDG7Pv0jn1EFxHjLk4qCaQAUxM/aiWRCYe
   Q==;
X-CSE-ConnectionGUID: meLCc36xSx6Kbl5whE9Usg==
X-CSE-MsgGUID: +xhpXrfiTXq/WbA880uf3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="92445784"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; 
   d="scan'208";a="92445784"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2026 02:46:44 -0700
X-CSE-ConnectionGUID: qElVMAsgSNywk+Ymp68ONA==
X-CSE-MsgGUID: l7BvO4LYShC41yWRpNUvPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; 
   d="scan'208";a="227515662"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.240])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2026 02:46:40 -0700
Date: Wed, 18 Mar 2026 11:46:37 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Cc: Michal Simek <michal.simek@amd.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, saikrishna12468@gmail.com,
	git@amd.com
Subject: Re: [PATCH 3/5] iio: adc: xilinx-xadc: Replace module macro with
 custom init/exit functions
Message-ID: <abp0fWQVqhNeQVG7@ashevche-desk.local>
References: <20260220053941.611415-1-sai.krishna.potthuri@amd.com>
 <20260220053941.611415-4-sai.krishna.potthuri@amd.com>
 <aZgS2c45nGTozHkv@smile.fi.intel.com>
 <fab2599c-e749-4aa1-8157-c7ac358c6f36@amd.com>
 <aZgWvjWBusT_JQgE@smile.fi.intel.com>
 <ca6050a2-72a5-4d13-b89c-10e78364e5fc@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca6050a2-72a5-4d13-b89c-10e78364e5fc@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,baylibre.com,analog.com,vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-277088-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: F37CE2B96F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 02:43:41PM +0530, Sai Krishna Potthuri wrote:
> On 2/20/2026 1:39 PM, Andy Shevchenko wrote:
> > On Fri, Feb 20, 2026 at 08:54:26AM +0100, Michal Simek wrote:
> > > On 2/20/26 08:52, Andy Shevchenko wrote:
> > > > On Fri, Feb 20, 2026 at 11:09:39AM +0530, Sai Krishna Potthuri wrote:
> > > > > Replace module_platform_driver() macro with custom init and exit functions
> > > > > to prepare for supporting multiple bus interfaces (platform + I2C).
> > > > 
> > > > No, this is not how it should be done.
> > > 
> > > And how should it be done? separate file?
> > 
> > I answered somewhere else, but I can elaborate here as well.
> > 
> > The idea, yes, to have the driver in the parts:
> >   _core.c
> >   _platform.c
> >   _i2c.c
> > 
> > To achieve that, it needs first to split the driver followed by likely
> > conversion to regmap. With that done it may be used in i2c with a little
> > code added into _i2c.c.
> > 
> > We have examples in kernel for that.
> > 
> > 0daede80f870 ("i2c: designware: Convert driver to using regmap API")
> > fcb82a939df8 ("i2c: designware: Add Baikal-T1 System I2C support")
> 
> Sorry for the delayed response. I have gone through regmap implementation to
> understand the approach and started converting the XADC driver accordingly.
> During the implementation, I see few challenges with using the standard
> regmap MMIO and I2C interfaces, which requires defining custom regmap
> read/write hooks for both MMIO and I2C.
> 
> For the platform/MMIO case,
> Zynq platform has its own FIFO-based mechanism for hardware reads and
> writes, whereas the AXI variants require additional offset manipulation
> before accessing the registers. These platform-specific requirements force
> us to use custom read/write implementations rather than the standard regmap
> MMIO helpers.
> 
> For the I2C case,
> 32-bit DRP packet needs to be framed before issuing any I2C transactions.
> Since this packet framing logic is specific to the XADC DRP interface, it
> again requires a custom read/write implementations.
> 
> Considering all these, regmap may end up as a wrapper on top of these custom
> xadc_ops read/write functions, which may not add any additional value. Since
> the XADC driver already has the xadc_ops to support custom read/write
> implementations, can we continue using the existing xadc_ops read/write
> paths and skip the regmap conversion?

Thanks for elaboration. Indeed, the regmap approach in this situation gives
not much of benefit (there still is, nevertheless).

So, the compromise may be done in a way that you define custom IO accessors
and respecting callbacks in the private data structure first, then split
the driver to _core and existing _platform driver. Add _i2c on top of this
refactoring.

> Please let me know if I am missing anything in my understanding.

> I will still proceed with splitting the driver into three files (core,
> platform, and I2C), as you suggested.

Sure, this needs to be done independently on regmap.

-- 
With Best Regards,
Andy Shevchenko



