Return-Path: <devicetree+bounces-77199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7C290DAC0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:35:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AABC1F226F8
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C646313E409;
	Tue, 18 Jun 2024 17:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqjUMCIB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A133E13DDCA
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 17:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718732097; cv=none; b=KJfvknbwn2sN+wT7Emik2WPyX1nm0QmjpC2nT6YQWM0Ft5wyd8qVGYiw5IcJY2ewXjHsI/yd/G8xaL83hxbPNEM4zNeNk6NbFxodUqZz7uTi6iiB76EDad2pBifDUdhF25S+J3xlsEEvrIAJPFl+QcTI4LJnhgwqUvbIUdA/6js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718732097; c=relaxed/simple;
	bh=Eg9SpS2Lrzw+GME75YTsQ7NIJ1lZ88nPumulLSrni4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qfueo4Vu4VTppM72tT8B9JwoMYQZxrUQigEZ5+2uCibMMb3wNFP5d1Wq/uGZnc43BGmtvsV0TTuPIqOGXa4+O8zB1A24Bsc6RA9dJ6hibWzn0NIvIlXT9YEizwedWzylkHXeXPiNrp1oEP1UbQM+H3LrmFUuUK6GpirqT9mdVJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqjUMCIB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EAE1C3277B;
	Tue, 18 Jun 2024 17:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718732097;
	bh=Eg9SpS2Lrzw+GME75YTsQ7NIJ1lZ88nPumulLSrni4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UqjUMCIBfZ961IPd1+RltT7pZDVUeV56jBdGUE33xuEuVk3+7qC4NP2Sv/OlEzaiO
	 pF071j7ZS4Yk7zQ4BwaFZ50arxlTh/1Q8fZA9ja95OxfKj8fVrsL6qgk6YOTdMHA6e
	 H0miICxZXLEtla+86g5cODiFbB1Q4YSXBaUGX/mRDDxH+vbKQVTz85Sd85tqk5FCav
	 ukOki3h1U/UFPTvO8Ve5E4BJppdP30bDWyvYfRHwccumfQAOk2U1Qv3hep3nxPacrG
	 JLW3MUNs9tqPzff0kiXv7UQfpGkcdFdEsT4SLPRwiFDQeD3uIKdwUqLxsY+fjmBcfL
	 Nya+Iq4mSOeig==
Date: Tue, 18 Jun 2024 18:34:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
Message-ID: <20240618-hurler-aerospace-1e42dc3c7fe9@spud>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-12-ajones@ventanamicro.com>
 <d0abe3e0-af0f-4693-b943-57ea3fc2189f@rivosinc.com>
 <20240618-581fb4c20b4fe05d76eafa44@orel>
 <20240618-deftly-operation-de4f8ac260d5@spud>
 <20240618-e898082d22cbc508c5655f84@orel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XaeHdozvGsU2g9qA"
Content-Disposition: inline
In-Reply-To: <20240618-e898082d22cbc508c5655f84@orel>


--XaeHdozvGsU2g9qA
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 07:05:41PM +0200, Andrew Jones wrote:
> On Tue, Jun 18, 2024 at 05:59:22PM GMT, Conor Dooley wrote:
> > On Tue, Jun 18, 2024 at 06:01:04PM +0200, Andrew Jones wrote:
> > > On Tue, Jun 18, 2024 at 03:48:59PM GMT, Cl=E9ment L=E9ger wrote:
> > > > On 26/04/2024 12:08, Andrew Jones wrote:

> > > >=20
> > > > BTW, the spec also states that "When the TW (Timeout Wait) bit in
> > > > mstatus is set and WRS.NTO is executed in any privilege mode other =
than
> > > > M mode, and it does not complete within an implementation-specific
> > > > bounded time limit, the WRS.NTO instruction will cause an illegal
> > > > instruction exception." so I guess the process will be killed in th=
is case ?
> > >=20
> > > We don't expect mstatus.TW to be set. If it is, then wfi would likely=
 kill
> > > the kernel before wrs.nto gets a chance to, but one or the other will
> > > certainly ensure usermode never gets a chance to try it :-)
> > >=20
> > > We have a handful of these assumptions about how M-mode has configured
> > > things prior to Linux starting. It'd be good if we documented them all
> > > somewhere.
> >=20
> > Boot.rst :) If you're adding a new assumption, I think it should go
> > there.
>=20
> It's an old assumption (wfi has been counting on it since the beginning of
> time). But documenting it, along with anything else similar to it, in
> boot.rst is a good idea. I've added that to my TODO.

Misunderstanding of "new" I think, I meant new to documentation not just
new to the kernel :)

--XaeHdozvGsU2g9qA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnHFOgAKCRB4tDGHoIJi
0hdZAP96LbqLFt2MaBozG2La5ffSTyWhHlM4MRkvTGUYw1JObgEAjxFOUiYt642G
EOEzP7700TwtctflvGwM6iVYrmX+Ggw=
=TKEy
-----END PGP SIGNATURE-----

--XaeHdozvGsU2g9qA--

