Return-Path: <devicetree+bounces-315531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nfs4NDbkPGqLtwgAu9opvQ
	(envelope-from <devicetree+bounces-315531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:17:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F596C3A29
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:17:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315531-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315531-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3FA603016287
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B9F374A17;
	Thu, 25 Jun 2026 08:17:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84973271456;
	Thu, 25 Jun 2026 08:17:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782375475; cv=none; b=MyjbN+901LiQL5K5EEF8ts3B6FqMm5/251/zKEzf7oCIc1TRtmtvC6xw1FrsodRXKtxsTZKXJrst0Gi0Nvh9aAfZVGIUXodRxMOKD3XWp03Ihviu8CfNJ7WDQHnGca0z+A7xGJy0gKQBFq9xSKygXOMv7lotvHs9P6mtl1UuRsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782375475; c=relaxed/simple;
	bh=bLKLs6KyZ0iifz4SnMg/u85u7iptdDzyhikp3G/OFMI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=B+ISkSkMyg6XadDeNNavzzyOYy5OaudUnnHQlTPCI9HpRHknBGHThwdMLisklmNB90vs1SvlfqkSc3H1g+f/yOd7YlQ1Zcm/b160vp5zmCUx0A6F0i4RcR02uQz63tUscFeBuwXwzOOw3BRirs4GirEHw/+QOoK0y0qHt3PwNB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2342A200698;
	Thu, 25 Jun 2026 10:17:50 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wcfHS-004Ynh-0C;
	Thu, 25 Jun 2026 10:17:50 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wcfHR-000000002b6-46gr;
	Thu, 25 Jun 2026 10:17:49 +0200
Message-ID: <12958f10b032e6b37a83c783a261b2c184d94222.camel@pengutronix.de>
Subject: Re: [PATCH RFC v4 10/12] reset: zte: Add a zx297520v3 reset driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Stefan =?ISO-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>,  Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Brian Masney	 <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Thu, 25 Jun 2026 10:17:49 +0200
In-Reply-To: <7_XKp5ZWTJeJfxJieymOJA@gmail.com>
References: <20260616-zx29clk-v4-0-ca994bd22e9d@gmail.com>
	 <20260616-zx29clk-v4-10-ca994bd22e9d@gmail.com>
	 <90c4f50eb23dec06497d46f9c0f522a6b90a918b.camel@pengutronix.de>
	 <7_XKp5ZWTJeJfxJieymOJA@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315531-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,pengutronix.de:mid,pengutronix.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38F596C3A29

On Mi, 2026-06-24 at 23:00 +0300, Stefan D=C3=B6singer wrote:
> Hi Philipp,
>=20
> Am Donnerstag, 18. Juni 2026, 12:24:26 Ostafrikanische Zeit schrieb Phili=
pp=20
> Zabel:
>=20
> > > +	[ZX297520V3_UART0_RESET]     =3D { .reg =3D 0x78,  .mask =3D BIT(6)=
  |=20
> BIT(7)=20
> > > },
> > Is this a single reset line controlled by two bits (do you know what
> > they are)? Or might these actually be two different reset controls that
> > are just always set together?
>=20
> I suppose I could expose both bits as separate reset controls in the bind=
ing.=20
> The lower bit is usually the one that actually resets the device, while t=
he=20
> higher one works similarly to PCLK - it disconnects the device from the b=
us,=20
> if asserted. Depending on the device it may or may not leave any residual=
=20
> effect behind after deassert.

So it's not a separate reset.
Whether bus isolation should be controlled together with the reset or
not could be argued, but exposing this as a separate reset control via
the reset API would not be correct.

> The stumbling block is the dwc2 USB driver. It only takes one reset, so I=
'd=20
> have to add another one (or abuse the dwc2-ecc reset) and presumably add =
a PHY=20
> driver for the 3rd reset or add a dwc2-phy reset.

This on the other hand sounds like there is a separate PHY reset line?
If so, I think that should be modeled as a separate control.

regards
Philipp

