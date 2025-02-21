Return-Path: <devicetree+bounces-149586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB36A3FE07
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:54:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2604C42669B
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47A3250BFC;
	Fri, 21 Feb 2025 17:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYtA0Mrl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8070536AF5
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 17:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740160449; cv=none; b=nNysk36R1u5MyIOMNuOj1g27QsA21m7bNlo9DBkqM1/bT26llrTp1WbnpL2Y42grfTMZWvr12VRw8hrX8S6PaZAapIJkxQA+VSg4p7Vf9jO911mpkI16Sypa+G8SuLoWask6kPPY6umGD3tg3vUgeCQi9s1o31v6j9K3SpPtgW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740160449; c=relaxed/simple;
	bh=iTjPEItd97Y8rmwDpLAK0xUiIP9tO+c3V61O1uEFrUA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PVZ60blkInk+/PMLNVCim+VX2soiO/XYPzpsdZXAMM1xv6V4X/EFK3FScVMzPhdOJ00Q32SBVzJddwGqQlk8mGpQJuRUIsn+FW9VmeuEWYdyBuLnovxaQA96TR+B+EXZ+Uo0eyngvtRxYYdPsxHwLvydOXa5YWcONEzToc4PJFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYtA0Mrl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B1C9C4CEE7;
	Fri, 21 Feb 2025 17:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740160449;
	bh=iTjPEItd97Y8rmwDpLAK0xUiIP9tO+c3V61O1uEFrUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SYtA0MrlTajR2Ta6Jh6TzgAQrqZzSvcyNbCmlHvL9MOm7OeSjiXKQOMrpmoLpMWbq
	 ELruEw3iUfn1VCpYY7Edcu6dHsS0dqeLpPK2dcPxQ/8OCKGTRD3jK0QgbB5W5sX7oV
	 ZLjnO3QQyv4xwuXg3NtF98z/XtnEm1T2VRS2gQe3reiqSW00KmGdZHgDV11KWfpXJ3
	 hYhkY5hPjlcOZz+8ug8Y1bwYzk1rkgl/aPGBPEjeCdMnu2OAqSLRncGlQnExaEv6fN
	 2+jMc1N1+KbS2IpW7svxgo4o+QSjZoEe2iIrWUmUTZFl/NU9as4QYVv7SKMpKZEoih
	 0PZq2InIjBTiw==
Date: Fri, 21 Feb 2025 17:54:05 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: miquel.raynal@bootlin.com, richard@nod.at, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: mtd: mxc-nand: Document fsl,imx31-nand
Message-ID: <20250221-unloader-fanatic-c7ad3eee4f38@spud>
References: <20250220125812.2370056-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ysC56cTDtLbmiSx7"
Content-Disposition: inline
In-Reply-To: <20250220125812.2370056-1-festevam@gmail.com>


--ysC56cTDtLbmiSx7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 09:58:12AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> imx31.dtsi uses the following NAND compatible:
>    =20
> compatible =3D "fsl,imx31-nand", "fsl,imx27-nand";
>    =20
> Document 'fsl,imx31-nand' to fix the following dt-schema warning:
>    =20
> compatible: ['fsl,imx31-nand', 'fsl,imx27-nand'] is too long
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--ysC56cTDtLbmiSx7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ7i9vQAKCRB4tDGHoIJi
0qsEAQCzFewYbcKURnLdC1rP8RYwtaahu1pRa2W/G5QKSF3NygEAlBe5X08ObEk0
q+g99jSHlsWd2NNtCZkRoGNdMbi+VAE=
=LgvR
-----END PGP SIGNATURE-----

--ysC56cTDtLbmiSx7--

