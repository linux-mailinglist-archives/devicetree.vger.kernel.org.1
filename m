Return-Path: <devicetree+bounces-269429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAuHEQ8Vomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:05:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F2B1BE6F3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA3EB3079C4F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6666247A0C4;
	Fri, 27 Feb 2026 22:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZtGOvyZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74C74779B6
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229788; cv=none; b=pXnELNFsfOnGpQFmDIcXh3P5+njWllR2cI/JUSTzflZO5Lox9zs7sWHnEtV+yN52x1u+ifMgbOiinlPrBRGg802ynFoUd4Ti3I27Ssaczos27AmINfLdrqVC/T6LrMIiPQRzC0LOLrEAepNa5JwKQ7ZupF5/gomPnKLTQmlRC/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229788; c=relaxed/simple;
	bh=oXOIOTaIxDUNDw0ppIhDB/Bl0CUGTMgBIYRQCX4VK5E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Cl4JwD6wJn48gJBedtCAXQiQov5HYHMV7oX3ylGfi5NNfGG7i5Ai4BFSAdnPIpNk6lMpVuyN8Lopx5n0PLbKmgFTBjLQVOq5sA4pr9QL4o6QCbqY+55zwkdWUjHgVhmxL2snIZDnnmAi122vpQnzIBq1F70rAOA57NRd0bbO/qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZtGOvyZj; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439857ec679so2250604f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772229784; x=1772834584; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5bGmKQANS02lIcxK2U7pFsptBdbAfWPF8vx5lrwhBAw=;
        b=ZtGOvyZjFMRlYrFVYH6Xa7UOHkSdJyV0J3La/3wG/lXgGlAfQjhs9Mb59MI8hw8N2x
         Bcs6J9hbmtsYJ6FJeBGnG9dZUCFmTgeFAk5iMbG1/VAGMQlE2nrTbTXZi4J+RRtk1qm7
         89GAvYMOqFr+f18/bG3h8FR1YsvqBDzsifTK1S9+4Y9mM3ZuWfP5tEFyld+2ViaKQqvq
         FWVoeA+UvY37l+m9hZDp5Pxz9DJNiPMeG+ZbjcDUBcYrJLnxt+sDBfa8+Kxn3Vt1J2H2
         pZrmKSZqAlusr7gD/69+CSwVtA67lDbxvw9IAI4LgG92ArGCElQlmTVFoM9GEao5Qo6Z
         ba4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772229784; x=1772834584;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5bGmKQANS02lIcxK2U7pFsptBdbAfWPF8vx5lrwhBAw=;
        b=OtaSa5iq64L0q4dPRYr6z851srKO9xGO4rYMJbg9GBTvUkgiB8vJA41n3EGpbZ5lIF
         l0K/KHEsr7bpxbA/I+ftc8RanjIT5aeLf8Y81I7bphLDkR+WmZQpeOFD8RVjPB1c2c1Q
         LPcR5zgqkowTzGb2zipRoBeXIURogSj7CtObN4OvXPrSXT32lG7mfDX2lS+ckTk4re6r
         crPK3qSKOzNQoe/QBzVdQt0IEEZnaN9s8SrPm1VDlp9FchdNYD48RhlXuoWEuBCC7ES5
         xw13ITST1kuVolXISc2X6b5g1OxWQHbTIDMqTobIPU/CJxHZLbdSsJO1a0LYSbET3Gsx
         wlCA==
X-Forwarded-Encrypted: i=1; AJvYcCVqWzIWqEQQ8UZZssglot9MklbFrRxanBWiquy1+Jqb3WxcsuPbl7jFR7tTXR+XuBWHFm8yUgeAkqOn@vger.kernel.org
X-Gm-Message-State: AOJu0YxHSJLLdKW/sPQyIlpp5yXHodixlyQgwrCR8+pX229+OeHX61Ka
	Cr3U/TRX3rT9JXwXJBALZZvDlBQ/NdIoDoRKD2IfjBbzjfPjyIPVhloFT/+Lotjj0e0=
