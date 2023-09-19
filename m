Return-Path: <devicetree+bounces-1284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D33E7A5AEE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47AC61C20C93
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD9A358A6;
	Tue, 19 Sep 2023 07:31:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D31328A4
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:31:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6539C433C8;
	Tue, 19 Sep 2023 07:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695108699;
	bh=c8Jda3J+RhTWA4ijuCRZYSHme2R9CMRcX025MvqhKWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UWKb7fqgAsdPyITs/ng3rd6kRyzAEvbEg0CsfVTkaem2KV+R8S+vnc5Pw1SmiaXxV
	 IckberZW3K1GtRiC+8vAsQ81c6T2vmVkVIbMcN0POV024F2AOQ+8I1XS+sbRdZoE7Y
	 1G5vwtR10gIpigpW0BvThdnGBCbrD4ywTgDmK5awI93ZQVZSh+Qm0vSB8Sy/Hue6JU
	 byoGujV8JGMBIPS2uy221+6Vrv2KjHrutiYo4rg/bye/5qjeS0mYTdxiFh0CH71e5R
	 QIsUJyCh3UzdF151UJSrKbwBapmj5pAI7LORymIxi3Wf5Vhhzotw2YHJdFJN4smXEu
	 KfXcMaHVz1b2w==
Date: Tue, 19 Sep 2023 09:31:36 +0200
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
	Benjamin Bara <benjamin.bara@skidata.com>, Adam Ford <aford173@gmail.com>, 
	Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 00/13] imx8mp: first clock propagation attempt (for LVDS)
Message-ID: <7at35ykai5lyeaci3xvklrfk4xg4hn3jnw4fz3egqobjvnglbz@cv45l3mrhtct>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rra6xzzb3zzwrtqx"
Content-Disposition: inline
In-Reply-To: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>


--rra6xzzb3zzwrtqx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 18, 2023 at 12:39:56AM +0200, Benjamin Bara wrote:
> Target of this series is to dynamically set the rate of video_pll1 to
> the required LVDS clock rate(s), which are configured by the panel, and
> the lvds-bridge respectively.
>=20
> Some background:
> The LVDS panel requires two clocks: the crtc clock and the lvds clock.
> The lvds rate is always 7x the crtc rate. On the imx8mp, these are
> assigned to media_disp2_pix and media_ldb, which are both
> clk-composite-8m. The rates are set by drm_client_modeset_commit() (and
> later by fsl_ldb_atomic_enable()), and the fsl-ldb driver, first crtc,
> then lvds. The parent is typically assigned to video_pll1, which is a
> clk-pll14xx (pll1443x).
>=20
> The main problem:
> As the clk-composite-8m currently doesn't support CLK_SET_RATE_PARENT,
> the crtc rate is not propagated to video_pll1, and therefore must be
> assigned in the device-tree manually.
>=20
> The idea:
> Enable CLK_SET_RATE_PARENT, at least for media_disp2_pix and media_ldb.
> When this is done, ensure that the pll1443x can be re-configured,
> meaning it ensures that an already configured rate (crtc rate) is still
> supported when a second child requires a different rate (lvds rate). As
> the children have divider, the current approach is straight forward by
> calculating the LCM of the required rates. During the rate change of the
> PLL, it must ensure that all children still have the configured rate at
> the end (and maybe also bypass the clock while doing so?). This is done
> by implementing a notifier function for the clk-composite-8m. The tricky
> part is now to find out if the rate change was intentional or not. This
> is done by adding the "change trigger" to the notify data. In our case,
> we now can infer if we aren't the change trigger, we need to keep the
> existing rate after the PLL's rate change. We keep the existing rate by
> modifying the new_rate of the clock's core, as we are quite late in an
> already ongoing clock change process.

So just like the discussion we had on the Allwinner stuff, I don't think
you can cover it completely within the framework. If we take a step
backward, I guess what you want is that you have multiple clocks,
feeding multiple displays at varying clock rates depending on the
resolution, and the parent needs to accomodate all of them, right?

Could you share the clock tree and the capability of each clocks (range
of the multipliers / dividers mostly)?

I'm wondering if we couldn't set the parent clock to a fairly high rate
that would be high enough for each child to reach whatever rate it needs
to have without the need for CLK_SET_RATE_PARENT.

Maxime

--rra6xzzb3zzwrtqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlOWAAKCRDj7w1vZxhR
xeBiAP4jttHKIfgVxUcdg4EmJxBQdy3Fu1rxc1KHBNTMdjPJaAEA9bFwNcsUbV6n
+2VSHcZbhMSCH+91fdbGdVwx08U2rAo=
=VMgi
-----END PGP SIGNATURE-----

--rra6xzzb3zzwrtqx--

