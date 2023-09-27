Return-Path: <devicetree+bounces-3929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC827B0856
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:35:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 04897281CBF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581D9450DF;
	Wed, 27 Sep 2023 15:35:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498A8347B3
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:35:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53614C433C9;
	Wed, 27 Sep 2023 15:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695828930;
	bh=37kBTb9YjXxjlMIh+0Q1RNuR2TQo6vk32qz35NjOF/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E0j3K5uJdXc0EKvk80mUbQi+BDLCAgx203Htw+2xLooqambR20sjwmZzHKhX/MGRQ
	 rES0R5mS88bOMzEdVGjriDwzdxxHwuh5o5kxrN/IHPmyivO9nuQ4EXQOaU7oFFzija
	 suPsoH0HVNxgtrYAfwyWQ+97rms/iVqqmKSbeZhFRw/P6Ib0VObaVi0beGE2xK8f6G
	 p5NiUyHpe+wtTtSwpHm5BpDQyoHCI6XN9yGbdJi4ftQKWLLpJ1TYfMuJ4a1jaZkJrG
	 /6gWUNBNN85OSkz3JemqPGFXpb/yPxKglYqIUtydqmawjmzHIE/abd1cFLXoW8h6VZ
	 ox6UfBV0xVZBA==
Date: Wed, 27 Sep 2023 17:35:28 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Brian Norris <computersforpeace@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Chris Packham <Chris.Packham@alliedtelesis.co.nz>, 
	Christophe Kerello <christophe.kerello@foss.st.com>, Heiko Stuebner <heiko@sntech.de>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Yang <liang.yang@amlogic.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Walle <michael@walle.cc>, Paul Cercueil <paul@crapouillou.net>, 
	Pratyush Yadav <pratyush@kernel.org>, Richard Weinberger <richard@nod.at>, 
	Rob Herring <robh+dt@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Subject: Re: [PATCH v2 00/17] Prevent NAND chip unevaluated properties
Message-ID: <s7gfoex2esucv5i43e7rfmkf3i63ullvh7kpylberuqiiimobw@p2slzyepmo5r>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <2b5dd78d308c007dfaf01eaf59fe8ec4.mripard@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ouxkrnlofymraaa5"
Content-Disposition: inline
In-Reply-To: <2b5dd78d308c007dfaf01eaf59fe8ec4.mripard@kernel.org>


--ouxkrnlofymraaa5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 07:20:12AM +0000, Maxime Ripard wrote:
> On Tue, 6 Jun 2023 19:52:29 +0200, Miquel Raynal wrote:
> > As discussed with Krzysztof and Chris, it seems like each NAND
> > controller binding should actually restrain the properties allowed in
> > the NAND chip node with its own "unevaluatedProperties: false". This
> > only works if we reference a yaml schema which contains all the possible
> > properties *in the NAND chip node*. Indeed, the NAND controller yaml
> >=20
> > [ ... ]
>=20
> Acked-by: Maxime Ripard <mripard@kernel.org>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Tested-by: Maxime Ripard <mripard@kernel.org>

Erm, sorry for the noise, I ended up sending those by mistake...

Maxime

--ouxkrnlofymraaa5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZRRLwAAKCRDj7w1vZxhR
xX4JAQDyiGBGb794KYUAGZDbfAs7W7wE1aIS/OcN8jgKLIZO7AEAilipuu235Nxg
wZFOlLb2C+X+xU14jHSRogTkVbn9zgU=
=2ukJ
-----END PGP SIGNATURE-----

--ouxkrnlofymraaa5--

