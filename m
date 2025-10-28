Return-Path: <devicetree+bounces-232316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4A0C1688E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D750F4E14BB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D31335BCE;
	Tue, 28 Oct 2025 18:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrdQjSnk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2AD158857
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 18:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761677271; cv=none; b=Unvx2U9jatT8KkPm7S1WRrexJgMf3eNCLRQIMGw6zszymU2peupdYeWEjFQW2snYYjddh+Dp3WB4dqyM1wHjurKQM7/2kCMW2AQ+DpPZLNAGVCfiE7cjpyJzeyEUng3GTJBHv7tuVbtN6RctwMaxA8ZiCRXlxn896a30CXXPfMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761677271; c=relaxed/simple;
	bh=RtBcRPxs5jhSayr4jv2pJ0F4FPRtsp+bbhHwArcrVfs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Azs5V37l7ri5esJOF8HF5ViNl3LowWE4iHjZxckiQUMf/ldThMaO44EN2oqYSUhN4JugFEcBex7BogLpPArUt4D9lwZ3sgVYAefhu4um6chC2V2rEyWluykGZDchVKiSAqQdtd4WIW2L/bAEvOTF5r4qDfutidRt9TWn9ekPdu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrdQjSnk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C9DAC4CEE7;
	Tue, 28 Oct 2025 18:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761677271;
	bh=RtBcRPxs5jhSayr4jv2pJ0F4FPRtsp+bbhHwArcrVfs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IrdQjSnk+vnBYQlVzJOVAV8zLP2mXcG7+J+nl7THYKhMc7Jf43ceP1I6NsbZdvEo8
	 m84ctVJxVGjZTerRPuWxuG/1Vqj1+/BPRKeg65hacDtsexMLi95z2G2WFb00SVFiGr
	 6X6WZuBSTmO51gL7GV7HCmeUfDREjvka+y4Iv8nUIWWn22Tc3IDdqefJzYcLhbFJZh
	 SsynXsWpYIhTJh5v8qNPhq9KVeDFNNL/jq6claAEG4Y5dxF7fBh2ffR9Re7zu+Nh+G
	 dnGmUtIHF1zHMxtSLv0983ptEowPqKPSfVZYMT7oy+PlPQd0nspEuFESWGqCbZBNtT
	 PYy6sIqjitHFw==
Date: Tue, 28 Oct 2025 18:47:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Melissa Wen <mwen@igalia.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Maxime Ripard <mripard@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>, kernel-dev@igalia.com,
	kernel-list@raspberrypi.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
Message-ID: <25e500c2-3dc1-476c-b6c1-ac4098a0501d@sirena.org.uk>
References: <20251005113816.6721-1-wahrenst@gmx.net>
 <9ebda74e-e700-4fbe-bca5-382f92417a9c@sirena.org.uk>
 <a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
 <ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
 <a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
 <10a4ef77-0e70-4ef2-b1df-535b476d256d@sirena.org.uk>
 <ecd75fd5-3131-4d10-ae3d-b6f608d9622a@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PD0E34RG+MWLrkEV"
Content-Disposition: inline
In-Reply-To: <ecd75fd5-3131-4d10-ae3d-b6f608d9622a@gmx.net>
X-Cookie: Your canceled check is your receipt.


--PD0E34RG+MWLrkEV
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 07:03:59PM +0100, Stefan Wahren wrote:
> Am 27.10.25 um 17:51 schrieb Mark Brown:

> > > Is there a HDMI cable connected?

> > No, the boards only have ethernet, serial and power connected.

> I switched to the same Raspberry Pi firmware 2023-10-17 and added U-Boot
> 2024.01 as second stage bootloader, but still not able to reproduce.

> Looking at the LAVA output, I'm seeing this as the very first issue(s):

> [=A0 =A013.480675] platform wifi-pwrseq: deferred probe pending: pwrseq_s=
imple:
> reset control not ready
> [=A0 =A013.489095] platform bcm2835-power: deferred probe pending:
> bcm2835-power: Failed to get clock v3d

> Are critical drivers like clk_raspberrypi and resert_gpio listed in lsmod?

Looks like it:

   https://lava.sirena.org.uk/scheduler/job/2017219#L1616

though I don't know what else might be critical.  Note that the probe
deferral sorts itself out, there's a check for any deferred probes
pending which passes:

   https://lava.sirena.org.uk/scheduler/job/2017219#L1677

> Is there anything special in the config.txt?

Not to the best of my knowledge, though I don't know what'd be special
and it's been some considerable time since I set the boards up.

--PD0E34RG+MWLrkEV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmkBD9AACgkQJNaLcl1U
h9A5+Af/ThVnDEmyBERvHHXtD8jT5+qKB2bnXYO6OjMEkO8Fn05xHK7SAOGnN1aF
KsQMWRJpT3bM11qB4bhNL7AMCcNtIMNEwW1dh45et415h3seVMCLaUTgMuMHfo9D
ugCfXrp4BwDEb6ETPrqjKBxTCpeuXAl6my1ismHJ6VmHZpbE6O5Y0SeEV9j9KHgB
pgmkz8UXCWbHqlTDZhoIGh1FVvrYJ03cZJt0yFv02v2eUDFo0MNN9jwSS0MR4DtN
SrXvfcSuU/wpOrLCVS2xL6ulAqqV9jQH/8Dvt0zf6/Cc+iPmIGaPcgaMqylPSjr3
Y7jP4B6wEbpTDsX/e3BfM3uizCxZtA==
=ADDM
-----END PGP SIGNATURE-----

--PD0E34RG+MWLrkEV--

