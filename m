Return-Path: <devicetree+bounces-72151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1B68FAF3D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4BB42813E1
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F249D14372F;
	Tue,  4 Jun 2024 09:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="a50MWFUL";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="RV52ppSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C772313A415
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 09:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717494576; cv=none; b=gcAZgyfuQs5pl6FkOZqFpcesAH91C2xL+G1xih+FrouV6ConZZkljrWi0NUGL2+sAdOWCpOKMF++e4LBeGf1cAcOI4W/Lc9jkB6HrbGDJBntZqyCARemKoXB2NKJ3nxNTG9PuNmD998iKF3oOCrZiBwNA9N8yyUqi5RmW1edKfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717494576; c=relaxed/simple;
	bh=XacKCjKqWErV1jdeysCSM7Kx+3qPFXe9SklG0rONQWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=npxNWIc+H7gBmJsJYKEX+yGKNMZcMJBiXc437EyU2vu11PyfC651wAIVLldU2wAw6g55ZSYYna1zLXXfa4ekYGA6dtQDB/lBi3xqEyDa9Qq4fHjD+C6DOw4vawVkU/Hm7b57yyL8tPfx6Pyd5VOxaIQsVfs/v2SdofD7rxkKj5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=a50MWFUL; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=RV52ppSm reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1717494574; x=1749030574;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=D9Y6aHzRSX1M/okafM5XvVMjeFxqQ8Pr99V3yM1nuJw=;
  b=a50MWFULCUGZAZAlpvNMfSAu7yfCVIOLiMwxS9uLJ4/FOmO9ivv+ouz/
   xcDTJeenN/YcJjogBr2kbt/xP6BvM1STuot6LvDPhbblIHO0O2kFXc3Dz
   t2hM3+RMGjeabanh8h4JMShLAwpuwMWGUr8zf8q9BzVd8GFhqnu6U1Zph
   utWQRzEU5kCsRTHdKa4D94dv3iUDbSOKsP3/J6Igj30h8pLgJuuaRuFWg
   CibmRghh0M1/eHcScZoPJPQ2HsMLediWMSh64AU/08PJ67Y7mEfOYsGYF
   h1YZeoZyZueeC20zRPd1lvC3KZDBQv3MAyW++u6y8O/lXpUze5URoT6Am
   Q==;
X-CSE-ConnectionGUID: Sz926JwiS86zQxa2TFptSA==
X-CSE-MsgGUID: XBYM67s5Rail7HPGo7JZhg==
X-IronPort-AV: E=Sophos;i="6.08,213,1712613600"; 
   d="scan'208";a="37209046"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 04 Jun 2024 11:49:31 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 74B4917119C;
	Tue,  4 Jun 2024 11:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1717494567;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=D9Y6aHzRSX1M/okafM5XvVMjeFxqQ8Pr99V3yM1nuJw=;
	b=RV52ppSmdTYPddxBEmy0MyYN5N4ZMUCluhRtaum1yKFhQhhKTkHlr1FCSUjrXwrOu3vgLr
	A9Cj9vVyBIJvKgkgQQyL+Ez0egHsb3UxsYKLNdU4QrPYAVD5BRJ+cOGZXM0l5cN3YK2D08
	K26Nhmg6DudAUp9jKYYaaATdaoW+UuBxV9fAu4fqrzBT3gaLu5KPLNta1WrQ4VyooJiIEl
	fVTlUU3hT5got6E4Q5udHormbIm/hO0lCtFQIHyGMxn0TlPoTKoIwPc4VulUAYuCapeqgS
	vHbtSn9HFxv5Xz4qhJdR6GJHESD+fjQB34jX1jfsCautukq7ZKmFbGOypiqPKg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Lucas Stach <l.stach@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, kernel@dh-electronics.com, Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 2/2] drm/bridge: tc358767: Add configurable default preemphasis
Date: Tue, 04 Jun 2024 11:49:26 +0200
Message-ID: <2272229.iZASKD2KPV@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240531204339.277848-2-marex@denx.de>
References: <20240531204339.277848-1-marex@denx.de> <20240531204339.277848-2-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Marek,

