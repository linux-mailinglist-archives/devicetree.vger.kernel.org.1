Return-Path: <devicetree+bounces-126692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B4F9E296E
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 18:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABD74B31348
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 17:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461D41F9F7A;
	Tue,  3 Dec 2024 17:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="DgOEpBRn"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1C21F9F69
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 17:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733245927; cv=pass; b=fYK/jOUFJHF/0yL4f9mX6l8tKI5caEgXIviD4EvXNsyKtgqOjjfNaP7UFk3oz0MmxNubA8jcNTVn284e6ZSKSOGMUKjIw1GAZwVoo/iGY7W96DF8UNV3OJs7VbUGATiqlOQCQFmdLplWykZj65y/reZ7WT/z3ZkqB8Pm/aBCoc0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733245927; c=relaxed/simple;
	bh=6R4L45m6DjV0kPLiaOQo2BEfyLEEbXnKnM1VhIqlB8U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B5plaB9BTyhzP3L91gsE7XX70xX6k6/m9jxmAVFfBxcks7BIGR2cZS66OgyCGhAdpudVTY5tEstXqLytefTsAS8mpZjTqLkwJlEnW8sOm2gM48uiLFj18GbFkTCoGdZhRRzzhYYye7Zv89VZGi4bnn53KFXbyINncL1ojR5ThVU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=DgOEpBRn; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1733245908; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RcwP8ZfuWuVvf2m5bphpYCeRspQ0IE2OW+J3sMYSAYQq1wd2gx6JF61RBORIoZ8njaw6Hp9tumqYk1BmvFBCp6g6/huF6OEm28nZ1y9YibqfPikFst2lgXXnz+sJ/enscPlGgLdgdHUhyLALEc9xMJFZUd9tCD1uQIGyH5FhWIo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733245908; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=66cqsZk6Rb+FN7bqKRv+UU3l8s3KGITaMevRgBluHKs=; 
	b=HItt+ik1ijemTfmGfoGMAGApXHa3/vvQ0sTGUiUCl4XQ5/OBOvSrAOehbzH+W3j9ZNXSIQ0yX6liGMge+lpEQiE8wGHHLEm2DTtnN1fUTWehtMTa4vb4gwg+OsEbBnpLc/qLDw/yDdaxHfOQMFSsAGRWvoU2ILqy6cTFxWQdN78=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733245908;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=66cqsZk6Rb+FN7bqKRv+UU3l8s3KGITaMevRgBluHKs=;
	b=DgOEpBRndS0JFmwtrqiDhLjfkMuUdPWuVijTz8IZ7C0XMoLsVBmX2y+a6aYpnxtl
	LKX2FgO37xdgTf1CCgXuMS9FZLJCJRezNJYQDUWW+2bBxiNKllRQbUlOa3EGHfQAZVk
	GFYhAL6uLZLn3rxVHP+IpZY0aQEU5Uqzw3P0bWPI=
Received: by mx.zohomail.com with SMTPS id 1733245907021374.9277096940174;
	Tue, 3 Dec 2024 09:11:47 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 0D96910604CF; Tue, 03 Dec 2024 18:11:43 +0100 (CET)
Date: Tue, 3 Dec 2024 18:11:43 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dsimic@manjaro.org, alchark@gmail.com, inindev@gmail.com, 
	cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST
 port for Radxa ROCK 5B
Message-ID: <hxctagkzzd37n7q7onvivptj5gsac5tn5gxdlvgo2fuumatjmh@ckvjcxtub26f>
References: <20241130014043.12942-1-naoki@radxa.com>
 <18640241.sWSEgdgrri@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uk3tzkxeqgoepbnq"
Content-Disposition: inline
In-Reply-To: <18640241.sWSEgdgrri@diego>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.129.81
X-ZohoMailClient: External


--uk3tzkxeqgoepbnq
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST
 port for Radxa ROCK 5B
MIME-Version: 1.0

Hi,

