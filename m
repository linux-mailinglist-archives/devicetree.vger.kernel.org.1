Return-Path: <devicetree+bounces-152788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C09A7A4A26C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 20:07:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96A513AFB4B
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 19:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D0F1F8724;
	Fri, 28 Feb 2025 19:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o92qY2rT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DED1F4CA9
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 19:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740769663; cv=none; b=miaHYYKAxtJjk6WZQenx4wRscPPO8wbtbH9XDE7NzDEBKTx8jR+3Up048s2emFvAAMGH+dibqqzWQ/VaUMmU6xF2kvHFPQDM6a5KBsYIE5EEgOsz9EMSL15/QrZuNOExNjGDVa4+ze58Zr1n96gzNXqr9z+40SbGCUtdtgn4z0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740769663; c=relaxed/simple;
	bh=F42vuMZF0te3sC+FWTrmRgS93g6PkTya0sIJ9ITrL98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r//NkqUjtAjeBqt8GFbmRzUR91bnau1aUpGCZU3RzxC+cSzOaAH+ysyPw/3X/f6S/k19yAVXzj9Qc51AXJCDVGfYx7GJuSS/QjObtMjOA89f1dpXtmFkgLL6eGIcIBmxthTcllP1pMt236zoyVDKLkqpR/cDHilFs1gxpMEKnoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o92qY2rT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C26D9C4CED6;
	Fri, 28 Feb 2025 19:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740769662;
	bh=F42vuMZF0te3sC+FWTrmRgS93g6PkTya0sIJ9ITrL98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o92qY2rTY0BjlooX0qfoATkWz+K359ID7Mju2Ifa9XZgHWgYkSz1eVgbb00O4p2EH
	 Xw3cawWaoD09ZcFZ8iF50TbUxM81hb9NOCmHIwMR2vmGZluIBJGJm4CT6Z7EmWgWqK
	 NPP4dHBRG6so9ZMs3zh5jwHBLZVeIaANl9+eFyBPTtpr8ihqv3VTUw4NB9aqnSTGzg
	 +z+f56C/CurfaKxVTXFOGfX6mj8tVDnY4vRlzBpR/GPzlIgn+Iu8T2VnUXMH1X/6sp
	 c0T0Q5+pddy9Ulx2760+LzHf6WvGHyUHcMiZjp+qSeNfeDom1OBQ4Fp98p/LC0Iln5
	 5HC0W2TinPfQw==
Date: Fri, 28 Feb 2025 19:07:38 +0000
From: Conor Dooley <conor@kernel.org>
To: =?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
	Jose Maria Casanova Crespo <jmcasanova@igalia.com>,
	dri-devel@lists.freedesktop.org, kernel-dev@igalia.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 4/6] dt-bindings: gpu: v3d: Add SMS to the registers' list
Message-ID: <20250228-living-viewer-b1fc55214b7b@spud>
References: <20250226-v3d-gpu-reset-fixes-v1-0-83a969fdd9c1@igalia.com>
 <20250226-v3d-gpu-reset-fixes-v1-4-83a969fdd9c1@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5/v2yBxQRDxn4l+Q"
Content-Disposition: inline
In-Reply-To: <20250226-v3d-gpu-reset-fixes-v1-4-83a969fdd9c1@igalia.com>


--5/v2yBxQRDxn4l+Q
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 26, 2025 at 04:59:02PM -0300, Ma=EDra Canal wrote:
> V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
> V3D 7.1 core, add a new register item to the list. Similar to the GCA
> and bridge register, SMS is optional and should only be added for V3D
> 7.1 variants.
>=20
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Ma=EDra Canal <mcanal@igalia.com>
> ---
>  Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Do=
cumentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..8a3d3fc6065d7756da141bda4=
dc522f63be5e9a1 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -27,14 +27,16 @@ properties:
>        - description: core0 register (required)
>        - description: GCA cache controller register (if GCA controller pr=
esent)
>        - description: bridge register (if no external reset controller)
> +      - description: SMS register (if SMS controller present)
>      minItems: 2
> =20
>    reg-names:
>      items:
>        - const: hub
>        - const: core0
> -      - enum: [ bridge, gca ]
> -      - enum: [ bridge, gca ]
> +      - enum: [ bridge, gca, sms ]
> +      - enum: [ bridge, gca, sms ]
> +      - enum: [ bridge, gca, sms ]
>      minItems: 2

Can you add a per-compatible restriction, to only allow maxItems: 2
when the compatible is not mcb2712 please?

--5/v2yBxQRDxn4l+Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ8IJegAKCRB4tDGHoIJi
0rD/AQDpFB6kgEhVXBwM9SSaXMh6IwtYiE76vY7y2Xo7nMjMtgD+LyBHPyk4Edl3
fscwWQ0NW9LOHeRDPbwqTOh9YDv1ggQ=
=CPgn
-----END PGP SIGNATURE-----

--5/v2yBxQRDxn4l+Q--

