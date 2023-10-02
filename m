Return-Path: <devicetree+bounces-5253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 715C57B5B41
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:28:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C8763B20B33
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258C51F939;
	Mon,  2 Oct 2023 19:28:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BE215BD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:28:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68EE2C433C8;
	Mon,  2 Oct 2023 19:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274913;
	bh=DTzvUs0KqeAyeGZdDVyKaq81DLkJ0Wi12W8H+fLzRaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mTCg/LoAQIWzMEcNBiQE3bqpot0aKuijy6y3hhtsTP39ys8Rwn/9kCxVJ7ScY/s5q
	 p5nwVXzvEP8J87qlAfTWxSxn9hWzbmsbEbgkVhyDF+pI8AYHgN8aJYaZ9ZcgLVRq3G
	 HTU2NU//2/XcI2Jw8mGGYuCflfJXUZ6UgWWb2lt+ATGUpaHW/jz32NvV1wfbhPghSc
	 NdTE/nPXlof1lqKW0Sth9jGSwRC62NbZS9A3mKeIka6tgTTlrATQxwTg7HrsoKVkYR
	 ZX8SU8wd/Jx1g66GLLL8qz6ONEN0Viaxsk6NsHU/REuC7SKelc0tbh2/dWsVZJ/98e
	 TtMPrVbGEn6vg==
Date: Mon, 2 Oct 2023 20:28:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add libretech cottonwood
 support
Message-ID: <20231002-confront-footsore-f56df1d5781f@spud>
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-2-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SimhZxifrGJHd/f/"
Content-Disposition: inline
In-Reply-To: <20231002141020.2403652-2-jbrunet@baylibre.com>


--SimhZxifrGJHd/f/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 04:10:19PM +0200, Jerome Brunet wrote:
> Add compatibles for the Libretech cottonwood board family
>=20
> Co-developed-by: Da Xue <da.xue@libretech.co>
> Signed-off-by: Da Xue <da.xue@libretech.co>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documen=
tation/devicetree/bindings/arm/amlogic.yaml
> index b7b0eda4164a..caab7ceeda45 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -155,6 +155,7 @@ properties:
>            - enum:
>                - bananapi,bpi-m2s
>                - khadas,vim3
> +              - libretech,aml-a311d-cc
>                - radxa,zero2
>            - const: amlogic,a311d
>            - const: amlogic,g12b
> @@ -196,6 +197,7 @@ properties:
>                - hardkernel,odroid-hc4
>                - haochuangyi,h96-max
>                - khadas,vim3l
> +              - libretech,aml-s905d3-cc
>                - seirobotics,sei610
>            - const: amlogic,sm1
> =20
> --=20
> 2.40.1
>=20

--SimhZxifrGJHd/f/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRsZ3QAKCRB4tDGHoIJi
0k1tAQCChJTIKr2OLLOiqbTzALOY6K7cO7F4Z1lKtxnGAyKePwD/U3Dkqeb0+IJA
R/7fMwjIzviUEVaOQCLLHG1V9kDEKg8=
=MQQl
-----END PGP SIGNATURE-----

--SimhZxifrGJHd/f/--

