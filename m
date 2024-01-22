Return-Path: <devicetree+bounces-33665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC96C835F9E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7518028C206
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 10:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0283A1A6;
	Mon, 22 Jan 2024 10:26:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FB33A1B4
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 10:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705919200; cv=none; b=mgYoX7B4QJun5lxsIat+ycH/6itJ+xhEOXH3XIKxspJyXYkyE864yBhkx0BQUaTkdIB/lW7PiYXEcX56wMy7o2giSFYBG9zteNiKIX2hefAPfXyEGCrw9OVF3ckjXWVFu5FTaGiMw0pSaXgWX+HZP6A1zGrC2aM10+wxhihBFaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705919200; c=relaxed/simple;
	bh=31jJaBvZTOQyaxK+rh3Ork52rIuNPoSNHjhwCnWTKeQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BBGK/H8Dg4Ll3I6MxW6izDVByRRxbm/aIIAHrAPF9mhw/g8mIoRDj/8oamHm+nYvKDgZxlud/X8YKZU/JAg5lfiPdfJT9moJBrbe9MoGTPeEINKck+l8zef0zbVFBrAxNqIinmR+oObeiT53FV98FPWSPeEqxzh08HQ9hrQS8IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rRrVb-0008Uj-TM; Mon, 22 Jan 2024 11:26:27 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rRrVa-001ZSN-BT; Mon, 22 Jan 2024 11:26:26 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id ED69E27B371;
	Mon, 22 Jan 2024 10:26:25 +0000 (UTC)
Date: Mon, 22 Jan 2024 11:26:25 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: wg@grandegger.com, conor+dt@kernel.org, davem@davemloft.net, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: can: fsl,flexcan: add i.MX95 compatible
 string
Message-ID: <20240122-skilled-wimp-4bc1769bf235-mkl@pengutronix.de>
References: <20240122091738.2078746-1-peng.fan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="burfdvasnt5xet3h"
Content-Disposition: inline
In-Reply-To: <20240122091738.2078746-1-peng.fan@oss.nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--burfdvasnt5xet3h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 22.01.2024 17:17:38, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> Add i.MX95 flexcan which is compatible i.MX93 flexcan
>=20
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

> ---
>  Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml b=
/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> index 4162469c3c08..f197d9b516bb 100644
> --- a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> +++ b/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> @@ -38,6 +38,9 @@ properties:
>                - fsl,imx6ul-flexcan
>                - fsl,imx6sx-flexcan
>            - const: fsl,imx6q-flexcan
> +      - items:
> +          - const: fsl,imx95-flexcan
> +          - const: fsl,imx93-flexcan
>        - items:
>            - enum:
>                - fsl,ls1028ar1-flexcan
> --=20
> 2.37.1
>=20
>=20

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--burfdvasnt5xet3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmWuQs4ACgkQvlAcSiqK
BOg7QQgAkneQxlT0NEWKlWlbHh/AoqkNp1TIqRN8YybyrL1Z8sPRUVa8blLUuqv4
JcI7x9c1hFTnvjjxMdyPea9J9dIaMp2AnfeHl02MEElQTYZc7qKCWSi37SbWmS6l
O1Gh3w1Ou+O6LlT08QHCLOItFRvMm5bVIHPtNvIkH/7xcnzr8eLfxKMm8FvbJpEq
jy2MaemoL+k6jewSioUmuMlg4Qx2ht9siyFdykvNEgsGf005YEjTjuZub+YpLLAX
9kNQVrxgdFOuvbLyKoCbXt5UTZ1FlCHRJXUxRcjj9R3gyXwZnkO5w1WAKfXk9xI/
ZKtCoA78QIweTkBtRBcYJOvl4imCSg==
=q+Tr
-----END PGP SIGNATURE-----

--burfdvasnt5xet3h--

