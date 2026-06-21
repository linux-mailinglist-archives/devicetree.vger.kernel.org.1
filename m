Return-Path: <devicetree+bounces-314121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KGCFGE40OGqYZgcAu9opvQ
	(envelope-from <devicetree+bounces-314121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 20:58:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A276AB77F
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 20:58:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c3cRYvXd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314121-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314121-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E5023007F47
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 18:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6ED1370AF1;
	Sun, 21 Jun 2026 18:58:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB9A2D3220;
	Sun, 21 Jun 2026 18:58:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782068299; cv=none; b=ref12T2xmFhjeN3NFdSWsVq2w09qUTSG5fSFjIZbUvSfiCEhBzoSeXpFDH9HswJPP6EgfbnsSRNUWD9AXOQk+MXt4J/ORisy1v42I1uRM0RPFKqQ+NOxuuNw5yGGVjSUDsCfv4b/fxJX0wsWs2W6eaKoERYfQ15DZTaKDqt9GRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782068299; c=relaxed/simple;
	bh=hXDwBGB2+sGiN6W1XVKpTD05/Z92DbH2/IbpKUIVRaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r6aYL5vn3wp6xXSi7ERU42tKD5aN7CC3NDag9NtJE7DqiZ6yLIJQG7FzYVH8CpxOAB+WJw8VILtEkOMryaZXeXsQ8ydPVggF/UkLFSw1v4rfv2amgX9O3tCNu6shCA/77j1PTLdz6Iy13VJnqAHl2Xj9PgUMBmOpFcZUK2Wafc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3cRYvXd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25FD1F000E9;
	Sun, 21 Jun 2026 18:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782068298;
	bh=hXDwBGB2+sGiN6W1XVKpTD05/Z92DbH2/IbpKUIVRaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c3cRYvXd7Ag/nvsk/uwFkFafT4XRPst5ltuxZoiXj0qZAn7eAynApMSm6YSglXh+5
	 Q7o9NiuaghYRWx5Z0hkDYjLRGUhy7AVrF03pNBBcN+E5yifsXQ1hTk9TAnV6+e+AhM
	 P7TbJiCpaszksNvuevq0pMWUQ7wKG7+xhiqcLPomGEccJvs8dbA+AjtpqGKjb8A70Q
	 Rx3C2CkD0+CWrSUgFdqTXZO9ceI7AZX7rE4dflH4gOlRtEXw2Y8tO3bcXt34o5jGO3
	 OzcljdlKb0I3xbHNzGcEDrksL3TIaB4UwRyoHYlQbmJVfyG1g+BPFtPDL6AVOyn/0A
	 fSJbNuJDozycQ==
Date: Sun, 21 Jun 2026 19:58:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Brian Masney <bmasney@redhat.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v4 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset bindings
Message-ID: <20260621-plywood-straddle-b01f0c45f27c@spud>
References: <20260616-zx29clk-v4-0-ca994bd22e9d@gmail.com>
 <BXIzXc2sQ5SGynZ1chd-pw@gmail.com>
 <20260618-fantasy-estimate-6c52edbc6890@spud>
 <vYm1twErR8mp-Fjgbvf-MQ@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j0zAE9ZWvKbtJb/a"
Content-Disposition: inline
In-Reply-To: <vYm1twErR8mp-Fjgbvf-MQ@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-314121-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,spud:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5A276AB77F


--j0zAE9ZWvKbtJb/a
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 20, 2026 at 08:28:03PM +0300, Stefan D=F6singer wrote:
> Hi Conor,
> Am Donnerstag, 18. Juni 2026, 22:54:53 Ostafrikanische Zeit schrieb Conor=
=20
> Dooley:
>=20
> I think I get the gist of your suggestions. I have a few follow-up questi=
ons=20
> to make sure I understand things right:
>=20
> > I think aux bus makes perfect sense when you have a clock/reset
> > controller, but once you start expanding past that and you have reboot
> > or hwmon or hwspinlock then mfd starts to make sense.
>=20
> At what point does it make sense to move the bindings from bindings/clock=
 to=20
> bindings/mfd? The controllers are still very clock-heavy. allwinner,*-
> prcm.yaml look like clock, reset, misc controllers in mfd/ whereas=20
> ingenic,cgu.yaml, sprd,sc9863a-clk.yaml and da8xx-cfgchip.txt are clock +=
 misc=20
> drivers in clock/.

Yeah, to bindings/mfd or bindings/soc/<vendor>. Which I think is mostly
a judgement call. Two of your devices have at least three functions,
which I think is enough to make the claim that it's not just a clock
controller.

> Likewise for the node names: syscon@ or clock-controller@?

If you have syscon in the compatible, then I think it should be syscon
in the node name as it's more general and makes it clear the device
isn't just a clock controller.

> > You'd then have topclock that is a syscon + simple-mfd, matrixclk that =
is
> > a syscon and lsp that's using the aux bus. The topclock and matrixclock
> > would have dedicated and trivial drivers somewhere that have the mfd_ce=
lls
> > and call mfd_add_devices().
>=20
> Do I even need simple-mfd? It seems I can add the syscon-reboot node via=
=20
> mfd_cells too by setting .of_compatible. It seems once it has a driver (e=
ven a=20
> very short one) simple-mfd is misplaced.

If you don't need child nodes in dt, you don't need simple-mfd.
Whether setting of_compatible is a correct thing to do, I do not know,
sorry.

> What about syscon? Topclk needs it for syscon-reboot and the watchdog=20
> controls. For the other two I only want a regmap. Afaiu device_node_to_re=
gmap=20
> works without a "syscon" compatible. There's also regmap_init_mmio, but a=
faics=20
> I only want this when my driver is the only one using the regmap.

If it is a miscellaneous system register region, then it should be a
syscon. These devices that perform multiple functions like hwspinlock,
clocks and resets fit that bill. Whether or not you "need" it for linux to
work, if it is a correct description of your hardware you need to use
that compatible.

>=20
> > Probably the compatibles you've chosen start to make less sense at this
> > point though, but probably "topclk" and "matrixclk" are not what the
> > documentation for this device calls these register regions?
>=20
> Yeah I'll rename them top topcrm / matrixcrm / lspcrm. I just stuck to th=
e old=20
> names for this email.
>=20
> > I think the priority is having something that reflects the hardware
> > accurately, I wouldn't compromise on that just to have the same design
> > for all three drivers.
>=20
> As far as I can see the primary difference between mfd_add_devices and si=
mple-
> mfd + child nodes is that the latter makes the MFD composition visible in=
 the=20
> device tree and the former keeps it a driver implementation detail. My se=
nse=20
> is that the latter is preferred unless a subcomponent of the MFD might be=
=20
> reused in other components - e.g. an ADC is used in PMIC-abc and PMIC-xyz=
 and=20
> thus the driver can be reused as well.

Correct. The other reason for doing it the devicetree way is if there
are conflicting property requirements. E.g. two of the same class of
device, like a pair of pin control functions or devices that use
different #address-cells to one another.



--j0zAE9ZWvKbtJb/a
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajg0RQAKCRB4tDGHoIJi
0lkdAQDsejM/fiWAN/LLadnJsGBAoCzGlSSrOtr3A2sg2usvKQEAldF5W8w2SxSO
ZvE0QlZlNZrBlfWBeMTJBFfQDlUn9QI=
=tjft
-----END PGP SIGNATURE-----

--j0zAE9ZWvKbtJb/a--

