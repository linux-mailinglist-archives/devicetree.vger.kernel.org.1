Return-Path: <devicetree+bounces-113611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FE29A66A3
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:33:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87A5B1C216CA
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E801E7C18;
	Mon, 21 Oct 2024 11:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHMBHgj/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18381E7C0D
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 11:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729510397; cv=none; b=REV/+z4DeJCOlkwCknv6VIY86aPUHsLMopawDP7v+nWhf2Up4EAL+3MbPSbX5QFr+M8eUo4YpblKM3ynEalZFbqYcRzTpi95khajK/4Qhb8USx1zkl6pG3V7kLFMBIx8K4wRlCGXenFb1B1t+/cVsgP1rX1OikO0edc2wuICGzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729510397; c=relaxed/simple;
	bh=2LLQxOMuf9S0buYD37Y2OfQFkxWkRTFVskJkOkf/ANo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ecVmpG+VarsmK1zi5TD2KNiK/kO6g2I3Mm971epKlVm4FX7CL3lpfNpuuQf+ED2uEpXRuzSyfzDMQj3WbiMiZ5+maAuw024lDAKke21rssQax8v4uFFWLKxjJysTOAlNU7UZMhgCZukPcNRXiisx+8u7STVIWZe1t32uzei3z1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHMBHgj/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CEE7C4CEE5;
	Mon, 21 Oct 2024 11:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729510396;
	bh=2LLQxOMuf9S0buYD37Y2OfQFkxWkRTFVskJkOkf/ANo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JHMBHgj/lr1QyAXFbhMyeYU04qy9+QyasbiSgGl57LpIHYlTyGMVe4XPg9yPI3BdS
	 rLarWgs0rRO0O1UarSGdovUQ7CT+lg6R3CfVKpPcn5cMXhSCfIfjVvvgmd3tBDhC2J
	 zuFyW6R8F+J3Ys1KLdbuJc1bWykchWeDFp5w9FYRAUejQCt3YZHKHQxKcP3UvrUYpu
	 ycIPG5wPYXNqIb+mWP+Htr2gvbZBlGFC/V/XY7x7HxMGuxSHHM/hcPF5eou+bk0ocW
	 yg89dgdbCKmwubniOfAocDaUxSMAong6DHeXdSgK1mS+a0RepyrG5/TEgyoo1HgScQ
	 AhbFDQt6HKeIA==
Date: Mon, 21 Oct 2024 12:33:10 +0100
From: Conor Dooley <conor@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
	andyshrk@163.com, tim@feathertop.org, jagan@edgeble.ai,
	dsimic@manjaro.org, michael.riesch@wolfvision.net,
	sebastian.reichel@collabora.com, cfsworks@gmail.com,
	kever.yang@rock-chips.com, jing@jing.rocks,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK
 5C
Message-ID: <20241021-extruding-cupping-6fca716833a0@spud>
References: <20241021090548.1052-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7uwwh/bCr4BSDb1p"
Content-Disposition: inline
In-Reply-To: <20241021090548.1052-1-naoki@radxa.com>


--7uwwh/bCr4BSDb1p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2024 at 09:05:46AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK 5C.
>=20
> Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
> RK3588S2 chip.
>=20
> [1] https://radxa.com/products/rock5/5c
>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--7uwwh/bCr4BSDb1p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZxY79gAKCRB4tDGHoIJi
0lSlAQDRzeczWrw1XQGDAA7uX+xSJ5LdX7m2VJBTy/lI1gpvUwD/TPpnCw5EGeKE
/xtOxbsXD8HPxqu7m6MQWh2c15yo5w4=
=qdYZ
-----END PGP SIGNATURE-----

--7uwwh/bCr4BSDb1p--

