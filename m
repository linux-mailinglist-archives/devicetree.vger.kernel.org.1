Return-Path: <devicetree+bounces-49909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98387885B
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 19:55:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A83FE285761
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 18:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0EFD56745;
	Mon, 11 Mar 2024 18:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuG2Pz7H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6495DF24
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 18:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710182991; cv=none; b=FZJb/p3uOF5IX+7bjNGTiZEu2dja8YPr9wHwL7ZWZZByMSlS7PO71/cEo2ORZIt6kcT2yU5Z7JqCScST1ras2zDlP+h4hwweea1s8hAljNJ9SuXwT7SMdkhLVC2NasrNRgfeXx4+EX52Ue52UrnfesGzhOnOAfzMo5BrgVozFl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710182991; c=relaxed/simple;
	bh=FAD8J1RUlqaC4G8EsEwHNb448NcJqUS5MI3bQZCirEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Eq+J//gRCJFt2SMVpW3/SMT0fL9dlKgueZ4JzUZdXS/WyQaOnqFLnZgqtHXbtTJEcLNGT0JT6+unRbnzDaS/CReEYQAt8NL3mlQNdyDnPHYc/ZmYMwwDV5VO6XjoY4bewu85+Dk43vVw6+lsXZjsL0RGGeVl5Yt6MsH5RmdNDFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuG2Pz7H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59482C433F1;
	Mon, 11 Mar 2024 18:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710182991;
	bh=FAD8J1RUlqaC4G8EsEwHNb448NcJqUS5MI3bQZCirEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XuG2Pz7HAXeGCG6GKVk9LY02VzoL32VGGcJe9TE/2XjDIgL0NLROZR8qijW9MXMfL
	 8eXWBhuRqEBK8ott/66W42CTtuA4yP/n+YVkPsxr4aMhBrJFFJeXjpjZdgoRCLFE8m
	 x+LPonrmgKNU4kRqZV1IYHEa1+qHb3a4I7bLTh+1kBILAmSZoGfLM4InXNXDnpZP4k
	 Lp/+HBovl2fNtGMqSULegCChGmRWIKGC3Xch1CEILt+uzV7pVNoM3q5ei+URLkxXKp
	 8JKGBA4TbdEmmqgE74vxXBZ+qmeFb9QeEuohO4eVS5lsd49E5moswdlR6Yrki4ZHkk
	 tCOMUJRWoCV2A==
Date: Mon, 11 Mar 2024 18:49:46 +0000
From: Mark Brown <broonie@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map more
 generic
Message-ID: <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eR+iSIT8d181mLfm"
Content-Disposition: inline
In-Reply-To: <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: boy, n:


--eR+iSIT8d181mLfm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 01:28:27AM +0000, Kuninori Morimoto wrote:
> Current ASoC CPU:Codec =3D N:M connection is using connection mapping ide=
a,
> but it is used for N < M case only. We want to use it for any case.
>=20
> By this patch, not only N:M connection, but all existing connection
> (1:1, 1:N, N:N) will use same connection mapping. Then, because it will
> use default mapping, no conversion patch is needed to exising drivers.

The KernelCI bisection bot has reported that this is breaking boot on
meson-g12a-u200 in -next with a defconfig+debug configuration:

<1>[   39.211516][   T39] Unable to handle kernel paging request at virtual=
 address f999199999999999
<1>[   39.215123][   T39] KASAN: maybe wild-memory-access in range [0xccccc=
cccccccccc8-0xcccccccccccccccf]

=2E..

<4>[   39.498854][   T39] x5 : 1fffe00001b50887 x4 : 0000000000000001 x3 : =
ffff000013f44be8
<4>[   39.506914][   T39] x2 : dfff800000000000 x1 : 1999999999999999 x0 : =
0000000000000007
<4>[   39.514975][   T39] Call trace:
<4>[   39.518356][   T39]  snd_soc_compensate_channel_connection_map+0x210/=
0x578
<4>[   39.525461][   T39]  snd_soc_bind_card+0x368/0x1280
<4>[   39.530575][   T39]  snd_soc_register_card+0x2e8/0x3e0
<4>[   39.535949][   T39]  devm_snd_soc_register_card+0x58/0xd8
<4>[   39.541581][   T39]  meson_card_probe+0x25c/0x388 [snd_soc_meson_card=
_utils]
<4>[   39.548864][   T39]  platform_probe+0xcc/0x240

Full boot log here:

   https://storage.kernelci.org/mainline/master/v6.8-rc7-250-g137e0ec05aeb/=
arm64/defconfig+debug/gcc-10/lab-baylibre/baseline-meson-g12a-u200.txt

with the config here:

   https://storage.kernelci.org/mainline/master/v6.8-rc7-250-g137e0ec05aeb/=
arm64/defconfig+debug/gcc-10/config/

The full bot report is here:

   https://groups.io/g/kernelci-results/message/52435

and everything does look plausible about the failure.

--eR+iSIT8d181mLfm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXvUkkACgkQJNaLcl1U
h9CzFwf+IVjulj8rrjAsSl/s8CHiO4oW5oLannZGrPQY3r75RVxMKynf8v07JLRg
NAHdIM5fr5c/GdwGxRFr9Y/40rtB7hGMtBGPfP569ofLJtKcv8HZUf6q1iBNNq8S
sGQtSbBL1h+m14sTv6uNNnhZnXq8eoeXg3ompC3kAo8Jk6l2y2twKRQ4RtT39kta
ge2sIhJYrfNybrQhEWOm0UhI2MNicn3scOfwKYxBwy086ZHyiB5k58qPyn4+Kqyj
8vvN5MFtQ91V9bbqkU4RdvJoQ/DpYs4owNg7n7zLs86OyoNlQOk6+AbmtzuLSRFB
Ettbkc78XVTJoFF+7CPiyOTDD+ckEw==
=gdVL
-----END PGP SIGNATURE-----

--eR+iSIT8d181mLfm--

