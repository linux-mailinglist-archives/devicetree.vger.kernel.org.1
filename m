Return-Path: <devicetree+bounces-286176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPX3CAmk12kUQQgAu9opvQ
	(envelope-from <devicetree+bounces-286176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 15:05:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DC03CAC63
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 15:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F2F433002B61
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 13:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E9B3CE494;
	Thu,  9 Apr 2026 13:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="1D/BkhYp"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8963C33F58E;
	Thu,  9 Apr 2026 13:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775739907; cv=none; b=olWx218pE2dHIvbXY/EULjWW9fZB5ME3UQD5FWoM9hF/641uRgg4oNpkKT5brhT26MKgVQODpgXOE8FC/j4um7sZZfYkNHu1YFMs/qfZJYLTf+yc86QttzL4h5uT/BvmT0Q1YPxrsEjvb51jknrEk741jbv7OelTqAdZzRxl8ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775739907; c=relaxed/simple;
	bh=gEk3T3+cT30CNHuMEfUH8toLVddd4fxXMXt/FnTVm6c=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lLhfLY7Ys+BZVQLGihoi4ECwsqLY812zgoRHwH8ev6KKiPItsdt0qj6qBI+gTnGIPGK9KIaQUllt9lReyOETTnKzXSs8QshykeUI3ASj/R3qepluV0YjyhZInk252HGy05Msow+ZumYaztWmetwC6HCNge61xakZQY5ndoO9L7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=1D/BkhYp; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1775739906; x=1807275906;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=gEk3T3+cT30CNHuMEfUH8toLVddd4fxXMXt/FnTVm6c=;
  b=1D/BkhYpIyuLdi0BwPiCkscwRmbvTf4pBERaj8EXhRPgEzN8FrPx63rI
   adLrmSfaZmXcIRIumQybHzWTt8sIJ7tIgLgn2AL9k5dFKS5citYoFu0aN
   qMhC0J100CQqR3N5e/S97xDxPFV7mfxh9ooHMCjOrj/4wy+53jA7e7tH3
   +bGWVynVVBHQNM9JtPKK6UetMyYaq1Ft2zDub2gal7CkfPCaw2rWANm9C
   lsPsbB3Cyc1wSnh0Au5GuwKdWaI35+u3Xh1r6Gj9RWvLD09JLxiVsYu3V
   qLzFHScagKufVLgLJc+KBIwDfcufUrpnK4FYW+e2X8bsZazsn+//c8jmG
   w==;
X-CSE-ConnectionGUID: 2Rf1PsHCRaWXsjgl3Sf8Jw==
X-CSE-MsgGUID: BSkTIShXQkqtyQxXibo4rA==
X-IronPort-AV: E=Sophos;i="6.23,169,1770620400"; 
   d="scan'208";a="287249589"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Apr 2026 06:04:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Thu, 9 Apr 2026 06:04:30 -0700
Received: from bby-cbu-swbuild03.eng.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58 via Frontend Transport; Thu, 9 Apr 2026 06:04:30 -0700
Date: Thu, 9 Apr 2026 06:04:28 -0700
From: Charles Perry <charles.perry@microchip.com>
To: Nick Hu <nick.hu@sifive.com>
CC: Charles Perry <charles.perry@microchip.com>, Daniel Lezcano
	<daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, "Rob
 Herring" <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>, Palmer Dabbelt
	<palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v3] dt-bindings: timer: Add SiFive CLINT2
Message-ID: <adej3CvQFWVJb6j1@bby-cbu-swbuild03.eng.microchip.com>
References: <20250321083507.25298-1-nick.hu@sifive.com>
 <acWdSsAtmyTTFVHb@bby-cbu-swbuild03.eng.microchip.com>
 <CAKddAkCZXmw95XN6ypd_i=JqkMUooD=riTisHUMrY8Kqkebbqw@mail.gmail.com>
 <adZo84i4jfoWZnb2@bby-cbu-swbuild03.eng.microchip.com>
 <CAKddAkC-okFpyHcbFXQwTFmLfwBdBow=mAJBxirEdbcrYmOcyQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKddAkC-okFpyHcbFXQwTFmLfwBdBow=mAJBxirEdbcrYmOcyQ@mail.gmail.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286176-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[microchip.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charles.perry@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:dkim,microchip.com:email,bby-cbu-swbuild03.eng.microchip.com:mid]
X-Rspamd-Queue-Id: F1DC03CAC63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 01:37:46PM +0800, Nick Hu wrote:
> On Wed, Apr 8, 2026 at 10:41 PM Charles Perry
> <charles.perry@microchip.com> wrote:
> >
> > On Wed, Apr 08, 2026 at 02:15:19PM +0800, Nick Hu wrote:
> > > On Fri, Mar 27, 2026 at 4:56 AM Charles Perry
> > > <charles.perry@microchip.com> wrote:
> > > >
> > > > On Fri, Mar 21, 2025 at 04:35:06PM +0800, Nick Hu wrote:
> > > > > Add compatible string and property for the SiFive CLINT v2. The SiFive
> > > > > CLINT v2 is incompatible with the SiFive CLINT v0 due to differences
> > > > > in their control methods.
> > > >
> > > > Hello Nick,
> > > >
> > > > Can you help me understand what is this different control method? I've
> > > > found that both OpenSBI [1] and U-Boot [2] use the same match data in their
> > > > clint driver which would indicate that they are compatible.
> > > >
> > > Sorry for the late reply.
> >
> > Hello Nick, no worries.
> >
> > > Unlike v0, v2 requires a write to the mtime register to kick the timer.
> >
> > A kick once at the beginning or every time a machine timer interrupt fires?
> >
> A kick once at the beginning

That would explain what I observed in U-Boot and OpenSBI. The kick might be
in some arch specific code or a prior boot stage.

> 
> > >
> > > > Also, do you know if there's an easy way to tell if a sifive clint is a v0
> > > > or v2?
> > > >
> > > sifive,clint2 introduces additional MMIO registers
> >
> > Is that the high resolution timers (HRT) mentionned in the description?
> >
> > And last question, would you happen to know if sifive made a clint v1 that
> > does NOT require the mtime kick but does have the HRT?
> >
> Yes, that's correct.

Ok.

Thanks,
Charles

> 
> > I'm trying to figure out what should be the compatible for PIC64-HPSC.
> > Some code from a repository called "FSFM" used "sifive,clint1" for the
> > compatible. I'm wondering if I should add the clint v1 to this file.
> >
> > Thanks,
> > Charles
> >

