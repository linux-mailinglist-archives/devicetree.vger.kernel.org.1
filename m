Return-Path: <devicetree+bounces-133882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0399FC23A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 21:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9641A7A038D
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 20:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37C2212B1F;
	Tue, 24 Dec 2024 20:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nwt8XCso"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD4F142E76;
	Tue, 24 Dec 2024 20:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735071859; cv=none; b=OJhE2y/pCenN2SB3YiZHTj0LHlsEebnjuK/0z8rhB341K6jRiVCSWTw/TYUWAw+cpnQ/TJM4l5k2cMiHRm3nA/+1C5hI4iiUPZK7axFGryVyjWxmniD5QnMMf5SSXDbeu/s0sJTfTiHC5XbE2FdtJC3EyVtw1or2C9KJAJDZXeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735071859; c=relaxed/simple;
	bh=HLZg7NBdrhqOreOh1fW8V1II1D9bRc0e0+C9vieTXgY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sCM1TcpeKTyB/9+WuF4rTZmpDY1jNBi6n2MKuhDWCHj5Eyl6okEy9pIvazBn+27jd0eNa6ZbZjiaTC7bqsR8kguHxK8modc5uc3DXdnedETw/9xd8weCfRd2DYHY4mDAmcEBUnp4JVB+41ptEJvwhjyvG4X84gUE9KR+arFae78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nwt8XCso; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D49E8C4CED0;
	Tue, 24 Dec 2024 20:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735071857;
	bh=HLZg7NBdrhqOreOh1fW8V1II1D9bRc0e0+C9vieTXgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nwt8XCsolG7qrvQNkoi3gqsUZEcx7MIS2QHHJa6WjUkBoE9FrS9Ri0q4ottM2wMyP
	 KjgmV2F3yetRszi9RjM4cARM+lfL6mRI+1kczXte5ECYMK3YBGCXtlSm4bKDSd13S2
	 aMskZUvH2wvWMmS9L4J+P8vUEjQvHiphCw5XdN4aX6WeIi2D5D1JK3fHhBskfz+wG/
	 VJJkDbMCY6ZjffodChX4dTVk15kxPpoIk1tDW9z3UkPxXPisVfr93+mtF6BJ3o/Bfl
	 m+u2W18o8cByZXNyrb4JgMFTSxBTU7fdBxYpsvhUZiKydCQlOkBAX5lnVIAaJ0xURx
	 eUIbMpXTCeiSw==
Date: Tue, 24 Dec 2024 20:24:13 +0000
From: Conor Dooley <conor@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Siflower
Message-ID: <20241224-finalist-unaligned-c94635604376@spud>
References: <20241223034350.215375-1-gch981213@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Su8SZVhjvvNaQxSw"
Content-Disposition: inline
In-Reply-To: <20241223034350.215375-1-gch981213@gmail.com>


--Su8SZVhjvvNaQxSw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 23, 2024 at 11:43:49AM +0800, Chuanhong Guo wrote:
> Shanghai Siflower Communication Co. is a manufacturer for home router SoC=
s.
> Add a vendor prefix for it.
>=20
> Link: http://www.siflower.com.cn/en
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

Where's the user?
Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 13222919da88..d99796e571e4 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1340,6 +1340,8 @@ patternProperties:
>      description: Siemens AG
>    "^sifive,.*":
>      description: SiFive, Inc.
> +  "^siflower,.*":
> +    description: Shanghai Siflower Communication Co.
>    "^sigma,.*":
>      description: Sigma Designs, Inc.
>    "^sii,.*":
> --=20
> 2.47.1
>=20

--Su8SZVhjvvNaQxSw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2sYbQAKCRB4tDGHoIJi
0uVyAQCkuSy1JtKtmlDYAadeC0oiTy1narA3d0lPLDjKg/gpfgEA0mujAaJlWQ3z
2mHMl6+DJ1K27267Hw3/H6uuU4hJIgw=
=mwfK
-----END PGP SIGNATURE-----

--Su8SZVhjvvNaQxSw--

