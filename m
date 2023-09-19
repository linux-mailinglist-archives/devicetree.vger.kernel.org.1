Return-Path: <devicetree+bounces-1273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC17A5A7C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:06:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C39071C20D26
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74474358B5;
	Tue, 19 Sep 2023 07:06:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFDC35890
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76AE9C43395;
	Tue, 19 Sep 2023 07:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695107169;
	bh=k1P6z5wHVApz0Ugn5ooy0U8BX0ksIOJN92nevRZERmA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jsA3cDR/t9npciBlqTBfNl1TA2kaDmX46ZWNBKFNg4RX2czP+QvIyd37t/LJ0wl3R
	 WVllu18cbxW1gTl1aKcQw/JuLJL6wW7Ci8DdDQhu7lUK7Uu2bSeXF3R/zITCwTPSEx
	 REF1vkjwvlEaXvci60RE9CKTIyalrTLsNwgcDCtjUg4mfwDlat5SWUKWZ4FiPyVt6f
	 B5X6cf63xIm/vWAMCYWSO1gTt4Kl+oPRFNIrK+PYIg0h6hXqqEgNNs+aiyX8s0Q5Ld
	 ayf6KHRW1tJv+TzOggMQi69DUtqhChZxjXKri1cFs9XY1o3L8h2JNn9sdt6Eney2Yk
	 e3CZeTi/AkNrw==
Date: Tue, 19 Sep 2023 09:06:05 +0200
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
Subject: Re: [PATCH 05/13] clk: keep track of the trigger of an ongoing
 clk_set_rate
Message-ID: <gyx5a6sacm6xens4jmxqynehloumsxyft35u6nd445qsv5345l@553vkj27ywef>
References: <20230918-imx8mp-dtsi-v1-0-1d008b3237c0@skidata.com>
 <20230918-imx8mp-dtsi-v1-5-1d008b3237c0@skidata.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mj5p5b5znkfhvheo"
Content-Disposition: inline
In-Reply-To: <20230918-imx8mp-dtsi-v1-5-1d008b3237c0@skidata.com>


--mj5p5b5znkfhvheo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 12:40:01AM +0200, Benjamin Bara wrote:
> From: Benjamin Bara <benjamin.bara@skidata.com>
>=20
> When we keep track of the rate change trigger, we can easily check if an
> affected clock is affiliated with the trigger. Additionally, the trigger
> is added to the notify data, so that drivers can implement workarounds
> that might be necessary if a shared parent changes.
>=20
> Signed-off-by: Benjamin Bara <benjamin.bara@skidata.com>
> ---
>  drivers/clk/clk.c   | 12 ++++++++++++
>  include/linux/clk.h |  2 ++
>  2 files changed, 14 insertions(+)
>=20
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 4954d31899ce..8f4f92547768 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -33,6 +33,9 @@ static struct task_struct *enable_owner;
>  static int prepare_refcnt;
>  static int enable_refcnt;
> =20
> +/* responsible for ongoing rate change, protected by prepare_lock */
> +static struct clk *rate_trigger_clk;
> +
>  static HLIST_HEAD(clk_root_list);
>  static HLIST_HEAD(clk_orphan_list);
>  static LIST_HEAD(clk_notifier_list);
> @@ -1742,6 +1745,7 @@ static int __clk_notify(struct clk_core *core, unsi=
gned long msg,
> =20
>  	cnd.old_rate =3D old_rate;
>  	cnd.new_rate =3D new_rate;
> +	cnd.trigger =3D rate_trigger_clk ? : core->parent->hw->clk;
> =20
>  	list_for_each_entry(cn, &clk_notifier_list, node) {
>  		if (cn->clk->core =3D=3D core) {
> @@ -2513,6 +2517,8 @@ int clk_set_rate(struct clk *clk, unsigned long rat=
e)
>  	/* prevent racing with updates to the clock topology */
>  	clk_prepare_lock();
> =20
> +	rate_trigger_clk =3D clk;
> +

So I don't think that interacts very well with the clk_hw_set_rate
function you introduced. It looks like you only consider the initial
clock here so you wouldn't update rate_trigger_clk on a clk_hw_set_rate
call, but that creates some inconsistencies:

  - If we call clk_hw_set_rate outside of the set_rate path (but in
    .init for example), then we end up with a notifier without a trigger
    clock set.

  - More generally, depending on the path we're currently in, a call to
    clk_hw_set_rate will notify a clock in different ways which is a bit
    weird to me. The trigger clock can also be any clock, parent or
    child, at any level, which definitely complicates things at the
    driver level.

The rate propagation is top-down, so could be get away with just setting
the parent clock that triggered the notification?

Either way, we need unit tests for that too.

Maxime

--mj5p5b5znkfhvheo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQlIXQAKCRDj7w1vZxhR
xSxwAP9TOJcURzPGQY3c2TfpgODK7lMlfXFTP1e2ogRxYDAclAEAmno/IEaHDUzH
BCppPUxlUa8+7KocKNf231WBnEv+ews=
=AhJb
-----END PGP SIGNATURE-----

--mj5p5b5znkfhvheo--

