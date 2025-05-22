Return-Path: <devicetree+bounces-179452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEA4AC0667
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 10:00:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B029518858DB
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 08:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44CDD2500AA;
	Thu, 22 May 2025 08:00:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAC124F5A0
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 08:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747900814; cv=none; b=N5iHXMs5ye9OPK5QQdR0OYpFLHqqgtx3Ti0v5B8FhyBn4fFLj0zRBWEO44zuma/hk+KoMVbh7mQ6u4gytVcVoVe7+nvbAcMs0iElupYydOPYPnsYHY2dSCH7JmFXp1harzHhbmUDvFtlssDXeKJkVliSGjc5jP8qOSkOsHuc7ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747900814; c=relaxed/simple;
	bh=Bw3kgMM52a4tBIU1z0adE+k11qpVVeTREOCcrArRWZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eQhf8LWOyeqoFHvkCbt3NDXstuuYKOuQM97785fU//lnI8W9wugT9zkq5jX4bYbsOzdk5eA7/vCnuSAE0/82gQS7dGNKW/mwzLHgW9HH/Ffi/3M07WjW+p1nOnsxZUeyRykAMwqZazxbWh5zguKPwqXC4j0XWK64XSDNUJScwDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI0qN-0004uV-1S; Thu, 22 May 2025 09:59:59 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI0qL-000hFi-0P;
	Thu, 22 May 2025 09:59:57 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1A403417179;
	Thu, 22 May 2025 07:59:56 +0000 (UTC)
Date: Thu, 22 May 2025 09:59:55 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	cl@rock-chips.com, kever.yang@rock-chips.com, linux-can@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/3] net: can: rockchip: add can for RK3576 Soc
Message-ID: <20250522-delightful-lean-chachalaca-4950e0-mkl@pengutronix.de>
References: <20250522063232.2197432-1-zhangqing@rock-chips.com>
 <20250522063232.2197432-3-zhangqing@rock-chips.com>
 <CAMZ6RqJzR6ucRnCHFq8ZFRnznRsFYq6BMQY24aaROJMLWigU4A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lpmlapbweec4lyva"
Content-Disposition: inline
In-Reply-To: <CAMZ6RqJzR6ucRnCHFq8ZFRnznRsFYq6BMQY24aaROJMLWigU4A@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--lpmlapbweec4lyva
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/3] net: can: rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 22.05.2025 16:51:40, Vincent Mailhol wrote:
> On Thu. 22 May 2025 at 15:38, Elaine Zhang <zhangqing@rock-chips.com> wro=
te:
> >
> > Is new controller:
> > Support CAN and CANFD protocol.
> > Support Dma.
>=20
> Please write a more verbose description with proper sentences.
>=20
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>=20
> You need to break this into several patches and several files.
>=20
> You can not put everything in rockchip_canfd-core.c. Create a
> rockchip_rk3568.c in which you will move all the already existing
> rk3568 specific functions. Then, in another patch, create a
> rockchip_rk3576.c that will contain all the new code. Also adjust the
> headers accordingly.

I think the first patch modifying driver code should be to add the
callbacks to rockchip_canfd-core.c and move the rk3568 code to it. The
second patch to add the rk3576 without DMA and then add DMA mode. Maybe
even split more. Have a look at the series where I added the original
driver for an idea how to add the support incremental.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--lpmlapbweec4lyva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgu2XgACgkQDHRl3/mQ
kZzQJAgApXCC8s2c2+CiMrRCtKvYLVoAutalwYhghaYH2BXfFWc/d+28zc2+kk2x
A0KBEBHsHyNacv50PzO6Cd4sbbvsPUUHEYBHoqFP4rU/v2ume72v4R6vlnGe5wq4
ARFfylPB108a4IQ/rFrJK00fBPA0QEL+xLFhs5qhIC4ULpkFZA2gQ3pvOSaBAC/1
1Lpp8qjNt1Clk2JlI255nJylV04Xe8qcTNq490v1Tj4Cj++vZh414SFvmHBWrbb2
ui2ptgp7K6tqo+GnUu2aFQf1o3GAGoXCEE0AcQCIBuq1d8Rf2lrVM1Koo0cAgNQ1
B2NARj0eLbE2aIKJayqbaBmLHYDzrw==
=uXC8
-----END PGP SIGNATURE-----

--lpmlapbweec4lyva--

