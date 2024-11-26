Return-Path: <devicetree+bounces-124635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD129D9764
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 13:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30FE6B21B1A
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 12:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924EB1EB21;
	Tue, 26 Nov 2024 12:47:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA68336C
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 12:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732625236; cv=none; b=k605dpWcPst58EUwOUnqpPLWf53J/bfiuJ2Sten9q+AL8d9HI7rQFqq//ztrfnx+CegKg302vK3rDsrzJrD3Wa/chacJ2QRfnjbMO2Yt94VcIE3plUItRGQ8BWSrE69ZWaDZRbYoldGl4CBw+Gz5YiEZCNhOUmYS2EQpC9G08Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732625236; c=relaxed/simple;
	bh=5/je/pEEK2EIqMRb7TVlM1NGq5GXRgZKAQsVg4OHCe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gt9YPTULp4HMju9HK4A93iywTMaKKvEhqdLI/KkU+G2sgJl/CMoSl1rKEHzK7VML+pYHAjOYlqab/L1sJ5aWzC717lRWfoWW/Ifn3xuMf8oMQbVA+yjBccZ1YXrGJk1vMTIQ451PdxWOjfhYaDyNYczXjOGmLPi8i1VwDC8MaDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tFuyC-0004Gh-85; Tue, 26 Nov 2024 13:47:08 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tFuyA-000FfK-0g;
	Tue, 26 Nov 2024 13:47:07 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 9E8CB37DA3A;
	Tue, 26 Nov 2024 12:47:06 +0000 (UTC)
Date: Tue, 26 Nov 2024 13:47:06 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Leonard =?utf-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>
Subject: Re: [PATCH 0/6] ARM: dts: stm32: lxa-tac: fix gen{1,2} boards and
 add gen3 board
Message-ID: <20241126-bald-paper-ringtail-661462-mkl@pengutronix.de>
References: <20241119-lxa-tac-gen3-v1-0-e0ab0a369372@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6c2nwor5larsiucg"
Content-Disposition: inline
In-Reply-To: <20241119-lxa-tac-gen3-v1-0-e0ab0a369372@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--6c2nwor5larsiucg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/6] ARM: dts: stm32: lxa-tac: fix gen{1,2} boards and
 add gen3 board
MIME-Version: 1.0

Hello Alexandre,

On 19.11.2024 12:34:57, Marc Kleine-Budde wrote:
> Hello,
>=20
> this series fixes some problems found in the lxa-tac generation 1 and
> 2 boards and add support for the generation 3 board. It's based on an
> STM32MP153c, while the generation 1 and 2 are based on the
> STM32MP157c.

is there an ETA when this series will be merged, is there something
missing?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--6c2nwor5larsiucg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmdFw0cACgkQKDiiPnot
vG9EKwgAi5XkzgfNgY7ixrqcwOoyuuX6KNLwCoxeHNrfzr5giHyilo0qGoi8eoOm
4gRl8j1NkMCgZl9O5lsUwqelHDQM7yx7sJ1agE2pBTC8NbjhKo/BdqfnQRYxNtST
t+wpaGLsn6/QH3v0gBrD9Ne5vvkXVEywskzPDZgfnyzBt9XAn0CNRxtdwCK9+uk1
2Jz5VfSu7MkaFIE9K6ET/oNx589yjTPj6nLpp9vwXndBlJ2v0dxybJ/Mkyf+KxbU
GtHOPzWyK3aTfdUDFn6w5ssXoErNy2v+HNSgfJt3mUtgAJEMch+URzWR6nkD4Zzi
N7zolS05uqsPqMNxoFuN1iAx5cC5Dw==
=EJkB
-----END PGP SIGNATURE-----

--6c2nwor5larsiucg--

