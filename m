Return-Path: <devicetree+bounces-156243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BABA59B23
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 17:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54B2716E237
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8C62309A6;
	Mon, 10 Mar 2025 16:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmmSuBpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B0623026C
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 16:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741624561; cv=none; b=jg8jNbSI6u0CF5YfqBksFQa9Wwky2Xrfb+ZpshCsDsuG4bzI3swG20N8kM9kpUkSW+vu8uCd9grqSrB8lvT7nD0apA9JYF9YX7lQqBSP32iSk4AUaJ0K4/vDbgZjtYlO63n+R0mVZNjQb7j4pUBo9VQ6bqhnti+6dI8Inn2xvno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741624561; c=relaxed/simple;
	bh=AtY/LiyUqAfHfA3awBaP8btVznZ4Qb7nvMzAUe6UVew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJi192M/bZwjP3QWqHyJJmAFkeN0falSAkUhGTj1n14elLfoqrJ9JjY12fbJYZ98z5gGzRtmCAlQycydvrt+R+TxPtj4p2KFQ4Mt5hsgL9oCnJCNZ2zPTaYlmgk+bcw2FfzjCMSO6OUsB5LMhi9+W3MkFRtd6sVZciEhvTd6CXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmmSuBpJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA00C4CEED;
	Mon, 10 Mar 2025 16:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741624561;
	bh=AtY/LiyUqAfHfA3awBaP8btVznZ4Qb7nvMzAUe6UVew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fmmSuBpJXSlQQ7a4cnhH3iTBprJxpuD1lFGr/CNIQrSHIUn0nMDAmhGDV+/gXHB08
	 qm0IdKQqVKayu7UyokuQ5r4LYRSJ1W5L/osLID6zi0riQuzXvlUyNuRp6S0rGx2a43
	 6rE7QOlIDu2Tgz8wABmA8boZMm2x0eV8Arne0fydE5IQi+Ns7IDkCQcGcLUeuuP3IL
	 MvB1avnJ3EaAUyKnYGdUWxaNFx/2uVoNwOY0+eqmdo1JpehYYr0C22Wh9Wa6m4khn3
	 JK1tcqlKHmyX8LlgrwDc4sNtpHC3CGHR3fbHBmJ8m1On1EiKVKAtgZRzE8aLyT/Bvj
	 CBYVIGO+7l0lg==
Date: Mon, 10 Mar 2025 16:35:55 +0000
From: Conor Dooley <conor@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Christophe Roullier <christophe.roullier@st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Emil Renner Berthing <kernel@esmil.dk>,
	Eric Dumazet <edumazet@google.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jakub Kicinski <kuba@kernel.org>, Jose Abreu <joabreu@synopsys.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"Lad,linux-arm-kernel@lists.infradead.org,linux-riscv@lists.infradead.org,linux-stm32@st-md-mailman.stormreply.com,Maxime Coquelin <mcoquelin.stm32@gmail.com>,Minda Chen <minda.chen@starfivetech.com>,netdev@vger.kernel.org,Palmer Dabbelt <palmer@dabbelt.com>,Paolo Abeni <pabeni@redhat.com>,Paul Walmsley <paul.walmsley@sifive.com>,Prabhakar" <prabhakar.csengg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Samin Guo <samin.guo@starfivetech.com>
Subject: Re: [PATCH net-next 0/7] net: stmmac: deprecate
 "snps,en-tx-lpi-clockgating" property
Message-ID: <20250310-january-sensually-b6b88f7cd1d0@spud>
References: <Z82tWYZulV12Pjir@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yxixMADR1o+tCIZA"
Content-Disposition: inline
In-Reply-To: <Z82tWYZulV12Pjir@shell.armlinux.org.uk>


--yxixMADR1o+tCIZA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 09, 2025 at 03:01:45PM +0000, Russell King (Oracle) wrote:
> Hi,
>=20
> This series deprecates the "snps,en-tx-lpi-clockgating" property for
> stmmac.
>=20
> MII Transmit clock gating, where the MAC hardware supports gating this
> clock, is a function of the connected PHY capabilities, which it
> reports through its status register.
>=20
> GMAC versions that support transmit clock gating twiddle the LPITCSE
> bit accordingly in the LPI control/status register, which is handled
> by the GMAC core specific code.
>=20
> So, "snps,en-tx-lpi-clockgating" not something that is a GMAC property,
> but is a work-around for phylib not providing an interface to determine
> whether the PHY allows the transmit clock to be disabled.
>=20
> This series converts the two SoCs that make use of this property (which,
> I hasten to add, is set in the SoC code) to use the PHY capability bit
> instead of a DT property, then removes the DT property from the .dtsi,
> deprecates it in the snps,dwmac binding, and finally in the stmmac code.
>=20

> I am expecting some discussion on how to merge this, as I think the
> order in which these changes is made is important - we don't want to
> deprecate the old way until the new code has landed.

I'm happy enough to have the jh7110 dtsi change go via netdev, rather
than sit on till the driver change propagates to my tree in a release's
time.

>=20
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml |  1 +
>  arch/arm/boot/dts/st/stm32mp151.dtsi                  |  1 -
>  arch/riscv/boot/dts/starfive/jh7110.dtsi              |  2 --
>  drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c  |  1 +
>  drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c     |  1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h          |  1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c     | 16 ++++++++++++-=
---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c |  5 ++++-
>  include/linux/stmmac.h                                |  3 ++-
>  9 files changed, 22 insertions(+), 9 deletions(-)
>=20
> --=20
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

--yxixMADR1o+tCIZA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ88U6wAKCRB4tDGHoIJi
0ppIAQCfSmdZs7oldwErTQ9ErNKcHOouKQ4op43i9mHvwHUwvAD7BuGml71BjT++
N6cM48MdRSFGUWPcPSLDZRNWPqMSjQs=
=FfFp
-----END PGP SIGNATURE-----

--yxixMADR1o+tCIZA--

