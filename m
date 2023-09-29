Return-Path: <devicetree+bounces-4579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8867B331A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:10:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 21E9A28186E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFAD1A58E;
	Fri, 29 Sep 2023 13:10:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEE811737
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:10:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F2F8C433C7;
	Fri, 29 Sep 2023 13:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695993043;
	bh=5Ol5wAReAsTCoXnxR80HvvP42Eru4mOmS+P6qbZsgiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D6gSDAtnKEHECNEDsB6F3lZqPBFTgmdMExMCpOMwH34KXE5Zo8euVaVEa3LoxysTv
	 t8roJKvnCVdEYwUL0x/blP6u5li6gS2RusB0aYvWArLwq7t4yQtxdf/qWRd9Lcnh9S
	 qC5ffpyl4uFCbwBPfffvFa0+jidNj/axAQzPJmL9pRcWuEQ1A+awoQ1Q9uVtVyScGS
	 iy/xsHcU8yoH8/eOrKNzJSnEFe/RSfmF4jgj7yfe5VKAMwPQCSONoYLhLKd8FEgYIo
	 NKONdP7bPRj6UQUOJBtlBJR+iHxRy5F9yxvCHuptCVoi57k/Fx/AS+XOV1AqJ7p0Uv
	 79c3a+GYQv52g==
Date: Fri, 29 Sep 2023 14:10:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: pwm: Add T-HEAD PWM controller
Message-ID: <20230929-equipment-july-949cffaddc22@spud>
References: <20230928170254.413-1-jszhang@kernel.org>
 <20230928170254.413-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="G32AAMWduI7PPuPP"
Content-Disposition: inline
In-Reply-To: <20230928170254.413-2-jszhang@kernel.org>


--G32AAMWduI7PPuPP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Fri, Sep 29, 2023 at 01:02:53AM +0800, Jisheng Zhang wrote:
> T-HEAD SoCs such as the TH1520 contain a PWM controller used
> among other things to control the LCD backlight, fan and so on.

"such as", are there others?

>=20
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../devicetree/bindings/pwm/pwm-thead.yaml    | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-thead.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-thead.yaml b/Docum=
entation/devicetree/bindings/pwm/pwm-thead.yaml
> new file mode 100644
> index 000000000000..8a7cf7129321
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-thead.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-thead.yaml#

The filename etc should match the compatible, especially when afaict
there's only one applicable SoC.

Otherwise, this looks good to me.

Thanks,
Conor.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: T-HEAD PWM
> +
> +maintainers:
> +  - Jisheng Zhang <jszhang@kernel.org>
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - thead,th1520-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    pwm@ec01c000 {
> +        compatible =3D "thead,th1520-pwm";
> +        reg =3D <0xec01c000 0x1000>;
> +        clocks =3D <&clk 1>;
> +        #pwm-cells =3D <2>;
> +    };
> --=20
> 2.40.1
>=20

--G32AAMWduI7PPuPP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRbMzgAKCRB4tDGHoIJi
0jBTAP9bC/3fxKIett/RV53md9zbCAYSbpmA2h/aaFI/scbk7gD/Xgq9XvhDe+db
C1sCsh1BJQxISaGvnocyMU6nso6HMQ0=
=BboF
-----END PGP SIGNATURE-----

--G32AAMWduI7PPuPP--

