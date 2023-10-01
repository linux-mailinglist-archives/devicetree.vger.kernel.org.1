Return-Path: <devicetree+bounces-4956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 678157B4729
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 13:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F10B4281A96
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 11:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7729317721;
	Sun,  1 Oct 2023 11:26:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2452D3239
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 11:26:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AF49C433C7;
	Sun,  1 Oct 2023 11:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696159571;
	bh=B7ZVjsJ/a+z+gdsGax8hdRStVwE8VsOqF6CqHVUokeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D2h+dRV59ESUoeRTKR6qDsECU6mB+w/yNOqG3BDan8ekizMW6st8gUoLsvT/0xfrh
	 o6fUr3fe3H7HNiUi8QrXlhMQtIPceRJJ1z57JjpFEWAF9hKo1iKQr3dNpIg2V4lcwO
	 Nw5758rVXciHSbOJ0m0+I40EA4gg2TeZyfwI9AkcG1DXkuNrYQTk5JG2hOnVJN5RAz
	 SetjURWCaYrJfFKCNq1a48QI83t7r0egiW1YoOjqu8uubbRmuZqC78N7dlq5Ir54d5
	 ukE3WRBhGzumcTd6dJF0rk3Ro48OaG/0F6lYeCkNE/MJJIaT5Moe3+Y6SqkT5cAVRe
	 nqFUjbCWC8fBA==
Date: Sun, 1 Oct 2023 12:26:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 3/5] dt-bindings: riscv: Add Milk-V Duo board compatibles
Message-ID: <20231001-sinless-evacuate-2a6dce63cb5f@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <20230930123937.1551-4-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Gth2pD5qYnurspUN"
Content-Disposition: inline
In-Reply-To: <20230930123937.1551-4-jszhang@kernel.org>


--Gth2pD5qYnurspUN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 30, 2023 at 08:39:35PM +0800, Jisheng Zhang wrote:
> Document the compatible strings for the Milk-V Duo board[1] which uses
> the SOPHGO CV1800B SoC[2].
>=20
> Link: https://milkv.io/duo [1]
> Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/riscv/sophgo.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Docume=
ntation/devicetree/bindings/riscv/sophgo.yaml
> index 4e8fd3c6a6ff..6db241c9d00c 100644
> --- a/Documentation/devicetree/bindings/riscv/sophgo.yaml
> +++ b/Documentation/devicetree/bindings/riscv/sophgo.yaml
> @@ -18,6 +18,10 @@ properties:
>      const: '/'
>    compatible:
>      oneOf:
> +      - items:
> +          - enum:
> +              - milkv,duo
> +          - const: sophgo,cv1800b
>        - items:
>            - enum:
>                - milkv,pioneer
> --=20
> 2.40.1
>=20

--Gth2pD5qYnurspUN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRlXTQAKCRB4tDGHoIJi
0ggDAQDgoXmtMxXZc8t1AfDUQJDSbmqJUw1SYpFi4+F5wv46RwEA79O2X7D+gApK
jvcw2dvS3XDf94s1yHpD0vzV2k9HAAM=
=xZ9n
-----END PGP SIGNATURE-----

--Gth2pD5qYnurspUN--

