Return-Path: <devicetree+bounces-1277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A1E7A5AC4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BD141C20C31
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7013C28699;
	Tue, 19 Sep 2023 07:22:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AAEBA20
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D791C433C7;
	Tue, 19 Sep 2023 07:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695108131;
	bh=qgeDAcm+eFxaDNpoHATRJfJ3GIVR3JDf6CwlvDJ9Hdg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V4HyzUmM6NZAHCqsSdBwChfVQ9vb+mbJnDvnR1AuafUhWBK8agKMQvyTxRy1AIaar
	 gWEnVH7b3opi/SyBv31tCeKJtVRXoxV7GNKllD9WtdJqrPUFa4AmeRfWm/jHoiUmcj
	 soxIOiH5yp8+OubvyaWdJ6jYlZU5/QoiN5dPoalPvuvjt41lPrON9UeGK5FOJ5OYcd
	 NfQhpcKP6bDENs58VVUHADVmfMP3x80uKq27SEXBERvfWOjixPeaUltAlMF3B33+k1
	 DLelCMWw0ML+BbJBMDX2QawLBZPtqeIIBBvoQ1C+lZbjarSQrs9ZTAjqqzjBNczJ+d
	 uqYXLYWaJ4d3A==
Date: Tue, 19 Sep 2023 09:22:09 +0200
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
Subject: Re: [PATCH 07/13] clk: detect unintended rate changes
Message-ID: <izjejcqxv5jpnwpgdzuiibvhajw5vy26hpjlknefuepjboppkg@ywkvxiup4xqg>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
 <20230918-imx8mp-dtsi-v1-7-1d008b3237c0@skidata.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3pz4fjkoxsas7y5a"
Content-Disposition: inline
In-Reply-To: <20230918-imx8mp-dtsi-v1-7-1d008b3237c0@skidata.com>


--3pz4fjkoxsas7y5a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 18, 2023 at 12:40:03AM +0200, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
>=20
> As we now keep track of the clocks which are allowed to change - namely
> the ones which are along the ancestor line between the rate trigger and
> the top-most changed clock

I'm not sure that the fact that only a clock between the clock
triggering the rate change and the top-most changed clock was allowed to
change has ever been a thing.

This puts a fairly big pressure on the tree propagation code, and
whether or not that can be done is completely context-dependent.

Devices like UART, I2C or audio devices are rate change sensitive, and
yet usually have internal dividers to accomodate for their parent rate
so don't usually care as long as they are notified.

Similarly, all the non-rate-sensitive devices (like pretty much all
bus/registers clocks) don't care at all about what the rate is, so that
requirement is making a rate change going through less likely, without a
particular reason only for a handful of devices (display in this case).

Also, this rules out any child of a clock from being allowed to change?
That looks wild to me :)

> we can run through the subtree of changes and look for unexpected
> ones.

Again, I'm not sure we can say that those changes were unexpected. They
very much were expected to change to the CCF so far.

> Shared parents must set their rate in a way, that all
> consumer-configured rates are respected.

Again, that entirely depends on the context: the clock tree topology,
the devices involved, what their drivers support, etc. I'm sure it's
true in your case, but I'm not sure we can make that a generic
statement.

> As this is sometimes not possible and clocks sometime doesn't require
> the *exact* rate, we might have to find a way to find out if it is
> *exact enough*. Then we could fix it in the core.

And "exact enough" entirely depends on the context again, so really, I'm
not sure we can (and should!) fix that at the framework level.

Maxime

--3pz4fjkoxsas7y5a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlMIQAKCRDj7w1vZxhR
xc6LAQCWG43IJjPcdV6NAx1M8x90MI1vXcM3D6N8NzmrVpQnJQD9EeUCxENPJjhD
Hv0cIlQ3XenPhpGlG2OclHNzNRlYhw4=
=HI+3
-----END PGP SIGNATURE-----

--3pz4fjkoxsas7y5a--

