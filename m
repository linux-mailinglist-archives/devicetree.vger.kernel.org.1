Return-Path: <devicetree+bounces-22283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D50DE80705A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 13:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FFBE281C3D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE70036AF3;
	Wed,  6 Dec 2023 12:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbCYYuJF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D752908
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 12:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96334C433C7;
	Wed,  6 Dec 2023 12:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701867395;
	bh=FDpwgafoOGfqeUaYxZy4t8X7eZ2h7VcCSdPOW2X4ypw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RbCYYuJFjpJuAoaOmVIeBQwzx4ooCuREK8n66iOreUgfHmf/MHb99uU8xjDNk4xIL
	 QKtojAJ3/3NINB8+CMNlf30MiSema9MMZ6BYNRoz6WBdMOc/VhNBo1jf2sCvKqWYZt
	 Yb0FjVkoC39tFpXgyj4ciXKUsfOwhnRZ4Ezg2AO89SgtBOWutY+VP21wOArVDoP6Gm
	 ndfLOI27SUzxJMF0gAS8McSZtpIOOokGV1d4e/i0vugnvH1Dr/yVl4pw5DNDYciJ1W
	 Nt4EIqfQhM8wHIqvdqDVZTaYRC01YqP10mxruH/CFiP1/rhVks9BssJj6MMkxmAlAE
	 UoYzhVXJWgW6g==
Date: Wed, 6 Dec 2023 13:56:32 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	"airlied@gmail.com" <airlied@gmail.com>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, William Qiu <william.qiu@starfivetech.com>, 
	Xingyu Wu <xingyu.wu@starfivetech.com>, "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, 
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "palmer@dabbelt.com" <palmer@dabbelt.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Jack Zhu <jack.zhu@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "suijingfeng@loongson.cn" <suijingfeng@loongson.cn>
Subject: Re: [v3 5/6] drm/vs: Add hdmi driver
Message-ID: <abdl6kmighvpwojvafq443q7grn6w3abwpvw7zwbna4jvtsvjf@fa42rv46n2wh>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-6-keith.zhao@starfivetech.com>
 <esetsiqgqpk35zue4c6aq7l6zn4kezhxkqqa7ompaz2vhdy3lr@4d5awfqgs2ss>
 <94a1f9fc-82fb-4a04-a44b-f9b20c2bdfdd@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gejtzksqfhmcrf7c"
Content-Disposition: inline
In-Reply-To: <94a1f9fc-82fb-4a04-a44b-f9b20c2bdfdd@starfivetech.com>


--gejtzksqfhmcrf7c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 06, 2023 at 08:02:55PM +0800, Keith Zhao wrote:
> >> +static const struct of_device_id starfive_hdmi_dt_ids[] =3D {
> >> +	{ .compatible =3D "starfive,jh7110-inno-hdmi",},
> >=20
> > So it's inno hdmi, just like Rockchip then?
> >=20
> > This should be a common driver.
>
> Rockchip has a inno hdmi IP. and Starfive has a inno hdmi IP.
> but the harewawre difference of them is big , it is not easy to use the c=
ommon driver
> maybe i need the inno hdmi version here to make a distinction

I just had a look at the rockchip header file: all the registers but the
STARFIVE_* ones are identical.

There's no need to have two identical drivers then, please use the
rockchip driver instead.

Maxime

--gejtzksqfhmcrf7c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXBvgAAKCRDj7w1vZxhR
xStPAQDTvV/nRdmwVbGgRirLKYu3fEEk2bcTs2wowK1XVkHKtQEAnaZsvW3x1amk
Y3Ot2ZUNpn5FMhvwW/Xd0KRaNbS+SAM=
=Auvj
-----END PGP SIGNATURE-----

--gejtzksqfhmcrf7c--