X-Gm-Gg: ATEYQzxLJa/nlvsD38LX90Ud27gJJWQsTmo+Yj7TJ31OgL4MOWEhuDoQ3cTr9pVg3QL
	RaCJqVFkXzR8GCx9C0KuO2YhBCsBfAG7lhDN7TZI38LoyscCCyEPlK2fdg7aISKBEWn9awi9kd3
	BPvIK3zYkeyoLjrjMdFfe+Svm0aQOA0a9zuWVtn8CzdaPnbgjqaB1WR20h4FrdtKqkNnti/m3D3
	BiKjgXdP6X4omtGzbgilszTUqnA6l7qY6IrMzzokBCjhMguXeDni7NuFXYWTivDV1G14aZKsrka
	2QjRi5GQu6SHBCB7I6tjl9+p+R++TxGmnM0PcVPyMry3CSapASPMYAagNX7tLTf930vSJH3Veri
	d64HJWnb4fqqAZeban4zDBjcj2th9z0y2HbGgiykxZLQDIQVlbfpGUH+rrq1nFJ4CK0iCcQY1W2
	y5cUSWjbsIkoL/mkjgZthV6lYWgvFOyDdmfL3WAX8kVbnQPIDA3P76Rz+93yi4zQxSyWnsvfzvi
	9AopblTRsPH7reZ6Wh4Yiee
X-Received: by 2002:a05:6000:40cc:b0:436:14d2:540c with SMTP id ffacd0b85a97d-4399de02cb1mr8003531f8f.25.1772229784012;
        Fri, 27 Feb 2026 14:03:04 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c76b40esm9234432f8f.36.2026.02.27.14.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:03:03 -0800 (PST)
Message-ID: <f7834b99c139a1aba65299fcea8fdd87737471c4.camel@linaro.org>
Subject: Re: [PATCH v8 06/18] media: qcom: camss: Add support for PHY API
 devices
From: Christopher Obbard <christopher.obbard@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bjorn Andersson	
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robert
 Foss	 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Mauro Carvalho
 Chehab	 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 27 Feb 2026 22:03:03 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-6-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-6-95517393bcb2@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269429-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,args.np:url]
X-Rspamd-Queue-Id: A5F2B1BE6F3
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Add the ability to use a PHY pointer which interacts with the standard PH=
Y
> API.
>=20
> In the first instance the code will try to use the new PHY interface. If =
no
> PHYs are present in the DT then the legacy method will be attempted.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>

