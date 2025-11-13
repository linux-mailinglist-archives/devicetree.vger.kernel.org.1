Return-Path: <devicetree+bounces-238304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 607E5C59BEA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0395F3B132D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB8F313277;
	Thu, 13 Nov 2025 19:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSWPRh25"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D619C274B30;
	Thu, 13 Nov 2025 19:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062136; cv=none; b=FZdKXbk/FNk1kqj/+jtlVC9yrGvH9pI3/CnG5Qmes1KRQ7T9kEgDRTDHZnw5x/O7L91G5kkp9yzR99CUwsvJM9Mh5iVq1GXEBiARdEllzHxZupYVAWtKynkyUC3ivXraMBdQEwN6zlV7OxCcW6ZwiJWLBTXSfPtkmgaYhzkagnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062136; c=relaxed/simple;
	bh=qGKHCq3IkG1f2krj8XlGruglJb9NvGo4NAueK5tlbj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QImGqmGMTRvbUo4CNsqI4YcUVzi98cBxQoXwX2fFhpAYHnXqO8q3MwrFTSf05eYpCd0MnX+uWY/6w94K3/oaIduRYXvNa00BugqVK4LDQ298jWpETnm5a3AAdsxPMJwXHVtrz9LewsBd5guegeWjwUWGUbGz79VLH3WOZT/EcNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSWPRh25; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4666C113D0;
	Thu, 13 Nov 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763062136;
	bh=qGKHCq3IkG1f2krj8XlGruglJb9NvGo4NAueK5tlbj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bSWPRh256IUJOk89hPwbvQx6XfBiLWyif7ZaKrL9AGBSocThtuX8c/E7wUXKzp454
	 XdoyseBi1YQEsa1ATaZ6XGYw539zBPD+zDwTa4t80vVp+EEqTQuXksETqWQodi4KWv
	 KTcfx3ptxVruJtgz+VBVSJWxNsKU39akmnCJNli5tn/oeAmFMG5o/dGVAvs6+UyEq1
	 IrnADkEmKSArZNcfnfAXXxu5NzsoLBFwDxMiEHhXLlmZk2m+nkE6kWKNauoOOm79Da
	 PIpYxjqPxRYc34nOMYFdq5w7rNUxVGJaXXaFI362rOSglQhT+2vPAhThhQLtjMRC1a
	 Gai5N8Zx90zcg==
Date: Thu, 13 Nov 2025 19:28:51 +0000
From: Conor Dooley <conor@kernel.org>
To: Yu-Chun Lin <eleanor.lin@realtek.com>
Cc: afaerber@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, lee@kernel.org, james.tai@realtek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cy.huang@realtek.com,
	stanley_chang@realtek.com
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: realtek: Add Kent Soc family
 compatibles
Message-ID: <20251113-preorder-task-4e5ba09580d8@spud>
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-2-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ptaQ1TJ62zXffYwA"
Content-Disposition: inline
In-Reply-To: <20251113123009.26568-2-eleanor.lin@realtek.com>


--ptaQ1TJ62zXffYwA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 08:30:07PM +0800, Yu-Chun Lin wrote:
> Define compatible strings for Realtek RTD1501s, RTD1861b and RTD1920s.
>=20

> Additionally, convert legacy DTS-style comments to YAML description
> properties, following the pattern from the ARM bindings conversion series
> [1].

"Additionally" is often a sign that it should be in a different patch.
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

>=20
> [1] https://lore.kernel.org/lkml/20200622125527.24207-2-afaerber@suse.de/
>=20
> Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> ---
>  .../devicetree/bindings/arm/realtek.yaml      | 42 +++++++++++++------
>  1 file changed, 30 insertions(+), 12 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documen=
tation/devicetree/bindings/arm/realtek.yaml
> index ddd9a85099e9..be529490640c 100644
> --- a/Documentation/devicetree/bindings/arm/realtek.yaml
> +++ b/Documentation/devicetree/bindings/arm/realtek.yaml
> @@ -14,21 +14,21 @@ properties:
>      const: '/'
>    compatible:
>      oneOf:
> -      # RTD1195 SoC based boards
> -      - items:
> +      - description: RTD1195 SoC based boards
> +        items:
>            - enum:
>                - mele,x1000 # MeLE X1000
>                - realtek,horseradish # Realtek Horseradish EVB
>            - const: realtek,rtd1195
> =20
> -      # RTD1293 SoC based boards
> -      - items:
> +      - description: RTD1293 SoC based boards
> +        items:
>            - enum:
>                - synology,ds418j # Synology DiskStation DS418j
>            - const: realtek,rtd1293
> =20
> -      # RTD1295 SoC based boards
> -      - items:
> +      - description: RTD1295 SoC based boards
> +        items:
>            - enum:
>                - mele,v9 # MeLE V9
>                - probox2,ava # ProBox2 AVA
> @@ -36,25 +36,43 @@ properties:
>                - zidoo,x9s # Zidoo X9S
>            - const: realtek,rtd1295
> =20
> -      # RTD1296 SoC based boards
> -      - items:
> +      - description: RTD1296 SoC based boards
> +        items:
>            - enum:
>                - synology,ds418 # Synology DiskStation DS418
>            - const: realtek,rtd1296
> =20
> -      # RTD1395 SoC based boards
> -      - items:
> +      - description: RTD1395 SoC based boards
> +        items:
>            - enum:
>                - bananapi,bpi-m4 # Banana Pi BPI-M4
>                - realtek,lion-skin # Realtek Lion Skin EVB
>            - const: realtek,rtd1395
> =20
> -      # RTD1619 SoC based boards
> -      - items:
> +      - description: RTD1501s SoC based boards
> +        items:
> +          - enum:
> +              - realtek,phantom # Realtek Phantom EVB (8GB)
> +          - const: realtek,rtd1501s
> +
> +      - description: RTD1619 SoC based boards
> +        items:
>            - enum:
>                - realtek,mjolnir # Realtek Mjolnir EVB
>            - const: realtek,rtd1619
> =20
> +      - description: RTD1861b SoC based boards
> +        items:
> +          - enum:
> +              - realtek,krypton # Realtek Krypton EVB (8GB)
> +          - const: realtek,rtd1861b
> +
> +      - description: RTD1920s SoC based boards
> +        items:
> +          - enum:
> +              - realtek,smallville # Realtek Smallville EVB (4GB)
> +          - const: realtek,rtd1920s
> +
>  additionalProperties: true
> =20
>  ...
> --=20
> 2.34.1
>=20

--ptaQ1TJ62zXffYwA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRYxcwAKCRB4tDGHoIJi
0kD3AP499BiiUVsgMMA2wKPbp7/L+tqW7fMI0z0FMaEJj5vA0QEA6jt6JeIqW6fR
GNQx1tBoteLH60oiHQw+4ElAEkAtugU=
=GZa9
-----END PGP SIGNATURE-----

--ptaQ1TJ62zXffYwA--

