Return-Path: <devicetree+bounces-12548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A12927DA0A7
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40966B2147F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 18:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA1437C9C;
	Fri, 27 Oct 2023 18:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbLXCIvy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F26A3DFEB
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 18:38:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39A09C433C7;
	Fri, 27 Oct 2023 18:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698431917;
	bh=ST4J4uVD7J/Mq/vL7XaZM3mtZ3PwaVzL06JUPaESq9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nbLXCIvymjtmabOlRja1JfUu227rsbH09ABUPCat0bpYPi6WIZl1Pb2j7k+Iyp3nn
	 hngm5E3WTkLFgjQQ78EWCRFxYTR6bXnlHKxl9v+b41z0WZgtgVrTpKoWnZfFI1d43Z
	 I9WFavBLdwNddrmA8F6aYO5XdxwFDRnOLfukH8AVEi2tMdU3uNLUsiVFkrMX/gqorN
	 ordH55IwUfqQd8L/VQ+cAPEn+YaPl4oedOVpFLP4mj+q/OjiVn8UJooq05myswfJJj
	 TIYiSZA7LEZiacNU4LMvo5yEyuwtFRU5MfdIF49CD+uFr3oAvYODKBtpTVhPe1pD8U
	 8P2RrSgBKVcDA==
Date: Fri, 27 Oct 2023 19:38:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 1/4] dt-bindings: cache: sifive,ccache0: Add StarFive
 JH7100 compatible
Message-ID: <20231027-freezing-pointed-53c73b0ae227@spud>
References: <CAJM55Z-vw1sbks0KcHOXMzP-6c9NMg+GOndi2pQ7iyWh0=oQiQ@mail.gmail.com>
 <20231026-paycheck-equation-b0f1a1191bf2@spud>
 <20231027182236.GA2853373-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SeokC8kRK7bMnsPN"
Content-Disposition: inline
In-Reply-To: <20231027182236.GA2853373-robh@kernel.org>


--SeokC8kRK7bMnsPN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 01:22:36PM -0500, Rob Herring wrote:
> On Thu, Oct 26, 2023 at 02:10:37PM +0100, Conor Dooley wrote:
> > On Wed, Oct 25, 2023 at 11:56:37AM -0700, Emil Renner Berthing wrote:
> > > This cache controller is also used on the StarFive JH7100 SoC.
> > > Unfortunately it needs a quirk to work properly, so add dedicated
> > > compatible string to be able to match it.
> > >=20
> > > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.c=
om>
> >=20
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> Did you want me to pick this up? Or you or Palmer will?

Me or Palmer I guess, I was going to take the lot together through soc.

Cheers,
Conor.

--SeokC8kRK7bMnsPN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTwDqQAKCRB4tDGHoIJi
0ublAP9H4KL8LXkV1jQ9dF6slNKqtn+yMaV3hmHpa4k2f/lnowEA7Wl2/62I5sVs
OBGRLUt/nQSPEMzEklP7Tup5Er1tEwE=
=Kmup
-----END PGP SIGNATURE-----

--SeokC8kRK7bMnsPN--

