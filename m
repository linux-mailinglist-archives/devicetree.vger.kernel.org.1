Return-Path: <devicetree+bounces-23763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A61080C440
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24A03281428
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16A262110F;
	Mon, 11 Dec 2023 09:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VERLiVu8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF09721108
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 09:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17C87C433C8;
	Mon, 11 Dec 2023 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702286236;
	bh=3DRr76vsMjQmUB0iJJgnCoQ01erPxOksC+4UfHqUH3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VERLiVu8OMxZF78W22i668Gh9BGJyqmAv3SlcX9jB31SUTsoeK5hPMLdcSPsAn1lR
	 LA1gKILI6LWd8PuzoFgBke+7Fi6Bwf3PyhZZam4cDOVNmVkGJKhyL7HR6Pt51xkfR9
	 X2NeunEU5anXJ7SZrLcuVCjYA+ndzNYFwNRwBRrfqaV8UX6rID+xLX39zh7xsMGzJY
	 3D6ABrNC6PiNu5tjGqLkUWvjOIY8TNqZfQcg9asOjrFCV/WP2GCFWqTxOx+S4TbWHp
	 AE4KursphCTxiICxoVmS6NfsCOMUgBn6Ro6Poe4fUo/ORyAsWquT/Brq85SyPdAgfv
	 iOD6kkxrOS1Sw==
Date: Mon, 11 Dec 2023 10:17:13 +0100
From: "mripard@kernel.org" <mripard@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	"airlied@gmail.com" <airlied@gmail.com>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, William Qiu <william.qiu@starfivetech.com>, 
	Xingyu Wu <xingyu.wu@starfivetech.com>, "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, 
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "palmer@dabbelt.com" <palmer@dabbelt.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "suijingfeng@loongson.cn" <suijingfeng@loongson.cn>
Subject: Re: [v3 3/6] drm/vs: Register DRM device
Message-ID: <gmgldrcdtglkvcdsxgympq3gg4dhc5tvbpmqusjh4k56sovxfs@cnmmidh5ar3i>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-4-keith.zhao@starfivetech.com>
 <12c6097a723b9208f6da89207867b32102237fbc.camel@pengutronix.de>
 <5e10fbd8-2299-4fdd-b9ac-5ca71af07012@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bkz35ijar7vq2nws"
Content-Disposition: inline
In-Reply-To: <5e10fbd8-2299-4fdd-b9ac-5ca71af07012@starfivetech.com>


--bkz35ijar7vq2nws
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 11, 2023 at 05:00:04PM +0800, Keith Zhao wrote:
> >> +static int vs_drm_device_init_clocks(struct vs_drm_device *priv)
> >> +{
> >> +	struct drm_device *dev =3D &priv->base;
> >> +	struct platform_device *pdev =3D to_platform_device(dev->dev);
> >> +	struct device_node *of_node =3D pdev->dev.of_node;
> >> +	struct clk *clock;
> >> +	unsigned int i;
> >> +	int ret;
> >> +
> >> +	if (dev_get_platdata(&pdev->dev) || !of_node)
> >> +		return 0;
> >> +
> >> +	priv->nrsts =3D ARRAY_SIZE(priv->rst_vout);
> >> +	for (int i =3D 0; i < priv->nrsts; ++i)
> >> +		priv->rst_vout[i].id =3D vout_resets[i];
> >> +	ret =3D devm_reset_control_bulk_get_shared(dev->dev, priv->nrsts,
> >> +						 priv->rst_vout);
> >=20
> > I would request resets and clocks in _probe().
>=20
> >=20
> > If component_bind_all() returns -EPROBE_DEFER because of a still
> > missing DSI panel backlight or similar, this doesn't have to be done
> > multiple times.
> I got what you mean. component_bind_all should be done multiple times
>  to prevent the dsi panel driver from lagging load.

No. component_bind_all only needs to be called once.

> in my drm subsystem , there are 2 pipeline=20
>=20
>           +------------------------------+
>           |                              |
>           |                              |
>   +----+  |   +-------------------+      |   +-------+   +------+   +----=
--+
>   |    +----->+  dc controller 0  +--->----->+HDMICtl| ->+ PHY  +-->+PANE=
L0+
>   |AXI |  |   +-------------------+      |   +-------+   +------+   +----=
--+
>   |    |  |                              |
>   |    |  |                              |
>   |    |  |                              |
>   |    |  |                              |
>   |APB |  |   +-------------------+         +---------+    +------+  +---=
----+
>   |    +----->+  dc controller 1  +--->---->+ dsiTx   +--->+DPHY  +->+ PA=
NEL1+
>   |    |  |   +-------------------+         +---------+    +------+  +---=
----+
>   +----+  |                              |
>           +------------------------------+
>=20
>=20
> component_bind_all will bind the hdmi encoder and dsi encoder .
> binding the hdmi encoder will always return ok .
>=20
> binging the dsi encoder has a question :
> I used the panel-raspberrypi-touchscreen.c as panel driver ,=20
> this driver is a i2c device and it use a i2c command to read reg ID
> if read success , it will do drm_panel_add.=20
>=20
> if I disconnect the panel ,it will not do drm_panel_add.
> dsiTx will fail to find panel , The consequence is that the inputbridge c=
annot be created ,=20
> also outputbridge cannot be created.
> for encoder bind , it will fail to find the input bridge of dsi.
> Under this premise, although returning -EPROBE_DEFER allows bind to be ex=
ecuted multiple times,=20
> the final result is that the entire bind fails.
>=20
> returning -EPROBE_DEFER can solve panel driver from lagging load ,=20
> but for no panel case , it will destory all pipeline (include hdmi and ds=
i).

Yes, that's expected.

> I did two things:
> late_initcall_sync(vs_drm_init); to make sure the panel drive has been pr=
obed;
> dsi encoder bind always return ok to make sure hdmi pipeline ok at lease.
> component_bind_all do once .=20

You should have a look at
https://www.kernel.org/doc/html/latest/gpu/drm-kms-helpers.html#special-car=
e-with-mipi-dsi-bridges

Maxime

--bkz35ijar7vq2nws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXbTmQAKCRDj7w1vZxhR
xQHPAQCylA9kRgEfrYTE6OzhkygvQTdGGHErAxmL8yhuByRUwwD/Wc/ZX3xr5vXw
ne/WnWgySlRDdV2OlSa6fGu2NH7K+wE=
=M8pE
-----END PGP SIGNATURE-----

--bkz35ijar7vq2nws--

