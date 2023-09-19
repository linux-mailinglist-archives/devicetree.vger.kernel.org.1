Return-Path: <devicetree+bounces-1275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CC17A5A80
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D607281A8D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C00735891;
	Tue, 19 Sep 2023 07:07:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639BF8471
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9478DC433C8;
	Tue, 19 Sep 2023 07:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695107226;
	bh=xAVMwvYjBROv9OQIMFbARp+MSWiwtBbzjcXevpd/uFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=InoJHqfT1lVqdfuVmkP/5TY+fRMpQV1mBJKmM94Y434QDb7kA33bFRn+r3gDwqGUF
	 aVBXrGbxaCtSlXv761k6PhYvhRGXUyaZ3p/Zj9jZxVHnSiJz2VR1x7+kD8aVe8s6bm
	 m6FZXe5ZVZOWQZNYup5/UvmN0r9FpfdDMyPhetCH8/HKRg5bgc0FmGSxYXIrBqFf7f
	 TQMIiWnkmqTgnk3uUAHJDY1eh6+vKBRJZ9c2bSX/bWi7n9tmtJF44banY5VzT64jc4
	 JxB8rU6woVCmz/zZ6R2A/M24y5Ib5yK5yVIEpieGCvIKeSWqEyJWC5UF5/+ybLNYzE
	 6iIMfVxionqJg==
Date: Tue, 19 Sep 2023 09:07:03 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Benjamin Bara <bbara93@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, Frank Oltmanns <frank@oltmanns.dev>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Benjamin Bara <benjamin.bara@skidata.com>
Subject: Re: [PATCH 06/13] clk: keep track if a clock is explicitly configured
Message-ID: <pgnlrokdqqqclqvp4h2zk7iyq2jfncnvvwavovydovdmj3d2gf@kszpslmeswbr>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
 <20230918-imx8mp-dtsi-v1-6-1d008b3237c0@skidata.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nz2do66haqaakwrg"
Content-Disposition: inline
In-Reply-To: <20230918-imx8mp-dtsi-v1-6-1d008b3237c0@skidata.com>


--nz2do66haqaakwrg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 18, 2023 at 12:40:02AM +0200, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
>=20
> When we keep track if a clock has a given rate explicitly set by a
> consumer, we can identify unintentional clock rate changes in an easy
> way. This also helps during debugging, as one can see if a rate is set
> by accident or due to a consumer-related change.
>=20
> Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>
> ---
>  drivers/clk/clk.c            | 25 +++++++++++++++++++++++++
>  include/linux/clk-provider.h |  1 +
>  2 files changed, 26 insertions(+)
>=20
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 8f4f92547768..82c65ed432c5 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -70,6 +70,7 @@ struct clk_core {
>  	unsigned long		rate;
>  	unsigned long		req_rate;
>  	unsigned long		new_rate;
> +	unsigned long		set_rate;

This is pretty much what req_rate is supposed to be about. Why didn't it
work in your case?

Maxime

--nz2do66haqaakwrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlIlwAKCRDj7w1vZxhR
xX7CAQCJ88MP0IggxrZdwHzSEbK98JPULrdiQBePCHZXNxTCZwD/aTdF8wGwe2Ti
mSWGUcfCvtA5+45YPSnqsOb/vX59pgY=
=c2Lw
-----END PGP SIGNATURE-----

--nz2do66haqaakwrg--

