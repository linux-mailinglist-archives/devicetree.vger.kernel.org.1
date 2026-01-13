Return-Path: <devicetree+bounces-254742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A022D1B7AF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6A16303533A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5908E34FF46;
	Tue, 13 Jan 2026 21:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="I9yflFUo"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54534F256;
	Tue, 13 Jan 2026 21:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768341095; cv=pass; b=EQ58JCqT2woKmt914ilyMV6AWgP7KcfDyBJqT2cjY3iJMeLvaTF85tXjwvEQIdyX4gzg54KiyHaXyRiKFmjsw/QRZVe7sRz7vs2v9x7qg+a6fVf6TzDzluTSRGfFKV9VmvIgk93ZYkT/HqN3XVlTsfzA/64hyxwEqHNst3ecmF4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768341095; c=relaxed/simple;
	bh=Xm/KvZCsyINTuD7J/ai4xT0fe+Xzz8HTdMV2/Y9uGko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rw3TGCZJ1iG1mvaQ9HeMnmLIqB1YlSVq40kmleHa7hvuc/oGFyorGaXKrtAtfeNrdAuNCLk7JvBWdNj5BiGHOUv9RoF2+FmH8doHgxRci3Eomuxzhr9PtNrJY7u6T0BvY6653TSCHaY56g7Abpkzfbaist0S9ScOY4f4RL6NQto=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=I9yflFUo; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1768341068; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=h63xuy3Rw83nWmAQJ1ekod8RCWyQQHCuFg8kcrgLV4bD3ctOWtR1GAr19wbTCkXlF7K2SrF9XQ7jlYB5Rjjkp1NtPNE3uQyTXcvXsbDLTrjV96ID/txXGAW2HJGFZd9Aquogc4CV3Hg7uZaQCxZf1uv9cpfBuardV/QdhZsqZHo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768341068; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=heegUveatk2FpyHQ31XUitCgPY/ocICvnXz0evnN0z8=; 
	b=AUIme/3PYb98mkh8irjphHaGYypVlrFVehnqjpJAh0oE+9CCnYsKO8FrHRtKqPbKzyWOra0n6SbzaPbvSU74EuDrxGSDOynwh99eEYuAAHfId20spaSkzW7rAnxZtrWzuNrp77OTkNmoZe0UC+G12iqm9LBD09bkerVbQdoKc/M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768341068;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=heegUveatk2FpyHQ31XUitCgPY/ocICvnXz0evnN0z8=;
	b=I9yflFUopnplEbat3IiZQBY6XElfB2SRCO17LiuXAxGU4BVJPPbVMuI8ZINawU/+
	09N2cIZ/NaTDyPEXe1qfxdVkrwGp+DZE13tQ4TVrgEuFJsE6NzM42v6TY2x2SCGVen0
	hHlA8nB8HY+S3+Te3sIia2SGANa378t4vuzQcRqg=
Received: by mx.zohomail.com with SMTPS id 1768341066743252.35542973473719;
	Tue, 13 Jan 2026 13:51:06 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 73B08181010; Tue, 13 Jan 2026 22:51:01 +0100 (CET)
Date: Tue, 13 Jan 2026 22:51:01 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, dmitry.baryshkov@oss.qualcomm.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, cristian.ciocaltea@collabora.com, 
	Laurent.pinchart@ideasonboard.com, mripard@kernel.org, hjc@rock-chips.com, robh@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 0/5] Add DisplayPort support for rk3576
Message-ID: <aWa8mvBkTrKhZBFo@venus>
References: <20260109080054.228671-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sxsfpgjjlrmslem4"
Content-Disposition: inline
In-Reply-To: <20260109080054.228671-1-andyshrk@163.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/268.322.40
X-ZohoMailClient: External


--sxsfpgjjlrmslem4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/5] Add DisplayPort support for rk3576
MIME-Version: 1.0

Hi,

On Fri, Jan 09, 2026 at 04:00:43PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>=20
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in qual pixel mode and support for MST.
>=20
> This patch series aims to add basic display output, not include
> audio and MST, which will be the work for the next stage.
>=20
> Only test with 2 lane standard DP port output now.

This is a nice minimal series :) I got it working to some degree on
the RK3576 Sige5 USB-C port. The display connection detection is
_very_ unstable, but that part is handled by the TypeC Port Manager
and unrelated to the DP controller (and already an issue on the RK3588
based Rock 5B). IF the display is detected (i.e. USB-C side worked
properly), the DP controller managed to do proper output too. Thus
I believe this should be merged. I plan to look into the TCPM issues
in the meantime.

Greetings,

-- Sebastian

>=20
>=20
>=20
> Andy Yan (5):
>   dt-bindings: display: rockchip: Add rk3576 DisplayPort
>   drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
>   drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
>   drm/rockchip: dw_dp: Add DisplayPort support for rk3576
>   arm64: dts: rockchip: Add DisplayPort dt node for rk3576
>=20
>  .../display/rockchip/rockchip,dw-dp.yaml      | 29 +++++++++++++++++--
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 ++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c       | 12 ++------
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c     | 27 ++++++++++++++---
>  include/drm/bridge/dw_dp.h                    |  7 +++++
>  5 files changed, 87 insertions(+), 16 deletions(-)
>=20
> --=20
> 2.43.0
>=20
> base-commit: ad939ed1f8108513e84e93da90ad7ea31b56ef87
> branch: rk3576-dp-upstream
>=20

--sxsfpgjjlrmslem4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlmvkUACgkQ2O7X88g7
+pogQBAAiQs3GMGXt4uSrClyoS6K1bPQFhQWs5HMwFaVulpxY9ATYTZxWL1mnUlv
XpZAWMePAC50xxM/6tw/i/+ex9ZVTI35M/YDq9VchJcwrecVvr0ML/6bDEjeW1Tu
Dut/y1LUYYxZ6baB8oMqLldUQ18NGUs1aXx2QabDOc6cyXcDTmimbZmiud1voK7U
OwpIZUucbbOA4ERPp3GvjVdBM2GTEAtmPASWuua+2Wui4hcdVZEsZvNNWE80kRXe
QIfosZxdDvuIoQWCQRVQu3ltFJlCY/+gPycUznUUPpVcZrIkyAUB3MVRiGFgfxX5
ZF/gHLPB2PYwDhKCaVW+oEH863gCPLZA5h/YxfW7/rjJ7Cm//o0RPg2lJH92gcEL
CRYAfH3wqhKwrEMPihRDexvHBruhIjoQ7UQC0zMWzhiQ8C7kL1LqP7rifdRt3uao
8P/peQt+2q2HC8VhBwmcXt0CEE5G4ve2HnrzXCfZ2+1F1xzN8fT58PD+kB4u43bK
R8bqyNQHeyc33bWPkX9RkgDjqrKoIXj7DSPelUZa6rVZVXFcVU6Mw7fmvSEk4xsv
hQr8zEAEMxnS1b6aJjbt8Q2TOLUgwQVMk03JcuudDcOWmTgwY9ioNgUDbyI23mpG
eRMKG3sTl28EN44zrz+1Iopy5+2jI4RX5aumQ84pipfyQgSZtPw=
=EEJM
-----END PGP SIGNATURE-----

--sxsfpgjjlrmslem4--

