Return-Path: <devicetree+bounces-21051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E6850802299
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0E81B209EE
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 11:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB8F8F77;
	Sun,  3 Dec 2023 11:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRgOQtlY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DB68F5C
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 11:03:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4313C433C7;
	Sun,  3 Dec 2023 11:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701601437;
	bh=RL9hj4/npBVWsIIkeQ9nIijIaQvVjE1SR3pmSj6oEg8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kRgOQtlY1EdSeAzCqTTGDvINRhqHIMsl8+LQeFZaNzcd/5G3CZAlbg+SOtS9kuIMv
	 68YQgJfICsQHDs9pFWFtFwyUmm3Nae8OnqyIx+HkdZXP8KxoEmQdLJj4BK+wSvgzm5
	 uSLa3Dyo+XY6EPvYNR7WSB0ZOWGtBK0d6ZodlAVj9fd1WLXUHVo3BgJs0Qq5Lyq+hY
	 csPMxzR7YNBQiYIUf7jDrYeh2m1eGixPIPQDZCI67+UI49nEbxz7CHGj3x8K7dW9Q7
	 id7NTjtXqaCvnU005DSuJPlRgnM4plT34q3XmH2A/94r74ekRCYG+X3/C5OZPhA59J
	 Do5H20Z90k9ng==
Date: Sun, 3 Dec 2023 11:03:52 +0000
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Walker Chen <walker.chen@starfivetech.com>,
	JeeHeng Sia <jeeheng.sia@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: move timebase-frequency to .dtsi
Message-ID: <20231203-mountable-snowsuit-24e4252c9eb5@spud>
References: <20231130-bobbing-valid-b97f26fe8edc@spud>
 <CAJM55Z9=smqcZ=su1oNdk1YZL_XdYAKrwtrZS7ScS=cAVmxZOA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gsgU8ZMzlqhOxgDu"
Content-Disposition: inline
In-Reply-To: <CAJM55Z9=smqcZ=su1oNdk1YZL_XdYAKrwtrZS7ScS=cAVmxZOA@mail.gmail.com>


--gsgU8ZMzlqhOxgDu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 02:44:58PM +0100, Emil Renner Berthing wrote:
> Conor Dooley wrote:
> > From: Conor Dooley <conor.dooley@microchip.com>
> >
> > Properties fixed by the SoC should be defined in the $soc.dtsi, and the
> > timebase-frequency is not sourced directly from an off-chip oscillator.
>=20
> Yes, according to the JH7100 docs[1] the mtime register is sourced from t=
he
> osc_sys external oscillator through u74rtc_toggle. However I haven't yet =
found
> a place in the docs that describe where that clock is divided by 4 to get
> 6.25MHz from the 25MHz.
>=20
> I expect the JH7110 mtime is set up in a similar way, but haven't yet dug=
 into
> the available documentation.

Your other reply suggests that this is a fixed division for the jh7110,
in which case it makes sense to leave it as-is. mpfs is different in
that it is fixed to 1 MHz regardless of which of the permitted external
oscillator frequencies you use.

--gsgU8ZMzlqhOxgDu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWxgmAAKCRB4tDGHoIJi
0sJtAP4pMEN4NONQarXTexQ+6rwQOXlXvIdECO8PYelODQxL6gD9EEx+82qjL5N0
b/REnWOnOFlHnGcBijTAen08Qqc6uAA=
=tfLH
-----END PGP SIGNATURE-----

--gsgU8ZMzlqhOxgDu--

