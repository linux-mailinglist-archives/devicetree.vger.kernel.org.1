Return-Path: <devicetree+bounces-24484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD71280F4A4
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:33:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1DF41C20CF7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BAD27D8A7;
	Tue, 12 Dec 2023 17:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ/QGTnA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8D76FDC
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 17:33:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FD69C433C8;
	Tue, 12 Dec 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702402390;
	bh=i0k1hsZBTcIvK0H7K9lZSWl3Fj8iO7tgoW6ofFzT2v4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uJ/QGTnA8JK4ph69zz/RJ5U2aIwaZ2uOTUk5Py9+I2Kv1SncN9di6e2bzdQapImS0
	 6dZ9CHMORLbLm1ATkNTOQGz+CtjU1/Cv/sZPt1xrM1IvOwT/9KhoptZ8tYziZbv9Rs
	 qL40GDCbMRpNMrc3FpiL5l/PU3tLyyR+DDM+VnB8eYAMAIve7YHAAN8PxOlXlgvQAn
	 7EfpQfopAkmJGUheQDvm4K8/SK54hw6uTzzxpdNu356MmCeR2EqPMsBGkeT3DePlH0
	 BwGfwmyznwogwImPvOmeplkhMwvfoqTa6cAy3HwxSaKtutoOie4C0GxOmhmKp9ty2/
	 +KfVgvloED2/Q==
Date: Tue, 12 Dec 2023 17:33:06 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, shawnguo@kernel.org, marex@denx.de,
	hvilleneuve@dimonoff.com, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] dt-bindings: extcon: ptn5150: Describe the USB
 connector
Message-ID: <20231212-helium-sixtyfold-ec721c7b5e41@spud>
References: <20231212112729.700987-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WfrpLqCkfcLK37H7"
Content-Disposition: inline
In-Reply-To: <20231212112729.700987-1-festevam@gmail.com>


--WfrpLqCkfcLK37H7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 12, 2023 at 08:27:27AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> PTN5150 supports USB Type-C connector, so improve the bindings by
> allowing to describe the connector like it is done on nxp,ptn5110.yaml.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml=
 b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> index d5cfa32ea52d..3837da7416e9 100644
> --- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> +++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> @@ -37,6 +37,11 @@ properties:
>        GPIO pin (output) used to control VBUS. If skipped, no such control
>        takes place.
> =20
> +  connector:
> +    type: object
> +    $ref: /schemas/connector/usb-connector.yaml#
> +    unevaluatedProperties: false

FWIW, neither the type nor the uneval properties should be needed here,
the referenced schema has additionalProperties: False.

Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> +
>  required:
>    - compatible
>    - interrupts
> --=20
> 2.34.1
>=20

--WfrpLqCkfcLK37H7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXiZUgAKCRB4tDGHoIJi
0mIJAQCYT5bHr0jPM+QMkDd83rUMLOZgRc8TMPgU5EjwbxsuYQD/TYggsJZjfC3u
q42gRY2MBYXicLI/U++h975dGtCHKwo=
=ZAWg
-----END PGP SIGNATURE-----

--WfrpLqCkfcLK37H7--

