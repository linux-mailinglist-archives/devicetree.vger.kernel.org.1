Return-Path: <devicetree+bounces-131697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2B99F4646
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:43:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBEAA1881F6A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 08:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B9251DD0E1;
	Tue, 17 Dec 2024 08:43:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C845842AA1
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 08:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734425006; cv=none; b=mlkDmkmYhQO/WEuNoCjjMyY+IYbuNiXqBpSeepV0K+o+qC0fZU7yR1vL9KKMLdzccbzYCVoYPTKuDauwSTZBl8jnWne6EH4QKn3ElN5wqJL3HpsJEYRt4kjPu0MQuXTjhDAxGp0nlRvuua1vukIONy4q54O7p7UOPUZ545wHWt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734425006; c=relaxed/simple;
	bh=J2ZeavcazD5PXL2xQQcW9vM42GUdH8F5WiT9V9bZ0ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aiX7fqAy3KvZ0h4zRwp+GkCYP8qMduR/yFeelcZscuROR8+hQCCJWT+cGM3mzaxk9EHEvUwuWViIIB+Ns+XINmTRxKWxlWrnqgKDZb7Ks45EpH3phOsQSWdzw96oeWVmkezYwyt8kYwqEuUHzZd/pYMTwLAoBOsGyoPTRjMvrcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tNTAd-0005l6-Ch; Tue, 17 Dec 2024 09:43:11 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tNTAa-003ppe-2q;
	Tue, 17 Dec 2024 09:43:09 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 50E76390462;
	Tue, 17 Dec 2024 08:43:09 +0000 (UTC)
Date: Tue, 17 Dec 2024 09:43:09 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, heiko@sntech.de, 
	cl@rock-chips.com, kever.yang@rock-chips.com, linux-can@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] rockchip: add can for RK3576 Soc
Message-ID: <20241217-hallowed-adder-of-swiftness-3cd239-mkl@pengutronix.de>
References: <20241217023908.1292999-1-zhangqing@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vve2bzd3aa25xn66"
Content-Disposition: inline
In-Reply-To: <20241217023908.1292999-1-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--vve2bzd3aa25xn66
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/2] rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 17.12.2024 10:39:06, Elaine Zhang wrote:
> rk3576 can is a new controller:
> Support CAN and CANFD protocol.
> Support DMA
>=20
> There are major differences from the previous rk3568. All errata on the
> rk3568 have been fixed and redesigned.

I'm not convinced that we need a second driver for the hardware that has
the erratas fixed. The mainline driver has quirks that allow you to
specify if the IP core needs workarounds for the errata or not.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--vve2bzd3aa25xn66
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmdhOZkACgkQKDiiPnot
vG8uLgf8DNFQnbIdm22IWWzF8IzCAqTetUPNQLvfWtU1jnilBjENPk/efnIkyMG6
u5TksLnIqSMTaNhzExvc6KSqXln8V8FwaF09sJjmuNCfEpz0iZ9b7bhGl/M0LmdI
Y1Ok4GG+xmmuPlVGHcH1VdvmWoBlUCLCi4gY2wqH/SEG5slkx2cc+BOrpW/rcjG0
LXkigIlUNA3Dcn26L6NIoAqlfvfVqEMnV6xWylLZmkHQHN951eK3uer+guo0SBEF
pmp3L0wtOilSGjShaVGwdC7+2JoBe3nG/qsT5/Rt11cEwtMvhpC14LX6tJnW3IPi
LHQJxloBBFW88K6sjHjC/Plz4+4vJw==
=O3qF
-----END PGP SIGNATURE-----

--vve2bzd3aa25xn66--

