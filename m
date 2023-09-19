Return-Path: <devicetree+bounces-1269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7AF7A5A2A
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97C821C20E6B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 06:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B7034CF9;
	Tue, 19 Sep 2023 06:50:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB168471
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 06:50:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 555ABC433C8;
	Tue, 19 Sep 2023 06:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695106209;
	bh=8ykH08SrK+UpkZuDjx7bRdFpiZ7TnPEbkWI00FaluZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=im0Xoi6WEWwazRuw04wuAyA0CvBWHPW1FS0/wgigvaMN2M1md/B3e5pve/J56I4fY
	 djYRDAs87CTPU8JFrS57YEMbH/VPkuI0WRyA5Cro/n1JJ+B7XxWoLjbhDfXaCKvP4g
	 I/jYio0lUpZuVuUn2ujGlvPeo62noxUjgUzLau/AO0mC69kwl7TC2L9eVnWIP85yV+
	 /D8+NnsHw1olcXgr/7UD+AQ0ZNvJvkjUn2zTfCDhmg3DxbEB5j07Kpvv4QHAwanTUX
	 Vl9ioEfAuBuuJ/m99Hhq+ApBtyUMUYmhgrHtwBIpn+1Qph/9EyeeitHRhxfHHDWnye
	 tjbqZvzXVwfzw==
Date: Tue, 19 Sep 2023 08:50:07 +0200
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
Subject: Re: [PATCH 03/13] clk: implement clk_hw_set_rate()
Message-ID: <kiwkbr5rj5uu3hkfy37obsj4mky5fwmbseyntp4pxoez4e3yh2@t6jdjs456eal>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
 <20230918-imx8mp-dtsi-v1-3-1d008b3237c0@skidata.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zqcwscft3pf37wli"
Content-Disposition: inline
In-Reply-To: <20230918-imx8mp-dtsi-v1-3-1d008b3237c0@skidata.com>


--zqcwscft3pf37wli
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 18, 2023 at 12:39:59AM +0200, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
>=20
> This function can be used to set the rate of a clock hardware from a
> driver, e.g. to adapt the rate to a clock change coming from the parent.
>=20
> Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>
> ---
>  drivers/clk/clk.c            | 15 +++++++++++++++
>  include/linux/clk-provider.h |  1 +
>  2 files changed, 16 insertions(+)
>=20
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index c249f9791ae8..3e222802b712 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -2462,6 +2462,21 @@ static int clk_core_set_rate_nolock(struct clk_cor=
e *core,
>  	return ret;
>  }
> =20
> +int clk_hw_set_rate(struct clk_hw *hw, unsigned long req_rate)
> +{
> +	/* A rate change is ongoing, so just target the required rate.
> +	 * Note: this does not work if one clock along the line has
> +	 * CLK_RECALC_NEW_RATES active, as this overwrites the new_rate again.
> +	 */
> +	if (hw->core->new_rate !=3D hw->core->rate) {
> +		hw->core->new_rate =3D req_rate;
> +		return 0;
> +	}
> +
> +	return clk_core_set_rate_nolock(hw->core, req_rate);
> +}
> +EXPORT_SYMBOL_GPL(clk_hw_set_rate);

So, we discussed it recently, and it's non-obvious to see how it would
work if you're in a set_rate change that modifies the tree and the new
call to clk_hw_set_rate modifies the tree too. Some explanation on how
it's handled, and some unit tests are required here imo.

Maxime

--zqcwscft3pf37wli
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlEngAKCRDj7w1vZxhR
xcVLAQD+MQh60tqys+LGfnNI4GRlneejAkt3iWt4M+vMGYpz0AD8DXzRKpxvqkP9
UXLjfEUbzUdabsTtfxM2QDCesIiLoA0=
=gkun
-----END PGP SIGNATURE-----

--zqcwscft3pf37wli--

