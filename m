Return-Path: <devicetree+bounces-16245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDCE7EE1DA
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C54A1C20846
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BBE130F8D;
	Thu, 16 Nov 2023 13:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Ennw2qkv"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45CC8C1;
	Thu, 16 Nov 2023 05:48:01 -0800 (PST)
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B4995660734A;
	Thu, 16 Nov 2023 13:47:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700142479;
	bh=0F+bD5IJvC5DvD53eU1GEpAuHcSfiOhDXPjgQwy4gxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ennw2qkv+TWcuWKJb/JxsE2jdCn3IKctEidn6+LBnljCe+v1UPs4IrEDksAcfrbkP
	 i/NA/dK8J1rHvXw6S3r3jO7jTHYPtSOfCi2G2oRm2RIbEzPmnhaLuelKA+pQpBL8y4
	 /q9u2CLaklIlN7g3XcC9aEPaUFMtdMzK64qKkNG73gPlvHkOavshCDgCZjM0C0pDDT
	 rihxJ1eRSLOTm3TYuHngAsXEKQckU9bKtfP+3mlLODjkX3RHMIcBjiPZ+o4oTPs1uO
	 aqzt89HdHbgYsIkMHYFYkhvOUUPkte3vR9J1J8ox5s3tAe4F9JIfGrBuMX9QC+4ah2
	 houZmc0+DWMJg==
Received: by mercury (Postfix, from userid 1000)
	id DA79210613A1; Thu, 16 Nov 2023 14:47:57 +0100 (CET)
Date: Thu, 16 Nov 2023 14:47:57 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andyshrk@163.com>,
	heiko@sntech.de, hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	kever.yang@rock-chips.com, chris.obbard@collabora.com
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Message-ID: <20231116134757.zu7axb6cvriqjm6y@mercury.elektranox.org>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <20231115090823.GY3359458@pengutronix.de>
 <8f2ebc81-51c5-44d5-b27b-633a6cc85d0d@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fodj6ulte5c5gkb5"
Content-Disposition: inline
In-Reply-To: <8f2ebc81-51c5-44d5-b27b-633a6cc85d0d@rock-chips.com>


--fodj6ulte5c5gkb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 16, 2023 at 06:39:40PM +0800, Andy Yan wrote:
> > >   	vop2->sys_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "r=
ockchip,grf");
> > This already lacks an error check, shame on me...
> >=20
> > > +	vop2->vop_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "ro=
ckchip,vop-grf");
> > > +	vop2->vo1_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "ro=
ckchip,vo1-grf");
> > > +	vop2->sys_pmu =3D syscon_regmap_lookup_by_phandle(dev->of_node, "ro=
ckchip,pmu");
> > ... but please don't duplicate that.
>=20
> It a little difficult to find a proper way to do the check, as not every =
soc need all these phandles.
>=20
> Do i need check it per soc?

I suggest adding a u32 flags to struct vop2_data and then have
something like this:

if (vop2_data->flags & VOP2_HAS_VOP_GRF) {
    vop2->vop_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "rockch=
ip,vop-grf");
    if (IS_ERR(vop2->vop_grf))
        return dev_err_probe(dev, PTR_ERR(vop2->vop_grf) "cannot get vop-gr=
f");
}

if (vop2_data->flags & VOP2_HAS_VO1_GRF) {
    vop2->vo1_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "rockch=
ip,vo1-grf");
    if (IS_ERR(vop2->vo1_grf))
        return dev_err_probe(dev, PTR_ERR(vop2->vo1_grf) "cannot get vo1-gr=
f");
}

=2E..

Greetings,

-- Sebastian

--fodj6ulte5c5gkb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmVWHYUACgkQ2O7X88g7
+po82w//W3u/dHpgUXr+77xCVn2g3AVTWISnP6mEQ1VQkqATekZ8LpLJq7thz2pp
yuq3rG6e35mWVHVex5KNFzElA0eKPlHZ6Yy41mVK5lFn5/B00gVTKyY1Ke4b5gHS
ub3KYPmhEssqLioA4H+8w7clThuT6CClRrhH7snBTh+/Wq99ivsJTRvib3v5V1jE
nqzw/UnvodV54WlytiYADIsuRbcURk1BJx7xNgjuBBGWVjtOoUKPoJ4gqM8VpDmz
Ibc0H42k82E4XnWDbMZUaCEA2DqZOgNwlEAwX3lQGuJE6LYlUt/hRcU6+31AzdSh
ch9mGOFXz+8/6OxyWOD4uktftyiYAKFNL7Hon+z3pxBqoc2Bt94pcUlnfFyJvPgQ
WoaCQH4crpeYkPH4fo5QCyW5sUdtn12cM1ihF1JsUicAMmzsLcUagXKL7c+ObVrz
vCyPZGQDXuwiiNLSvkmG6yRrmAQFtquboGBPZOTH46fFNuASkR9ZuGEDm0nIH9Mh
AwWYqdlz9h/bg0vR/uXqro0DI0gx7TJwap870n9v5gvfK/e4MWM15W/VzbUv0Kxo
TL1+LtgAtDGbGVeuI3DHY94dzYwsov6yrViwuFC/wIgllZlHgK5Ir9su9XCfVCt1
SP5ybo1ag2VdjC88XQBHSV5m7hoKHC0PEJzAhtjvSSjbazh2PsM=
=DnDq
-----END PGP SIGNATURE-----

--fodj6ulte5c5gkb5--

