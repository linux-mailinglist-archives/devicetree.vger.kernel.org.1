Return-Path: <devicetree+bounces-99346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 54218969894
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 11:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBD3B1F245D1
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1AB19F430;
	Tue,  3 Sep 2024 09:18:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FBE44366
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725355115; cv=none; b=LII9vbv6BTP2mIukD2q+pfUZuWU/DV0JzCvgFgKOB2+zTQacGoPRyKrExc3PWadnn7VKih1i8w2Z+p/sYcAyTgNkAeJWags7aVoHG5X32yDhKv4vzoZ+Q1qK1bFYgblSLYGu4iYGg9GepFhB5m4Mi+hws3w2ZHT+WFief38ZH0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725355115; c=relaxed/simple;
	bh=TAyfdxyQuZUkyOl2cPCmdbhNnDh9I2K3ivcsiP4Cztc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=faJ3FFWUPJA1JnYTw5N/tX2JbBfdMaM644D9MBI+HPSEL1dDXS8o2y33Mt8N+R9IjyroKTmtBq18EuAT6htvdkRdrHxsFXEVrGJLurMbx3BDBhDb7dWGxPyGCB3Qq/lfwZdV0UjsWtAs9jHEg08TDCwinhoCTFbJdGRi5Wyp97A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPfn-00075B-Qy; Tue, 03 Sep 2024 11:18:03 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPfk-0059Cr-LY; Tue, 03 Sep 2024 11:18:00 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 46253331004;
	Tue, 03 Sep 2024 09:18:00 +0000 (UTC)
Date: Tue, 3 Sep 2024 11:17:59 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>, 
	Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v3 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <20240903-neat-vivacious-leopard-14cb09-mkl@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <ecj2sv7xhmu6plfnrq4ezejn3d43cl5mwutvkwh4u2bqcmna3k@2jykwgizuxmb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mb3fsyqhiocnajmm"
Content-Disposition: inline
In-Reply-To: <ecj2sv7xhmu6plfnrq4ezejn3d43cl5mwutvkwh4u2bqcmna3k@2jykwgizuxmb>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--mb3fsyqhiocnajmm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 31.08.2024 08:02:00, Krzysztof Kozlowski wrote:
> On Fri, Aug 30, 2024 at 09:25:57PM +0200, Marc Kleine-Budde wrote:
> > This series adds support for the CAN-FD IP core found on the Rockchip
> > RK3568.
> >=20
> > The IP core is a bit complicated and has several documented errata.
> > The driver is added in several stages, first the base driver including
> > the RX-path. Then several workarounds for errata and the TX-path, and
> > finally features like hardware time stamping, loop-back mode and
> > bus error reporting.
> >=20
> > regards,
> > Marc
> >=20
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > ---
> > Changes in v3:
> > - dt-bindings: renamed file to rockchip,rk3568-canfd.yaml (thanks Rob)
> > - dt-bindings: reworked compatibles (thanks Rob)
>=20
> You never tested the patch before sending.

Well yes, I forgot one of the tests. It seems I need to set up more
dt-bindings to get used to it. I will send a new series.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--mb3fsyqhiocnajmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbW1EUACgkQKDiiPnot
vG9v3Af/SSPdXXJCW2ijU8NHVAAS03fECznVQ6XNHAyYOrbjgINxQ3DN+p7ez6+4
Y5qtbmg8zMV880CEhwj/1aFHpfxjSC0BrCNyqRhucX4KTkn9PmFW33w2gTVrmibY
+OAV7PmoYEXyYl3BOlnvfT09zPfvpvQy5eh7BXKJrDCtZB2V14ZjBwJGKZJU/vmR
8fEAueEDlRvJ2UY0YJOFjWqlddilH4CVULGaBibxgqVPwb97S5dkBHtE3GcKvvvc
3NgZbYSx86I2nUV5vtu0emjJq7pkyRxsl+7MclRykO4yCzgeHLPTdh1T+BRRfbuU
chZX7VYl4l73VrmXNF7/1wtBl+NKCw==
=cG0j
-----END PGP SIGNATURE-----

--mb3fsyqhiocnajmm--

