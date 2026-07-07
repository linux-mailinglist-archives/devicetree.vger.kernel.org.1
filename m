Return-Path: <devicetree+bounces-322298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zRmsF0xETWo4xgEAu9opvQ
	(envelope-from <devicetree+bounces-322298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 20:24:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5295D71E9F2
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 20:24:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=CGltUv6A;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322298-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322298-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 734FA3004617
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 18:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D75D43D4EC;
	Tue,  7 Jul 2026 18:24:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E613A3D668F;
	Tue,  7 Jul 2026 18:24:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783448646; cv=none; b=DbajfAQvtYjgqXJbaJuxuRnZrfx//KsDCqzsEiex+GksLGNU5L9s2Bw3tTTdaxFKf8XFcEs4h/Nt/N7uUvOMMRl3KwwJn9WdPdI22sDPisxo8IbMG47QkK6g/S0UDSLqPt4N9lm6jOXSRNX7ykSxrg7/Wfvb+yGxV4Lr6hiVLgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783448646; c=relaxed/simple;
	bh=xQz/1de1fhdSsAQcRz1bIbjMT8tJONoMz2GIjS8HZQg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lLyF+dkShqGbS+KSIz0BWCfBCDAVOPUvOs19rBGoSK2iHspe1mKdKknL6EDHjesMjzY24MJqKedpkB5Fq0FwQc0838izauCCjH+nkKnTfelrumsRZt9m9sppKQDKiGnitrEYyt/O+6vXZbBvBtDuT+Mk30zn+FlJIDUr8irgIdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=CGltUv6A; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9JLJ0FpKM3qj52tf+7FbBXdfMaILfM/b7TzkNMXuLMs=; b=CGltUv6A8vNWyR6tnpsfe2ZOCQ
	JsAUW8Wrl8Jf6IDsfJvhIElhExWMpJ/Z/8WxZq5M/BwokI+6YCXoLZnwQzy0tJIEMX5AVoFVcAWml
	suUNS8GcSbCu+pd/KrNtbYBThifK89bbiGtIoSiKifux/D54RU999mk60Dh9Ujgv+gH6ZJQ7+STlE
	4jXjFZT3GSEnJwLEtDjDrNGMdZBBjJpb/4NI6T3V4nz9WK16fMb0Ys3Dm/LnwElUMW09UZWl+teC6
	U8S7EjJOwr0pjZHRAxncYs6FBeirD8AV7F6ABn6pXAEP1XuvC8EQ0pkRnjqgHn42p8hOBxaWNcVxE
	SCcwBPiw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: Hrushiraj Gandhi <hrushirajg23@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Tue, 07 Jul 2026 20:23:47 +0200
Message-ID: <14045151.uLZWGnKmhe@phil>
In-Reply-To: <20260707160354.GB3176120-robh@kernel.org>
References:
 <20260608060940.52549-1-hrushirajg23@gmail.com>
 <178301901903.3838694.3276523670393868229.b4-ty@sntech.de>
 <20260707160354.GB3176120-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322298-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:hrushirajg23@gmail.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5295D71E9F2

Am Dienstag, 7. Juli 2026, 18:03:54 Mitteleurop=C3=A4ische Sommerzeit schri=
eb Rob Herring:
> On Thu, Jul 02, 2026 at 09:04:55PM +0200, Heiko Stuebner wrote:
> >=20
> > On Mon, 08 Jun 2026 11:39:38 +0530, Hrushiraj Gandhi wrote:
> > > This series adds initial device tree support for the Vicharak Axon
> > > single-board computer, which is based on the Rockchip RK3588 SoC.
> > >=20
> > > The Vicharak Axon is a feature-rich SBC targeting developer and embed=
ded
> > > use cases. It ships with:
> > >=20
> > >   - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
> > >   - RK806 PMIC providing all SoC power domains
> > >   - eMMC 5.1 (on-board) and microSD slot
> > >   - Gigabit Ethernet via RGMII (RTL8211F)
> > >   - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
> > >   - PCIe 3.0 x4 and two PCIe 2.0 slots
> > >   - SATA 3.0
> > >   - USB 2.0 host ports (EHCI/OHCI)
> > >   - NXP PCA9554 I/O expander for status LEDs
> > >   - Haoyu HYM8563 RTC
> > >=20
> > > [...]
> >=20
> > Applied, thanks!
> >=20
> > [1/2] dt-bindings: arm: rockchip: add Vicharak Axon board
> >       commit: e0008b108aaf8c5aa22930b2ceadf8f894562acb
> > [2/2] arm64: dts: rockchip: add Vicharak Axon board
> >       commit: e08c3389c78dbefd31a57df8807cf57ef6f3c9b1
>=20
> Both have issues and should be dropped.

I've dropped both the Axon as well as the Vaaman2 board from the
same vendor now.

The whole thing is confusing.

I should've caught the pinctrl issue, and do remember running a dtbscheck
on at least one Vcharak board - but that must have been the Vaaman2 board
because there the pmic fullfills the binding (and general setup of other
rk3588 boards).

The vendor-prefix is missing indeed. I found earlier versions of the
version-avalanche had it, up until v6 [0] . Though I haven't figured out
yet why it was lost.

Hence I dropped both boards.


Hrushiraj: please start anew with both boards.

But include all the tags you received in previous versions.


Heiko


[0] https://lore.kernel.org/linux-rockchip/20260601162143.170030-2-hrushira=
jg23@gmail.com/



