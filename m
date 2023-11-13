Return-Path: <devicetree+bounces-15382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 497FA7E9DCD
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01D2628097E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8646208CE;
	Mon, 13 Nov 2023 13:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBcX2G4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E68208A8
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:50:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBB04C433C7;
	Mon, 13 Nov 2023 13:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883450;
	bh=WwbCN114QiP0MlzJD2sfEH3eE1j43I2qgLo7i+dL0oM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pBcX2G4QpFuzkUw+JPFg6UnLmIlTopw4x8DNRWIOX1NLF6olH5z/k6PoX/+bJKR/F
	 tV1xtPVI2+fXG7Pv1NzDzVt9fb/vbF8GfCXvgG6FRXK9OHjk8XBtFt7QuXpwqjuFaj
	 J0qQ3sHlhc2jGPbGiUcLgsdxP+tLl04HRs173VPI3KCtUZrpIQbEk0FsxMRtQ/7uPd
	 FZMHD3UdOUyauWqFoDtkHQyMAzwFXwEK8H2NrV47w3mJ9tl2tj12TFYZOg9NhMxLcl
	 r6V7LC5Za/wHKjMKhp0N43PV090Va8UG5JcytghrWM8fF0sd42fY3jyNIJC5nXmLTr
	 Jiq5SRm6kjp0A==
Date: Mon, 13 Nov 2023 13:50:47 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Inki Dae <inki.dae@samsung.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: gpu: samsung: re-order entries to match
 coding convention
Message-ID: <20231113-tweet-batboy-c2867f2ceeee@squawk>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
 <20231112184403.3449-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YTvCgQf37/RkS4VO"
Content-Disposition: inline
In-Reply-To: <20231112184403.3449-2-krzysztof.kozlowski@linaro.org>


--YTvCgQf37/RkS4VO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 12, 2023 at 07:44:00PM +0100, Krzysztof Kozlowski wrote:
> The Devicetree bindings coding convention, as used in most of the files
> and expressed in Documentation/devicetree/bindings/example-schema.yaml,
> expects "allOf:" block with if-statements after "required:" block.
>=20
> Re-order few schemas to match the convention to avoid repeating review
> comments for new patches using existing code as template.  No functional
> changes.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

thanks,
Conor,

> ---
>  .../devicetree/bindings/gpu/samsung-g2d.yaml  | 53 +++++++++--------
>  .../bindings/gpu/samsung-scaler.yaml          | 59 +++++++++----------
>  2 files changed, 56 insertions(+), 56 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml b/Doc=
umentation/devicetree/bindings/gpu/samsung-g2d.yaml
> index e7daae862578..b6951acc7643 100644
> --- a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
> @@ -27,32 +27,6 @@ properties:
>    iommus: {}
>    power-domains: {}
> =20
> -if:
> -  properties:
> -    compatible:
> -      contains:
> -        const: samsung,exynos5250-g2d
> -
> -then:
> -  properties:
> -    clocks:
> -      items:
> -        - description: fimg2d clock
> -    clock-names:
> -      items:
> -        - const: fimg2d
> -
> -else:
> -  properties:
> -    clocks:
> -      items:
> -        - description: sclk_fimg2d clock
> -        - description: fimg2d clock
> -    clock-names:
> -      items:
> -        - const: sclk_fimg2d
> -        - const: fimg2d
> -
>  required:
>    - compatible
>    - reg
> @@ -60,6 +34,33 @@ required:
>    - clocks
>    - clock-names
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: samsung,exynos5250-g2d
> +
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: fimg2d clock
> +        clock-names:
> +          items:
> +            - const: fimg2d
> +
> +    else:
> +      properties:
> +        clocks:
> +          items:
> +            - description: sclk_fimg2d clock
> +            - description: fimg2d clock
> +        clock-names:
> +          items:
> +            - const: sclk_fimg2d
> +            - const: fimg2d
> +
>  additionalProperties: false
> =20
>  examples:
> diff --git a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml b/=
Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
> index 5317ac64426a..97d86a002a90 100644
> --- a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
> +++ b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
> @@ -26,36 +26,6 @@ properties:
>    iommus: {}
>    power-domains: {}
> =20
> -if:
> -  properties:
> -    compatible:
> -      contains:
> -        const: samsung,exynos5420-scaler
> -
> -then:
> -  properties:
> -    clocks:
> -      items:
> -        - description: mscl clock
> -
> -    clock-names:
> -      items:
> -        - const: mscl
> -
> -else:
> -  properties:
> -    clocks:
> -      items:
> -        - description: pclk clock
> -        - description: aclk clock
> -        - description: aclk_xiu clock
> -
> -    clock-names:
> -      items:
> -        - const: pclk
> -        - const: aclk
> -        - const: aclk_xiu
> -
>  required:
>    - compatible
>    - reg
> @@ -63,6 +33,35 @@ required:
>    - clocks
>    - clock-names
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: samsung,exynos5420-scaler
> +
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: mscl clock
> +        clock-names:
> +          items:
> +            - const: mscl
> +
> +    else:
> +      properties:
> +        clocks:
> +          items:
> +            - description: pclk clock
> +            - description: aclk clock
> +            - description: aclk_xiu clock
> +        clock-names:
> +          items:
> +            - const: pclk
> +            - const: aclk
> +            - const: aclk_xiu
> +
>  additionalProperties: false
> =20
>  examples:
> --=20
> 2.34.1
>=20

--YTvCgQf37/RkS4VO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIpswAKCRB4tDGHoIJi
0hmMAP93B7Y0eOqTKSYR5l7ofAt+w3rJUe42+UR2t2Y79C3dBgD+OJWQvdiQaVVX
vWFPGy2vuZOGzCeK7ttAqRIvXZ+3WgM=
=VtkS
-----END PGP SIGNATURE-----

--YTvCgQf37/RkS4VO--

