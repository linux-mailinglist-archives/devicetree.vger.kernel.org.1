Return-Path: <devicetree+bounces-257619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JrmBSz5b2mUUgAAu9opvQ
	(envelope-from <devicetree+bounces-257619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:52:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 827394C93A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 19B1CB096DD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F78426D18;
	Tue, 20 Jan 2026 21:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="HK/bV4Ro"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD11423A84;
	Tue, 20 Jan 2026 21:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768944534; cv=none; b=YdmxAhv+c8PcwGvyuxFOlcLf+rzJpZl5AeykUWqd+u2Vjn+PU7aLaxHa5Awm/aOotBc1YN7xsfhnc7OhbMTBqh0eaZVY8fhCDi9CxK1L/KheESvZon4QCbfvr5ZJnodNigsXww4LUe9HhrCh16K0tk98fVoiwHD0z222zoh7BVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768944534; c=relaxed/simple;
	bh=VAkJ/KITOoPPwFJHwdAoEzuCuhXukFgLDyfcXhDmS98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iF/I3zqZ3Y4+qGkwpSWr6KyUarB3CRnIrtriKjGwqzvrQvV58h7LY5Mbqv2WUcb3eq0I88Hogv8xlYfPyUzFvQPuEMl9gzK3qtXVD/AyYqrARtv9AR1EKoYJ+sBVoi4ShSpuZhQgfV5ExEya6qz91ci2RWsGACq68K+oXMfzMfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=HK/bV4Ro; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768944532; x=1800480532;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=VAkJ/KITOoPPwFJHwdAoEzuCuhXukFgLDyfcXhDmS98=;
  b=HK/bV4RoZDAlMPRij7f+uUJGOPdlpBTyME9LBHfeJV/2jDNXPfQVt4tD
   pdETsyYiBPnanhfS7TFewp6rs4cDKTMsk7qYqNX6zucASsFEhK0bAbP7z
   euDshXns6keiplxpjI1Lbw1ZKqxO/qSgn/tDCQpdKWjobAM+edhVJVy0T
   RZ5f68M9wWRTJ7qoAwM4HxbzPkiqFiHiiL9/rTlMPpRRWWLU99A76VGFE
   l8un6ZML+gCPi5/jUXbZe3v/i1xtt3D2PCM/SyEzW6bKFHPDQ6+zqBUdD
   0FIvy9SEmZrke1wQrB4fWD6AOuMEXxwAT5h0rAjkPpEs1s+ZVb9Yo7aYE
   Q==;
X-CSE-ConnectionGUID: jBALRQ+xROqaoffM3qGlYA==
X-CSE-MsgGUID: qd22lN2JQFKwH9IpqeljqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70257757"
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800"; 
   d="scan'208";a="70257757"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 13:28:50 -0800
X-CSE-ConnectionGUID: dAWGnrmlTsS7OPsMmnwgMA==
X-CSE-MsgGUID: ipFP5vVHQK6X3ee9IwH9Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800"; 
   d="scan'208";a="206477213"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.244.240])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 13:28:47 -0800
Date: Tue, 20 Jan 2026 23:28:45 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Brown <broonie@kernel.org>
Cc: Abdurrahman Hussain <abdurrahman@nexthop.ai>,
	Michal Simek <michal.simek@amd.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] spi: xilinx: use device property accessors.
Message-ID: <aW_zjaRLtewa_NV1@smile.fi.intel.com>
References: <a6d57890-89c1-445e-836c-d8239d20c621@amd.com>
 <b03307f7-93f6-4680-9241-cf28b5456fd0@sirena.org.uk>
 <a3fcef3a-d1e9-4b46-b114-3a82575e052e@amd.com>
 <980ad372-a2c7-417c-91f9-4958d3d1aaca@sirena.org.uk>
 <4831B269-DFC1-40E0-96B7-67981AC72562@nexthop.ai>
 <6e06696e-09a4-46e0-98fa-252690b888e0@sirena.org.uk>
 <BF71A04E-7FFB-42D1-8C8D-6FD13415EED5@nexthop.ai>
 <c3fc04a4-4b09-4c6a-a0f1-e5aa92a22976@sirena.org.uk>
 <80A8F67E-7A01-4F9F-9D84-29722678A2CE@nexthop.ai>
 <817bcc43-7f10-4329-8924-6c375eb73ff2@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <817bcc43-7f10-4329-8924-6c375eb73ff2@sirena.org.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[intel.com,none];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_FROM(0.00)[bounces-257619-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,smile.fi.intel.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,uefi.org:url]
X-Rspamd-Queue-Id: 827394C93A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 09:04:58PM +0000, Mark Brown wrote:
> On Tue, Jan 20, 2026 at 11:11:44AM -0800, Abdurrahman Hussain wrote:
> > > On Jan 20, 2026, at 10:45 AM, Mark Brown <broonie@kernel.org> wrote:
> > > On Mon, Jan 19, 2026 at 04:20:06PM -0800, Abdurrahman Hussain wrote:
> 
> Let me once more renew my plea:
> 
> > > To repeat once again:
> 
> > > | Please fix your mail client to word wrap within paragraphs at something
> > > | substantially less than 80 columns.  Doing this makes your messages much
> > > | easier to read and reply to.
> 
> > > To drivers that are used on ACPI systems, yes.  Many devices wouldn't be
> > > used on ACPI systems, or would be expected to be exposed differently
> > > (for example, hidden behind AML).
> 
> > This is not for a normal off the shelf server. In our case we are building an embedded
> > switch with an AMD CPU and Xilinx FPGAs that happens to use EDK2 based BIOS and ACPI.
> 
> Sure, AFAICT it's mostly a PCI card with a bunch of stuff on it from a
> software point of view.
> 
> > >> I am just trying to get this 2-line small change merged so we can start using the standard spi-xilinx driver today. I am not trying to boil the ocean.
> 
> > > I mean, adding a HID wouldn't take substantially more code.
> 
> > We could, but we don’t own the Xilinx IP blocks. Are we not justified in using PRP0001
> > hack until the driver owner adds the HIDs? Wasn’t PRP0001 created as an escape hatch for
> > these kind of scenarios?
> 
> No, it's more there for the cases where embedded ACPI systems need to
> import non-trivial DT bindings so they can avoid having to respecify
> things that ACPI really doesn't cope with or for local hacks.  See
> Andy's reply earlier in the thread:
> 
>    https://lore.kernel.org/r/aW9JihlsjnJ-uBul@black.igk.intel.com
> 
> AFAICT for ACPI the HID assigment is a bit of a free for all in practice
> - board vendors generally seem perfectly happy to just pick something if
> the silicon vendor didn't do something.  Just look at all the parts with
> INTxxxx IDs!  That said Michal is on the thread so hopefully that's not

INTxxxx was a (historical) mistake, but look at the correct one INTCxxxx
which has listed several components Intel doesn't own. Because ACPI HID
it's not only about the component in use, it's also about integration of
that component in the platform environment. Hence it might require (platform)
specific quirks.

> an issue and we can get something from Xilinx fairly easily.

Exactly! Either from them, or AMD can do, or even NextHop.AI.
If you have not yet registered vendor ID, it's pretty much
straightforward process.

Here is the pointer for your convenience:
https://uefi.org/PNP_ACPI_Registry

-- 
With Best Regards,
Andy Shevchenko



