Return-Path: <devicetree+bounces-70483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 727F18D3734
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 15:11:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11EA11F23A9C
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 13:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A18E4D52F;
	Wed, 29 May 2024 13:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvMn1tF1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0B011CBD
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 13:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716988297; cv=none; b=kXCA0hOjoweBYIuJujKmtUmG4Y1GX+a+57L2CSmuOAU8MHxr/pjF9GwIi9KyHxrHr/B0o2pXiDRK4mCuNRzYp1cu5s5jKhPkd0SriIsgL7MBI76iapFE2LRpp9kVY/epiChdCoeBQhoZw5ICNz9+7YvP3dZF+dXNw5OOzsZJRAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716988297; c=relaxed/simple;
	bh=YAwgspI6uJSO5MsfLoO0b8m4gEmbr554Yx5sphN4ODQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eUuUxYTXIEgzVFqkOQ5x6sqaGSPItdHbEHHvq5j7RdYApzBqZOK84joF0HiTpe+UT/gGks+xCikzI0m0QdfeoU58xBrsN6axXs6+01skJLsWY4baGNrWoCwy5hLdmYCQYduvXfbf5uV4foosLP3471oOzq84xvzKJjmDYkvJCqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvMn1tF1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E98CC2BD10;
	Wed, 29 May 2024 13:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716988297;
	bh=YAwgspI6uJSO5MsfLoO0b8m4gEmbr554Yx5sphN4ODQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WvMn1tF1Odnua8fjsgqQlaZSPskulLR2K5YLNNFlgC7w8zjW5dWEG3rw/abayMN2O
	 uvx73EIRf3BmCYDREW3nHScsX+61Kjy06hV1U6w2pRC1F8X7scCKvxgTzN4g1R4Q2e
	 8wsg1Nhw/bl2Ss2Qp94Yh8mJOTogXkZTBcYvJSH13H3WX8g8BxUzVKMIO0vVXzbnMK
	 7a+EXinzVeoasPEM3MWxOGlBR3BRLvx5Hu9cxaDUENi1ONrI8our4YBqoAonXikbv/
	 xSD/gEI/rib8DD+NrWTc53ehAgHqi/wJhKxWWSFMCHIKBzv9pgB4P97pzT51lEhKby
	 Zz6LKgBPxDFCQ==
Date: Wed, 29 May 2024 15:11:33 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: airoha: Add binding doc for
 PCIe PHY driver
Message-ID: <Zlcphf1jWYnQQlIZ@lore-desk>
References: <cover.1716031610.git.lorenzo@kernel.org>
 <82688bbe03ae2d68af838c2bc7fd20491a7d42b1.1716031610.git.lorenzo@kernel.org>
 <6f5b26d6-c452-4490-9d34-d0a4207139ba@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JxJXa4LNeVTBTMXr"
Content-Disposition: inline
In-Reply-To: <6f5b26d6-c452-4490-9d34-d0a4207139ba@linaro.org>


--JxJXa4LNeVTBTMXr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 18/05/2024 13:31, Lorenzo Bianconi wrote:
> > Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> > driver.
> >=20
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
>=20
> How the binding was tested?
>=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> A nit, subject: drop second/last, redundant "bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree=
/bindings/submitting-patches.rst#L18
>=20
> Subject: drop driver. This is for hardware, not drivers.
>=20
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Do I need to repost it or is it ok to address it applying the patches?

Regards,
Lorenzo

>=20
> Best regards,
> Krzysztof
>=20

--JxJXa4LNeVTBTMXr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZlcphQAKCRA6cBh0uS2t
rF9qAP4mHzSsNoMb9lJrwmPUqU8S5foUosTfEMG7OBpkpxDIAAD+KHfA+dhV1vPL
3ABd8g6Aj3wmVJ8WUVRXVJulV5IidQs=
=I83v
-----END PGP SIGNATURE-----

--JxJXa4LNeVTBTMXr--

