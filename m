Return-Path: <devicetree+bounces-101295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C7E9713F0
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07E6A1F27666
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7391F1AE860;
	Mon,  9 Sep 2024 09:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="U1ctQX5e"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04011B2EE6
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 09:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725874595; cv=none; b=m5fBoTJTIh2hYpFbFBbzHe6JCD4vbJvrTCzxUmYhDDTs4zrHJlm+GRHW1WRz0cvt2JpB38wBZmtDlEIo9P6yOsXYRbtuYoVDCT/P0wcWZHgNRtEQ7UWs8JhVVHzRDw7S+7DTpSr745DWdbZOYzkn9llBCRGQWRZGnO8rdvrLBDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725874595; c=relaxed/simple;
	bh=z5/BGydgdEnhBJZo1+Hv7AYPwWMJEANcKtIyFwyHm8c=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=napMZTBR9E/7UhyNyaa4j4EblJrr6OtCQ8i7l7xCnQI4nMNHeuhOZvs8Vz77IRzn5blxackD5dyshWDRZQ+JLCPKLMCJCjyohara+vc1XMKA1g3bi2SRB4fp7WulDXUqNIJvgHBECDST3mkGxC/5zpH4399ZFhupWodSsX6+Z/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=U1ctQX5e; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725874588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ac7MnXk0+4OmEaGl+o2m4y/0M5iH7c+3GKkl4Qy3D8A=;
	b=U1ctQX5eIeSZpzL1FGOk+YNq1zfqhAuIOYZnZk4KkZeMNWuidAVb0ZgcLHt3miY80lhy3h
	N2+P20Z6umpmoxsROgk+CpQp0Ti6yzJWVcaQbzXjVYPTlE76xnPUMHDNsBIOnA4EOMdbTi
	THbjO7xFXzRxHPYbD5S2Qe+nEbWOYAoFn1zgj2mtmpyF9m491GZOCkH+3zHw4BwCGQmx05
	ox/AUJvJnH4OulTrG+t2f/zonHSyo2pjhgY5h97NVrxiXw3t55o7lLDK1MzF8jFQbkN3d1
	xctqBIVEWLNbfql6B43xP4nZe3k8Df2lsVV7vTOfxG+D3sdTzI6kx9lffNlERA==
Content-Type: multipart/signed;
 boundary=8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 09 Sep 2024 11:36:14 +0200
Message-Id: <D41NH5VO0A7T.26F04WDY1UTCR@cknow.org>
Cc: <detlev.casanova@collabora.com>, <heiko@sntech.de>,
 <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <hjc@rock-chips.com>, <mripard@kernel.org>,
 <sebastian.reichel@collabora.com>, <linux-rockchip@lists.infradead.org>,
 <sjoerd@collabora.com>, "Andy Yan" <andy.yan@rock-chips.com>,
 <krzk+dt@kernel.org>, <robh@kernel.org>
Subject: Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop hardware
 version
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, "Andy Yan" <andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
 <ZtlZgKcDQFF_WnCn@pengutronix.de>
 <2326e2ea.8264.191c13bab93.Coremail.andyshrk@163.com>
 <Zt68U6hnPA0KrxXB@pengutronix.de>
In-Reply-To: <Zt68U6hnPA0KrxXB@pengutronix.de>
X-Migadu-Flow: FLOW_OUT

--8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 9, 2024 at 11:13 AM CEST, Sascha Hauer wrote:
> On Thu, Sep 05, 2024 at 04:09:58PM +0800, Andy Yan wrote:
> >  At 2024-09-05 15:10:56, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:
> >  >On Wed, Sep 04, 2024 at 08:02:32PM +0800, Andy Yan wrote:
> >  >> From: Andy Yan <andy.yan@rock-chips.com>
> >  >>
> >  >> There is a version number hardcoded in the VOP VERSION_INFO
> >  >> register, and the version number increments sequentially based
> >  >> on the production order of the SOC.
> >  >>
> >  >> So using this version number to distinguish different VOP features
> >  >> will simplify the code.
> >  >>
> >  >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> >  >>
> >  >> ---
> >  >>
> >  >> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers=
/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  >> index 9b269f6e576e..871d9bcd1d80 100644
> >  >> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  >> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  >> @@ -13,6 +13,15 @@
> >  >>  #include "rockchip_drm_drv.h"
> >  >>  #include "rockchip_drm_vop.h"
> >  >>
> >  >> +#define VOP2_VERSION(major, minor, build)     ((major) << 24 | (mi=
nor) << 16 | (build))
> >  >> +
> >  >> +/* The new SOC VOP version is bigger than the old */
> >  >> +#define VOP_VERSION_RK3568    VOP2_VERSION(0x40, 0x15, 0x8023)
> >  >> +#define VOP_VERSION_RK3588    VOP2_VERSION(0x40, 0x17, 0x6786)
> >  >> +#define VOP_VERSION_RK3528    VOP2_VERSION(0x50, 0x17, 0x1263)
> >  >> +#define VOP_VERSION_RK3562    VOP2_VERSION(0x50, 0x17, 0x4350)
> >  >> +#define VOP_VERSION_RK3576    VOP2_VERSION(0x50, 0x19, 0x9765)
> >  >
> >  >What about the RK3566? Does it have the same version code as the RK35=
68?
> >  >
> >  >This new version field replaces the soc_id mechanism we had before to
> >  >99%. You keep the soc_id around just for distinguishing between RK356=
6
> >  >and RK3568. It would be nice to fully replace it.
> >  >
> >  >I see that the VOP_VERSION_RK* numbers are the same as found in the
> >  >VOP2_SYS_VERSION_INF registers. On the other hand you never read the
> >  >value from the register which make the VOP_VERSION_RK* just arbitrary
> >  >numbers. Wouldn't it be possible to make something up for RK3566, lik=
e
> >  >VOP2_VERSION(0x40, 0x15, 0x8022) to get rid of the soc_id thingy?
> >  Yes=EF=BC=8CRK3566 and RK3568 share the same VOP IP block=EF=BC=8C so =
the version code at VERSION_REGISTER is
> >  the same, the difference between rk3568 and rk33566 are introduced at =
soc Integration=E3=80=82
> >  So i would still like to keep the soc_id to  handle situation like thi=
s=E3=80=82As we always have such  cause=EF=BC=8C one
> >  same IP block=EF=BC=8C but there are some subtle differences in featur=
es across different SOCs.
>
> Fine with me. You could leave a comment in the code or commit
> message that explains why we need both.

Also (or especially?) add that to the commit message of patch 6 of this
series. Patch 6's commit message talks about RK3576 while it changes
code related to RK3566 and I (too?) thought that not using VOP_VERSION
was an oversight, while it turns out to be deliberate.

Cheers,
  Diederik

--8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZt7BlQAKCRDXblvOeH7b
bjNCAQD75I99I8eQyeyxfrEV5TDf/AH75sfVSERvC4tYJYmhUQEAzK6ErqvvskFA
GFfJz2HXP1a+zRS/z7wpv3XGdG83eQ4=
=9uHr
-----END PGP SIGNATURE-----

--8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee--

