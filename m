Return-Path: <devicetree+bounces-50959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B11DE87DD9B
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 15:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66E271F21339
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 14:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764AA1C6A4;
	Sun, 17 Mar 2024 14:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTpBurfM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4A51C6A0;
	Sun, 17 Mar 2024 14:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710687210; cv=none; b=kbSzKeC5nh07bYvGwH946+WgS0rHKDdbuj3SqUodu4zMu+9AOK/abT+rkiwfJY19hTxHsud6Yw/TprJo3LDZQTmQWzyt9d495ryULGEUIKfyanXNH6nTA/yhtgZZOfoRRPdDKFrAmEq8zGSB7wda+Rkwd4OMtuVA4NfECY7AcfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710687210; c=relaxed/simple;
	bh=w7goVQbsQpbIFvvOI/R9DZTt0gDoXmk+7mx7zeObV7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TmAcYKGRdqCFAwuRYOvobQhQWJ8JahMu39cEazbnrkD2LC7b16Tz6AC+LpglciOFa3Ukfy54X3TpXdB0gawvz3CAhqZ3o7o7/6rQAGe3DKSYtrXtmPKWewttTtOHkEYARll4THtOmfrClVjRdjHxlgS3QXya1L4Uo/L+MRXBQho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTpBurfM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA688C433F1;
	Sun, 17 Mar 2024 14:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710687209;
	bh=w7goVQbsQpbIFvvOI/R9DZTt0gDoXmk+7mx7zeObV7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PTpBurfMYJwhBhaHvswPwUHTTVhvf8z1Oydio7vPjF5y+RR7oGgDGgqB8BvBNS1Id
	 eh8A9r8MOYPzHH4CGs3UTnOAm/0ofrlqHRL0t3Y6p9NEDDXGcollhbj/4DSk1c5UzE
	 8XITge9mWM5zpoxgSNZcW8WKc2RcUJOFiVDaAzp08P50slpSa+U0p8D7U5h68YQ7eK
	 CPHblEoDvLrYrgSjyAmtstUF4frK3Qxfv6VMDuF1mw0uAD1hife1WMz+pzBr+12emt
	 mv5Y2z/2Br0EJ+iYAqZzkDzE+/sYPwzh6sghr4eeico7RmcGBSf52lXdPwuSwkWrqF
	 U4RW7yBhkDHug==
Date: Sun, 17 Mar 2024 14:53:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: add Forlinx FET3588-C
Message-ID: <20240317-graded-splicing-0d37dc7429e4@spud>
References: <cover.1710506373.git.dmt.yashin@gmail.com>
 <2c7a99673ab4840bc7052eb600363d5163c5cfae.1710506373.git.dmt.yashin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="77kncDpKEGz2z0+1"
Content-Disposition: inline
In-Reply-To: <2c7a99673ab4840bc7052eb600363d5163c5cfae.1710506373.git.dmt.yashin@gmail.com>


--77kncDpKEGz2z0+1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 15, 2024 at 07:18:05PM +0500, Dmitry Yashin wrote:
> FET3588-C is an System on Module made by Forlinx based on Rockchip RK3588.
> This SoM used by OK3588-C Board.
>=20
> FET3588-C features:
> - Rockchip RK3588
> - LPDDR4 4/8 GB
> - eMMC 32/64 GB
>=20
> Add devicetree binding for Forlinx FET3588-C SoM.
>=20
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 5cf5cbef2cf5..d87f4955f509 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -211,6 +211,13 @@ properties:
>            - const: firefly,rk3568-roc-pc
>            - const: rockchip,rk3568
> =20
> +      - description: Forlinx FET3588-C SoM
> +        items:
> +          - enum:
> +              - forlinx,ok3588-c
> +          - const: forlinx,fet3588-c
> +          - const: rockchip,rk3588
> +
>        - description: FriendlyElec NanoPi R2 series boards
>          items:
>            - enum:
> --=20
> 2.44.0
>=20

--77kncDpKEGz2z0+1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZfcD5QAKCRB4tDGHoIJi
0j0MAQDkKFcXiOYKIo1s46oW6pAOm+Dc4/1YTBVDX5kMxwZjTAEA0jqcm9BNz2KX
nDk0fSWnik2Z7kmkptHXR5ULNPylcwg=
=Y81/
-----END PGP SIGNATURE-----

--77kncDpKEGz2z0+1--

