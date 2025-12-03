Return-Path: <devicetree+bounces-243951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB6DC9E9D2
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 92791347E42
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D922E1743;
	Wed,  3 Dec 2025 09:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg0a5Jw1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79E12E0B5D;
	Wed,  3 Dec 2025 09:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755978; cv=none; b=Lyxfi+fvv09Dp8M01/p0bQJTcDQfBEjNjXlwTTBLuXHcvz03PIcFdCaVva5dy7aaMbZPv/gCS6ogxc8QHNZ4+STDl4IUQHpE+xQegFzY9hv+5Zd1f/3nZD52zF93yrTeeCXij1aLu3Fa/9hHHfatI84OvS0wDPWcIfFktJtPlbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755978; c=relaxed/simple;
	bh=6PyAJ7Eg3clMxeFkKYcFWYPwBDOpc67yNwjsHzUqEDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sm+1tnWkJN4e98dPfNGVrfdqSjEh+ZgPyMCvjBZ243ctUKl21fM1wxZjIBUICvAV8hgHHDtTCsJDh/gHmyx4V2lhSOKW6z1PpfkNMtqRhBU2jvPfaAsrXIR7KJ9SgPUnJfDbCOAIJq8Kx2dLgvySt/Srd9fhSXWGMNKCzXBzhFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg0a5Jw1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CEB7C116B1;
	Wed,  3 Dec 2025 09:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764755978;
	bh=6PyAJ7Eg3clMxeFkKYcFWYPwBDOpc67yNwjsHzUqEDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jg0a5Jw15hTfmxhXB/43MkYtQbAbuvrZ3oGP7F/MgEsT4NlSQ8jmWxHis/Bmtv70F
	 fvqVYrjBzpFLkOg47NdjSd/OePQxNQ89IdiWjIu0/Z2+heTC/rBdv60NtjttJfMuEd
	 LIf8qkebWNtc1Nx5CfQDDVABmXa2O4y6wTxJ3cEg3r/DDUKnqz5Yt/qi7lZBqaLcrJ
	 LJD5g9PXnivpTkcr2/iybdKl7PohB7vloQhgy7J3ql5SSRMGDN1U7cVtH/nOfI0uN/
	 xOcQQlnqJw+4VvdqFFZnGuv+JV+JHHHLhD4aXbkdhU8ykahrPhz/9+USvdWtcTzNpG
	 xmDyzdqU0Z6vw==
Date: Wed, 3 Dec 2025 09:59:33 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: q691800735@163.com, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: canaan: Add K230 clock provider DTSI
Message-ID: <20251203-glowing-janitor-7220bf3bcadc@spud>
References: <20251203092643.219600-1-q691800735@163.com>
 <935ab772-fc9d-443b-8c8d-f2d17f9259aa@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qb3wmTQxO5Vd90Cz"
Content-Disposition: inline
In-Reply-To: <935ab772-fc9d-443b-8c8d-f2d17f9259aa@kernel.org>


--Qb3wmTQxO5Vd90Cz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 03, 2025 at 10:50:18AM +0100, Krzysztof Kozlowski wrote:
> On 03/12/2025 10:26, q691800735@163.com wrote:
> > From: jybruceupup <q691800735@163.com>
> >=20
> > Add clock provider DTSI for Kendryte K230 SoC, required for subsystem
> > clock management and boot.
> >=20
> > Signed-off-by: jybruceupup <q691800735@163.com>
> > ---
> >  .../boot/dts/canaan/k230_clock_provider.dtsi  | 2724 +++++++++++++++++
> >  1 file changed, 2724 insertions(+)
> >  create mode 100644 arch/riscv/boot/dts/canaan/k230_clock_provider.dtsi
> >=20
> > diff --git a/arch/riscv/boot/dts/canaan/k230_clock_provider.dtsi b/arch=
/riscv/boot/dts/canaan/k230_clock_provider.dtsi
> > new file mode 100644
> > index 000000000..9d193ca22
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/canaan/k230_clock_provider.dtsi
> > @@ -0,0 +1,2724 @@
> > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> > +/*
> > + * Copyright (c) 2023, Canaan Bright Sight Co., Ltd
> > + * Copyright (c) 2025 jybruceupup <q691800735@163.com>
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2 as
> > + * published by the Free Software Foundation.
> > + */
> > +
> > +&sysctl_boot {
> > +/* osc24m clock */
> > +	osc24m: osc24m {
> > +		#clock-cells		=3D <0>;	/* only one clock output */
> > +		compatible		=3D "fixed-clock";/* It's clock source, no parent */
> > +		clock-frequency		=3D <24000000>;	/* clock freqence is 24MHz */
> > +		clock-accuracy		=3D <0>;	/* software assume clock no jitter/wander.*/
> > +		status				=3D "okay";
> > +		read-only			=3D <0>;
> > +	};
> > +
> > +	/* pll clock */
> > +	pll0: pll0 {
>=20
>=20
> NAK.
>=20
> Not at all Linux style (actually DTS coding style), not used, no benefit
> of any of this.

I don't really understand what jybryceupup is doing here, because there
is someone actually working on a clk driver etc that is in a pretty good
state.

--Qb3wmTQxO5Vd90Cz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTAKBQAKCRB4tDGHoIJi
0tYaAP4+hSGWXAONngfqJuubpxx6tF0rLWldnj+M0HistGEVwwD9HkUpndb4OF9/
b2heGIhfOB0l3II+tibN53ZkH+l6pgM=
=Q6Oy
-----END PGP SIGNATURE-----

--Qb3wmTQxO5Vd90Cz--

