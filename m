Return-Path: <devicetree+bounces-4405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3167B26B4
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 22:39:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 49AB0B209C5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439889CA52;
	Thu, 28 Sep 2023 20:39:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3086F15BA;
	Thu, 28 Sep 2023 20:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00D00C433C8;
	Thu, 28 Sep 2023 20:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695933550;
	bh=xINXDKcTe6ijRIqT/PemFdRIVgJJnLG488c56JbijgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iwGeJcBnI4vzd0lgEzuKqStNzmqnNABTX3xmghorXxnqzGNG6fOsKS0yoXIjFGHX8
	 hoRJRFEQau+i9BA8D5FUzu0TlSKY/OJeMI4mxDGOYphFOnFGBLTJu3z62TJkdw7M8o
	 sBnzZaGl5t+KCMwnxVfd4WVh0oH0myH1whk9T9wT6uBC38H5H+dL5oJtYA+8HvsYIc
	 7f7mWXomZ4TwjnMJRUYY5JQibY7xFJlsyh5Yvw0G2JVxXnbk36zYjIO0Jl0znRPkG5
	 8TgGEbUNYa62BWEKEBKY6JSM1w1j7x//N1I9tPJOhBgtzgsEyqKrAEs/rWAlPwIXQ8
	 OERuE5KGkNnXQ==
Date: Thu, 28 Sep 2023 21:39:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Christophe Roullier <christophe.roullier@foss.st.com>
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 01/12] dt-bindings: net: add STM32MP13 compatible in
 documentation for stm32
Message-ID: <20230928-footwork-padlock-524173c3e205@spud>
References: <20230928151512.322016-1-christophe.roullier@foss.st.com>
 <20230928151512.322016-2-christophe.roullier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8U54nw6WVDXbYGlQ"
Content-Disposition: inline
In-Reply-To: <20230928151512.322016-2-christophe.roullier@foss.st.com>


--8U54nw6WVDXbYGlQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Thu, Sep 28, 2023 at 05:15:01PM +0200, Christophe Roullier wrote:
> New STM32 SOC have 2 GMACs instances.
> GMAC IP version is SNPS 4.20.
>=20
> Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
> ---
>  .../devicetree/bindings/net/stm32-dwmac.yaml  | 78 +++++++++++++++++--
>  1 file changed, 70 insertions(+), 8 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Doc=
umentation/devicetree/bindings/net/stm32-dwmac.yaml
> index fc8c96b08d7dc..ca976281bfc22 100644
> --- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> @@ -22,18 +22,17 @@ select:
>          enum:
>            - st,stm32-dwmac
>            - st,stm32mp1-dwmac
> +          - st,stm32mp13-dwmac
>    required:
>      - compatible
> =20
> -allOf:
> -  - $ref: snps,dwmac.yaml#
> -
>  properties:
>    compatible:
>      oneOf:
>        - items:
>            - enum:
>                - st,stm32mp1-dwmac
> +              - st,stm32mp13-dwmac
>            - const: snps,dwmac-4.20a
>        - items:
>            - enum:
> @@ -74,13 +73,10 @@ properties:
> =20
>    st,syscon:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
> -    items:
> -      - items:
> -          - description: phandle to the syscon node which encompases the=
 glue register
> -          - description: offset of the control register
>      description:
>        Should be phandle/offset pair. The phandle to the syscon node which
> -      encompases the glue register, and the offset of the control regist=
er
> +      encompases the glue register, the offset of the control register a=
nd
> +      the mask to set bitfield in control register
> =20
>    st,eth-clk-sel:
>      description:
> @@ -101,6 +97,38 @@ required:
> =20
>  unevaluatedProperties: false
> =20
> +allOf:
> +  - $ref: snps,dwmac.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - st,stm32mp1-dwmac
> +              - st,stm32-dwmac
> +    then:
> +      properties:
> +        st,syscon:
> +          items:
> +            items:
> +              - description: phandle to the syscon node which encompases=
 the glue register
> +              - description: offset of the control register

These descriptions should, IMO, be moved back out to the st,syscon
definition. If you put the 3 descriptions there, with "minItems: 2" &
put "maxItems: 2" and "minItems: 3" in each of the if/then clauses.
Also, it should be sufficient to simplify to if/then/else.

Cheers,
Conor.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - st,stm32mp13-dwmac
> +    then:
> +      properties:
> +        st,syscon:
> +          items:
> +            items:
> +              - description: phandle to the syscon node which encompases=
 the glue register
> +              - description: offset of the control register
> +              - description: field to set mask in register
> +
>  examples:
>    - |
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -161,3 +189,37 @@ examples:
>             snps,pbl =3D <8>;
>             phy-mode =3D "mii";
>         };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    #include <dt-bindings/mfd/stm32h7-rcc.h>
> +    //Example 4
> +     ethernet3: ethernet@5800a000 {
> +           compatible =3D "st,stm32mp13-dwmac", "snps,dwmac-4.20a";
> +           reg =3D <0x5800a000 0x2000>;
> +           reg-names =3D "stmmaceth";
> +           interrupts-extended =3D <&intc GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH=
>,
> +                                 <&exti 68 IRQ_TYPE_LEVEL_HIGH>;
> +           interrupt-names =3D "macirq",
> +                             "eth_wake_irq";
> +           clock-names =3D "stmmaceth",
> +                         "mac-clk-tx",
> +                         "mac-clk-rx",
> +                         "eth-ck",
> +                         "ptp_ref",
> +                         "ethstp";
> +           clocks =3D <&rcc ETHMAC>,
> +                    <&rcc ETHTX>,
> +                    <&rcc ETHRX>,
> +                    <&rcc ETHCK_K>,
> +                    <&rcc ETHPTP_K>,
> +                    <&rcc ETHSTP>;
> +           st,syscon =3D <&syscfg 0x4 0xff0000>;
> +           snps,mixed-burst;
> +           snps,pbl =3D <2>;
> +           snps,axi-config =3D <&stmmac_axi_config_1>;
> +           snps,tso;
> +           phy-mode =3D "rmii";
> +     };
> --=20
> 2.25.1
>=20

--8U54nw6WVDXbYGlQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRXkaAAKCRB4tDGHoIJi
0opWAP9JSnWhMjiIcX6Vc/XK2po8UfJBgrzDdpbxtFfTG/BmvwEA3JncB06h6fKE
ThgDVUqVEGxr4yKfVfIj32yBSVdxXwU=
=awMY
-----END PGP SIGNATURE-----

--8U54nw6WVDXbYGlQ--

