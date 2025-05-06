Return-Path: <devicetree+bounces-174259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E269EAAC9C5
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 17:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55A0E4E40D4
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 15:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82822836A0;
	Tue,  6 May 2025 15:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQcq/68n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E3F13DB9F
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 15:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746546294; cv=none; b=EgeC4JxJ9VWA/Na1wFc7lmRxEbLQwYaBUpAAzGkexfywPxNyPI+R9sVgTKh+FbahxUzN9laq0clup/J5KBAZ1zWn0b19UEEmasxHbQX2rHJbj/3/CB47m2WojK+pxJSJIX19tR1qPI1xUO8k3J8MhNXTNcfzjNA5kKRPspwgxPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746546294; c=relaxed/simple;
	bh=WdalwAYyOdFnT6F6/VtNfBFmY7xcp4A2sZZoLMVgcmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7LC2ust+qyr5hHVH2lJWij/AIRPC0ksr2r5qaq9nbPG2Hjqc9biK+S5LoyVAtyy9lzQcRsztUB3/a/JMHrHHILZg0yp2pyZkjukkKo6TlUHeyeWGwC/A05zzaoZ5fInSUZnPFhDsGLzG8bSAnkpYHkGRZIKrY1BdQsKmsDUa70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQcq/68n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03B9FC4CEE4;
	Tue,  6 May 2025 15:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746546294;
	bh=WdalwAYyOdFnT6F6/VtNfBFmY7xcp4A2sZZoLMVgcmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KQcq/68nTJwaMizQN0l8vr8X+LHw7GXqh0r0awClUcrhNistvP4OydRyEgk3l0InK
	 zw6ALhTQbWNipebmdzpQmps8C3Rs5P8jyx11Hr82Ab248hdjXnHwOxVHdJpH8QYwMq
	 UmJiHBVJ+s5fdxLnNj2Ut0QRAUVjB5EZykfsN+fGn4JweZ+niAvzahpoYBvCV9Wwkk
	 l6JfawGA5ye7zy9x5eKU5RdFfTngTJG56Mqhd6jm4hOmgOx+44OIl/xGQvLRtj54Zf
	 J8BgghwlVtG7pYsRlCtuiviaUbiw8zIc1puKmKW59Yqe9iuDP72sVtynBLwRjoKDv2
	 RIAIutCYU7GAA==
Date: Tue, 6 May 2025 16:44:49 +0100
From: Conor Dooley <conor@kernel.org>
To: John Clark <inindev@gmail.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	robh@kernel.org, krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org, jonas@kwiboo.se, frattaroli.nicolas@gmail.com,
	andrew@lunn.ch
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576
 and Core3576 bindings
Message-ID: <20250506-almighty-uncork-f7a0bc42d763@spud>
References: <20250506114115.613616-1-inindev@gmail.com>
 <20250506114115.613616-3-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9x2/RhAmDqLYb1/P"
Content-Disposition: inline
In-Reply-To: <20250506114115.613616-3-inindev@gmail.com>


--9x2/RhAmDqLYb1/P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 06, 2025 at 07:41:14AM -0400, John Clark wrote:
> Add device tree binding for the Luckfox Omni3576 Carrier Board with
> Core3576 Module, based on the Rockchip RK3576 SoC.
>=20
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 455fbb290b77..826dede32145 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -715,6 +715,16 @@ properties:
>            - const: lckfb,tspi-rk3566
>            - const: rockchip,rk3566
> =20
> +      - description: Luckfox Core3576 Module
> +        items:
> +          - const: luckfox,core3576
> +          - const: rockchip,rk3576
> +
> +      - description: Luckfox Omni3576 Carrier Board
> +        items:
> +          - const: luckfox,omni3576
> +          - const: rockchip,rk3576

Not sure this is correct, does the module not have to be attached to
this particular carrier to be used?

> +
>        - description: Lunzn FastRhino R66S / R68S
>          items:
>            - enum:
> --=20
> 2.39.5
>=20

--9x2/RhAmDqLYb1/P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaBoucQAKCRB4tDGHoIJi
0iJcAP0aeskjOu/xrVMFMflVV16ukhNjSpo2tYNFY/pRnnzgvQEAqkb3TqJYOZR4
nrsDlRLQcH7Qtjo21/qxLcmF7Z0OEwE=
=pT+F
-----END PGP SIGNATURE-----

--9x2/RhAmDqLYb1/P--

