Return-Path: <devicetree+bounces-132363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 511D69F6C7C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 18:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 525F87A3A76
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 17:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DC121FA8EA;
	Wed, 18 Dec 2024 17:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEhl/WdF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6328F1FA8D8;
	Wed, 18 Dec 2024 17:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734543860; cv=none; b=RvZ/NuicLG2jfTyk17NFVdxYZ+JmnVOknjOtI0p+M+MelL2NC6LR5hWbqmM7ER27rob1k8cnQT0vdcLf7V+fbdgABdEcIAQlP+AQcxcLXVDVOyho1HLQQBcneBzwDF8YunH3YR/IqTZ3Qe3FroAGc3cBSkhnCZBHExdgr2L8qBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734543860; c=relaxed/simple;
	bh=rTcxLZxc1NVV02BJgqNuS1VtkPBBSvcdEkB1BNiPiJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YW9W2WbjQHWxWpV5G/dIHyQsLifw0Knsf8vdOTq3myHxgxrq2p5t+BwOSRhoAvcqR6DHhpyrXXFpe45obKA+28RY0E0tcY76ryJLtN3+WDx0zNUnQcSNULEz8+b070umQMooq1BI2ud/VLnZeZYpNyAEsJ+MeCt0EXRGFSGxaO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEhl/WdF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9ABAC4CED7;
	Wed, 18 Dec 2024 17:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734543860;
	bh=rTcxLZxc1NVV02BJgqNuS1VtkPBBSvcdEkB1BNiPiJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kEhl/WdFIaJyw7lBwtWwPuzbVHe7lVVU+sWy37usJKjbxayNGr7uI82IK7wEeZxD9
	 COiNqZtkMzFkVZs3kHx5mjtaAFKQS8rXQBrCuAFUXO3TxYeVWdRIA1tE/0eFlw8O1M
	 B5aB5ZmWZ8t4VVLNbOstjyTVnUxlHE5nXIqU3BSsmuv4q0327hyWd5fLj7Vz8obgzo
	 sx4u8pStgZHI2f4UCyNCGDlgResLojIh6pB2ovwtIhd2rUtV4U54Oop7jCc7M/W2xm
	 6YWBa2Ej6mnAdP7YdUJsDIiO05xOvCilhsEWl1FbA+svk71wjCDohPSqsSNrkAZChP
	 f88iHEQE1nUAw==
Date: Wed, 18 Dec 2024 17:44:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Charan Pedumuru <charan.pedumuru@microchip.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: atmel,at91sam9260: Convert to json
 schema
Message-ID: <20241218-effects-apple-2ac14c51d21d@spud>
References: <20241218-matrix-v2-1-f3a8809ee5cd@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ASrU/zTO3rF6WGbw"
Content-Disposition: inline
In-Reply-To: <20241218-matrix-v2-1-f3a8809ee5cd@microchip.com>


--ASrU/zTO3rF6WGbw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2024 at 09:24:54AM +0530, Charan Pedumuru wrote:
> Convert old text based binding to json schema.
> Changes during conversion:
> Add a missing fallback `atmel,at91sam9x5-matrix` for
> `microchip,sam9x60-matrix` which is not defined in the text binding.
>=20
> Signed-off-by: Charan Pedumuru <charan.pedumuru@microchip.com>
> ---
> Changes in v2:
> - Modified the commit messsage.
> - Replaced `anyOf` with `oneOf` in compatible under properties.
> - Removed additional items group and added both `microchip,sam9x60-matrix=
` and=20
>   `microchip,sam9x7-matrix` as an enum under one items group
> - Replaced `matrix@` with `syscon@` in examples.
> - Link to v1: https://lore.kernel.org/r/20241211-matrix-v1-1-5ef0104a3af4=
@microchip.com
> ---
>  .../bindings/mfd/atmel,at91sam9260-matrix.yaml     | 52 ++++++++++++++++=
++++++
>  .../devicetree/bindings/mfd/atmel-matrix.txt       | 26 -----------
>  2 files changed, 52 insertions(+), 26 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-matr=
ix.yaml b/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-matrix.ya=
ml
> new file mode 100644
> index 000000000000..447b3a3edbfc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-matrix.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/atmel,at91sam9260-matrix.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip AT91 Bus Matrix
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +
> +description:
> +  The Bus Matrix (MATRIX) implements a multi-layer AHB, based on the
> +  AHB-Lite protocol, that enables parallel access paths between multiple
> +  masters and slaves in a system, thus increasing the overall bandwidth.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - atmel,at91sam9260-matrix
> +              - atmel,at91sam9261-matrix
> +              - atmel,at91sam9263-matrix
> +              - atmel,at91sam9rl-matrix
> +              - atmel,at91sam9g45-matrix
> +              - atmel,at91sam9n12-matrix

FYI, the sort order is alphanumeric, which means your 9rl should be
after g45 and n12. Not worth resending IMO.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers.
Conor.


--ASrU/zTO3rF6WGbw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2MJ7wAKCRB4tDGHoIJi
0nZSAQDszAknuVXXPukTIlWxrYGujyuWJ/RMl0ZtGWbHTgqYpwEAw30t96xqzhfH
RSiM6tmhmHmnzrv09I3YPoEBnL5myQ8=
=iLT0
-----END PGP SIGNATURE-----

--ASrU/zTO3rF6WGbw--

