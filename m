Return-Path: <devicetree+bounces-306946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 92ffKjqeIWpEKAEAu9opvQ
	(envelope-from <devicetree+bounces-306946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 17:48:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A69A4641909
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 17:48:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306946-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306946-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F9E030C8B75
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 15:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920E53358AF;
	Thu,  4 Jun 2026 15:23:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACCF2EC0A4
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 15:23:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780586594; cv=none; b=YpnTWUA11B2sQ1/Nt4Jc9ANF6ng8o/nxyiVmVvhSXuxwmze8vEfE3zRbuvoZI0MrMKUUzfq/UdPo+mEiNzRlCOmK7cnePC7PkaVrWN9nj21Y/n8ifwAB4PTzNXngcRg800oOA162+o0O02tPDdV4tYAUm6vudnGP1UHDIuv0wOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780586594; c=relaxed/simple;
	bh=pVuZuEBIULjzQABGGJSQfIDgV0lIC+f74CyYOz83UH0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UBNQ8rSI/XZ6c1uRp2zTFSlum8NWM7TXU+LbD6wowS24aa44Bbwhly8/OnKelPE63q3IGe0b3z0htZ0XmTUCPt1T6+8Txo20rWEMMMafcY21sHhFyyVmMoEkkGMOJPBuRhj55sIsE5WsmmkP9MMhTtxRiT0EkIiOLEJKQ8HKnYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wV9uP-0008Cm-TC; Thu, 04 Jun 2026 17:23:01 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wV9uP-0016D7-1k;
	Thu, 04 Jun 2026 17:23:01 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wV9uP-00000000CcW-1o5o;
	Thu, 04 Jun 2026 17:23:01 +0200
Message-ID: <f92114a3658185b57bffe546c0f4079a9d39afce.camel@pengutronix.de>
Subject: Re: [PATCH RFC v3 0/5] ZTE zx297520v3 clock bindings and driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Stefan =?ISO-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>,  Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Brian Masney	 <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Thu, 04 Jun 2026 17:23:01 +0200
In-Reply-To: <2062167.PYKUYFuaPT@strix>
References: <20260529-zx29clk-v3-0-c7fe54ea388f@gmail.com>
	 <5620a8969da87612a2d89578be656b5d00662635.camel@pengutronix.de>
	 <2062167.PYKUYFuaPT@strix>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306946-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,baylibre.com,kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,pengutronix.de:from_mime,pengutronix.de:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A69A4641909

Hi Stefan,

On Mi, 2026-06-03 at 23:49 +0300, Stefan D=C3=B6singer wrote:
> Hi Philipp,
>=20
> Am Mittwoch, 3. Juni 2026, 11:50:14 Ostafrikanische Zeit schrieben Sie:
> > When there is no interaction required when operating the clk/reset
> > bits, I prefer the reset driver sitting in drivers/reset as an aux
> > device, especially when register access can be abstracted via a shared
> > regmap. Some of the reset drivers under drivers/clk just predate the
> > aux bus.
>=20
> There are two interactions:
>=20
> The register lock because all LSP and at least one TOP register contains =
both=20
> clocks and resets.

That could be solved with regmap.

> Shared register definition: in the case of the LSP clocks breaking up the=
=20
> composite definition would sacrifice readability.

That is a matter of perspective.

I had a harder time validating that the resets[] array is properly
initialized from the two different composite arrays because of the
unordered reset_ids, and some remaining resets[] being filled via code.

It would be much simpler if you split the reset definitions out into a
single, separate, const array, indexed by reset id. In fact,
I would suggest this even if you don't intend to move the reset code.

> Neither of them are insurmountable and I can certainly arrange a separati=
on if=20
> asked to - but my preference is to keep them together.

I'll leave this up to the clock maintainers.

regards
Philipp

