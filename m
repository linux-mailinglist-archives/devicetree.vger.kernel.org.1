Return-Path: <devicetree+bounces-306450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uEinGgtvIGqn3QAAu9opvQ
	(envelope-from <devicetree+bounces-306450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:14:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB72063A74B
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:14:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IHE7iPnH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306450-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306450-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B9D3310609C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 18:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C23DB3E00A9;
	Wed,  3 Jun 2026 18:07:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC7D3DD51F;
	Wed,  3 Jun 2026 18:07:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780510032; cv=none; b=dYtKZQzA/5wOCOAcgXr11aeQMyVag+o9E4ugE8sf3zJ9RJfw2bYPPnK/swJcZGunZ0Cvcygp7PDto04hmSIVsSV2STFZ+uPjcBr1L+zWDO33Ca9G4bHoUACTB4GToenhQ+y8vNdGkFO4lucpQUpuVWoVkhy9fWjVL0JxrzcfIUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780510032; c=relaxed/simple;
	bh=dfvd3+GTrarMPPUGrgttsrrfFPcOJYJ/c/UNZFYWs5M=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Cwr95ezYwoberMW0vO2kvO2drp7Zkce5Et1lFyf/OHTn7NOGZJXIRJPXbzv0irFQGp/PdSfVUuQtOycaVAt9Ru/NwEfPN/WV55XSaLbTjZ0qOdyNJy0Yu+4z3EYp8FWU94iulhVpB9dRLc7+GIwdo2jiBhxCbGCKVHCioDZ9ncs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHE7iPnH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 078581F00893;
	Wed,  3 Jun 2026 18:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780510030;
	bh=XqUguunJRpbZ9x2gW/CJnKhlSiBuX+wd5rq8fxPIDHE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=IHE7iPnHvsj/Mr7hP4idvJkavIovh+4eorNO87k32q2t5lL3T8z0FCYLHflmnpvyE
	 sVyFl3pozePsSS+kl2Oyq/+MUw/dTWo9zxRdQbKn3+OOpAHixCwbimVJP4C/xa2Be0
	 U2A7FJ//CcHQytpD+obJKH126OndQkqIg5rBZt6dSFhUfKgXad1EgoU81DPNr03ORd
	 8CI1XbxCNMdlwr278dR52iQmp4nNC5mwi5H4ME274BYXi/B/YKiuxigggucAZVcwks
	 +oUrqcL3zA3JTsB4dFkhkWZFlZFxcyVn8CjENC9mvQlrEyCuRlSViJ/eIPAp8hZRW5
	 khH483hVeHB4g==
Date: Fri, 29 May 2026 10:03:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Erim, Salih" <salih.erim@amd.com>
Cc: Andy Shevchenko <andy@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Conall O'Griofa <conall.ogriofa@amd.com>,
 Michal Simek <michal.simek@amd.com>, Guenter Roeck <linux@roeck-us.net>,
 Salih Erim <erimsalih@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] iio: adc: add AMD/Xilinx Versal SysMon driver
Message-ID: <20260529100336.3f18d93c@jic23-huawei>
In-Reply-To: <d579623e-b799-4caa-aeec-7d070a972aae@amd.com>
References: <20260527114211.174288-1-salih.erim@amd.com>
	<20260528130600.25e401a7@jic23-huawei>
	<d579623e-b799-4caa-aeec-7d070a972aae@amd.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[129];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-306450-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB72063A74B

On Thu, 28 May 2026 22:46:58 +0100
"Erim, Salih" <salih.erim@amd.com> wrote:

> Hi Jonathan,
> 
> On 28/05/2026 13:06, Jonathan Cameron wrote:
> > 
> > 
> > On Wed, 27 May 2026 12:42:06 +0100
> > Salih Erim <salih.erim@amd.com> wrote:
> >   
> >> This series adds a new IIO driver for the AMD/Xilinx Versal System
> >> Monitor (SysMon), providing on-chip voltage and temperature monitoring.
> >>
> >> The Versal SysMon measures up to 160 supply voltages and reads up to
> >> 64 temperature satellites distributed across the SoC. The hardware
> >> also provides aggregated device temperature registers: the current
> >> max and min across all active satellites, and peak/trough values
> >> recorded since last hardware reset. The device can be accessed via
> >> memory-mapped I/O or via an I2C interface.
> >>
> >> The driver is split into a bus-agnostic core module using the regmap
> >> API, an MMIO platform driver, and an I2C driver. This allows the
> >> same IIO logic to be shared across different bus transports.
> >>
> >> Previous submissions:
> >>    v2: https://lore.kernel.org/all/cover.1746182670.git.salih.erim@amd.com/
> >>    v1: https://lore.kernel.org/all/cover.1757061697.git.michal.simek@amd.com/
> >>  
> > https://sashiko.dev/#/patchset/20260527114211.174288-1-salih.erim%40amd.com
> > Quite a bit of feedback.  Some of which is clearly garbage, like the
> > ARCH_VERSAL suggestion, but take a close look as it does tend to pick up on
> > stuff that humans miss.  
> 
> Thanks Jonathan. I've gone through all the Sashiko findings.
Thanks,
> 
> Reviewed but keeping as-is:
> - Left-shift of negative in millicelsius_to_q8p7: GCC defines
>    this behavior and it's consistent with the read direction
>    (right-shift); Andy asked for this symmetry in v2
> - Oversampling read without mutex: reading a single int is
>    atomic on arm64; adding contention for no practical benefit

This is potentially a bit messier if the compiler gets creative
(see Will Deacon's various talks on this for instance).  Still
we neglect this for most IIO drivers today.  One day maybe we'll
fix all that up - lots of careful READ_ONCE()/WRITE_ONCE() markings.




