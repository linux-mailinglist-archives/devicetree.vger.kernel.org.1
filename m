Return-Path: <devicetree+bounces-78714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D17913394
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 13:56:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FD601F220DC
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 11:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CA06153828;
	Sat, 22 Jun 2024 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr97E3is"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A2614C591
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719057370; cv=none; b=PIulaGxeHKt2cJqSi/n7JIGh1bEfFR+SNRdvigNyp0Zv/IXPoI5hZj+PjeHUlF0+VI0mxIcS4o+V1RjyhCwMtPHDNn2CXITmGv6OVxNHh7TOuW/QOmlBoWEE0E4VJbwuFRr4JFqbcjz2OkUE4OH6l5zR8GGKOMXtIZgmeNMWeyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719057370; c=relaxed/simple;
	bh=bEzn6fXDFwVpMlYuR07RzmqbdZcLx51KhVBOIz45SmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VsOfgvW06IlBSoZc5Bs67YH5S/rjpZPuUz8Ms2gFHTI9/lgfmTNoSnMILQX/Ge4CTxDFxSIjASsImFY9/5NDocu5p/jk+lyfwjhH94TB6S7zpd982A5acOMWM2zpzYtRqHQ8LHMy6yYmX+3qv/xzLPCFp2WhKwLXx7E6lIY08qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr97E3is; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59034C3277B;
	Sat, 22 Jun 2024 11:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719057369;
	bh=bEzn6fXDFwVpMlYuR07RzmqbdZcLx51KhVBOIz45SmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nr97E3isvn0cQYtepeO0r+f6dJYJQ/ba8/5xu8lrvb0Mh/PVl5930Km6YAkEmRTju
	 nSce5/u9G36ZsueZhXZrOWTEKT1Gwhzjjw/T5QVcw6vbG8h6Y2dItc7EQ75NkTgBFu
	 uU57zUgxqVboQ7qDQeDppU4kf8UECX596bz9D95vBsJJDbb9npxSFNNZCEF+ObJAvn
	 MLW5pn8YmAFwIRUEdwLKfidQOwSEjpNaLo7KOSgIB3iXFf2kjt976rj5b046w4aCaf
	 qtbeAoSCtM5hDRRWyzOOPqtiyzOFG9wK78Xgwehf5LLsJItjFwNsS1RNND+yAJ4j68
	 Zcnzw+1wIjl4w==
Date: Sat, 22 Jun 2024 12:56:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
Message-ID: <20240622-ruse-stock-2c2b8d0b1cfb@spud>
References: <20240621155430.92894-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/FRKGiZx/KRqGQiy"
Content-Disposition: inline
In-Reply-To: <20240621155430.92894-1-marex@denx.de>


--/FRKGiZx/KRqGQiy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 05:53:53PM +0200, Marek Vasut wrote:
> Document default DP port preemphasis configurable via new DT property
> "toshiba,pre-emphasis". This is useful in case the DP link properties
> are known and starting link training from preemphasis setting of 0 dB
> is not useful. The preemphasis can be set separately for both DP lanes
> in range 0=3D0dB, 1=3D3.5dB, 2=3D6dB .
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: kernel@dh-electronics.com
> ---
> V2: - Fix the type to u8 array
>     - Fix the enum items to match what they represent
> ---
>  .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc3=
58767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358=
767.yaml
> index 2ad0cd6dd49e0..6287eb2b40908 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.y=
aml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.y=
aml
> @@ -98,6 +98,24 @@ properties:
>              reference to a valid eDP panel input endpoint node. This por=
t is
>              optional, treated as DP panel if not defined
> =20
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              toshiba,pre-emphasis:
> +                description:
> +                  Display port output Pre-Emphasis settings for both por=
ts.

Why here and not in the port nodes?

> +                $ref: /schemas/types.yaml#/definitions/uint8-array
> +                minItems: 2
> +                maxItems: 2
> +                items:
> +                  enum:
> +                    - 0 # No pre-emphasis
> +                    - 1 # 3.5dB pre-emphasis
> +                    - 2 # 6dB pre-emphasis

I'd love to say please make this -bB and put this in units, but that'd
require it being a string..

> +
>      oneOf:
>        - required:
>            - port@0
> --=20
> 2.43.0
>=20

--/FRKGiZx/KRqGQiy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZna71AAKCRB4tDGHoIJi
0oJAAP4yg+nH4MWPdvQx0vJQmZn2zlDtCFpSbj5+o33nzQg34gD/Vpq3YZxMx1EL
IAzii8Zj6FJ9jfSX4aA5lmrRQskXSgs=
=HVgL
-----END PGP SIGNATURE-----

--/FRKGiZx/KRqGQiy--

