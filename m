Return-Path: <devicetree+bounces-20089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D61197FDBA3
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E6221C20914
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8469338F85;
	Wed, 29 Nov 2023 15:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h19jTs9r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D28249F4
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 15:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B9FC433C7;
	Wed, 29 Nov 2023 15:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701272289;
	bh=SyJI1koM3ChrX3JfAvIjzNnOMB63jorV18A8rozU04E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h19jTs9r4FzwzHT96ZNDDekE8fzebNbxj3hS7JtSgruoIZLgArNAe+3LFSv4AAppw
	 9HkUnUxrZ3/h1KA1fdSzzGx73oNDdq3utTF6nQi86EiUVGM6eXIIS1CR1KzN4Ocgq0
	 D3RlvkNEzE6LgdpheLl3iN/AdbObAXRCR+OJrH4EBT7+gMoOgVlQqQgf6qBiKYqlJ/
	 TYOv68ES9JA6Cdt3iPz+s5vZUkzx5lM00TOxTTDsgxdp8Jz5drwaJWMnsdQKsRYED1
	 Rn9PknViP23++toTb21t3HX6h/WWBrmhrvQZD5IOHCtTX3tFCX3OAvDnmp6STnHeZK
	 OE8hqNpZhZemw==
Date: Wed, 29 Nov 2023 15:38:04 +0000
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
Message-ID: <20231129-crawling-gaming-76077ed03c57@spud>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
 <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>
 <20231129-caress-banister-5b5ccbf183e6@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9EBarYguRYNMy8wU"
Content-Disposition: inline
In-Reply-To: <20231129-caress-banister-5b5ccbf183e6@spud>


--9EBarYguRYNMy8wU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 03:34:20PM +0000, Conor Dooley wrote:
> On Wed, Nov 29, 2023 at 04:31:17PM +0100, Thomas Richard wrote:
> > On j7200, during suspend to ram the soc is powered-off.
> > At resume requested irqs shall be restored which is a different behavior
> > from other platforms.
> >=20
> > Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Un-Acked. Your dts patch contradicts this one.

Is the programming model compatible with the existing devices? To be
compatible, the existing device only need to support a compatible subset
of behaviours.
If so, this patch is wrong. If not, then the dts one is.

Thanks,
Conor.

--9EBarYguRYNMy8wU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWda3AAKCRB4tDGHoIJi
0p3tAP4lUjMdujHJ8+n8CF2yi20ahruH0ivCP/N+J//GBpYR+AEA5HmQtO8ZCbvG
a/y8JXzutWlvCpqIVklpt6M7Bc3jbg8=
=tma5
-----END PGP SIGNATURE-----

--9EBarYguRYNMy8wU--

