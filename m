Return-Path: <devicetree+bounces-14846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AC47E7019
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 18:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 465DEB209AA
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 17:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D381E20B34;
	Thu,  9 Nov 2023 17:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahwpEWSR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E4D208D5
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 17:25:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D861C433C8;
	Thu,  9 Nov 2023 17:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699550703;
	bh=5lpxQ9QZpcq4MHwqEuxoeAoDZzPULQBYufhut1xfm98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ahwpEWSRbpXNk2xJBR4vrs1UbEHSY+ungKbNLz8JkEkrJPlBBzJeduq8yXf4XymDL
	 3egAXO675AUj0ySfLveZLJ/ZtsBEIeutDyd+fAejx+2t/vmkaTZvooU2TQKBipSLsJ
	 HI7o2XXdenWiJ1qYtS9ncIR5hwZILqD6YUIRUpbKxX1wPBP14hsj9+P97MjJy6ndng
	 RdMIDdzB67VTCj2qX4WFXGPLGDHsnxvD0O9a1845WrHaIWibd2fbq07Aoe9J7p2gPO
	 NtKekWg7puRL9b/TXD3qAA8rviJyCyPlluLnFfFHb/mTJEPjvhM8ywPqiI8h2aihP/
	 8w96gJqoi8EDw==
Date: Thu, 9 Nov 2023 17:24:57 +0000
From: Conor Dooley <conor@kernel.org>
To: Mehdi Djait <mehdi.djait@bootlin.com>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com, alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com, paul.kocialkowski@bootlin.com,
	michael.riesch@wolfvision.net
Subject: Re: [PATCH v10 1/3] media: dt-bindings: media: add bindings for
 Rockchip CIF
Message-ID: <20231109-closable-superglue-5e7f39739cf1@spud>
References: <cover.1699460637.git.mehdi.djait@bootlin.com>
 <037bcabf97294d37b271537e4b11fb88cf9bb6f6.1699460637.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="O1tsATRDNJs2XQ+S"
Content-Disposition: inline
In-Reply-To: <037bcabf97294d37b271537e4b11fb88cf9bb6f6.1699460637.git.mehdi.djait@bootlin.com>


--O1tsATRDNJs2XQ+S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 08, 2023 at 05:38:56PM +0100, Mehdi Djait wrote:
> Add a documentation for the Rockchip Camera Interface binding.
>=20
> the name of the file rk3066 is the first Rockchip SoC generation that use=
s cif
> instead of the px30 which is just one of the many iterations of the unit.

I think this is becoming ridiculous. You've now removed the compatible
for the rk3066 but kept it in the filename. I don't understand the
hangup about naming the file after the px30-vip, but naming it after
something that is not documented here at all makes no sense to me.
Either document the rk3066 properly, or remove all mention of it IMO.

Cheers,
Conor.

>=20
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> ---
>  .../bindings/media/rockchip,rk3066-cif.yaml   | 94 +++++++++++++++++++
>  1 file changed, 94 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,rk30=
66-cif.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3066-cif.=
yaml b/Documentation/devicetree/bindings/media/rockchip,rk3066-cif.yaml
> new file mode 100644
> index 000000000000..c3a5cd2baf71
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3066-cif.yaml
> @@ -0,0 +1,94 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,rk3066-cif.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip CIF Camera Interface
> +
> +maintainers:
> +  - Mehdi Djait <mehdi.djait@bootlin.com>
> +
> +description:
> +  CIF is a camera interface present on some rockchip SoCs. It receives t=
he data
> +  from Camera sensor or CCIR656 encoder and transfers it into system mai=
n memory
> +  by AXI bus.
> +
> +properties:
> +  compatible:
> +    const: rockchip,px30-vip
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: PCLK
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: pclk
> +
> +  resets:
> +    items:
> +      - description: AXI
> +      - description: AHB
> +      - description: PCLK IN
> +
> +  reset-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: pclkin
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description: A connection to a sensor or decoder
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/px30-cru.h>
> +    #include <dt-bindings/power/px30-power.h>
> +
> +    parent {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        video-capture@ff490000 {
> +            compatible =3D "rockchip,px30-vip";
> +            reg =3D <0x0 0xff490000 0x0 0x200>;
> +            interrupts =3D <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks =3D <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
> +            clock-names =3D "aclk", "hclk", "pclk";
> +            resets =3D <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_=
CIF_PCLKIN>;
> +            reset-names =3D "axi", "ahb", "pclkin";
> +            power-domains =3D <&power PX30_PD_VI>;
> +
> +            port {
> +                endpoint {
> +                    remote-endpoint =3D <&tw9900_out>;
> +                };
> +            };
> +        };
> +    };
> +...
> --=20
> 2.41.0
>=20

--O1tsATRDNJs2XQ+S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZU0V6QAKCRB4tDGHoIJi
0tIVAQCnznf8ilvNDYfcTWkh/NYq14MqMEXMy175sMtbTlLBZgEA0MpYtcUZwsoQ
SgVP2XghmtqSpdg89Vi7kk6D6AmmiA0=
=NqA3
-----END PGP SIGNATURE-----

--O1tsATRDNJs2XQ+S--

