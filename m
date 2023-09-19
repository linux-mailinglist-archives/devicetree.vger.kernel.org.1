Return-Path: <devicetree+bounces-1286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D712D7A5B5C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE75E1C20C31
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882CC38BB4;
	Tue, 19 Sep 2023 07:40:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F94A3B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:40:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84182C433C8;
	Tue, 19 Sep 2023 07:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695109201;
	bh=K/CCEQLfGgec2HfKP4kI3szqGJXJsj/NkOCSY7wCACM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FIWCsBhc7S6fqc6ADy3uTx3eaAdpdcYTDmt4/1DV/E4ACTcJ7tj8JzAoAFE/wH4jw
	 GKpjxyhTUeUHrKIxynBEbDemlIddXqOs1i+sR4BY0pNEYaqrx4TAdnElujazcOdXnk
	 Ffd7zDNRf/M34tzX0ZXMYWhCExs4DqhV+b2nDYEjaA65wh377k07HVdJcAzuvyySnO
	 VpFIWU0Q6ZSgJQrAzsFDql1FfQncAO5n4whiMcYOmfZf6dBcujtBXoDh7wAgllqasr
	 MJqNYkAGrMRWPr3xTcCQTnrr2117okVg9aoUXPooayvkJXkbdMG2NjVSUtWadwfC5e
	 TtKo0pMJ3Snyg==
Date: Tue, 19 Sep 2023 09:39:58 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Benjamin Bara <bbara93@gmail.com>
Cc: Frank Oltmanns <frank@oltmanns.dev>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Benjamin Bara <benjamin.bara@skidata.com>, Adam Ford <aford173@gmail.com>, 
	Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 00/13] imx8mp: first clock propagation attempt (for LVDS)
Message-ID: <z363tfhxt3h2rfe3vguwruelggoazdpdsojrjhebon6s6ejs2g@cxgxizho2jxp>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
 <87fs3bbdjb.fsf@oltmanns.dev>
 <CAJpcXm7nrLzbDmNVCACy3ycBnhWY7HxWhCwroOCF-+GfMT_A9w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="24bhmfbcnblmpqxn"
Content-Disposition: inline
In-Reply-To: <CAJpcXm7nrLzbDmNVCACy3ycBnhWY7HxWhCwroOCF-+GfMT_A9w@mail.gmail.com>


--24bhmfbcnblmpqxn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 08:05:48PM +0200, Benjamin Bara wrote:
> Hi Frank!
>=20
> On Mon, 18 Sept 2023 at 19:24, Frank Oltmanns <frank@oltmanns.dev> wrote:
> > On 2023-09-18 at 00:39:56 +0200, Benjamin Bara <bbara93@gmail.com> wrot=
e:
> > Thank you very much for including me in the discussion. If I understood
> > Maxime correctly, your proposal is close to what he was suggesting in
> > the discussion you referenced. Unfortunately, it doesn't cover the
> > rounding aspect (which you also mentioned in your cover letter and the
> > description for clk_detect_unintended_rate_changes in patch 7. I've been
> > pondering the last three weeks how to find a good solution to this
> > problem, but so far haven't found any.
>=20
> I think if we stick to the idea of always enforcing the exact "typical
> rate", we cannot avoid physically impossible cases. IMHO, it might make
> sense to add a set_rate() function with a "timing_entry" (e.g. used by
> display_timing.h[1]) to the clock API, which gives a suggestion but also
> defines the "real" boundaries. This would provide a shared parent PLL
> more freedom to provide a satisfying rate for all its children.

It's definitely something we should do, and I've wanted to do that for a
while.

The clock rate is not the only thing we can change though. The usual
trick is to modify the blanking areas to come up with a rate that
matches what the hardware can provide without modifying the framerate.

It belongs more in a KMS helper

Maxime

--24bhmfbcnblmpqxn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlQTgAKCRDj7w1vZxhR
xSZrAQCXDBYBR1qegeYM/FX3JRolA9OAusZu69+JCObLx9va1wEAvh7wvzcpJ5z7
D8FLajZsctnmmyoJ2o/3IGxHtUP/ows=
=D/La
-----END PGP SIGNATURE-----

--24bhmfbcnblmpqxn--

