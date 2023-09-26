Return-Path: <devicetree+bounces-3437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CF17AED85
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 9A4EAB20997
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2C9286A6;
	Tue, 26 Sep 2023 13:00:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93D2770B
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EED2CC433C7;
	Tue, 26 Sep 2023 13:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733231;
	bh=XgRLp7reMByJE6iz+js3n2o08ntA/g2oL1gYbgxKMvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CuMaBcWEEUoMwIGVfh7LCgMZLzIoRYyIQZfmV9mqDOYRvMEzQBDBmJKadK8zOhUOA
	 8TXzzE+VRGzdUC7IydYVWYEaDhfqRSubqXBhDhQu3LfiUwhPyz4LoJltapIUtZsv9x
	 Nt5wXsK/S+Ixv5FKef7+8TzVtoGu1h6chKIwyzPlb80hqxV+8EHVXh9lHCK6/36MCg
	 23FOubJjpnR3LzBr6evvPH7WrFTczRW3YI4e4mq0NqEADxjRHox93iiKOvAmchkHXF
	 KkW9YRuiMtASJZ1sIzo/mj8/RDUUyh6UY3VvhXhOxJVZoD1M49UUk7U9vp7HJaL8Ed
	 w4dis/6GFpjBw==
Date: Tue, 26 Sep 2023 14:00:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Liu Ying <victor.liu@nxp.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bus: fsl,imx8qxp-pixel-link-msi-bus: Drop
 child 'reg' property
Message-ID: <20230926-remold-splendor-7993a7c13450@spud>
References: <20230925212639.1975002-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zcGQjy0PLp5BA9R5"
Content-Disposition: inline
In-Reply-To: <20230925212639.1975002-1-robh@kernel.org>


--zcGQjy0PLp5BA9R5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 04:26:34PM -0500, Rob Herring wrote:
> A bus schema based on simple-pm-bus shouldn't define how may 'reg' entries
> a child device has. That is a property of the device. Drop the 'reg' entr=
y.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml           | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link=
-msi-bus.yaml b/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-lin=
k-msi-bus.yaml
> index b568d0ce438d..7e1ffc551046 100644
> --- a/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bu=
s.yaml
> +++ b/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bu=
s.yaml
> @@ -73,9 +73,6 @@ patternProperties:
>    "^.*@[0-9a-f]+$":
>      description: Devices attached to the bus
>      type: object
> -    properties:
> -      reg:
> -        maxItems: 1
> =20
>      required:
>        - reg
> --=20
> 2.40.1
>=20

--zcGQjy0PLp5BA9R5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLV6gAKCRB4tDGHoIJi
0io+AP9wlWXH+j4jhPEZeQOoW6HTGgw44C5an64Q85qsYtHNMwEArDFSJJAqvGYu
e9o5vwjvRLIW3w1n2uU8LgrrGe3MMgk=
=z3JY
-----END PGP SIGNATURE-----

--zcGQjy0PLp5BA9R5--

