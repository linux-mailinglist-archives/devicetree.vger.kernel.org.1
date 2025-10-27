Return-Path: <devicetree+bounces-231653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA916C0F68F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:45:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5AB5A4F78BC
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F0831197E;
	Mon, 27 Oct 2025 16:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEOaY8i2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD9E30FC17;
	Mon, 27 Oct 2025 16:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761583363; cv=none; b=HePZh9DuIIUJ1pit7WR6ydn0c7hp8TjYXdd3uGKTwNWQXXdXmb2YScUVP7kOuNE/hxIasCLqUHUiiOjz0rgTz7xtZt/pm8CrLib45MDSUYxdqsfio80qFtwP3iAsyvHmmpW07RQaDWwhqm4kk63ZPmK3DrjOj6H+rdaoDxXLS/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761583363; c=relaxed/simple;
	bh=3Zy5oeeZYFnehUdPPoTES70H7E8Y6e4YZbExOOF6RO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AjAFunEPne4HyUrnBkKmDASPwtoYHLH+11uAqOwn4X2gCLKcgmulM0J1XNJ1PdWpoClWAhSXpm3kZ467RQJJBc5j0x77f4h8Bopth6O5o30vc+tm6uuLzSCjzaZPOnhGe9s7RdvF4aOnMag1gtUx6+qWlcYEroYFjW8aTkGnDQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEOaY8i2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41562C4CEF1;
	Mon, 27 Oct 2025 16:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761583363;
	bh=3Zy5oeeZYFnehUdPPoTES70H7E8Y6e4YZbExOOF6RO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pEOaY8i2CA368n555Cyivloi0NKa+GHB+dqed1sOLk3b8HIh2EBlvQ6J/03mdxy4r
	 QfAyN7TW9G5l/VCdjs64nTYKIWvjiWxbqvdSgpndg8683ztsIHAL0wdEXxJItiiR52
	 cGFsh+Wr7gJoZ9OYPRnCUoD1ofoXK/tUaNuGO4xogPjZeHao2zKcmfXOgq8Ls+rUAL
	 6ySja4/O/NLpoN0Wkd/Evdw3pnpX5IfuunHfYaIHPfSIHK8Jk+TKJWypv5vvz7IU8Y
	 +X1G27czOq8/JE7Nio+QxZ+H7CVNgQn3qQVsCN6krMKKuwclEGbh2rfGAGm8egMPp+
	 fvUmjjSFjZAdg==
Date: Mon, 27 Oct 2025 16:42:38 +0000
From: Conor Dooley <conor@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: fsl: add TQ-Systems boards
 MBLS1028A and MBLS1028A-IND
Message-ID: <20251027-rants-blah-e2cb48f029e2@spud>
References: <20251027110459.420857-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1MaDd/w6OphELE1T"
Content-Disposition: inline
In-Reply-To: <20251027110459.420857-1-alexander.stein@ew.tq-group.com>


--1MaDd/w6OphELE1T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 12:04:55PM +0100, Alexander Stein wrote:
> From: Matthias Schiffer <matthias.schiffer@tq-group.com>
>=20
> Add two mainboards for the TQ-Systems TQMLS1028A SoM, based on the NXP
> Layerscape LS1028A.
>=20
> Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--1MaDd/w6OphELE1T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaP+g/gAKCRB4tDGHoIJi
0iGlAQCoFN3hxghANDls800B6MI+ZpPw4ts8AIPh6HSc+dI9yQD+LX9iEoHKH5pv
9BOFPHyf7oUMd01SAxhwCtj2dhNp2wc=
=gTmS
-----END PGP SIGNATURE-----

--1MaDd/w6OphELE1T--

