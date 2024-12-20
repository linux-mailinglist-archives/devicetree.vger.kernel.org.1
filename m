Return-Path: <devicetree+bounces-132902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9EE9F88E8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4461516ACC3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E274259497;
	Fri, 20 Dec 2024 00:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="RL++tx/G"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta0.migadu.com (out-187.mta0.migadu.com [91.218.175.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CB8179BD
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734653890; cv=none; b=iFix3vpw3J9KHLF/k69D5jBVeSgz7eLNVMl8RkzGonX1hsaA2i8dKUH+fTVYO4efII8ulLLitPL2kciotIDae9Z89nlryQyTeYCpfcmkWK96pGOPqgkWyp6X+NGpfse7tBsQkf/4a+OPXq9uNgiTsvcHrMDTMo+4tg4PnBFovOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734653890; c=relaxed/simple;
	bh=j/AhfVT4I9Qk4flOPH33GiQK+LtfrYBUou6TbHS3soQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=iIJu0FrLJ696tEqzT4ovj8h7JWJLgyAdv7ZyoJJrSaqWDtCm7ocpSefwAYbnscqUJYGvewAvooCIujfy8753ESXzZsDxPmlBrNFZrFYG0XOFQCvNbEi9dxHAQ5/uTiOsMaiaoMJHXY07P+XjeAaP//TcrTyyPk4LNFZdbkPfpas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=RL++tx/G; arc=none smtp.client-ip=91.218.175.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734653876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S/RK+iCwMDOjsz6qGHyrgosuNTC74b/O0wp4fma2qaQ=;
	b=RL++tx/GUnwLN9G3bQCBvzqbyINV1kneBL1xXtIsv/Kn9nBODpK6zMbUJIcvfASm1ZlFc5
	VtM3aR/JJkN+2RW1IuI1KnbudmdXs1kQjcyecZDgGytPV6s9wQqfKwITLly7LHBEqZulKj
	rD5AX57YauDEvqdc/SRum3I1y1KgTt0gTDDEqitA+iUXkalBDAGN7m5Fcc9ZLAScwTy39Z
	msnxadguluUjlinKAd4BwJ3oylD4gCTvIjnoyLQO6p2pVdKbW3ijZB1I0BG2AYZgWFTMSL
	P4nN9CSajxcslzBNFzmXXQWRUJUZerOLj4Lv1/25v0OJcTABH9Ccs825K0KveA==
Content-Type: multipart/signed;
 boundary=011e6b374dd8cc6329fed8e851dfa8c3e80f3228d231932c98a778791d9f;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Fri, 20 Dec 2024 01:17:42 +0100
Message-Id: <D6G3H3AXXVAJ.3F1WMBTWLX2KV@cknow.org>
Cc: <robh@kernel.org>, <conor+dt@kernel.org>, <algea.cao@rock-chips.com>,
 <rfoss@kernel.org>, <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <sebastian.reichel@collabora.com>, <dri-devel@lists.freedesktop.org>,
 <hjc@rock-chips.com>, <kever.yang@rock-chips.com>,
 <linux-rockchip@lists.infradead.org>, <vkoul@kernel.org>,
 <andy.yan@rock-chips.com>, <krzk+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <l.stach@pengutronix.de>
Subject: Re: [PATCH v3 07/15] drm/bridge: analogix_dp: Add support for phy
 configuration.
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Damon Ding"
 <damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-8-damon.ding@rock-chips.com>
 <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
In-Reply-To: <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
X-Migadu-Flow: FLOW_OUT

--011e6b374dd8cc6329fed8e851dfa8c3e80f3228d231932c98a778791d9f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Dec 20, 2024 at 1:13 AM CET, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:05:56PM +0800, Damon Ding wrote:
> >  void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *co=
unt)
> > @@ -546,10 +575,37 @@ void analogix_dp_get_lane_count(struct analogix_d=
p_device *dp, u32 *count)
> >  void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
> >  {
> >  	u8 lane;
> > +	int ret;
> > =20
> >  	for (lane =3D 0; lane < dp->link_train.lane_count; lane++)
> >  		writel(dp->link_train.training_lane[lane],
> >  		       dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
> > +
> > +	if (dp->phy) {
> > +		union phy_configure_opts phy_cfg =3D {0};
> > +
> > +		for (lane =3D 0; lane < dp->link_train.lane_count; lane++) {
> > +			u8 training_lane =3D dp->link_train.training_lane[lane];
> > +			u8 vs, pe;
> > +
> > +			vs =3D (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> > +			     DP_TRAIN_VOLTAGE_SWING_SHIFT;
> > +			pe =3D (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> > +			     DP_TRAIN_PRE_EMPHASIS_SHIFT;
> > +			phy_cfg.dp.voltage[lane] =3D vs;
> > +			phy_cfg.dp.pre[lane] =3D pe;
> > +		}
> > +
> > +		phy_cfg.dp.lanes =3D dp->link_train.lane_count;
> > +		phy_cfg.dp.link_rate =3D
> > +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
>
> This two should not be necessary, please drop them.

This too or These two (statements)?

> > +		phy_cfg.dp.set_voltages =3D true;
> > +		ret =3D phy_configure(dp->phy, &phy_cfg);
> > +		if (ret && ret !=3D -EOPNOTSUPP) {
> > +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret)=
;
> > +			return;
> > +		}
> > +	}
> >  }
> > =20
> >  u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, =
u8 lane)
> > --=20
> > 2.34.1
> >=20


--011e6b374dd8cc6329fed8e851dfa8c3e80f3228d231932c98a778791d9f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2S3qwAKCRDXblvOeH7b
brvoAP9rdY+F/m1jGw+mxL5qmV8ze/WQGLInbKNxmBNiT7RnnAEAmpHkct6n5nur
t6M6q47PJP6EzzpfIfsmJOaAH0THJwM=
=RI0b
-----END PGP SIGNATURE-----

--011e6b374dd8cc6329fed8e851dfa8c3e80f3228d231932c98a778791d9f--

