Return-Path: <devicetree+bounces-1285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BB57A5B31
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C224282192
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38328358B1;
	Tue, 19 Sep 2023 07:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDF8328A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:37:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4926FC433CA;
	Tue, 19 Sep 2023 07:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695109061;
	bh=NJEdOhSplERf4qx+MZnaddtdGxjwkTj9FA70yGwEl/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=toJGkyN//X1dq/GlVmSCP5BAImC4qNkx0+qvdGNKwgIg4nWdrMsNY3PSR0LhC8ey6
	 C6+w/YZpgqJtNnUImwuowlzhbwSJg/GDc2ONrxID0oKvtqayMHYIXYRPPiyamykENZ
	 e+TARbge08QSDBvNJQDO9cN672fNX0dzU/CHe43RvDVGoeQZ4OXCCDjW+SJ0byGQil
	 9fh2QIkA9HgWdNZTNqZEZ3VwNWKobCNo9MBFNopyWfkRdPQMtRpCRKq+aDqYbywaeD
	 Ps9K6b7AMDHjKLH1jXSd3fAGprFS2WLFcz+O4Ec//le6qhvGvAvknDoCYivh3lVr2x
	 otIj5mwBAL7eQ==
Date: Tue, 19 Sep 2023 09:37:38 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Benjamin Bara <bbara93@gmail.com>
Cc: Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, Frank Oltmanns <frank@oltmanns.dev>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Benjamin Bara <benjamin.bara@skidata.com>, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 00/13] imx8mp: first clock propagation attempt (for LVDS)
Message-ID: <fzu4iwxh7tak65twym35p7oik2nt4ke6khmmamzz7q2uopu736@cimranz73wvt>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
 <CAHCN7xJ8KrBd-532=gDE+82xo1ZNtoDT7pZsYwy9-9WiJvmkvw@mail.gmail.com>
 <CAJpcXm6OWNODOz5gEWVhOJjKTazwzE7XV6ZR1H06zpECrivZig@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zkw33pnzrz7sbey3"
Content-Disposition: inline
In-Reply-To: <CAJpcXm6OWNODOz5gEWVhOJjKTazwzE7XV6ZR1H06zpECrivZig@mail.gmail.com>


--zkw33pnzrz7sbey3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 07:59:16PM +0200, Benjamin Bara wrote:
> Hi Adam!
>=20
> On Mon, 18 Sept 2023 at 07:00, Adam Ford <aford173@gmail.com> wrote:
> > On Sun, Sep 17, 2023 at 3:40=E2=80=AFPM Benjamin Bara <bbara93@gmail.co=
m> wrote:
> > > The idea:
> > > Enable CLK_SET_RATE_PARENT, at least for media_disp2_pix and media_ld=
b.
> > > When this is done, ensure that the pll1443x can be re-configured,
> > > meaning it ensures that an already configured rate (crtc rate) is sti=
ll
> > > supported when a second child requires a different rate (lvds rate). =
As
> >
> > Have you tested with the DSI as well?  If memory servers, the DSI
> > clock and the LVDS clock are both clocked from the same video_pll.  At
> > one time, I had done some experimentation with trying the DSI
> > connected to an HDMI bridge chip connected to a monitor and the LVDS
> > was connected to a display panel with a static resolution and refresh
> > rate.  For my LVDS display, it needs 30MHz to display properly, but
> > various HDMI resolutions needed values that were not evenly divisible
> > by 30MHz which appeared to cause display sync issues when trying to
> > share a clock that was trying to dynamically adjust for two different
> > displays especially when trying to change the resoltuion of the HDMI
> > display to various values for different resolutions.
>=20
> Unfortunately I haven't. I think if you have the use case to support
> different "run-time-dynamic" (HDMI) rates in parallel with a static
> (LVDS) rate

If anything, LVDS is harder to deal with than HDMI. HDMI only has a
handful of clock rates (74.250, 148.5, 297 and 594MHz mostly) while LVDS
is more freeform.

We are more likely to change the rate on an HDMI device though, but a
rate change from 1080p to 720p would only require a divide by two (from
148.5 to 74.250) so fairly easy to do.

Maxime

--zkw33pnzrz7sbey3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlPwgAKCRDj7w1vZxhR
xQXZAP0X9+g7TAJgG9bUbGB3HDyh4TifaZt/f4MAA2x26s9IQQD/YvP1E9Pg3wEZ
aHBt6URFPtaaQv1p3sB+/iouDuI0mgU=
=L9fk
-----END PGP SIGNATURE-----

--zkw33pnzrz7sbey3--

