Return-Path: <devicetree+bounces-4361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9297B22A2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B085C282739
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5339A3CD1C;
	Thu, 28 Sep 2023 16:42:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442D83419B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:42:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E5FC433C8;
	Thu, 28 Sep 2023 16:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695919331;
	bh=qCX4gA2PsLjQ0wAJrV2FeY8uzZUcTL/digHji8eRu2Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qA8dJHD3pA2oSwrBuEB1IFGDqarqGfklc/qZnEqesYYBF4awy/TDHyg05c2BIximd
	 PsXZC8qmrRdk5WT9sEBXLKvYinYgKfAl0IiFKJj/cyXDlETOwUH5LvFmWIU7yIvuBD
	 giK8pdKNnrhoajWBcVmtEFYxvTmcd4+YjhYT3iuuboAI2Lz/p5hFhj4dEYX3+a5koa
	 71P40nW97MyWNB31mLOJwIFvY4NqXXza2xquYaYh4zmB6YXGERAhT8b9tfMYBgEagg
	 hupJoKiKoRzztflm76vCgibANO00Jrru9xJc7ZHnsKXjCWLUd2mcCjbM3Z65uUb0X/
	 uyl1RlGIRqw+w==
Date: Thu, 28 Sep 2023 17:42:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Keguang Zhang <keguang.zhang@gmail.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: dma: Add Loongson-1 DMA
Message-ID: <20230928-capacity-husked-305f03680834@spud>
References: <20230928121953.524608-1-keguang.zhang@gmail.com>
 <20230928121953.524608-2-keguang.zhang@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HKEqshMTTSkwIe4P"
Content-Disposition: inline
In-Reply-To: <20230928121953.524608-2-keguang.zhang@gmail.com>


--HKEqshMTTSkwIe4P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Thu, Sep 28, 2023 at 08:19:52PM +0800, Keguang Zhang wrote:
> Add devicetree binding document for Loongson-1 DMA.
>=20
> Signed-off-by: Keguang Zhang <keguang.zhang@gmail.com>
> ---
> V4 -> V5:
>    A newly added patch
>=20
>  .../bindings/dma/loongson,ls1x-dma.yaml       | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/loongson,ls1x-d=
ma.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/dma/loongson,ls1x-dma.yaml=
 b/Documentation/devicetree/bindings/dma/loongson,ls1x-dma.yaml
> new file mode 100644
> index 000000000000..51b45d998a58
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/loongson,ls1x-dma.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/loongson,ls1x-dma.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson-1 DMA Controller
> +
> +maintainers:
> +  - Keguang Zhang <keguang.zhang@gmail.com>
> +
> +description: |

This | isn't required as you have no formatting to preserve here.

> +  Loongson-1 DMA controller provides 3 independent channels for
> +  peripherals such as NAND and AC97.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - loongson,ls1b-dma
> +      - loongson,ls1c-dma

=46rom a skim of the driver, these two devices seem to be compatible,
and therefore one should fall back to the other.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: Each channel has a dedicated interrupt line.
> +    minItems: 1
> +    maxItems: 3
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - pattern: ch0
> +      - pattern: ch1
> +      - pattern: ch2
> +
> +  '#dma-cells':
> +    description: The single cell represents the channel index.

This description is unnecessary.

> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - '#dma-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    dma: dma-controller@1fd01160 {

This label is unused.

> +        compatible =3D "loongson,ls1b-dma";
> +        reg =3D <0x1fd01160 0x18>;
> +
> +        interrupt-parent =3D <&intc0>;
> +        interrupts =3D <13 IRQ_TYPE_EDGE_RISING>,
> +        	     <14 IRQ_TYPE_EDGE_RISING>,
> +        	     <15 IRQ_TYPE_EDGE_RISING>;

Odd mixed indentation here. Bindings use spaces only.

Thanks,
Conor.

> +        interrupt-names =3D "ch0", "ch1", "ch2";
> +
> +        #dma-cells =3D <1>;
> +    };
> --=20
> 2.39.2
>=20

--HKEqshMTTSkwIe4P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRWs3wAKCRB4tDGHoIJi
0tqYAP0RZqPjF92eW6rchIJ+lDqLH3DT00cvGFjxw2cv0XjxOwEA8O86J4S7Z3Va
D+6Q7oeLGhBVVyusz4P2DyhKDk4FOgI=
=SXJF
-----END PGP SIGNATURE-----

--HKEqshMTTSkwIe4P--

