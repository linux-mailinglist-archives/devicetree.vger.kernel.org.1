Return-Path: <devicetree+bounces-46409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB73869486
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0512285D05
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E18914534D;
	Tue, 27 Feb 2024 13:53:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408CB145357
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 13:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709042036; cv=none; b=OAGdqH1NEOkh/6iQHGqa1e8MVBUoh/tLeWOYNmN4K1u6lz/tgAEmSOnfqqwmDORG6+GNu3fWRpTm+rAkoBf43lg/8qLjJ11SJkJlCy4JZMUFs8j3kbpQJuByvZzq7PzC4ZcG44egcWfbrsKeDSut6f6OlDgcgjt7dakauq0A4Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709042036; c=relaxed/simple;
	bh=beYyDmtVU/qukHJm0GrgmYfZawq2g57BvFHLxl23o3Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XyYOvkPzgqGEejMZOMLgrJMz8GcFSvPOxWZjyJr/H0Gp4rag7waxKnbxf8lmCRlUdSh3JFeGlG830D/amjTfAfjJqm+Su235834iET7sqHb5KgXV+CemmLGSZeiPLJvl7e6FcJekOxiSXG7buZimh4SD5S4IfugnhnKMSExNulU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexu0-000786-Io; Tue, 27 Feb 2024 14:53:48 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexu0-003DBW-16; Tue, 27 Feb 2024 14:53:48 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rextz-00CUG3-34;
	Tue, 27 Feb 2024 14:53:47 +0100
Date: Tue, 27 Feb 2024 14:53:47 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Message-ID: <psc3hwvp4ibbdxickziwbtwhj7ti3pfyivkqzsx2hbaixduqan@xnl2mbasdyor>
References: <cover.1709034476.git.ukleinek@debian.org>
 <2865246.yaVYbkx8dN@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5eorqsrfd6f3xyvi"
Content-Disposition: inline
In-Reply-To: <2865246.yaVYbkx8dN@diego>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--5eorqsrfd6f3xyvi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Heiko,

On Tue, Feb 27, 2024 at 01:26:19PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 27. Februar 2024, 12:52:35 CET schrieb Uwe Kleine-K=F6nig:
> > this is an initial dts to support QNAP's TS-433 NAS. It's enough to
> > start the debian installer with a custom built kernel (original Debian
> > kernel fails to open a console, didn't debug that yet) and access HD,
> > eMMC, RTC and network.
> >=20
> > There are still some missing bits and pieces, but to make people aware
> > there are efforts to support this machine and so prevent duplicate work,
> > I think it makes sense to add the dts in its current form already.
>=20
> woohoo and yes we're adding support for not 100% supported boards
> all the time, so adding basic support and extending it later is fully ok.
>=20
> For people thinking about "following along at home", how much voodoo
> is involved to make the device boot said Debian installer? ;-)

I'd ask these people for some patience as I intend to document the
details in the Debian wiki.

For those who are not that patient, here comes the short version:
I compiled v6.8-rc1 with this patch, put the resulting kernel image
(Image) and device tree into /srv/tftp, together with the initrd[1] from
Debian and then typed in U-boot (using the vendor version):

	setenv laptop 192.168.144.173
	setenv bootargs ${bootargs} clk_ignore_unused ignore_loglevel
	i2c dev 0; i2c mw 0x20 0xf4 0x10; i2c mw 0x40 0x00 0xa3; run phy_cmd
	dhcp ${fdt_addr_r} ${laptop}:rk3568-qnap-ts433.dtb
	dhcp ${kernel_addr_r} ${laptop}:Image
	dhcp 0x0b100000 ${laptop}:debian/20240222-02:09/initrd.gz
	booti ${kernel_addr_r} 0x0b100000:$filesize ${fdt_addr_r}

Feel free to ping me on irc if you have further questions.

Best regards
Uwe

[1] I used
https://d-i.debian.org/daily-images/arm64/20240222-02:09/netboot/debian-ins=
taller/arm64/initrd.gz

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--5eorqsrfd6f3xyvi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXd6WoACgkQj4D7WH0S
/k4uRQf/ZJpH7lOmJ1xnFUma+kTvkqyAQo7BhPHL32Al08mYBmipvz96nY5+843Y
LtDQh/dj1zWO0idAK+jWUv5HE0MKNl1BJNccRK1T5w6hwh4O+CGS0ZETUPZbaBE9
1qh0PXVfwnNPNRtN2W8rNyhJm+yv7kbW5d6bvs5/nG0lK7soWplj0DTvZpXsTnls
2G7oe5TN0dTOc3RZJW8Q/wHYV5rpm1DhLadOjw3fZ+CTUXIwvKUMSitLbGZgsKg+
hO8GC/LAGm11ZPtbvHSs9PMr1e0isWWRoVL9BQI0SHjgcRm/NL2q8Cz6ZGnAba/D
QD9q27rLQTJIseKMvSsCCHNBRWk3hg==
=RmP1
-----END PGP SIGNATURE-----

--5eorqsrfd6f3xyvi--