> ---
>  drivers/media/platform/qcom/camss/Kconfig        |   1 +
>  drivers/media/platform/qcom/camss/camss-csiphy.c | 185 +++++++++++++++++=
++++--
>  drivers/media/platform/qcom/camss/camss-csiphy.h |   7 +
>  drivers/media/platform/qcom/camss/camss.c        |  72 +++++++--
>  4 files changed, 235 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/media/platform/qcom/camss/Kconfig b/drivers/media/pl=
atform/qcom/camss/Kconfig
> index 4eda48cb1adf0..1edc5e5a1829e 100644
> --- a/drivers/media/platform/qcom/camss/Kconfig
> +++ b/drivers/media/platform/qcom/camss/Kconfig
> @@ -7,3 +7,4 @@ config VIDEO_QCOM_CAMSS
>  	select VIDEO_V4L2_SUBDEV_API
>  	select VIDEOBUF2_DMA_SG
>  	select V4L2_FWNODE
> +	select PHY_QCOM_MIPI_CSI2
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/m=
edia/platform/qcom/camss/camss-csiphy.c
> index 62623393f4144..59564284fd270 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -7,12 +7,14 @@
>   * Copyright (c) 2011-2015, The Linux Foundation. All rights reserved.
>   * Copyright (C) 2016-2018 Linaro Ltd.
>   */
> +#include <dt-bindings/phy/phy.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/of.h>
> +#include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <media/media-entity.h>
> @@ -131,10 +133,10 @@ static u8 csiphy_get_bpp(const struct csiphy_format=
_info *formats,
>  }
> =20
>  /*
> - * csiphy_set_clock_rates - Calculate and set clock rates on CSIPHY modu=
le
> + * csiphy_set_clock_rates_legacy - Calculate and set clock rates on CSIP=
HY module
>   * @csiphy: CSIPHY device
>   */
> -static int csiphy_set_clock_rates(struct csiphy_device *csiphy)
> +static int csiphy_set_clock_rates_legacy(struct csiphy_device *csiphy)
>  {
>  	struct device *dev =3D csiphy->camss->dev;
>  	s64 link_freq;
> @@ -200,7 +202,7 @@ static int csiphy_set_clock_rates(struct csiphy_devic=
e *csiphy)
>   *
>   * Return 0 on success or a negative error code otherwise
>   */
> -static int csiphy_set_power(struct v4l2_subdev *sd, int on)
> +static int csiphy_set_power_legacy(struct v4l2_subdev *sd, int on)
>  {
>  	struct csiphy_device *csiphy =3D v4l2_get_subdevdata(sd);
>  	struct device *dev =3D csiphy->camss->dev;
> @@ -219,7 +221,7 @@ static int csiphy_set_power(struct v4l2_subdev *sd, i=
nt on)
>  			return ret;
>  		}
> =20
> -		ret =3D csiphy_set_clock_rates(csiphy);
> +		ret =3D csiphy_set_clock_rates_legacy(csiphy);
>  		if (ret < 0) {
>  			regulator_bulk_disable(csiphy->num_supplies,
>  					       csiphy->supplies);
> @@ -254,7 +256,7 @@ static int csiphy_set_power(struct v4l2_subdev *sd, i=
nt on)
>  }
> =20
>  /*
> - * csiphy_stream_on - Enable streaming on CSIPHY module
> + * csiphy_stream_on_legacy - Enable streaming on CSIPHY module
>   * @csiphy: CSIPHY device
>   *
>   * Helper function to enable streaming on CSIPHY module.
> @@ -262,7 +264,7 @@ static int csiphy_set_power(struct v4l2_subdev *sd, i=
nt on)
>   *
>   * Return 0 on success or a negative error code otherwise
>   */
> -static int csiphy_stream_on(struct csiphy_device *csiphy)
> +static int csiphy_stream_on_legacy(struct csiphy_device *csiphy)
>  {
>  	struct csiphy_config *cfg =3D &csiphy->cfg;
>  	s64 link_freq;
> @@ -306,11 +308,86 @@ static int csiphy_stream_on(struct csiphy_device *c=
siphy)
>   *
>   * Helper function to disable streaming on CSIPHY module
>   */
> -static void csiphy_stream_off(struct csiphy_device *csiphy)
> +static void csiphy_stream_off_legacy(struct csiphy_device *csiphy)
>  {
>  	csiphy->res->hw_ops->lanes_disable(csiphy, &csiphy->cfg);
>  }
> =20
> +/*
> + * csiphy_stream_on - Enable streaming on CSIPHY module
> + * @csiphy: CSIPHY device
> + *
> + * Helper function to enable streaming on CSIPHY module.
> + * Main configuration of CSIPHY module is also done here.
> + *
> + * Return 0 on success or a negative error code otherwise
> + */
> +static int csiphy_stream_on(struct csiphy_device *csiphy)
> +{
> +	u8 bpp =3D csiphy_get_bpp(csiphy->res->formats->formats, csiphy->res->f=
ormats->nformats,
> +				csiphy->fmt[MSM_CSIPHY_PAD_SINK].code);
> +	u8 num_lanes =3D csiphy->cfg.csi2->lane_cfg.num_data;
> +	struct phy_configure_opts_mipi_dphy *dphy_cfg;
> +	union phy_configure_opts dphy_opts =3D { 0 };
> +	struct device *dev =3D csiphy->camss->dev;
> +	s64 link_freq;
> +	int ret;
> +
> +	dphy_cfg =3D &dphy_opts.mipi_dphy;
> +
> +	link_freq =3D camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lane=
s);
> +
> +	if (link_freq < 0) {
> +		dev_err(dev,
> +			"Cannot get CSI2 transmitter's link frequency\n");
> +		return -EINVAL;
> +	}
> +
> +	phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes, dphy_c=
fg);
> +
> +	phy_set_mode(csiphy->phy, PHY_MODE_MIPI_DPHY);
> +	ret =3D phy_configure(csiphy->phy, &dphy_opts);
> +	if (ret) {
> +		dev_err(dev, "failed to configure MIPI D-PHY\n");
> +		goto error;
> +	}
> +
> +	return phy_power_on(csiphy->phy);
> +
> +error:
> +	return ret;
> +}
> +
> +/*
> + * csiphy_stream_off - Disable streaming on CSIPHY module
> + * @csiphy: CSIPHY device
> + *
> + * Helper function to disable streaming on CSIPHY module
> + */
> +static void csiphy_stream_off(struct csiphy_device *csiphy)
> +{
> +	phy_power_off(csiphy->phy);
> +}
> +
> +/*
> + * csiphy_set_stream - Enable/disable streaming on CSIPHY module
> + * @sd: CSIPHY V4L2 subdevice
> + * @enable: Requested streaming state
> + *
> + * Return 0 on success or a negative error code otherwise
> + */
> +static int csiphy_set_stream_legacy(struct v4l2_subdev *sd, int enable)
> +{
> +	struct csiphy_device *csiphy =3D v4l2_get_subdevdata(sd);
> +	int ret =3D 0;
> +
> +	if (enable)
> +		ret =3D csiphy_stream_on_legacy(csiphy);
> +	else
> +		csiphy_stream_off_legacy(csiphy);
> +
> +	return ret;
> +}
> =20
>  /*
>   * csiphy_set_stream - Enable/disable streaming on CSIPHY module
> @@ -568,16 +645,16 @@ static bool csiphy_match_clock_name(const char *clo=
ck_name, const char *format,
>  }
> =20
>  /*
> - * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resou=
rces
> + * msm_csiphy_subdev_init_legacy - Initialize CSIPHY device structure an=
d resources
>   * @csiphy: CSIPHY device
>   * @res: CSIPHY module resources table
>   * @id: CSIPHY module id
>   *
>   * Return 0 on success or a negative error code otherwise
>   */
> -int msm_csiphy_subdev_init(struct camss *camss,
> -			   struct csiphy_device *csiphy,
> -			   const struct camss_subdev_resources *res, u8 id)
> +int msm_csiphy_subdev_init_legacy(struct camss *camss,
> +				  struct csiphy_device *csiphy,
> +				  const struct camss_subdev_resources *res, u8 id)
>  {
>  	struct device *dev =3D camss->dev;
>  	struct platform_device *pdev =3D to_platform_device(dev);
> @@ -705,6 +782,69 @@ int msm_csiphy_subdev_init(struct camss *camss,
>  	return ret;
>  }
> =20
> +/*
> + * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resou=
rces
> + * @csiphy: CSIPHY device
> + * @res: CSIPHY module resources table
> + * @id: CSIPHY module id
> + *
> + * Return 0 on success or a negative error code otherwise
> + */
> +int msm_csiphy_subdev_init(struct camss *camss,
> +			   struct csiphy_device *csiphy,
> +			   const struct camss_subdev_resources *res, u8 id)
> +{
> +	struct device *dev =3D camss->dev;
> +	struct of_phandle_args args;
> +	u8 combo_mode;
> +	int idx;
> +	int ret;
> +
> +	snprintf(csiphy->name, ARRAY_SIZE(csiphy->name), "csiphy%d", id);
> +
> +	idx =3D of_property_match_string(dev->of_node, "phy-names", csiphy->nam=
e);
> +	if (idx < 0) {
> +		dev_err(dev, "%s not found\n", csiphy->name);
> +		return idx;
> +	}
> +
> +	ret =3D of_parse_phandle_with_args(dev->of_node, "phys", "#phy-cells", =
idx, &args);
> +	if (ret < 0) {
> +		dev_err(dev, "unable to parse phys args %s\n", csiphy->name);
> +		return ret;
> +	}
> +
> +	if (!of_device_is_available(args.np))
> +		goto put_np;
> +
> +	combo_mode =3D args.args[0];
> +	if (combo_mode !=3D PHY_TYPE_DPHY) {
> +		dev_err(dev, "%s mode %d not supported\n", csiphy->name, combo_mode);
> +		ret =3D -ENOTSUPP;
> +		goto put_np;
> +	}
> +
> +	csiphy->phy =3D devm_phy_get(dev, csiphy->name);
> +	if (IS_ERR(csiphy->phy)) {
> +		ret =3D PTR_ERR(csiphy->phy);
> +		goto put_np;
> +	}
> +
> +	csiphy->camss =3D camss;
> +	csiphy->id =3D id;
> +	csiphy->cfg.combo_mode =3D combo_mode;
> +	csiphy->res =3D &res->csiphy;
> +
> +	ret =3D phy_init(csiphy->phy);
> +	if (ret)
> +		dev_err(dev, "phy %s init fail %d\n", csiphy->name, ret);
> +
> +put_np:
> +	of_node_put(args.np);
> +
> +	return ret;
> +}
> +
>  /*
>   * csiphy_link_setup - Setup CSIPHY connections
>   * @entity: Pointer to media entity structure
> @@ -739,8 +879,12 @@ static int csiphy_link_setup(struct media_entity *en=
tity,
>  	return 0;
>  }
> =20
> -static const struct v4l2_subdev_core_ops csiphy_core_ops =3D {
> -	.s_power =3D csiphy_set_power,
> +static const struct v4l2_subdev_core_ops csiphy_core_ops_legacy =3D {
> +	.s_power =3D csiphy_set_power_legacy,
> +};
> +
> +static const struct v4l2_subdev_video_ops csiphy_video_ops_legacy =3D {
> +	.s_stream =3D csiphy_set_stream_legacy,
>  };
> =20
>  static const struct v4l2_subdev_video_ops csiphy_video_ops =3D {
> @@ -754,8 +898,13 @@ static const struct v4l2_subdev_pad_ops csiphy_pad_o=
ps =3D {
>  	.set_fmt =3D csiphy_set_format,
>  };
> =20
> +static const struct v4l2_subdev_ops csiphy_v4l2_ops_legacy =3D {
> +	.core =3D &csiphy_core_ops_legacy,
> +	.video =3D &csiphy_video_ops_legacy,
> +	.pad =3D &csiphy_pad_ops,
> +};
> +
>  static const struct v4l2_subdev_ops csiphy_v4l2_ops =3D {
> -	.core =3D &csiphy_core_ops,
>  	.video =3D &csiphy_video_ops,
>  	.pad =3D &csiphy_pad_ops,
>  };
> @@ -784,7 +933,11 @@ int msm_csiphy_register_entity(struct csiphy_device =
*csiphy,
>  	struct device *dev =3D csiphy->camss->dev;
>  	int ret;
> =20
> -	v4l2_subdev_init(sd, &csiphy_v4l2_ops);
> +	if (IS_ERR(csiphy->phy))
> +		v4l2_subdev_init(sd, &csiphy_v4l2_ops_legacy);
> +	else
> +		v4l2_subdev_init(sd, &csiphy_v4l2_ops);
> +
>  	sd->internal_ops =3D &csiphy_v4l2_internal_ops;
>  	sd->flags |=3D V4L2_SUBDEV_FL_HAS_DEVNODE;
>  	snprintf(sd->name, ARRAY_SIZE(sd->name), "%s%d",
> @@ -823,6 +976,8 @@ int msm_csiphy_register_entity(struct csiphy_device *=
csiphy,
>   */
>  void msm_csiphy_unregister_entity(struct csiphy_device *csiphy)
>  {
> +	if (!IS_ERR(csiphy->phy))
> +		phy_exit(csiphy->phy);
>  	v4l2_device_unregister_subdev(&csiphy->subdev);
>  	media_entity_cleanup(&csiphy->subdev.entity);
>  }
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/m=
edia/platform/qcom/camss/camss-csiphy.h
> index 2d5054819df7f..25b803c06e8bf 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -12,6 +12,7 @@
> =20
>  #include <linux/clk.h>
>  #include <linux/interrupt.h>
> +#include <linux/phy/phy.h>
>  #include <media/media-entity.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-mediabus.h>
> @@ -95,6 +96,7 @@ struct csiphy_device_regs {
> =20
>  struct csiphy_device {
>  	struct camss *camss;
> +	struct phy *phy;
>  	u8 id;
>  	struct v4l2_subdev subdev;
>  	struct media_pad pads[MSM_CSIPHY_PADS_NUM];
> @@ -102,6 +104,7 @@ struct csiphy_device {
>  	void __iomem *base_clk_mux;
>  	u32 irq;
>  	char irq_name[30];
> +	char name[16];
>  	struct camss_clock *clock;
>  	bool *rate_set;
>  	int nclocks;
> @@ -116,6 +119,10 @@ struct csiphy_device {
> =20
>  struct camss_subdev_resources;
> =20
> +int msm_csiphy_subdev_init_legacy(struct camss *camss,
> +				  struct csiphy_device *csiphy,
> +				  const struct camss_subdev_resources *res, u8 id);
> +
>  int msm_csiphy_subdev_init(struct camss *camss,
>  			   struct csiphy_device *csiphy,
>  			   const struct camss_subdev_resources *res, u8 id);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/pl=
atform/qcom/camss/camss.c
> index 5fb5ad87e1671..b1737b5d52160 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4450,14 +4450,35 @@ static int camss_parse_endpoint_node(struct devic=
e *dev,
>  static int camss_parse_ports(struct camss *camss)
>  {
>  	struct device *dev =3D camss->dev;
> +	const struct camss_resources *res =3D camss->res;
>  	struct fwnode_handle *fwnode =3D dev_fwnode(dev), *ep;
>  	int ret;
> =20
>  	fwnode_graph_for_each_endpoint(fwnode, ep) {
>  		struct camss_async_subdev *csd;
> +		struct fwnode_handle *remote;
> +
> +		if (!fwnode_device_is_available(ep))
> +			continue;
> +
> +		if (res->legacy_phy) {
> +			csd =3D v4l2_async_nf_add_fwnode_remote(&camss->notifier, ep,
> +							      typeof(*csd));
> +		} else {
> +			/*
> +			 * For non-legacy PHY, the CSIPHY is a separate device.
> +			 * Register the remote endpoint (CSIPHY's endpoint) as
> +			 * the async subdev, not the remote port parent.
> +			 */
> +			remote =3D fwnode_graph_get_remote_endpoint(ep);
> +			if (!remote)
> +				continue;
> +
> +			csd =3D v4l2_async_nf_add_fwnode(&camss->notifier, remote,
> +						       struct camss_async_subdev);
> +			fwnode_handle_put(remote);
> +		}
> =20
> -		csd =3D v4l2_async_nf_add_fwnode_remote(&camss->notifier, ep,
> -						      typeof(*csd));
>  		if (IS_ERR(csd)) {
>  			ret =3D PTR_ERR(csd);
>  			goto err_cleanup;
> @@ -4489,15 +4510,26 @@ static int camss_init_subdevices(struct camss *ca=
mss)
>  	unsigned int i;
>  	int ret;
> =20
> -	for (i =3D 0; i < camss->res->csiphy_num; i++) {
> -		ret =3D msm_csiphy_subdev_init(camss, &camss->csiphy[i],
> -					     &res->csiphy_res[i],
> -					     res->csiphy_res[i].csiphy.id);
> -		if (ret < 0) {
> -			dev_err(camss->dev,
> -				"Failed to init csiphy%d sub-device: %d\n",
> -				i, ret);
> -			return ret;
> +	if (!res->legacy_phy) {
> +		for (i =3D 0; i < camss->res->csiphy_num; i++) {
> +			ret =3D msm_csiphy_subdev_init(camss, &camss->csiphy[i],
> +						     &res->csiphy_res[i],
> +						     res->csiphy_res[i].csiphy.id);
> +			if (ret < 0)
> +				return ret;
> +		}
> +	} else {
> +		for (i =3D 0; i < camss->res->csiphy_num; i++) {
> +			ret =3D msm_csiphy_subdev_init_legacy(camss, &camss->csiphy[i],
> +							    &res->csiphy_res[i],
> +							    res->csiphy_res[i].csiphy.id);
> +			if (ret < 0) {
> +				dev_err(camss->dev,
> +					"Failed to init csiphy%d sub-device: %d\n",
> +					i, ret);
> +				return ret;
> +			}
> +			camss->csiphy[i].phy =3D ERR_PTR(-ENODEV);
>  		}
>  	}
> =20
> @@ -4574,6 +4606,9 @@ static int camss_link_entities(struct camss *camss)
> =20
>  	for (i =3D 0; i < camss->res->csiphy_num; i++) {
>  		for (j =3D 0; j < camss->res->csid_num; j++) {
> +			if (!camss->csiphy[i].phy)
> +				continue;
> +
>  			ret =3D media_create_pad_link(&camss->csiphy[i].subdev.entity,
>  						    MSM_CSIPHY_PAD_SRC,
>  						    &camss->csid[j].subdev.entity,
> @@ -4683,6 +4718,9 @@ static int camss_register_entities(struct camss *ca=
mss)
>  	int ret;
> =20
>  	for (i =3D 0; i < camss->res->csiphy_num; i++) {
> +		if (!camss->csiphy[i].phy)
> +			continue;
> +
>  		ret =3D msm_csiphy_register_entity(&camss->csiphy[i],
>  						 &camss->v4l2_dev);
>  		if (ret < 0) {
> @@ -4738,8 +4776,10 @@ static int camss_register_entities(struct camss *c=
amss)
> =20
>  	i =3D camss->res->csiphy_num;
>  err_reg_csiphy:
> -	for (i--; i >=3D 0; i--)
> -		msm_csiphy_unregister_entity(&camss->csiphy[i]);
> +	for (i--; i >=3D 0; i--) {
> +		if (camss->csiphy[i].phy)
> +			msm_csiphy_unregister_entity(&camss->csiphy[i]);
> +	}
> =20
>  	return ret;
>  }
> @@ -4754,8 +4794,10 @@ static void camss_unregister_entities(struct camss=
 *camss)
>  {
>  	unsigned int i;
> =20
> -	for (i =3D 0; i < camss->res->csiphy_num; i++)
> -		msm_csiphy_unregister_entity(&camss->csiphy[i]);
> +	for (i =3D 0; i < camss->res->csiphy_num; i++) {
> +		if (camss->csiphy[i].phy)
> +			msm_csiphy_unregister_entity(&camss->csiphy[i]);
> +	}
> =20
>  	for (i =3D 0; i < camss->res->csid_num; i++)
>  		msm_csid_unregister_entity(&camss->csid[i]);

