Return-Path: <devicetree+bounces-101708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A34C29735E0
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 13:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDB01B21AF4
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 10:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E60187FED;
	Tue, 10 Sep 2024 10:59:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1917A924
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725965991; cv=none; b=XVuHyZHc1T5iM1D+Lp7l+UJHFr+blyQRMuNVq73IkyM37bq7oru2a6SWEpg8b+kdl3my5SliH/A+QoMR2jrq+3FFD+8gIeaVF65+BptZixezdg5ezOjXDBjTaqa7aSP/lbEUjjW+f1u3Hu3jG9HCIZMsVZMfezfkgVSF5EIHB1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725965991; c=relaxed/simple;
	bh=wYl1ayaD6ODnwt71dEKiyUjl6od5SExYFo4TreaPkf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oc1e4Y6TA2EqmYHt2wAUGhJeCVPAkUuwMJDm7o/WxrflWygr4nF5KOpPakm94ScNlD+rcGQma8h4qUH8CXXAdgMH1kbycKRKhl1AB3xCuq0Mh5AnfpVlBF7TQ5/M4Pm1ZrNeriG/PhYZnlkS1upDKFswT309ANv5yiFQuq/q9V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1snyat-0002ky-0l; Tue, 10 Sep 2024 12:59:35 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1snyas-006sMQ-9w; Tue, 10 Sep 2024 12:59:34 +0200
Received: from pengutronix.de (pd9e595f8.dip0.t-ipconnect.de [217.229.149.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id EB196337710;
	Tue, 10 Sep 2024 10:59:33 +0000 (UTC)
Date: Tue, 10 Sep 2024 12:59:33 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Frank Li <Frank.li@nxp.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:CAN NETWORK DRIVERS" <linux-can@vger.kernel.org>, "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: can: convert microchip,mcp251x.txt
 to yaml
Message-ID: <20240910-neat-apricot-robin-4712b0-mkl@pengutronix.de>
References: <20240814164407.4022211-1-Frank.Li@nxp.com>
 <Zt9csuQwWomPqlqc@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tbva72wm44mzso74"
Content-Disposition: inline
In-Reply-To: <Zt9csuQwWomPqlqc@lizhi-Precision-Tower-5810>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--tbva72wm44mzso74
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09.09.2024 16:38:10, Frank Li wrote:
> On Wed, Aug 14, 2024 at 12:44:06PM -0400, Frank Li wrote:
> > Convert binding doc microchip,mcp251x.txt to yaml.
> > Additional change:
> > - add ref to spi-peripheral-props.yaml
> >
> > Fix below warning:
> > arch/arm64/boot/dts/freescale/imx8dx-colibri-eval-v3.dtb: /bus@5a000000=
/spi@5a020000/can@0:
> > 	failed to match any schema with compatible: ['microchip,mcp2515']
> >
> > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > ---
>=20
> Marc:
>=20
> Ping. Conor Dooley already acked it.

The patch is in net-next.

https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/=
Documentation/devicetree/bindings/net/can/microchip,mcp2510.yaml?id=3D09328=
600c2f930e8814cb9deff630a56788cc8e4

Sorry for not giving feedback,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--tbva72wm44mzso74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbgJpMACgkQKDiiPnot
vG9OmQf/Qtal/xWV4O9W0zc4ZhTtKxWHJ+MCOSEjo6iBZM/0U0ukeDAzeFQ0Qw18
fkho1l1H7TN8uaMDIwbE8AIARN0WV+K2+Fkn/hN+ffShwCdTpfna9bEP7uU+c267
4VL4Kczm+fgVjdeU0+RcSqPO7D1/nrRuh/TcqykWlrig3mBhhwoY10AARSsnxNSX
cMtz1TMB1y3GCRGc8ykLffZDLCgAxhdEdy7bjk5EvLYMDy8GnW+UdZkSISx+9L5N
E9zirBB2TmdlSAMpcVMwoXYva/NrlLIgJhX+FAlOfMCQmJKeBseyP29dRL0lo/+D
cueMHVpHUJCxWo09+7VYX0APOiPjoQ==
=F2Ko
-----END PGP SIGNATURE-----

--tbva72wm44mzso74--

