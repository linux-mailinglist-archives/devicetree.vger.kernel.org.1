Return-Path: <devicetree+bounces-6824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 483427BCFAC
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 20:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7174F1C208C8
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 18:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F809FBE0;
	Sun,  8 Oct 2023 18:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="e3aZ0T6v"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35EBC8E3
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 18:56:05 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DE1DAC;
	Sun,  8 Oct 2023 11:56:04 -0700 (PDT)
Received: from mercury (unknown [185.254.75.45])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9C73366071D4;
	Sun,  8 Oct 2023 19:56:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696791362;
	bh=gt4Exn6iOJIWBUB0OHgfxmKnEuCowU/63ggtVZCjHsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e3aZ0T6v4vatk1sYcD591IVGCUulnUQRmani9eArQHl7I3HCtYGDca9ZFEQWvlUcw
	 2S3w8kv77Zo/FHdo/gQYhZV592VvcpE/7t6aw7u92ZR75a5gd+SkSK+Z2tjguOnPp2
	 yz54vxb6Cllf7DfOVBbOJkIauLD2Z0c1nfoGGPaJy9tm45/z7Gn3e0jf/MjE3IHqXb
	 5UUP/nufYlGpz2HfVfrNqVQ+9KbxikF6dFIHQ7AdieLqcDmEk+y05V/7hbbT6DZZIa
	 J2fnXua9XF918sKgUwlSNvcWXFM0TDGvGC8RiIWPJRIHx6+uleIRnP5/bCAcTfhGZO
	 +YQUyq/2BqShQ==
Received: by mercury (Postfix, from userid 1000)
	id B9F6A10605A3; Sun,  8 Oct 2023 20:55:59 +0200 (CEST)
Date: Sun, 8 Oct 2023 20:55:59 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: mfd: rk806: Allow
 rockchip,system-power-controller property
Message-ID: <20231008185559.ros34cft2dxoewqe@mercury.elektranox.org>
References: <20231008142118.1174090-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6zim2mk3kknk5btg"
Content-Disposition: inline
In-Reply-To: <20231008142118.1174090-1-megi@xff.cz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--6zim2mk3kknk5btg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Oct 08, 2023 at 04:21:17PM +0200, Ond=C5=99ej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
>=20
> Declare support for this property.
>=20
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---

This is missing the accompanying driver change. Right now
this property does nothing for rk806.

-- Sebastian

>  Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> index cf2500f2e9a0..e8c9f17f6ea8 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> @@ -29,6 +29,11 @@ properties:
>    '#gpio-cells':
>      const: 2
> =20
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
>    vcc1-supply:
>      description:
>        The input supply for dcdc-reg1.
> --=20
> 2.42.0
>=20

--6zim2mk3kknk5btg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUi+zkACgkQ2O7X88g7
+prxlQ/4ld3VXPVQRdqI6RELUj1wba+qhndly/3MAe1Nzfrfdn20YB0ipliFHM7r
66CJWz0usea0FYo1GwnFIiqPSUCRq76ROyWm6VpR1b1AJuTBJk1AauAp4xUnRqqo
xMcq2s0tFcjqElm7zyZwVgAD1bXu5A8eX0y469Ioz+jUdU1d8p+dDNLkcMd2iUPw
zyec48d277MEx1QopWd3UNUKSGaCCAYwKbkTxnjZFn6/cSWAY4etgX7FQNmGxNPK
syEW4XZMSOcMNY3mPYCLT1KKwMTnROiIkkkeEj4wUI0Odx0VQHYs9rom/H9w3Il9
9H2ILOUuxCTEckVwCV/bGGMhl0WbrFuTDTpDfb1CySA10xvTo4U8JVSLzSLlsTxv
erKhd3nLDgUk795vBLII6rtLIDb3AvDHAtdawLCZff6Nynbumw1/KCSACYv2Arws
ze1TUYC2nXpl6ZKKRvfAvw/2FNRWhJWckEiRUAvDfJM/JgnoAuDBoChQjzvIhjJo
+60U/3idNsswoPDziFSdcFhHH0+ds+Z5XSrAXJOQcVZIhBzbc3/UM/RUwXVBlY1L
bXj83DKOe7oalLWPtyhADAj88i+IWy40p6fZRg//WwdwRDlCWfXrJnx+PQuxo6It
YiDYnkoIBNpvHIxMkHCaRqXvg/I3jZGKS4I3i3nKjhccw7sUqw==
=siPi
-----END PGP SIGNATURE-----

--6zim2mk3kknk5btg--

