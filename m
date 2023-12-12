Return-Path: <devicetree+bounces-24457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFCF80F394
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9F3F1F2130B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 16:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547BA7A23C;
	Tue, 12 Dec 2023 16:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyiGWeQT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328BE7A22D
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 16:52:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A87BC433C7;
	Tue, 12 Dec 2023 16:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702399933;
	bh=70vgThw1MlwxA+zGlJhj1ievu3+naSPsZMUdAK3/L6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eyiGWeQTKbMokewNJGUKTmnMrZFCYX5PX968J6Xs4uCNtgFqPOt70iChtTHmX3GNh
	 hp1EF1apKNX0E4wLCT8AvhMWy4NThQQ9BxTUX9iLucMKJmSTrCIARtgDwlHN2giCHW
	 Zlwaqz1ntbA7IsIyoHkkflR74m6K1CY1A0ddsqCDVDZZEyS4q2T9ju22V5pIVPUPG3
	 FWWtPB17qfCbGtgx4YUeseWTNbOre3yyDgQRn55o2hkq0mKLI7+/dX1F99cB4rOXOT
	 kQJg52qqkSitMcrbOh/4CCBQdgNUVfOdgXw51+/+JgJp3LEOJf1Xjd3rDyPS5pfO82
	 izDRJ3g6QaduA==
Date: Tue, 12 Dec 2023 16:52:09 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: marex@denx.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, martink@posteo.de, kernel@puri.sm,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/3] dt-bindings: lcdif: Decouple imx8mq from imx6sx
Message-ID: <20231212-yodel-enclose-3e239ab9d5dd@spud>
References: <20231211204138.553141-1-festevam@gmail.com>
 <20231211204138.553141-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GQQcyvBtNUg0Njv8"
Content-Disposition: inline
In-Reply-To: <20231211204138.553141-2-festevam@gmail.com>


--GQQcyvBtNUg0Njv8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2023 at 05:41:37PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> On i.MX6SX, the LCDIF has an associated power domain.
>=20
> i.MX8MQ does not have an LCDIF power domain, so allow passing only
> "fsl,imx8mq-lcdif" as compatible string to fix the following
> dt-schema warning:
>=20
> imx8mq-evk.dtb: lcd-controller@30320000: 'power-domains' is a required pr=
operty
> 	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--GQQcyvBtNUg0Njv8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXiPuQAKCRB4tDGHoIJi
0pxdAP43e6xNOi4+1AVLEQ5bTqG+tYTbYwXcf+VSh/mBenStoAD/QZF0uFltgKCP
6ssPFcTMa6fsgOaPPduH6CWRfYWuuwk=
=hbPv
-----END PGP SIGNATURE-----

--GQQcyvBtNUg0Njv8--

