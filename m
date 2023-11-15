Return-Path: <devicetree+bounces-16077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF657ED652
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 590C6B20BF3
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F2673C491;
	Wed, 15 Nov 2023 21:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuUklBQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CB83A8DF
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 21:54:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E85AC433C7;
	Wed, 15 Nov 2023 21:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700085257;
	bh=HNdL+Be6cMlMkW4vDhJAvj7UWUwF0byt9crJztV3lyc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uuUklBQ0B/CTCk0nFXbhW8lC3h087uMYaSyhnyTxcDjjo05NoFHRTxCsf+K3hP2SC
	 HA7aqD+mPmtWsMirc0/Q3VlWZNTSx1vCuEdAgBxm6hI1OtSGe26oCEWWt0h8tZZMQ8
	 Kr8FrFtXZwKxnxh2h8uudv9WpK4euUj9kscV2GlymFLqce8HBRSDaTafn8r38UtQyG
	 0TDEE3rZaQZQGM8gmluT3YqOxkcMgHxeabQrqScGxGJK4E3EZUjh+Z0ZYgPuVNF3NE
	 xpG3XmKSPfLH10ibWUInlQUJ22O2/Mhp4vNZn5PULLc5AvxwDFmjfrVmwdeuGM6JcY
	 yJdmpGpOBwM3Q==
Date: Wed, 15 Nov 2023 21:54:14 +0000
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/Five SoC
Message-ID: <20231115-support-hankering-907c9f496a52@squawk>
References: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5vok2DPxacar78Hn"
Content-Disposition: inline
In-Reply-To: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>


--5vok2DPxacar78Hn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 09:33:58PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> The SSI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-ssi" compatible string will be used on the RZ/Five
> SoC so to make this clear and to keep this file consistent, update the
> comment to include RZ/Five SoC.
>=20
> No driver changes are required as generic compatible string
> "renesas,rz-ssi" will be used as a fallback on RZ/Five SoC.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor,

> ---
>  Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml =
b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
> index 3b5ae45eee4a..8b9695f5decc 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
> @@ -16,7 +16,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> -          - renesas,r9a07g043-ssi  # RZ/G2UL
> +          - renesas,r9a07g043-ssi  # RZ/G2UL and RZ/Five
>            - renesas,r9a07g044-ssi  # RZ/G2{L,LC}
>            - renesas,r9a07g054-ssi  # RZ/V2L
>        - const: renesas,rz-ssi
> --=20
> 2.34.1
>=20

--5vok2DPxacar78Hn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVU+AgAKCRB4tDGHoIJi
0u9xAQCy6Ri2/SWQe6N9pq0RvPqF9PoATlrxkwPve5pN0sw1QwEAuu5eaYnksBkj
LccHnxnG5WeHC80HRTULAmQagAAjiQw=
=THQ4
-----END PGP SIGNATURE-----

--5vok2DPxacar78Hn--

