Return-Path: <devicetree+bounces-238305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDD1C59BFF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 18D71349D97
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE512FFF98;
	Thu, 13 Nov 2025 19:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3cD3WEC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23673236A8B;
	Thu, 13 Nov 2025 19:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062279; cv=none; b=Ugn52dS9LiLo0Z4G+ynhKUldp3Vc1OAtydGod4ejN2QiSb4h/2b0fKa0dmxYseIH7b0MqM23xvnWyUu5uZdfvaLNJjinGybGD4K4NUyKLI7sbhsnp6AaU2hDghF3DeAIKMzIlPc4Swyjch07Zmhlt2iv0c7jhBfeV9sSRW1ITX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062279; c=relaxed/simple;
	bh=4LVICd0KpfhD0Pzdd2wqpdM1EZwj2tq855mXd7HvhI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E9nJt8WOQqD+19zbY3HnOzW6nNwR2fzUlwD8rJ50nr/5zl+vaXjIaMhX4R3WZaYx25Hep3yxRFFClms8BUc8MDTY5m3BDz7e5zOOD5bt1LEWq5wwAH82ziUXAi3nf82ZddhmIHermtsin9AcX2Cwzz2qfuRvKqhoTg9IcBXyFUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3cD3WEC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34FF4C4CEF7;
	Thu, 13 Nov 2025 19:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763062278;
	bh=4LVICd0KpfhD0Pzdd2wqpdM1EZwj2tq855mXd7HvhI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c3cD3WECoEU3p+JUDQrpPxdRrwpS8HLDX3ypV2fdKSoXcGanMP0uBlSnskx7CLuI2
	 3cF1MyiLbt/wANFxAymHtkI/D9am1ChwYYMJWGSSKVcfrnJ9R5OvdLM6eLzwlT8Jj7
	 MlO6ekyWfeDRC0kZjDsLx/r7qSJn/OGZSc4KkhEYNT3ErW8xZzNC083RzQ1e5E2LaY
	 H8O0/g9uv767aCCzMm7F//Isw2qdUmv23Q18VFh2YwGvyIhv2apvgEbLOfUst5k9e2
	 Zicwd8itwzZBUssBoySUie1iY609vWNh/B+bulaEjyFRQeFJ3McBPRqmW4uLXCnVap
	 90p67wrlUKqnA==
Date: Thu, 13 Nov 2025 19:31:13 +0000
From: Conor Dooley <conor@kernel.org>
To: Yu-Chun Lin <eleanor.lin@realtek.com>
Cc: afaerber@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, lee@kernel.org, james.tai@realtek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cy.huang@realtek.com,
	stanley_chang@realtek.com
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: Add Realtek MISC system
 controller
Message-ID: <20251113-ritzy-excluding-e2067916896e@spud>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-3-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dsTS7ISgoTlpn0Pw"
Content-Disposition: inline
In-Reply-To: <20251113123009.26568-3-eleanor.lin@realtek.com>


--dsTS7ISgoTlpn0Pw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 08:30:08PM +0800, Yu-Chun Lin wrote:
> Add DT binding schema for Realtek system controller.
>=20
> Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> ---
>  .../devicetree/bindings/mfd/realtek,misc.yaml | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/realtek,misc.ya=
ml
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/realtek,misc.yaml b/Do=
cumentation/devicetree/bindings/mfd/realtek,misc.yaml
> new file mode 100644
> index 000000000000..4f4a9ae250be
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/realtek,misc.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/realtek,misc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek MISC System Controller
> +
> +description:
> +  The Realtek MISC System Controller is a register area that contains
> +  miscellaneous system registers for the SoC and serves as a parent node
> +  for other functions.
> +
> +maintainers:
> +  - James Tai <james.tai@realtek.com>
> +  - Yu-Chun Lin <eleanor.lin@realtek.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,misc

You need a soc-specific compatible. It's hard to believe that every
realtek device will have the exact same miscellaneous register region ;)

> +      - const: syscon
> +      - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +  ranges:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
> +patternProperties:
> +  "^serial@[0-9a-f]+$":
> +    type: object
> +    description: UART controllers inside MISC area

How many of these actually are there?
If they're always dw uarts, please add a reference to that schema.

pw-bot: changes-requested

> +
> +required:
> +  - compatible
> +  - reg
> +  - ranges
> +  - '#address-cells'
> +  - '#size-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    syscon@7000 {
> +        compatible =3D "realtek,misc", "syscon", "simple-mfd";
> +        reg =3D <0x7000 0x1000>;
> +        ranges =3D <0x0 0x7000 0x1000>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        uart0: serial@800 {
> +            compatible =3D "snps,dw-apb-uart";
> +            reg =3D <0x800 0x100>;
> +            clock-frequency =3D <432000000>;
> +            interrupts =3D <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> +            reg-io-width =3D <4>;
> +            reg-shift =3D <2>;
> +            status =3D "disabled";
> +        };
> +    };
> --=20
> 2.34.1
>=20

--dsTS7ISgoTlpn0Pw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRYyAQAKCRB4tDGHoIJi
0sgSAPkBwiptGwn86Ek/pm/Ba4xc+bKRJIdGKyrtJXrD9gKCAwEAiyjueLUkfRPc
m+DBjvBVNZdVUzIQ5KSvtJblfGLUqAw=
=75Qu
-----END PGP SIGNATURE-----

--dsTS7ISgoTlpn0Pw--

