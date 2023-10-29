Return-Path: <devicetree+bounces-12703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 002E67DB0CA
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 00:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 306621C204F8
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 23:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4344C15E81;
	Sun, 29 Oct 2023 23:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="ZaHoVgoj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0C115487
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 23:17:37 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 877624EBF9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 16:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=4LqK
	zsyzMPK0zG6jKlZssYlLz/JHO+MhlunhgtJzoZo=; b=ZaHoVgojOIkrRRSx+KOd
	dVlhRZ6Ob907FHX3inRvUAEQiHcpGd+45mPtvGQyIk1lhpKiyemRLyBypmxVZgOP
	SWmlKxXq1Ki4BKlCRZXUrTYt6FBtHseSamajnqNbiR97wXmcb/Cc/xv0yD3TxAkl
	zd07/zAUl4r5szjNNfGSbpZVQaska9llvX4vbcBvObSdyRZTZisLk3l35Fb0FEE/
	IzFbNMotuxys1TSVKZpg9xwg4xl0pIr3BxbyY3arfjWUFKgwra48lYCY6EUiMH2j
	/Ff69Bhoy9SJn/So0CC79ffsi8mSv90CAZdZvrXrg/4G9P/hp8CSOXczjAc73kbh
	VA==
Received: (qmail 3928351 invoked from network); 30 Oct 2023 00:15:55 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Oct 2023 00:15:55 +0100
X-UD-Smtp-Session: l3s3148p1@YKl3GuMICKVehhre
Date: Mon, 30 Oct 2023 00:15:54 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: Re: [PATCH v5 0/2] PCI: rcar: support regulators for PCIe
Message-ID: <ZT7nqrxadWzhrhU9@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
References: <20230921132624.5664-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VK2a64zn4LDxDZm+"
Content-Disposition: inline
In-Reply-To: <20230921132624.5664-1-wsa+renesas@sang-engineering.com>


--VK2a64zn4LDxDZm+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 03:26:22PM +0200, Wolfram Sang wrote:
> Here are the patches to make PCIe cards work in slot CN15 on a Renesas
> KingFisher board. Please apply.
>=20
> Changes since v4:
> * rebased to 6.6-rc2
> * added ack from Mani (Thanks!)

Did this slip through the cracks maybe?

>=20
> Wolfram Sang (2):
>   dt-bindings: PCI: rcar-pci-host: add optional regulators
>   PCI: rcar-host: add support for optional regulators
>=20
>  .../devicetree/bindings/pci/rcar-pci-host.yaml   | 11 +++++++++++
>  drivers/pci/controller/pcie-rcar-host.c          | 16 +++++++++++++++-
>  2 files changed, 26 insertions(+), 1 deletion(-)
>=20
> --=20
> 2.35.1
>=20

--VK2a64zn4LDxDZm+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmU+56oACgkQFA3kzBSg
KbZksQ//ZTQLV9AZwNEEizqnTqfYg+QukBAMZ/kogfa/L/jSlsS7Gbh0ki0wQBG9
nwLAdJWr17bzAqAtkaOezJ5+4QsE5PtfhDZ2kSdJd2sxKJ5FUc0g2Wrqe1EmOlez
zTEzOvJeXhi3IV8kp4kAA2856rVcxfFIAD3+42vfZLHP5xsTL4L/rDMshRL4Pwf/
69Q0LjTkQyhNHocQGduT/j6K7XCq9uLVfEcNu7ViCbzLbxzjoIy74b33nCK7KCCi
/Ci2R6Tr7U5Mui4Z4AyHvUgqKiVe+BTzCjWmDUznQRC5KmE5302dI7Oq/PRt3ret
F+SnXI+TrO/AwSlg1eC7V03gVGOqibVQfAATLhxPc+E3bKvrFd1jrzDSZHiT8dic
ZsR+jpf86vW/1G58PB7ZRIpePPhoskJ9o8u7JP29HuVd1xUG3TH8TokrSStn3Pdb
I5x87wcYaIWNXoludxC/CLMZoQ8k2KqGfg9SXav2YO4eeWuYZf6ozhpsHP84qQzE
CUIewC5etAevv1Y2cQ/ETuql08sOsfQVsDenJ0Uz67dXhs+xBC0fCjLI0Jctra8Y
tHq5JJs35qM2sZSrsKFS+4gaw6zFECNpf5CGeonMu2Qj6F+0MsL4eUpwyOofUAk5
/Nf6JQdEs2drjfJQGe+REja9S5AelI5F4jrRHaRosy4DtJ3o2nE=
=6C7y
-----END PGP SIGNATURE-----

--VK2a64zn4LDxDZm+--

