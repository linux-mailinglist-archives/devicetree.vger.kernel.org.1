Return-Path: <devicetree+bounces-20087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A571F7FDB8D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:34:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A652B20C0B
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0D138DFE;
	Wed, 29 Nov 2023 15:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGWz/fIE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502691BDE4
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 15:34:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10CA3C433C8;
	Wed, 29 Nov 2023 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701272065;
	bh=NDds0U//x3U5dLm8RNoLfCGV6444vjGBb1oXhvGNN/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gGWz/fIEJqq3GbXihGQtbeznsAIgwFjUQsttBkb86C+Addjd8y16Hb4JDOMLFwIDt
	 lkM7Xp0xvNaxO3v0HYRQ0C06j9Nq2+KlThujRXUkBLtEbr/AseEmmrSRYOe3ZV9Llm
	 hMBmbpk6KAedpeJbrMkH4wx7eL9+t0Ux6ITHkIsy2zlp3HbTyXnHv1emaHmugDcauT
	 C2OnAWFRzewr2jW80nhTqMdtsNyOO4LvhVJ4nUseG9rtr4DM+8wPLWi/xyxeQazxco
	 Jg7syfPN9XqJxVBMO3aTZvh4UeIFkG3HYZURlbTi7Usx0hMCtsgqum3tEXGXk5C3YX
	 GNZ5QptaIOi7w==
Date: Wed, 29 Nov 2023 15:34:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	gregory.clement@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH 1/5] dt-bindings: arm: keystone: add ti,j7200-sci
 compatible
Message-ID: <20231129-caress-banister-5b5ccbf183e6@spud>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
 <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gK04LOCo56bJjY2Y"
Content-Disposition: inline
In-Reply-To: <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>


--gK04LOCo56bJjY2Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 04:31:17PM +0100, Thomas Richard wrote:
> On j7200, during suspend to ram the soc is powered-off.
> At resume requested irqs shall be restored which is a different behavior
> from other platforms.
>=20
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--gK04LOCo56bJjY2Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdZ/AAKCRB4tDGHoIJi
0kf/AP0ZTbNtxuRwCyGVqVjCdAnWLiq7QIYJJ1r6C9hjnpzH+gEAwZQSk1M057wJ
JnIpWdjsgxSsgP9VTogKzDwN5JbEXQI=
=Iq88
-----END PGP SIGNATURE-----

--gK04LOCo56bJjY2Y--

