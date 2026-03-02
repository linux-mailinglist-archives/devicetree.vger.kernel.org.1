Return-Path: <devicetree+bounces-269901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dMfcBQZppWntAAYAu9opvQ
	(envelope-from <devicetree+bounces-269901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:40:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D51D6AFF
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C7E23037488
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6238933121F;
	Mon,  2 Mar 2026 10:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EKp0nFdi"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7963132ABCD;
	Mon,  2 Mar 2026 10:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772447822; cv=none; b=uAak8WKnI0Sieoj+JYmGIUoy2iQZJrCXXbZGo4d5t5I7I836Qf5FnCXn3VBy55Uw2tC1T1AOE7hFWFReqY4wsHt146k4crE2VH6WV9kLHUwxxQvTirmmxPtMSxmvwSqI2oWz+cFRZj+dmQg4wkYDW5JXE0NoV8XSDcIAKkgSqH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772447822; c=relaxed/simple;
	bh=kO11BKmKFYoC09eco+6dmdwTd3OQRCC8tF7pTfHduz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tYwKCmwacnxgkNoWWF8N5H0f+LOCPd6adupcEQephaPlizYT8NA9CMKsR2vlh71/WVWqkN4KfpH9yq5lTJv5OXcvPn34OA8KhVTVBpD4BDB5U4QxLq5pYKd5MYvPuWa5uiiAnDU3ifof6UNG0VMbWvc980xNkymYHKP5uViZnNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EKp0nFdi; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kO11BKmKFYoC09eco+6dmdwTd3OQRCC8tF7pTfHduz0=; b=EKp0nFdi5sCj9Lg7x8UsS+uiqc
	uOvigeWC9f4WnNKIN4GhoQw2dIh6fy7FDYFCbKnU/BNYLRbxws6nPC7s/rEmjkgmWtVT2qypJS6gE
	dSF84nfAkxRlqNyP86G63N5Ly7nfyn6gi3VYt479afbCYyC7CSljkjfZ3hhyrMagc6HHw1qyOmncN
	qH67492d+MY9KH43uYzR/wO0arMiOe/1VsHZK2Guye+xehGUYaiMgxPdCbXJsduK7c/P1pjB4ZEL5
	MWiykNb/FfbPcqLWjTIIFfXoSWW+Xnao4VUjXPfbxZhGJY+ylhYwamAaFx0+UAnk1SC28k0LNdI+N
	yFzfzckw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy
 node
Date: Mon, 02 Mar 2026 11:36:42 +0100
Message-ID: <5051965.GXAFRqVoOG@phil>
In-Reply-To:
 <CAOMZO5CfmS2UEd8JwbR7WHRhTVR4m6cOZUBxhXWAf2zxNhY-Fw@mail.gmail.com>
References:
 <20260228013257.256973-1-festevam@gmail.com> <2819870.mvXUDI8C0e@phil>
 <CAOMZO5CfmS2UEd8JwbR7WHRhTVR4m6cOZUBxhXWAf2zxNhY-Fw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269901-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:email,sntech.de:dkim]
X-Rspamd-Queue-Id: 7F6D51D6AFF
X-Rspamd-Action: no action

Hey Fabio,

Am Samstag, 28. Februar 2026, 13:15:52 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Fabio Estevam:
> Hi Heiko,
>=20
> On Sat, Feb 28, 2026 at 8:40=E2=80=AFAM Heiko Stuebner <heiko@sntech.de> =
wrote:
>=20
> > please don't send patches that "simply" fix devicetree warnings.
> >
> > As you can see in [0] the driver uses these properties currently.
> > So while this fixes schema warnings, it will break the actual boards.
> >
> > So first of all you'll need to adapt the driver to handle the "official"
> > properties and also provide a fallback in the driver for old devicetree=
s.
>=20
> The rk3066a-rayeager board describes the reset-gpios inside the
> Ethernet PHY node:
>=20
> https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/rockchip/=
rk3066a-rayeager.dts#L155-L157
>=20
> Is this broken?

No it isn't :-) .

That's what I get when I try looking at patches on a saturday before
coffee ;-) .

With the reset moving into the phy-node, the phy driver will trigger its
reset itself of course. The arc-mdio also request the reset-gpio as
optional, so the whole thing won't fail if te gpio is not present.

Sorry about the noise, the patch is correct obviously.


Heiko



