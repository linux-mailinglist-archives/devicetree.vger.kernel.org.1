Return-Path: <devicetree+bounces-16920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8CF7F0685
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DC161C20456
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5566010A3F;
	Sun, 19 Nov 2023 13:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaqhXZw+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FBD101D9
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:43:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EC65C433C7;
	Sun, 19 Nov 2023 13:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700401391;
	bh=h+24PDbQyReJox3hVnhzE8nhwGTA9mitLw0TMJ4Oh6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GaqhXZw+P8LWgmTqe49Eiwzlh98f9wG2kDTTfJ9BDrJxTUvNnsFeMvz8Kgt0UqgNq
	 tye/7MbEQZAJtH6of0u/ktXRa1P23fvSQW3oqHeZkOC0S+JDXENK79OabujEvAAsBO
	 inx+d5Dav4RYGuN9Rf1g1WMLchmncO4uSZk5SpM1LVX8gKgH13UrTiVl0wa34NXd2T
	 VhWntESyWUIDP65gO+PQmyU54Xy/P7V4odUhSl4a7uA1e8ffSWu7mFfwYAEbgPN7I1
	 Fog2Ymj5uFN+AwYW/CDjYZZejWSjbZDF+bt6h7AXAyfG05eZI0+RqpxULh4RTn9G0l
	 b9Gk7MfK2L/+w==
Date: Sun, 19 Nov 2023 13:43:05 +0000
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Bernhard =?iso-8859-1?Q?Rosenkr=E4nzer?= <bero@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add acelink
Message-ID: <20231119-xbox-bankroll-8a5a4df56c22@spud>
References: <20231117104101.9374-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M8VGEtr73EdlGVwV"
Content-Disposition: inline
In-Reply-To: <20231117104101.9374-1-zajec5@gmail.com>


--M8VGEtr73EdlGVwV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 11:40:59AM +0100, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Acelink is a Taiwan company providing network products (routers, access
> points, switches, cameras and more).
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--M8VGEtr73EdlGVwV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVoQ6QAKCRB4tDGHoIJi
0rWeAP0RMPHCOlPpt7wS1EalDQ8VSG9hV58amZaR2BBv52NTngEAvnoFHviuWvKs
gnEInIscA65H/dYxOg5a2GFmJYo32Qk=
=ohoI
-----END PGP SIGNATURE-----

--M8VGEtr73EdlGVwV--

