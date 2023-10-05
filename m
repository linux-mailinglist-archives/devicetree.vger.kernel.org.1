Return-Path: <devicetree+bounces-6064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9450C7B9C89
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4BFBD281A99
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DB910786;
	Thu,  5 Oct 2023 10:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY0lOBAN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63EA8821
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:41:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5929C3277D;
	Thu,  5 Oct 2023 10:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696502472;
	bh=H7QsAgn7LBwCWmNPERn7PZ2ivqiRzZN2vcLos6zUMnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TY0lOBANpSJ4TxeMou7VuKThItJptvQjXX0Y0Xu3mm8YmwEPszlJJ/MErAikK+n+i
	 6RDZ256+EU1mMXcXp+m0dIfqL0OhbR2Kl4eSWJZGU/vt4mQLO2voPdAxoPvhU3Xt5L
	 1Hr2NsE2qLzE5QIYoRf5V/Y5ZEtMkoiLYz5xxe5Jf3GWZ4EKntLhjh579aBa2g4mHV
	 cS6078ZODgR38pDzNZBBxUF05eOIKvqcKLTjWxGoG7VC8UvTIDaE2KMl7FuGA+dxGL
	 R02VNMyywG036Phd8x3Hzc+UGj+99bvQBe9Ro+c5p2xcrAbgGU+zo+LRkbIOw5yR7f
	 NLNUy1TO7x6fg==
Date: Thu, 5 Oct 2023 11:41:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Cosmin Tanislav <cosmin.tanislav@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: add missing reset-gpios constrain
Message-ID: <20231005-thrift-backer-d2f58a1bd441@spud>
References: <20231005083650.92222-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IP8sdSnYW24Jv8+L"
Content-Disposition: inline
In-Reply-To: <20231005083650.92222-1-krzysztof.kozlowski@linaro.org>


--IP8sdSnYW24Jv8+L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 05, 2023 at 10:36:50AM +0200, Krzysztof Kozlowski wrote:
> The Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
> schema does not enforce number of reset GPIOs, thus each device binding
> must do it.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml | 3 ++-
>  Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml    | 3 ++-
>  Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml | 3 ++-
>  Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml | 3 ++-
>  4 files changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml=
 b/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
> index 2594fa192f93..2a04906531fb 100644
> --- a/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
> +++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
> @@ -32,7 +32,8 @@ properties:
> =20
>    spi-cpol: true
> =20
> -  reset-gpios: true
> +  reset-gpios:
> +    maxItems: 1
> =20
>    interrupts:
>      minItems: 1
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml
> index 4e508bfcc9d8..5121685337b5 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml
> @@ -78,7 +78,8 @@ properties:
>            - const: -1000
>            - const: 22000
> =20
> -  reset-gpios: true
> +  reset-gpios:
> +    maxItems: 1
> =20
>    adi,dc-dc-ilim-microamp:
>      enum: [150000, 200000, 250000, 300000, 350000, 400000]
> diff --git a/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml=
 b/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml
> index b9b5beac33b2..5b6cde86b5a5 100644
> --- a/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml
> +++ b/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml
> @@ -23,7 +23,8 @@ properties:
>      maxItems: 1
>      description: Connected to ADC_RDY pin.
> =20
> -  reset-gpios: true
> +  reset-gpios:
> +    maxItems: 1
> =20
>  required:
>    - compatible
> diff --git a/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml=
 b/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml
> index 2958c4ca75b4..167d10bd60af 100644
> --- a/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml
> +++ b/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml
> @@ -23,7 +23,8 @@ properties:
>      maxItems: 1
>      description: Connected to ADC_RDY pin.
> =20
> -  reset-gpios: true
> +  reset-gpios:
> +    maxItems: 1
> =20
>  additionalProperties: false
> =20
> --=20
> 2.34.1
>=20

--IP8sdSnYW24Jv8+L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR6SwwAKCRB4tDGHoIJi
0gJnAQCE6henlUKuR+rKeIPonoiRNWu9XupZ7JL5eHFos8uHxgEAsfvRvMaMcYu6
ZlvDaY0cp2AXNAKJL00y4ydHUa3tSgM=
=Kzfj
-----END PGP SIGNATURE-----

--IP8sdSnYW24Jv8+L--

