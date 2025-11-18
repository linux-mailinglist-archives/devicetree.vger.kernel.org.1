Return-Path: <devicetree+bounces-239667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 371CDC6843E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 251CB4E1F09
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9289F25F79A;
	Tue, 18 Nov 2025 08:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9BqL9sC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E269208AD
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455569; cv=none; b=Qqx0nMjv0bBikCHHzjydHkrmurz7VK5oK3DB2Zjj3ak+Rt+va8YbhN+H1su3/0t+sTeeBMTAv3Ku5g9xynMP/WR1/OWETqUEAbwLwSsRha28egsBIdZLOpebORqlzTzW893GMb2/ieD5z4Pe30U+9HtK85xj3DeUVMb+ITMzots=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455569; c=relaxed/simple;
	bh=YvYiPjHOM8NIfQlhPdCRp5N/8V+pXh6nu4IWU6ay+Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WZmYyTrDcrcoGTg6L2TaO2ZZVsqj1CxQW/UBeruZ8wtc8ih8iwXRoDjwT1jBIv6j37Au2wUA4vYNDXeyCLQh+Le4SkYWrfpWNfZrP5L5pJF4+QrkJw/kalosf4VWlvjp6U20BqPCPnSJNdutSNckV6v+ZjlMOSMGujnj3/EO28U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9BqL9sC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62C75C16AAE;
	Tue, 18 Nov 2025 08:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763455568;
	bh=YvYiPjHOM8NIfQlhPdCRp5N/8V+pXh6nu4IWU6ay+Gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h9BqL9sC7rSP2RImewjIFVoW79HEVhDLrOFjaKLV3WStkQLGIYKDw2gbRi4bHwzCv
	 DX93oswySb5t3bTJ1i1EN7asT8ZVNrmhpXDyBD2ojzGAFCOzv9tkFeBB3e22n+ksTM
	 gd0md+SdHFkFqaQxmSp/B16ihoP7zLogEsUDYF/tG2VEhH76wm1nDzNk0MMc0r7GPf
	 t5D44hH7TrTQmhRR2ZUMGQf9HH1lTH+oAMahf2/R/d6x0u6Esn/A5Um87yvxNppur8
	 b5PZD51EiTTEdxs5ZsQIsTq52QeWoUQbrL2KuSVsmfkuhYjwfam8bJ7fsDbWupfbTz
	 df38LuO01hLyA==
Date: Tue, 18 Nov 2025 09:46:04 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, 
	tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, 
	sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, 
	andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, 
	Laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
Message-ID: <avdnpwnxs6cql7eyckdt37szpcf5ztgxlc7juwu6tqj5xxu56a@nrwljig2p67i>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="vhhdw6enyjwagv75"
Content-Disposition: inline
In-Reply-To: <20251113192939.30031-3-macroalpha82@gmail.com>


--vhhdw6enyjwagv75
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
MIME-Version: 1.0

Hi,

On Thu, Nov 13, 2025 at 01:29:38PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the dw-hdmi-qp driver to handle devices with missing
> HPD pins.
>=20
> Since in this situation we are now polling for the EDID data via i2c
> change the error message to a debug message when we are unable to
> complete an i2c read, as a disconnected device would otherwise fill
> dmesg with i2c read errors.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

You must also disable any mode using the scrambler when there's no
hotplug interrupt available.

Maxime

--vhhdw6enyjwagv75
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaRwyRAAKCRAnX84Zoj2+
dgS7AYDBkt3cBPdcMD/mu/EnEtZBCdmbK+q861NQ/ztfDgSf9WrJs+FyQ72/qz5L
ahgVQHkBfi45ZGU7evYuDl47wxsJJd0obRVJDJlNk3eavEFouTcjjuIx3BjGwWhe
Tm+tve3o3w==
=LiPG
-----END PGP SIGNATURE-----

--vhhdw6enyjwagv75--

