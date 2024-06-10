Return-Path: <devicetree+bounces-74307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CB0902A9B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 23:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C7E8283FF1
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 21:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E8F73464;
	Mon, 10 Jun 2024 21:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MswwGGmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F6B6F31F
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 21:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718054921; cv=none; b=SR5QgJxsE4MuQxq2zhyf9ikI2ygVNquDHS0hZClxYwuxUUGa4nXwUUf6BWGBx1/vhdMeD5LffAquQjmImuWTFsLBA5qgV1AdlgAfYTRoxL6xvEIxtZQNy1iTIOyQMKPi0IErLpCxiC2Dd7G3XnugXO1TX08TmMI0sk+PjUgolAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718054921; c=relaxed/simple;
	bh=2KZ5f8nS8yBEblGMZWCtnPRB6qzqZbzAyH4yEM/WYJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+6jDf01G5W0r7wLez1lFKspzoUk1Lx60tsAMZwaSBf5WUdxSChb3T8SWZ/q3zRca4HS49Hs8pt1rs8OV34Gpg9xfnkdBdxjFWEHHh93ncgJZVp5r+cZR8c7XayGf1ZlUkkmqL9zFhQlbhn6xuXRW9sThdzUA/petXjdBMdCOts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MswwGGmQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C486DC32789;
	Mon, 10 Jun 2024 21:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718054920;
	bh=2KZ5f8nS8yBEblGMZWCtnPRB6qzqZbzAyH4yEM/WYJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MswwGGmQlG2zRQxzKRYZ6UzjfKbdSq8rWv055efujrfc6pHMHLCFRIXV/Eo7OTOFC
	 VUTBBf+l66y+XoO4J+gKYpJ2hyvh7Z6s4tvHnARX1yi+cjlM3ONF/XP3nnmjI6t5mu
	 g5N0XZnNazZD173sjdSzNh7TqN/mS4YLf5ND0HH0jPUdAKhAetMN/lXDNWpo2nCvO2
	 imkiUhEk9Y2KWgnX9jlUMfFmV8X02P/myirNMQmDuQ/mtNO1UybzcFdWhMJaUKOsrv
	 SfX1u90IBU6IereC0tZ7cRUzZP56feHdH7zv4wWTp51trqHh2L2btEpf7aACJj0KVS
	 M/0pyC68BpZsQ==
Date: Mon, 10 Jun 2024 22:28:36 +0100
From: Conor Dooley <conor@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v1 0/5] PolarFire SoC Icicle Reference Design PCIe
 ?support?/fixes
Message-ID: <20240610-numbing-unclothed-4a9dd7492312@spud>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
 <171804879964.2984749.10332965123533794635.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="94+R1nHgD5n4qKYh"
Content-Disposition: inline
In-Reply-To: <171804879964.2984749.10332965123533794635.robh@kernel.org>


--94+R1nHgD5n4qKYh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 10, 2024 at 01:55:14PM -0600, Rob Herring (Arm) wrote:
> On Mon, 10 Jun 2024 12:09:12 +0100, Conor Dooley wrote:

> > The final patch depends on:
> > https://lore.kernel.org/linux-pci/20240527-slather-backfire-db4605ae7cd=
7@wendy/


>=20
> New warnings running 'make CHECK_DTBS=3Dy microchip/mpfs-icicle-kit.dtb' =
for 20240610-vertical-frugally-a92a55427dd9@wendy:
>=20
> arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: reg: =
[[48, 0, 0, 134217728], [0, 1124106240, 0, 8192], [0, 1124114432, 0, 8192]]=
 is too long
> 	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.y=
aml#
> arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: reg-n=
ames:1: 'apb' was expected
> 	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.y=
aml#
> arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: reg-n=
ames: ['cfg', 'bridge', 'ctrl'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.y=
aml#
> arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: Uneva=
luated properties are not allowed ('#address-cells', '#interrupt-cells', '#=
size-cells', 'bus-range', 'device_type', 'dma-noncoherent', 'interrupt-cont=
roller', 'interrupt-map', 'interrupt-map-mask', 'interrupt-parent', 'interr=
upts', 'msi-parent', 'reg', 'reg-names' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.y=
aml#

Yah, not a problem. Patches for that are on the pci list atm.

--94+R1nHgD5n4qKYh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmdwBAAKCRB4tDGHoIJi
0oGAAQCbNslQztfURlvjL2v2Hjrh8jVGVClINeW5m5dVQMtPBwD9GkT1g4R31Z6k
eMOjQQdaxvgZKDMPohEKPVXyhhBVrQk=
=eDSI
-----END PGP SIGNATURE-----

--94+R1nHgD5n4qKYh--

