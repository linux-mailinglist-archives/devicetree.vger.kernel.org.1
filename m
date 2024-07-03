Return-Path: <devicetree+bounces-82968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D26592696C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 22:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2603E289618
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 20:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E914F6A339;
	Wed,  3 Jul 2024 20:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oci8Ge9M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42734C6C
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 20:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720037757; cv=none; b=XpDFkLyymfQGcu8Xs0P17MIMoSpEOIAOBWfcEstL47R55d/eAzeYvFgyq0qVULPLxu76VMJYu9PbWWmk8eV8JghiTbBzUGAy3xl4CG/UbcroDJAaH+X1WKRBlNZk0Rzi4z70AZxl8j11CCDAbbDgZ1+lTEYCa9LdpXBmAErTFM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720037757; c=relaxed/simple;
	bh=wB7MoQu//qv+xJk/FI67UFN2r4uKsUWY/KAx4c2q1gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o99sEMoRSY9u8yT+ojtRJal6mogseLIDIidxpC+VCxgmLXbZgMZAZd3fGuxRsbFHdNP6a6bRScjX6XkVhJUQUlOEwYZHwMxs6uUMZsdm7X36h15rVqAIdH5zAK+lOAfQkTUCisCc25FtNTsqpW0jWsy/rIrAOW1lo+EE+TkZ5LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oci8Ge9M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A8E1C2BD10;
	Wed,  3 Jul 2024 20:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720037757;
	bh=wB7MoQu//qv+xJk/FI67UFN2r4uKsUWY/KAx4c2q1gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oci8Ge9MNhyBmeV5PHFXlsz9MFWsPEgcBPpaX0Vp4raDuEdk7FPsXoYPbWMzNRnxk
	 3aG6oXOj0SsJBJHkpPyLPLMIOsyoCWWvwOr8JS2gv7njQtTYuJPd8ZxkGEJ5j8cohn
	 FUb6R4CJ/spTC/X1GFPZVaomsMvwZ51jgctPDrmeNJsZiuCdkXZjW7wITdLclATrAU
	 I/wpHqk5Ue3Xj7hJeTQHniNbiel78cMmC4r4g4TC7vUGRW9pUBjwFJJPsvdE9pTpRc
	 NYd4fjAaNKfv2Okv8gbsp/+zL2gaBhYVVpSPFU/gvtD+AFbPu2P6kl7ce501S3oqJ5
	 wCpu/5TJJTZ+A==
Date: Wed, 3 Jul 2024 21:15:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	linux-riscv@lists.infradead.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	daire.mcnamara@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
	samuel.holland@sifive.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 0/5] PolarFire SoC Icicle Reference Design PCIe
 ?support?/fixes
Message-ID: <20240703-girdle-grandly-c6495236fa72@spud>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
 <mhng-011d3bea-b607-4df2-a65c-7b08547cb85e@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yJhMjtvuKG7f7QmN"
Content-Disposition: inline
In-Reply-To: <mhng-011d3bea-b607-4df2-a65c-7b08547cb85e@palmer-ri-x1c9>


--yJhMjtvuKG7f7QmN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 03, 2024 at 01:09:43PM -0700, Palmer Dabbelt wrote:
> On Mon, 10 Jun 2024 04:09:12 PDT (-0700), Conor Dooley wrote:
> > Hey all,
> >=20
> > Here's some patches that add an Erratum to enable non-coherent DMA
> > support for PolarFire SoC. By nature of being an FPGA, and due to the
> > PCIe root ports being only 32-bit capable, many bitstreams configure the
> > FPGA fabric such that peripherals in the fabric become non-coherent. The
> > PCIe root ports on PolarFire SoC are connected to the core-complex via
> > the fabric, and therefore can be (and regularly are) made DMA
> > non-coherent. The Icicle Kit Reference Design has been configuring the
> > PCIe root port in this manner since late 2022 and in a way unsupported
> > by mainline since earlier that year. Adding this non-coherent DMA
> > support makes PCIe functional on those FPGA designs. Daire did almost a=
ll
> > the work to figure out how to support these kinds of designs, and this
> > series depends on his patches to introduce the required dma-ranges
> > handling for the root port driver:
> > https://lore.kernel.org/linux-pci/20240531085333.2501399-1-daire.mcnama=
ra@microchip.com/
> >=20
> > The final patch depends on:
> > https://lore.kernel.org/linux-pci/20240527-slather-backfire-db4605ae7cd=
7@wendy/
> >=20
> > I'm not sure if an Erratum is really the right way to go about doing
> > this, but I didn't want to make ARCH_MICROCHIP depend on NONPORTABLE.
> > An alternative would be to add a menu under drivers/soc like Renesas
> > does and allow it to be toggled as an option there instead.
>=20
> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
>=20
> if you want to take this via some other tree.

Yeah, I was expecting to take it myself but hadn't gone fishing for an
ack because the PCI parts haven't landed yet & the copy in my k.org tree
had a KISMET issue reported against it.

> I don't see any issue calling it an erratum, if it lets us keep building
> generic kernels for these systems that seems like a good enough agrument =
to
> me.

Cool :)

--yJhMjtvuKG7f7QmN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZoWxeQAKCRB4tDGHoIJi
0ikwAQDPD7tPHabjXO33KB571jCDfKRn/zrUHBQfWC9TTVNVxwEA6etKueKoiNYY
+NDyz6R/QSOy5MbuSNYS+s4oQlR0SgY=
=Insq
-----END PGP SIGNATURE-----

--yJhMjtvuKG7f7QmN--

