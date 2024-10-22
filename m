Return-Path: <devicetree+bounces-114308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 817349AB428
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 18:37:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A197E1C2061A
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 16:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB8C1BBBEA;
	Tue, 22 Oct 2024 16:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/rfhmDm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2B91B654A
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 16:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729615017; cv=none; b=q5o/FW+tRxXFAObR3sLHQVOoq/9MZzfK8QRnvn3EEMGW6SmCMRMDXuswRrejhs5skgckvZE6ZrNjfbnTM02n46t5bsdO9/gEu5mQLFyVylqccwpM/5DDSmn+OXuiJEv1otKbpV9mXQrePmoYCrwTerovbdZv7o+AdewFcVxXFkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729615017; c=relaxed/simple;
	bh=BTDD3Fw+/u3I447F7vF/WWQoCy0CZu+9QabZG+ZAo/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bAijOem5GQvKxLklsF0nBYDFqMP4fWvFXIy5UTAQmPsfK7abKhvgW5JRqAuzKBf/rhZOYQM5KYYRfkgqFxYe4dEcFrj3nBETzvbnTP5einr6c2rYjnlho/JJsYhgBddDUPvwCbzsn8rgW7ce1esgadH05WRUwhBTPQ6HXMz0Fq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/rfhmDm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A58DAC4CEC7;
	Tue, 22 Oct 2024 16:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729615017;
	bh=BTDD3Fw+/u3I447F7vF/WWQoCy0CZu+9QabZG+ZAo/k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A/rfhmDmozheiqVB0k8mYEhZpyVjOTHCZBJTayCR17DDZbpO6sA0+248C+lPOR2wS
	 GgoNww8s2WiDPGLwnB3gUpYYWetpUWI5asMy1KvO7HzR72Qrrs/KU+63t2Q7GsrXu5
	 TArt3BROdroNVKZPT7F+DDIRIAjfyb8qyiw4xNr/6dCSrDd0z14d1gpRNU3yjW6IZF
	 vKeF6SipwEjneRdzZQXpFvUQQtnJVJrTs9zKl9nLFEmCKnQlvcB2ej8snWnwBw5R1o
	 vf/0Fol2n7dOEPh35ko/dmb1kncT/yG1Fpqb2vUjiP493cVzICTHOi8leo2khbMv4k
	 0k4qozhqOWV7A==
Date: Tue, 22 Oct 2024 17:36:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Inochi Amaoto <inochiama@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>, Guo Ren <guoren@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property
 for snps,dw-apb-gpio-port devices
Message-ID: <20241022-bulb-ruse-f9ba00aea2b0@spud>
References: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
 <d5vjohhftbx5zlsay6hfij7p5qbcrrebnj2sspsdtkgrkz4scq@aifcdtxcqqqd>
 <gtwdkkeckdtcfkovfljfoaplrhdjabqwagcvvub7zdnwp3dyqj@lztfrve6zhmh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KaE63Gt2cT8ASydl"
Content-Disposition: inline
In-Reply-To: <gtwdkkeckdtcfkovfljfoaplrhdjabqwagcvvub7zdnwp3dyqj@lztfrve6zhmh>


--KaE63Gt2cT8ASydl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 04:08:37PM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, Oct 22, 2024 at 06:04:17PM +0800, Inochi Amaoto wrote:
> > On Tue, Oct 22, 2024 at 11:14:30AM +0200, Uwe Kleine-K=F6nig wrote:
> > > snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
> > > ("dt-bindings: gpio: dwapb: Add ngpios property support"). The
> > > respective driver supports this since commit 7569486d79ae ("gpio: dwa=
pb:
> > > Add ngpios DT-property support") which is included in Linux v5.10-rc1.
> >=20
> > Please add Fixes tag.
>=20
> Ah, I expected that the usage of snps,nr-gpios in the dts files predates
> the deprecation. So we could add:
>=20
> Fixes: a508d794f86e ("riscv: sophgo: dts: add gpio controllers for SG2042=
 SoC")
>=20
> . That's a commit that just entered mainline in v6.12-rc1. But I'm not
> entirely sure backporting to stable is sensible.

Ye, I don't think I'd bother with a fixes tag even, since it'll probably
get backported automagically if you add one.

--KaE63Gt2cT8ASydl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZxfUpAAKCRB4tDGHoIJi
0k5DAQCzNXMFFKBiB54D0Echm2fKmYgLO5iCAlqcVTg9iNWCUwEAi6+guhhWmycD
XSTGQVYZOrBQAFe1/x23lGp7SoyulQY=
=7tvp
-----END PGP SIGNATURE-----

--KaE63Gt2cT8ASydl--

