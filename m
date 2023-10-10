Return-Path: <devicetree+bounces-7336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E1C7C01A7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE152281D4C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A500385;
	Tue, 10 Oct 2023 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+eny5t4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8752FE13
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:31:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2458C433C8;
	Tue, 10 Oct 2023 16:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696955513;
	bh=k1lL82diLHKw/+zq5O/inoSt62xLZXJ0W/quVztpAvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M+eny5t4ZV3vWX1uJnUkUFGY8jS4yRaRAZXsfRHHAmuaZpnvPddE31NAuMh70OKV2
	 2OXMzFryotIDqpR7jYrPqo+MlmO8TsHuIJSfveUtnKubzlT5FpEdn9DaUgf/3J5aur
	 0P7qFCNIOOR0x0XOUqJaqUXQehvGJmZxhbIo247FhBRJ79aEUtZYokeHo3q6Vd6RQr
	 olRk9wKLy/404rQDql05auPtaqnYOI1wGNQuIEKw5nU+S1hi4//XWkWGaX3lSBg4/R
	 qNBoKwhVXH6vP29vlPKVy+/EkIYqtE3ygWvnlLCUKcvrKupQ0W/Nu4KztezrJco0lC
	 DweL500swo/eA==
Date: Tue, 10 Oct 2023 17:31:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 8/8] dt-bindings: display: Add SSD132x OLED controllers
Message-ID: <20231010-headache-hazard-834a3338c473@spud>
References: <20231009183522.543918-1-javierm@redhat.com>
 <20231009183522.543918-9-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nZTzSzTENfYlYUCo"
Content-Disposition: inline
In-Reply-To: <20231009183522.543918-9-javierm@redhat.com>


--nZTzSzTENfYlYUCo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Mon, Oct 09, 2023 at 08:34:22PM +0200, Javier Martinez Canillas wrote:
> Add a Device Tree binding schema for the OLED panels based on the Solomon
> SSD132x family of controllers.
>=20
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
>=20
>  .../bindings/display/solomon,ssd132x.yaml     | 116 ++++++++++++++++++
>  1 file changed, 116 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd=
132x.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.ya=
ml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> new file mode 100644
> index 000000000000..b64904703a3a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> @@ -0,0 +1,116 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/solomon,ssd132x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Solomon SSD132x OLED Controllers
> +
> +maintainers:
> +  - Javier Martinez Canillas <javierm@redhat.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - solomon,ssd1322
> +          - solomon,ssd1325
> +          - solomon,ssd1327

You don't need the oneOf here here as there is only the enum as a
possible item.
I didn't get anything else in the series, I have to ask - are these
controllers not compatible with eachother?

> +
> +  reg:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  # Only required for SPI
> +  dc-gpios:
> +    description:
> +      GPIO connected to the controller's D/C# (Data/Command) pin,
> +      that is needed for 4-wire SPI to tell the controller if the
> +      data sent is for a command register or the display data RAM
> +    maxItems: 1
> +
> +  solomon,height:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Height in pixel of the screen driven by the controller.
> +      The default value is controller-dependent.

You probably know better than me, operating in drm stuff, but are there
really no generic properties for the weidth/height of a display?

> +
> +  solomon,width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Width in pixel of the screen driven by the controller.
> +      The default value is controller-dependent.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: solomon,ssd1322
> +    then:
> +      properties:
> +        width:
> +          default: 480
> +        height:
> +          default: 128
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: solomon,ssd1325
> +    then:
> +      properties:
> +        width:
> +          default: 128
> +        height:
> +          default: 80
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: solomon,ssd1327
> +    then:
> +      properties:
> +        width:
> +          default: 128
> +        height:
> +          default: 128

Unless you did it like this for clarity, 2 of these have the same
default width and 2 have the same default height. You could cut this
down to a pair of if/then/else on that basis AFAICT.
:wq

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            ssd1327_i2c: oled@3c {

This label is unused as far as I can tell. Ditto below.

Cheers,
Conor.

> +                    compatible =3D "solomon,ssd1327";
> +                    reg =3D <0x3c>;
> +                    reset-gpios =3D <&gpio2 7>;
> +            };
> +
> +    };
> +  - |
> +    spi {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            ssd1327_spi: oled@0 {
> +                    compatible =3D "solomon,ssd1327";
> +                    reg =3D <0x0>;
> +                    reset-gpios =3D <&gpio2 7>;
> +                    dc-gpios =3D <&gpio2 8>;
> +                    spi-max-frequency =3D <10000000>;
> +            };
> +    };
> --=20
> 2.41.0
>=20
>=20

--nZTzSzTENfYlYUCo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSV8dAAKCRB4tDGHoIJi
0lOVAQCYh5XfAhpN2Ub0NBL13m3+H+VbFHZ4v6rRMM5HC7VcRwEA+j1MKNddmHvS
3nuSUc3lsv02CCEFfKljwpslWizh0As=
=4zyv
-----END PGP SIGNATURE-----

--nZTzSzTENfYlYUCo--

