Return-Path: <devicetree+bounces-3913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 461727B07D6
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:13:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4DB161C208B5
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26C838FA2;
	Wed, 27 Sep 2023 15:13:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A8F1170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA932C433C8;
	Wed, 27 Sep 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827588;
	bh=g5EOXFHedEBnggecBSFHP8NOek2TJapAj4sjU/UIAz4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxgaPNkc986KVYs3slQ+tMkDMhuGs1SZJEnQSCDks5EJZqTJ09v5w5xzWElWVQlHp
	 e7FN3HgM/tb8EXKMB/2CexMjdwXYPxWXTW8Z7fUyY38cLl6OqR5KJeTJBNCsmNu/Vl
	 9Xjn/fmYvizs05tRnO/vbgslZyGoMSmA/XMbB3C2D+ChQ+QUVR0auIO6wDMpm1W31G
	 UPa+zYTE7sTLPv2ybAOms8QfGlJ2IrC5Xao/sMXdgOhlTxze81sH4HeMuuvdHGSSX2
	 i1TeYB+IXYQw4WOfxFvs010/sG5ji9ERz8Tksjm97dD8nidsXX2M2BaSS715P6ptx4
	 aEjlMTo1IpuJA==
Date: Wed, 27 Sep 2023 16:13:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: thermal: nvidia,tegra124-soctherm: Add
 missing unevaluatedProperties on child node schemas
Message-ID: <20230927-tiling-hunting-453feaac8b1c@spud>
References: <20230926164500.101593-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IhOOYgmqxIzylWTn"
Content-Disposition: inline
In-Reply-To: <20230926164500.101593-1-robh@kernel.org>


--IhOOYgmqxIzylWTn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 11:44:52AM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>=20
> Add unevaluatedProperties as needed, and then add any missing properties
> flagged by the addition.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/thermal/nvidia,tegra124-soctherm.yaml           | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-so=
ctherm.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soc=
therm.yaml
> index 04a2ba1aa946..b0237d236021 100644
> --- a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.=
yaml
> +++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.=
yaml
> @@ -68,7 +68,12 @@ properties:
>      patternProperties:
>        "^(light|heavy|oc1)$":
>          type: object
> +        additionalProperties: false
> +
>          properties:
> +          "#cooling-cells":
> +            const: 2
> +
>            nvidia,priority:
>              $ref: /schemas/types.yaml#/definitions/uint32
>              minimum: 1
> --=20
> 2.40.1
>=20

--IhOOYgmqxIzylWTn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRGfwAKCRB4tDGHoIJi
0pL5AP93nGR1ok7VfGFI8vPrm3J9Y/DSPEG2zoqDGmjLAOyZHwD+OeCakWy91CkC
Eur1LH00tjtdCXMthnUKfCT3lj9c8wo=
=CF+b
-----END PGP SIGNATURE-----

--IhOOYgmqxIzylWTn--

