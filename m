Return-Path: <devicetree+bounces-12482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3F37D9AAE
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26A2B1C20E9B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC83358AD;
	Fri, 27 Oct 2023 14:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6qs5A2I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F49B1DDD7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:03:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC91AC433C8;
	Fri, 27 Oct 2023 14:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698415395;
	bh=I8Lf1lGqEIBiRLLQKY+WAnwAUTOu+8uX5WfQ5AedY3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n6qs5A2IS8RYWjkZkmBdOFmRpzRDPB4vGqqJNRgnXGIwr90Z77tdwFfC6PPsP6N+P
	 AsUBtmX/jZFnaed61069Xbm1DBc5RlKrvqJFOnjSaUwU185VsBEgW1OI8zCPIDHooP
	 rLEP9pnL5HTE2fo2nOwDroZEOj+oivRU9/3lUNhIiNEt6FSVItekn6hwDbKzR/HrIM
	 rXuXfwK3wYqrTgOtB2P9HfYR9yqBSVMA4nHzXS2fW9m/i7NDfXkUf+UJuWLX7Bs+3w
	 EJpijWkb4VZKW0S0pb+ukZaxCDd1osapre6lYpnvK6eQs7wDzJ62ltSuOeBh3u/gPM
	 /70zy5P2bVLtA==
Date: Fri, 27 Oct 2023 15:03:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Huqiang Qin <huqiang.qin@amlogic.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/3] dt-bindings: watchdog: Add support for Amlogic C3
 and S4 SoCs
Message-ID: <20231027-dandy-remote-7cdbb721f95c@spud>
References: <20231027104358.342861-1-huqiang.qin@amlogic.com>
 <20231027104358.342861-2-huqiang.qin@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oM/wQgfGbne7U64P"
Content-Disposition: inline
In-Reply-To: <20231027104358.342861-2-huqiang.qin@amlogic.com>


--oM/wQgfGbne7U64P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 06:43:56PM +0800, Huqiang Qin wrote:
> Update dt-binding document for watchdog of Amlogic C3 and S4 SoCs.
>=20
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/watchdog/amlogic,meson-gxbb-wdt.yaml    | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxb=
b-wdt.yaml b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-=
wdt.yaml
> index 443e2e7ab467..69845ec32e81 100644
> --- a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.y=
aml
> +++ b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.y=
aml
> @@ -15,9 +15,15 @@ allOf:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - amlogic,meson-gxbb-wdt
> -      - amlogic,t7-wdt
> +    oneOf:
> +      - enum:
> +          - amlogic,meson-gxbb-wdt
> +          - amlogic,t7-wdt
> +      - items:
> +          - enum:
> +              - amlogic,c3-wdt
> +              - amlogic,s4-wdt
> +          - const: amlogic,t7-wdt
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.42.0
>=20
>=20

--oM/wQgfGbne7U64P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTvDHgAKCRB4tDGHoIJi
0qcvAP9SGLIcv30IzHPU1l4xfEzLR3YQ9/vjV8fAu2jJcj0fDwEAm6Yhi73ZKy1E
vjagBd0uQzS1m25Urmv+KT1LmSVVKQY=
=qbQP
-----END PGP SIGNATURE-----

--oM/wQgfGbne7U64P--