On Tue, Dec 03, 2024 at 05:18:39PM +0100, Heiko St=FCbner wrote:
> Am Samstag, 30. November 2024, 02:40:42 CET schrieb FUKAUMI Naoki:
> > Type-C port is dual-role USB 3.0 port. add usb_host0_xhci and phy
> > nodes to use it as HOST port.
>=20
> This needs a bit more explanation on _why_ you're statically
> setting this to host-mode.

The USB-C port can be used in peripheral mode, so this is just
wrong. Also it should be added together with the USB PD controller
for proper muxing and role switch support. The reason I have not yet
send the patch is that this needed a fix in U-Boot first.

Most users are powering their Rock 5Bs via the USB-C port and a
bad description results in unexpected hardware resets at boot
time.

I mostly waited for the rc1 tag to happen now that U-Boot support
has landed. Also I expect that even with all those precautions
some people will start seeing issues. Unfortunately there are
many non-compliant USB-PD power sources :(

-- Sebastian

>=20
> Heiko
>=20
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm=
64/boot/dts/rockchip/rk3588-rock-5b.dts
> > index 0ec4992b43cd..c5776e3b4aab 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -840,6 +840,14 @@ &tsadc {
> >  	status =3D "okay";
> >  };
> > =20
> > +&u2phy0 {
> > +	status =3D "okay";
> > +};
> > +
> > +&u2phy0_otg {
> > +	status =3D "okay";
> > +};
> > +
> >  &u2phy1 {
> >  	status =3D "okay";
> >  };
> > @@ -883,6 +891,11 @@ &usb_host0_ehci {
> >  	status =3D "okay";
> >  };
> > =20
> > +&usb_host0_xhci {
> > +	dr_mode =3D "host";
> > +	status =3D "okay";
> > +};
> > +
> >  &usb_host1_ehci {
> >  	status =3D "okay";
> >  };
> > @@ -900,6 +913,10 @@ &usb_host2_xhci {
> >  	status =3D "okay";
> >  };
> > =20
> > +&usbdp_phy0 {
> > +	status =3D "okay";
> > +};
> > +
> >  &usbdp_phy1 {
> >  	status =3D "okay";
> >  };
> >=20
>=20
>=20
>=20
>=20

--uk3tzkxeqgoepbnq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdPO84ACgkQ2O7X88g7
+poHhw//QdF9cpDnCKaEIXYuT+vrxrWTjhdpVEky7dKYf629An6U4hrASGAd0pcD
FxladqOr1xLpWRoOJb+BHTCr5DN15Il557kXD4PbOJVeTx3MQB34DoA65ZZH2Zyi
Oe0HY6xEgl324wXmVG09PJFzoLmYchL7LRXZNvDF/UT2eLL1oigHf6/XlSxqXsij
8p3gJcO4YlY9RBqGqo/mVOfyjT4sNXegRpfOq2HlrvFETSX3y1BpHcjsLVvjIbbO
Ob+8NvCDXELBHUggyPowuVfeAIPU7/NhcVJV78KIeoFY/Q+SNVTEIrl22/Vm1cHF
rsxWRigzjVynOsPZu8m6xSuVLs//mV5tgk5mOq4jsFN0EA3AXjDfg+R8JLInwbHx
aCKtwx/AAe5pck+syLWLq8ZdKnxVJbWEECZeaO+ZV6pZRvTTP4oS6/IreUeLLKkS
CWzJlZvDqmh0c5ENR6oj+IU8pbP2D3QoDuuE4cGbq1Nr/fotFBEqowqrHUnEhZYt
2mTro4sy23P1mr18RiGdhS4ma15mT3uXPhgFE+Tyhk8yFajEEkqUbAWd4t0nvdkr
+j6HAUh5mkzzQslNpFYgpFK+0//xdNf4GDUI0RdSSm23koPk/FwsPOxU+W6sacEq
GCf3RbIxbgXKYXbT+5EH00p7+b5KRvi7JKsx3l/YmPq08TsLRNo=
=B8EW
-----END PGP SIGNATURE-----

--uk3tzkxeqgoepbnq--

