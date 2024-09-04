Return-Path: <devicetree+bounces-100090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAE596C1D7
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BF50288B61
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F031DFE26;
	Wed,  4 Sep 2024 15:10:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D65A1DFE16
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 15:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725462643; cv=none; b=lNDZVb8ZPmGT7qMQM/izE+3/kXjdduY8MF1spxd59x4fZ1GcOf9PDhDh+lZ/QUheYXfoe0Kk3hd6ShqYA/JVUajEWSnWOiyso0ojNmEeqMPObFaPh+2ohVdMnfUbdXW0hrldsD31lEqOYNlcwSWc5YHsUQjIwWP01U70koD6TX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725462643; c=relaxed/simple;
	bh=Iu0nb6RTyrZkNvrkjSU5wjTALNRtvGB9NlsFVHRzYl4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qlU1l8/L5kFIPPk+RZDaMxApJfnyKu/j02q7T35LcodvrEdFXcZ0+Bm3cbk2Bly0ymoHiSFXn9QltH04pWIZWj0/RpqL5WKBIk9YVfSYec5kVnUR7T6XLPeQ/MGgIaSq7geFuSADCT6jHHVzVWx13dKrmrr1O56LvTSscES1498=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slre8-0005tl-7h; Wed, 04 Sep 2024 17:10:12 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slre4-005TzF-TK; Wed, 04 Sep 2024 17:10:08 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6C417332A4A;
	Wed, 04 Sep 2024 15:10:08 +0000 (UTC)
Date: Wed, 4 Sep 2024 17:10:08 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	David Jander <david.jander@protonic.nl>, Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <20240904-imposing-determined-mayfly-ba6402-mkl@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <86274585.BzKH3j3Lxt@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="izku447zxf4ptlhk"
Content-Disposition: inline
In-Reply-To: <86274585.BzKH3j3Lxt@diego>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--izku447zxf4ptlhk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04.09.2024 10:55:21, Heiko St=C3=BCbner wrote:
[...]
> How/when are you planning on applying stuff?
>=20
> I.e. if you're going to apply things still for 6.12, you could simply take
> the whole series if the dts patches still apply to your tree ;-)

The DTS changes should not go via any driver subsystem upstream, so
here's a dedicated PR:

https://patch.msgid.link/20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutroni=
x.de

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--izku447zxf4ptlhk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbYeE0ACgkQKDiiPnot
vG/NCggAhHZEOGnOwc1rPZrwVIaf2Vk/TKCuDRfTsGiUyyxbdDW+wuoYfftH2EBc
oHFMu3yMYRK83BqZJkyoXOoqdJaxbYnn5Km4uAx6/6mZBRDVecl+NzZajLFOd8Zr
4jAn4NyJobWCkbYqTUF10RKpQXPOMqvP3DmZ0Mo+6Z1fSYRKKCYUXXBkQ/nOyo+7
Kk4ZhppEJA5EPKCn8uflLkypS/y9VqAY22LhIX3t/PlJKU1/H2wuHxOZxsMSac+x
+VZEdQPeqCYzmkZH0Fab6GLhBWQJcRpubtTMFm28J/DjSg3RI+SiOuQjLgwsjIAu
JdlEyGYVRhVLmtPifpYaHUK1YMdLkA==
=o39j
-----END PGP SIGNATURE-----

--izku447zxf4ptlhk--

