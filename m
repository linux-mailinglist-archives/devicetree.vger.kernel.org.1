Return-Path: <devicetree+bounces-6995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ADF7BE658
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 18:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DD161C20A5C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 16:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1380D38BBF;
	Mon,  9 Oct 2023 16:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8ly/Rh+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EA037CA4
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 16:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD62DC433C8;
	Mon,  9 Oct 2023 16:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696868806;
	bh=TS7qlSQMJeaEwASV4I5bE63YJ4CtP1GPaVK0RvdE5Dc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V8ly/Rh+3e8H/Pg56Qi6/j04x4vPz0nxbQPuq6aMKwy+xlQpBcHOpzXwIDTTdzc0m
	 HzRGiKWkjV45/eclX2Z+KRlYU//K0OA93zRQk6x+xnb8nkZJcNK80Mlpi+rrhxmb+7
	 Stkzdi2bnLvfAUb1QEPd62wWAYqj+7ZiFY6bt6Jmq2tK1XN4gixKWJiO454+czsQxH
	 midOWd7eNHoErFnIeZp3UHADfnFa8SUZx6lyQOQaY3FPjc9Pga5hxb+SBQmYojgXhr
	 a1BrKEJ2DUJkc8kMYsh0Ytt8j01dnGA9wLGLpHVLF8P/z8fDyP4j5dEfOAx3FB7Tma
	 3aP/1mE9d1UWQ==
Date: Mon, 9 Oct 2023 17:26:41 +0100
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Orange Pi 5 Plus
Message-ID: <20231009-poncho-refining-5206e3875669@spud>
References: <20231008130515.1155664-1-megi@xff.cz>
 <20231008130515.1155664-4-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jtxAoSr1vHYzIdfq"
Content-Disposition: inline
In-Reply-To: <20231008130515.1155664-4-megi@xff.cz>


--jtxAoSr1vHYzIdfq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 08, 2023 at 03:05:01PM +0200, Ond=C5=99ej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
>=20
> Add devicetree binding documentation for Orange Pi 5 Plus SBC made by
> Xunlong.
>=20
> Signed-off-by: Ondrej Jirman <megi@xff.cz>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ca5389862887..1a636ad540ce 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -870,6 +870,11 @@ properties:
>            - const: tronsmart,orion-r68-meta
>            - const: rockchip,rk3368
> =20
> +      - description: Xunlong Orange Pi 5 Plus
> +        items:
> +          - const: xunlong,orangepi-5-plus
> +          - const: rockchip,rk3588
> +
>        - description: Xunlong Orange Pi R1 Plus / LTS
>          items:
>            - enum:
> --=20
> 2.42.0
>=20

--jtxAoSr1vHYzIdfq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQpwQAKCRB4tDGHoIJi
0maaAP47E1PJIyhK8cjy+hke5lwVZTaDc5KFma7+IRK1rtnLAwD+JBc/RJpoF+Fc
rBJfx39NBvbJPDnRQ7dDfFCZznzkSgQ=
=+cps
-----END PGP SIGNATURE-----

--jtxAoSr1vHYzIdfq--

