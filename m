Return-Path: <devicetree+bounces-13459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D99587DE27A
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10C7F1C208E9
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D607F134CD;
	Wed,  1 Nov 2023 14:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amBqoWbg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9581134C7
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:54:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C4F8C433C8;
	Wed,  1 Nov 2023 14:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698850478;
	bh=9gY3lKUIFxEXKcPbqPGYBJf4V5VDH8CACMCI1oLaASE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=amBqoWbgT9bePCEr3VIThqn1Aoe+Y4GQK2cQBs4GTba5C8988bWCU/jd5duG+gNaT
	 hHxDFgS82VHitlKG89HBNq5WKuVzw3NbxNEqEsx0YjMGfqxW0fJO9fMpqpoVu3Zyj5
	 SHnBDfQmehJ68nYTennTFHdcOuS3fOtN6wF1rcURPTGzz3ztEmNp0gYtYrt3Znikkf
	 bAvZNNqRe24sfBbzykQtiNzE9WEeAx3BfBhkEzBXDm/CLY8hAoA1DUHs56KXr//YIs
	 0LSS6C9IqMdeqLPMNvBAjpVsnPE+rMiEkw5yr0rAJqfMLT0KJtcoZIwPHYlEKtNt/w
	 U6HHv7MwIf+tw==
Date: Wed, 1 Nov 2023 14:54:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add rve
Message-ID: <20231101-maimed-email-4decd11f1d52@spud>
References: <20231101144057.2653271-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ke7F+ZQ+zKizgPnB"
Content-Disposition: inline
In-Reply-To: <20231101144057.2653271-1-hugo@hugovil.com>


--ke7F+ZQ+zKizgPnB
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 10:40:57AM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>=20
> Add vendor prefix for Recharge V=E9hicule =C9lectrique (RVE), which
> manufactures electric vehicle chargers infrastructure components.
>=20
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>


Where is the user for this?

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index e48b0a02827a..8455d7f5cfae 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1161,6 +1161,8 @@ patternProperties:
>      description: Shenzhen Roofull Technology Co, Ltd
>    "^roseapplepi,.*":
>      description: RoseapplePi.org
> +  "^rve,.*":
> +    description: Recharge V=E9hicule =C9lectrique (RVE) inc.
>    "^saef,.*":
>      description: Saef Technology Limited
>    "^samsung,.*":
>=20
> base-commit: 8bc9e6515183935fa0cccaf67455c439afe4982b
> --=20
> 2.39.2
>=20

--ke7F+ZQ+zKizgPnB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJmqgAKCRB4tDGHoIJi
0kNAAQCUohq48EWzQa8q0n366LJ2AtnzLSSz+nrPHA92oWiXuAEA5FYC4Bm/FnIU
Lm2smNuuR4Gdph8JAN1oU9fG5rdy6gw=
=2x37
-----END PGP SIGNATURE-----

--ke7F+ZQ+zKizgPnB--

