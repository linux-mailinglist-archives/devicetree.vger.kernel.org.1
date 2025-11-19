Return-Path: <devicetree+bounces-240121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D22C6D93C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A16CE356571
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB3A93321B9;
	Wed, 19 Nov 2025 09:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYi6Gkpz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B534131B13B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763542948; cv=none; b=fwJZ5iTUWSwZRA+VvqsRNypERla1FijnPZFIgu4KxBNLmKJt4A67Q+VH5cWXx1suiQtszsTbP/kSs7GC07YJz0NBvwuhg8ut/UmW0qGgsx/Tx7v7LbO/e7PmNPvWCv2BnlK86GpUGJHPsR0RIlJ4xGcY7dZcdyX++4JuYiQPdis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763542948; c=relaxed/simple;
	bh=x3Erefu0LLIavVKjiZTP0JB8l64h9R/5ClLSpQhbGmg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E80QCoOEBbrMYW6C8fKwEy9QHiSxNwzMoxMvYDGZ8xWU6KKbKUZqW4/YtugYMa72fgu07kBnASIeqTH+vrgefG/6wQLOOtUXhCXbhUKGqJszZf+R2JNHfpii2mYaSbVr0LMxNiiud3LNigjp/G8yob+4iwX2fvzbKRXHNhWrvpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYi6Gkpz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7628BC19423;
	Wed, 19 Nov 2025 09:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763542948;
	bh=x3Erefu0LLIavVKjiZTP0JB8l64h9R/5ClLSpQhbGmg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tYi6GkpzCeYDh1M9Oj5ex3zEIevjErNC1YfGJLc6QV17ffViR+uyBJv4WhyhL1Ghs
	 ijKO4fg1Rho4FimCnwioQOTW3dZvg8qpr+wxiE7NCq67T3bMXW6WumkeQB1maoZJCP
	 7yRCL/r8EhpwkKH0DQouhgmvv6BeLq5cNb8sV/SkXWa6PsqIp1Rw2g/d4cCGuZ/G+C
	 hjwREyoGufMmZuG5BvWDQwJUOzPCusnaM/gosnQvo2d2f/ltz7eYTNmQY8nktDr0Xf
	 CJQ33lM8XvrPP14dguRvy3IR8cJmufPXAFotYGhqyQwtg3Xp2/bJcCO7mmtWhLCSYp
	 TvfsxOd3OhalA==
Date: Wed, 19 Nov 2025 10:02:23 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, 
	heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, 
	dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, 
	krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
Message-ID: <hgwfztkwk4qgvefwo2cdedzas3rzlhx6yek6dgldkgaq2jskvw@exxqujjpa6bl>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
 <avdnpwnxs6cql7eyckdt37szpcf5ztgxlc7juwu6tqj5xxu56a@nrwljig2p67i>
 <SN6PR1901MB46548ED8D4BA1184E0EA7DC3A5D6A@SN6PR1901MB4654.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="wdbqem6hd3bixddf"
Content-Disposition: inline
In-Reply-To: <SN6PR1901MB46548ED8D4BA1184E0EA7DC3A5D6A@SN6PR1901MB4654.namprd19.prod.outlook.com>


--wdbqem6hd3bixddf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
MIME-Version: 1.0

On Tue, Nov 18, 2025 at 02:36:09PM -0600, Chris Morgan wrote:
> On Tue, Nov 18, 2025 at 09:46:04AM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Thu, Nov 13, 2025 at 01:29:38PM -0600, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >=20
> > > Add support for the dw-hdmi-qp driver to handle devices with missing
> > > HPD pins.
> > >=20
> > > Since in this situation we are now polling for the EDID data via i2c
> > > change the error message to a debug message when we are unable to
> > > complete an i2c read, as a disconnected device would otherwise fill
> > > dmesg with i2c read errors.
> > >=20
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > You must also disable any mode using the scrambler when there's no
> > hotplug interrupt available.
>=20
> Is there a simple way to do that? I'm not seeing any references to
> scrambling in the current driver.
>=20
> Should I just limit the rate to HDMI14_MAX_TMDSCLK (340000000)  under
> dw_hdmi_qp_bridge_tmds_char_rate_valid() if using EDID polling? A
> document I found online from Synopsys [1] claims that scrambling is
> used by default at rates above 340 (if I'm reading it right) and used
> opportunistically at rates below 340.

Yep, that's what you should be testing for :)

Maxime

--wdbqem6hd3bixddf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaR2HnwAKCRAnX84Zoj2+
dl1hAX91CWnkZWqyujHg7Ra5UTVcO8/PTCDzBEBf9nV+OEkHsOhQhwSIeC+T7Vb6
M3s4gOgBewQnAe2ln3VIklSXwTyJhAuBujf/VUAbPACBFrFB6rc7YGTmq0PLYpG8
mB6GUJvyAA==
=P/8l
-----END PGP SIGNATURE-----

--wdbqem6hd3bixddf--

