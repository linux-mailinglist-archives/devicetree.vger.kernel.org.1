Return-Path: <devicetree+bounces-127655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8F29E5DF3
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:05:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD265281A86
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46791227B90;
	Thu,  5 Dec 2024 18:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="SLgIBSPy"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E52E227B81;
	Thu,  5 Dec 2024 18:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421903; cv=pass; b=dpguE5wlM1687FKgt24TdSrh6gx7SZiUaYlT9qesBPi20bUSqcETppiqhqwe7BP2vfCMz6xVFKJ7qnDy8YLG6mpdK4WMKy1lfr/dP50r+NssKmljyaPCr9dehxY8PEXM+fkeXx7hVkONSOjN+QKBjSrCAyxR0ITpCRbV2YJd8VU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421903; c=relaxed/simple;
	bh=tXsmplCWIfDU1nslWwIzWjXlT1Uhwo23G/KzmcVHbWA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R5ukgC8PNyvV1ccMkKei37e5kxaz9n1B9tnvNK+vDSpZQAeQT8hkWiSXy1fWZugOyiMweniUT5mWgF92bQQdF9Yh9TQOr9aZDzl5a8sNnLRGkoWqqZif0a9GM+h5kxgDrasXeWG4aKqDpwYfIZS5XWryrzKxvNhhw0yp2P9pyNU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=SLgIBSPy; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1733421881; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CD7IQ9sWFL7LplVEoEnc0NaZmOuF/y0rMnTPwHbvX/n0+Wy1kmwvi2g/Dmov9FV8tSDE6QihziJhYSLNZUJIGVhVNk2b0nR9aTGiX44aNWWKy1lrT+7YlppBJXhurBP2IwpVlv3dAli0nEGsKSGcrIq/cdZkDcSQs+HR0ntm0VY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733421881; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tXsmplCWIfDU1nslWwIzWjXlT1Uhwo23G/KzmcVHbWA=; 
	b=AOBAnGEz+5pBuWHF1fr3zRWsZvFOUonvoDDj1zKnmNeTuEvDsb5rbbpXSSZbUM8mcJD2R8EgDMRCzkTyXAIH311txt422DYrmbHPLfSsLQ8S5H6XMuInc+HBX2skjSTMg/DQObGD7U+10Ndm+xtIQRcnxjQ8vPPUMUnSTNLX2ww=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733421881;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=tXsmplCWIfDU1nslWwIzWjXlT1Uhwo23G/KzmcVHbWA=;
	b=SLgIBSPyZrlSRVdtdt8u5wyKkpez+z41A5lkHP/IjxRXWMXULNC2fPxqpO2qn4xh
	Q69s3f7XeGip3ZO8f3afDchahlQ4n5yTM9V4p0A5MS/dHduVGpSKG9lBDjEoayEfSxa
	Jxjg8ssPj3vD6lBlYGrC2szq5y5Kqo8Hp0T7Ceqk=
Received: by mx.zohomail.com with SMTPS id 1733421877901470.7310984148362;
	Thu, 5 Dec 2024 10:04:37 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 563EF10604B0; Thu, 05 Dec 2024 19:04:32 +0100 (CET)
Date: Thu, 5 Dec 2024 19:04:32 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, andy.yan@rock-chips.com, 
	hjc@rock-chips.com, algea.cao@rock-chips.com, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support
 for eDP mode
Message-ID: <5ncdog66jtc4s7vxk2yt4jkknf2es3whvweuqmrxbot3azi5ge@t6s3xadkiasp>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <2131853.KlZ2vcFHjT@diego>
 <6e1f35c0-5ea8-414f-b3ea-4e7222c605ef@rock-chips.com>
 <2886747.Y6S9NjorxK@diego>
 <h4giob7bcrh7qmtepti6huym2llw4ujfmeff76vrgpahb5zy6x@dz6zghsifww5>
 <2342f342-672c-447e-90d8-674b748af6a4@rock-chips.com>
 <abzu2chif2g3urxoqbm3gbe6cciexbmqvn44qezrx4hgllfkkn@7bzi5jl3stqe>
 <42035ebe-09b7-4005-912a-8ec72d5dabcc@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tgjajudtqqajoprm"
Content-Disposition: inline
In-Reply-To: <42035ebe-09b7-4005-912a-8ec72d5dabcc@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.339.97
X-ZohoMailClient: External


--tgjajudtqqajoprm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support
 for eDP mode
MIME-Version: 1.0

Hello Damon,

On Thu, Dec 05, 2024 at 09:13:33AM +0800, Damon Ding wrote:
> Firstly, the term "the HDMI and eDP dynamic switching" can be somewhat
> misleading, because the eDP usually does not support hot plug. The RK3588
> eDP is often used as DP, and it actually supports DP 1.2. Therefore, it is
> better to use the "the HDMI and DP dynamic switching" description.

The part unclear to me is how the dynamic switching is supposed to
happen. Looking at the TRM the hotplug detect signals also seem to be
shared between HDMI and eDP. Can the RK3588S EVB distinguish if HDMI
or eDP has been plugged, or does this require some user interaction
to set the right mode?

> Indeed, the devm_phy_get(dp->dev, "dp") and devm_of_phy_get_by_index() wi=
ll
> help to get the phy reference in .probe() or .bind().
>=20
> However, the phy_set_mode() may be still needed in the HDMI and DP dynamic
> switching application scenarios. We need the enum phy_mode
> PHY_MODE_DP/PHY_MODE_HDMI to differentiate the configuration processes in
> .power_on(), .power_off() and .configure() of struct phy_ops, which will =
be
> called in conjunction with plugging in and unplugging an HDMI or DP cable.

I suppose you could fetch the PHY in power_on() and release it in
power_off(). But using phy_set_mode() might indeed be better here.

-- Sebastian

--tgjajudtqqajoprm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdR6ykACgkQ2O7X88g7
+pqINw/8CISqq7TtaVuYjbUOVbMUju+XZCYIgQ86pXkRiTB8jbo9FSE0v+9rD3B2
oxzyPpwv6e3CW9hJHsPgmeUz+zqzwa+gzHDTtdyapfOhrDHbALNBaskJavvFxjAG
rXs/kJaga35Z1AtGug6P//VQt5jOKx6VjBe51mQqphngJngD4gW2xr7Jh3zjSuJU
uwx7QiMwxdT2ysmQkwddEXm5B8Wjn4NqmxehkLSQWF+gi9P0al9uuYua17vbz5OA
sP3mpDYUsvPVUwPjYO+8c2eGuKFCIAwZBS01v1TtpjeEMCLqIZAAVcGpx1jwN2H/
XIFLQaf06CvqvB4IqErNgoXfqVV/B/X0kCnHVEfu0AD8yrZ7sT7EVo/FtFF8/DtD
yd7p3/+x+7z34LPUf6uhpjzyyko5gPZpFXILYSFACxhDO8ayX95PEQazQbmGnG0U
pLanIRga3lIxoCaGXaFetBHOCeSiqWxBs9SPO7r3gWYQmBv15VPLhR4q+9lSjoFT
O25niK3n7hgpuT40FfAcLgnftvycNIrTK9SWQbEeOKGH0G2Rq1rdk74zcgmlnQEM
DjucMFzuoftYsJlq8HN2nPrwr7P07N6F0eFapyTH3xfGj3O1zbKroiosXZEFJDTo
tl/VwfSg8bbGG/Zbc+/D+ZIvD+ovCWItkKoKJqB7j+lZJmbCzvc=
=0mlA
-----END PGP SIGNATURE-----

--tgjajudtqqajoprm--

