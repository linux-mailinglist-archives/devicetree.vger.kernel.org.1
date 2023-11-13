Return-Path: <devicetree+bounces-15378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 539CD7E9DBC
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6254E1C209EE
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F3520B0B;
	Mon, 13 Nov 2023 13:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XR3Igvnn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29AD200BF
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:48:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14389C433C7;
	Mon, 13 Nov 2023 13:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883294;
	bh=S+BII0lE1mTZkmkOFjntV8LOWnLbudBzFyYaS2jB4XU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XR3IgvnnOYiqaaGsI0hcnNhaEOQ/IWRlGbgqV4v7ZUOZIgyGAYV+llMhsQenXOo5p
	 LcsXh1qXDQXgJsjqS0jMw0t13TaFzEG5xhlRz9aV+1FqiCy6IsW3LV6on4Xlf2gvL+
	 lelK22BMDOMa/z/ix/HF9jvOCaKv6UpFcp6u4yAqHQbWQJ2Q3O4q5Gk+mcx7UmY4S2
	 ZAppf8cS7R+aO6kgk4z2VBTQBsA3f8xFA+GBAusgbm6oXUpdOhuck8QPle9jJimTUR
	 fTb59lSeGTyVzBPwk9wPgHGYfXUaDvSEuFJrCvPHtvWD+DuKjhwl0CakdS6Ifsl6aw
	 LjVUZCvKV07yw==
Date: Mon, 13 Nov 2023 13:48:11 +0000
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
Subject: Re: [PATCH 1/5] dt-bindings: gpu: samsung-rotator: drop redundant
 quotes
Message-ID: <20231113-overlying-blinker-55125b473d03@squawk>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r+qbcDb3ot55ZKTs"
Content-Disposition: inline
In-Reply-To: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>


--r+qbcDb3ot55ZKTs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 12, 2023 at 07:43:59PM +0100, Krzysztof Kozlowski wrote:
> Compatibles should not use quotes in the bindings.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers=E2=80=A6
Conor.

> ---
>  .../devicetree/bindings/gpu/samsung-rotator.yaml         | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml b=
/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
> index d60626ffb28e..18bf44e06e8f 100644
> --- a/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
> +++ b/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
> @@ -12,10 +12,11 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> -      - "samsung,s5pv210-rotator"
> -      - "samsung,exynos4210-rotator"
> -      - "samsung,exynos4212-rotator"
> -      - "samsung,exynos5250-rotator"
> +      - samsung,s5pv210-rotator
> +      - samsung,exynos4210-rotator
> +      - samsung,exynos4212-rotator
> +      - samsung,exynos5250-rotator
> +
>    reg:
>      maxItems: 1
> =20
> --=20
> 2.34.1
>=20

--r+qbcDb3ot55ZKTs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIpGAAKCRB4tDGHoIJi
0pYSAPwObE5o/3/P32x9ua+T+1BFXrWkjWksiMViZJ+U1sEOHwEAnQHFAy7VIMEV
1wmGpuEzv/hkm8lvFkeliASQI7ttYgg=
=dAYP
-----END PGP SIGNATURE-----

--r+qbcDb3ot55ZKTs--