Am Freitag, 31. Mai 2024, 22:42:04 CEST schrieb Marek Vasut:
> Make the default DP port preemphasis configurable via new DT property
> "toshiba,pre-emphasis". This is useful in case the DP link properties
> are known and starting link training from preemphasis setting of 0 dB
> is not useful. The preemphasis can be set separately for both DP lanes
> in range 0=3D0dB, 1=3D3.5dB, 2=3D6dB .
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: kernel@dh-electronics.com
> ---
>  drivers/gpu/drm/bridge/tc358767.c | 49 ++++++++++++++++++++++++++-----
>  1 file changed, 42 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/t=
c358767.c
> index 1243918320a7d..32639865fea07 100644
> --- a/drivers/gpu/drm/bridge/tc358767.c
> +++ b/drivers/gpu/drm/bridge/tc358767.c
> @@ -241,6 +241,10 @@
> =20
>  /* Link Training */
>  #define DP0_SRCCTRL		0x06a0
> +#define DP0_SRCCTRL_PRE1		GENMASK(29, 28)
> +#define DP0_SRCCTRL_SWG1		GENMASK(25, 24)
> +#define DP0_SRCCTRL_PRE0		GENMASK(21, 20)
> +#define DP0_SRCCTRL_SWG0		GENMASK(17, 16)
>  #define DP0_SRCCTRL_SCRMBLDIS		BIT(13)
>  #define DP0_SRCCTRL_EN810B		BIT(12)
>  #define DP0_SRCCTRL_NOTP		(0 << 8)
> @@ -278,6 +282,8 @@
>  #define AUDIFDATA6		0x0720	/* DP0 Audio Info Frame Bytes 27 to 24 */
> =20
>  #define DP1_SRCCTRL		0x07a0	/* DP1 Control Register */
> +#define DP1_SRCCTRL_PRE			GENMASK(21, 20)
> +#define DP1_SRCCTRL_SWG			GENMASK(17, 16)
> =20
>  /* PHY */
>  #define DP_PHY_CTRL		0x0800
> @@ -369,6 +375,7 @@ struct tc_data {
> =20
>  	u32			rev;
>  	u8			assr;
> +	u8			pre_emphasis[2];
> =20
>  	struct gpio_desc	*sd_gpio;
>  	struct gpio_desc	*reset_gpio;
> @@ -1090,13 +1097,17 @@ static int tc_main_link_enable(struct tc_data *tc)
>  			return ret;
>  	}
> =20
> -	ret =3D regmap_write(tc->regmap, DP0_SRCCTRL, tc_srcctrl(tc));
> +	ret =3D regmap_write(tc->regmap, DP0_SRCCTRL,
> +			   tc_srcctrl(tc) |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
>  	if (ret)
>  		return ret;
>  	/* SSCG and BW27 on DP1 must be set to the same as on DP0 */
>  	ret =3D regmap_write(tc->regmap, DP1_SRCCTRL,
>  		 (tc->link.spread ? DP0_SRCCTRL_SSCG : 0) |
> -		 ((tc->link.rate !=3D 162000) ? DP0_SRCCTRL_BW27 : 0));
> +		 ((tc->link.rate !=3D 162000) ? DP0_SRCCTRL_BW27 : 0) |
> +		 FIELD_PREP(DP1_SRCCTRL_PRE, tc->pre_emphasis[1]));
>  	if (ret)
>  		return ret;
> =20
> @@ -1188,8 +1199,10 @@ static int tc_main_link_enable(struct tc_data *tc)
>  		goto err_dpcd_write;
> =20
>  	/* Reset voltage-swing & pre-emphasis */
> -	tmp[0] =3D tmp[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> -			  DP_TRAIN_PRE_EMPH_LEVEL_0;
> +	tmp[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> +		 FIELD_PREP(DP_TRAIN_PRE_EMPHASIS_MASK, tc->pre_emphasis[0]);
> +	tmp[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> +		 FIELD_PREP(DP_TRAIN_PRE_EMPHASIS_MASK, tc->pre_emphasis[1]);
>  	ret =3D drm_dp_dpcd_write(aux, DP_TRAINING_LANE0_SET, tmp, 2);
>  	if (ret < 0)
>  		goto err_dpcd_write;
> @@ -1213,7 +1226,9 @@ static int tc_main_link_enable(struct tc_data *tc)
>  	ret =3D regmap_write(tc->regmap, DP0_SRCCTRL,
>  			   tc_srcctrl(tc) | DP0_SRCCTRL_SCRMBLDIS |
>  			   DP0_SRCCTRL_AUTOCORRECT |
> -			   DP0_SRCCTRL_TP1);
> +			   DP0_SRCCTRL_TP1 |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
>  	if (ret)
>  		return ret;
> =20
> @@ -1248,7 +1263,9 @@ static int tc_main_link_enable(struct tc_data *tc)
>  	ret =3D regmap_write(tc->regmap, DP0_SRCCTRL,
>  			   tc_srcctrl(tc) | DP0_SRCCTRL_SCRMBLDIS |
>  			   DP0_SRCCTRL_AUTOCORRECT |
> -			   DP0_SRCCTRL_TP2);
> +			   DP0_SRCCTRL_TP2 |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
>  	if (ret)
>  		return ret;
> =20
> @@ -1274,7 +1291,9 @@ static int tc_main_link_enable(struct tc_data *tc)
> =20
>  	/* Clear Training Pattern, set AutoCorrect Mode =3D 1 */
>  	ret =3D regmap_write(tc->regmap, DP0_SRCCTRL, tc_srcctrl(tc) |
> -			   DP0_SRCCTRL_AUTOCORRECT);
> +			   DP0_SRCCTRL_AUTOCORRECT |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
> +			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
>  	if (ret)
>  		return ret;
> =20
> @@ -2346,6 +2365,7 @@ static int tc_probe_dpi_bridge_endpoint(struct tc_d=
ata *tc)
>  static int tc_probe_edp_bridge_endpoint(struct tc_data *tc)
>  {
>  	struct device *dev =3D tc->dev;
> +	struct device_node *port;
>  	struct drm_panel *panel;
>  	int ret;
> =20
> @@ -2372,6 +2392,21 @@ static int tc_probe_edp_bridge_endpoint(struct tc_=
data *tc)
>  		tc->bridge.ops |=3D DRM_BRIDGE_OP_DETECT;
>  	tc->bridge.ops |=3D DRM_BRIDGE_OP_EDID;
> =20
> +	port =3D of_graph_get_port_by_id(dev->of_node, 2);
> +	if (!port)
> +		return 0;
> +
> +	of_property_read_u8_array(port, "toshiba,pre-emphasis",
> +				  tc->pre_emphasis,
> +				  ARRAY_SIZE(tc->pre_emphasis));

This doesn't match the bindings. Bindings say it's a property of the
endpoint, not the port. Additionally it's uint32-array, not uint8-array.

Best regards,
Alexander

> +	of_node_put(port);
> +
> +	if (tc->pre_emphasis[0] < 0 || tc->pre_emphasis[0] > 2 ||
> +	    tc->pre_emphasis[1] < 0 || tc->pre_emphasis[1] > 2) {
> +		dev_err(dev, "Incorrect Pre-Emphasis setting, use either 0=3D0dB 1=3D3=
=2E5dB 2=3D6dB\n");
> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
> =20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



