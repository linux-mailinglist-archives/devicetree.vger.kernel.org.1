Return-Path: <devicetree+bounces-131328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE949F2DBD
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BB4D18812F0
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 10:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0091C202C27;
	Mon, 16 Dec 2024 10:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nv+lk6Bz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E17201269
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 10:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734343503; cv=none; b=h4UOdgny2jMa1H52o+qq5VtJ9Y3YBpxBMdpO7Ay+ZHVpKy/jjz2ChFLndNpcsbKboq54Y0MrmrCjCrh+CKZP1ND2Qn2PaJhv88vWtJMEr7f2WsCX4td7NRukXgjysE1djYfubg3GXGjaoclJE8bw7Kv4Xsh56bLf+m0GN17T0JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734343503; c=relaxed/simple;
	bh=vS0Y3s9md1WLqPmyrEj1D/d6taX4SOtiEGlxqmuWJSM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJZ1QzChn3qhPOPq5LTbXef9eqlQbxlOHL9mjO2ifIl53ToiUzzieYuHPX1ufaJNwzdVYlUeEWq9hkDRLNembwROzmyBsYmQgwK2Mlu6SSGQ4ZY3lNEEskRYtaANTyFmC6GW4ntUk/T1aUEGHCI7Vc3SRvrd2OERool8+4D/kAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nv+lk6Bz; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3022c61557cso41338061fa.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 02:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734343499; x=1734948299; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HLzU3OoGAZg1lvIIB2cj0SjgTHG2tkXZPV4oMUjorKM=;
        b=nv+lk6BznnHrQXRn+sa69Lb4uUQlURu6Hbdz5MrYdMpDyrp5YVnrm7soFCCW5yRpqh
         MM/Vsug+tzcfzrB+Fw1jf3ZrxB2Ow8r5o1n8Z4ZkZkNq7jAXQk0S0G36CVgWzG96Kznk
         aQRagYwfTLdUrwyt5PI40mFKynfmY3OC0ob78yl8pFg9KazoU2SMy3XvHPv14fUmSfmY
         OiC4xI7cxj8H2W1g8TUc7iaI9Ax21Xs8ut7LLn/CiAuvi73L0MReDYzQTHx1faE1YDA1
         bSr0xt7zU1Y9A/4UQb1cLccfNm1REf42/e/S3io0y+H2lQfJeA6WMN6He5PJkPkQsNJi
         HTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734343499; x=1734948299;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLzU3OoGAZg1lvIIB2cj0SjgTHG2tkXZPV4oMUjorKM=;
        b=EQ3z8ONkZLmv/aRmNcJ1hxzyv2ojrBSW13AIO4hVZ6Tn9b/I315TQaMrwwdaJyAa+F
         BzIC5NBgLub6mDxJwm52B7LWtRSvkT//8Xd4uZlbZ8UFIST++/BunbUXpKDhtSM88q8W
         4Zi66xoWu3JtMKJsxBGJF/Fg1HJXf1lgc1r5OjfK7TI27bvWCqPlF2btWl7kwPTohev1
         7tL8Xdi/lFhJrA02e8PcPw01zFMJM85ka6yPmNBKVvKwgQLW8CYBtRyj23J+syOIF9Ns
         tskbQKK09IYPAcYofaEXjLqvjZRgp4u+4hnF+FaoG2/9G81euegyTA6/OF5alw+Ph0A8
         Hf4w==
X-Forwarded-Encrypted: i=1; AJvYcCXzS2XaUHccxp8c8BJn/tohiRT/gfGhGJtfBXCUXRLxZgF0XZhwmoD7/hlPzJPxXLqpDSTojKImqimx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy84EpeoJmut3Ih1uN76BMXEXP4j+akJQXDem4ML2/uiOM8o5mM
	T5lgHA4EtqZ5mnqNqn8UcQj4+c7WE4OwNytDmi70wNq9EXLf/KivxWL8gJ7WtNs=
X-Gm-Gg: ASbGnct0PGJHVunYVrdfgV3Bf6CXTvmugwTJDB2FJn3P+wvxLaVjfkG6EP0yq5LXUNB
	pz5panlQnbrn1iJLo1FQzc3XY7dDLZZMKXXf0PI/w3jcgwuR+YNqVi3hJZTV6bo9KBguO/dhts+
	YnDFM27iMT+2M0TdVmsMjnV4FlcC2zS4iWnP0KYPU8BarEsmxaXfEO59WpQ9lmBMH8aq9i//hXZ
	CFbL7lGnDjRDSF6KsnRN+ao+qxSb4bDZBtst7jbSxB0gkm/qdBxn239i7VS5MDYOIkulbmwwCyK
	b4No0mKCevNePE8YynVyk/r95Fud7dOcM2T4
X-Google-Smtp-Source: AGHT+IEANV1rjeOcZD+mfElWFOCdmwQitk5ard7G/sdmw/kgz+ZvJnKtp9SusUqTBt+TDbtuy27Lww==
X-Received: by 2002:a2e:a99e:0:b0:302:16da:a052 with SMTP id 38308e7fff4ca-302544ae804mr44008281fa.27.1734343499432;
        Mon, 16 Dec 2024 02:04:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344045239sm8283241fa.36.2024.12.16.02.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 02:04:58 -0800 (PST)
Date: Mon, 16 Dec 2024 12:04:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Damon Ding <damon.ding@rock-chips.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 03/11] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <25bh2uy6wg3kcoqmnzt5dwfamc32bjyjlivkqq4cvne6kryj3z@svlz45bbaoy7>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-4-damon.ding@rock-chips.com>
 <gwogudb5vae7wu452zwuqmdlyaibenoso4f5pjmu3uttckhy2w@shndol4mz5n4>
 <4395748.ejJDZkT8p0@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4395748.ejJDZkT8p0@diego>

On Mon, Dec 16, 2024 at 10:11:54AM +0100, Heiko St�bner wrote:
> Am Montag, 16. Dezember 2024, 09:57:41 CET schrieb Dmitry Baryshkov:
> > On Mon, Dec 16, 2024 at 11:12:17AM +0800, Damon Ding wrote:
> > > RK3588 integrates the analogix eDP 1.3 TX controller IP and the HDMI/eDP
> > > TX Combo PHY based on a Samsung IP block, and there are also two
> > > independent eDP display interface on RK3588 Soc.
> > > 
> > > Add just the basic support for now, i.e. RGB output up to 4K@60Hz, without
> > > the tests of audio, PSR and other eDP 1.3 specific features.
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > 
> > > ---
> > > 
> > > Changes in v2:
> > > - Add support for the other eDP output edp1
> > > ---
> > >  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 82 ++++++++++++++++---
> > >  include/drm/bridge/analogix_dp.h              |  3 +-
> > >  2 files changed, 74 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > index 871606a31ef1..4c9a55776ada 100644
> > > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > @@ -51,10 +51,12 @@ struct rockchip_grf_reg_field {
> > >  /**
> > >   * struct rockchip_dp_chip_data - splite the grf setting of kind of chips
> > >   * @lcdc_sel: grf register field of lcdc_sel
> > > + * @edp_mode: grf register field of edp_mode
> > >   * @chip_type: specific chip type
> > >   */
> > >  struct rockchip_dp_chip_data {
> > >  	const struct rockchip_grf_reg_field lcdc_sel;
> > > +	const struct rockchip_grf_reg_field edp_mode;
> > >  	u32	chip_type;
> > >  };
> > >  
> > > @@ -134,12 +136,21 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
> > >  		return ret;
> > >  	}
> > >  
> > > +	ret = rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 1);
> > > +	if (ret != 0)
> > > +		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);
> > 
> > Is it to be called for non-eDP hosts too? Or for older hosts?
> 
> The implementation of rockchip_grf_field_write (in patch1) seems to
> take care of checking if that field actually exists and doing nothing if
> not.
> 
> I think eDP/DP is more a naming thing, the Analogix controller is called
> an eDP controller in all documentation things.
> 
> Even back on rk3288, the Analogix-DP, still is called an eDP controller in
> documentation, with the only difference being that it does not contain
> another additional "dedicated" DP controller

At the very least this should be mentioned in the commit message.

> > > +	i = 0;
> > > +	while (is_rockchip(dp_data[i].chip_type))
> > > +		i++;
> > > +
> > > +	if (id >= i) {
> > > +		DRM_DEV_ERROR(dev, "invalid edp id: %d\n", id);
> > > +		return -ENODEV;
> > > +	}
> > 
> > Is it applicable to non-eDP case?
> 
> same as above, it's always called eDP in all pieces of documentation,
> (Compliant with DP 1.2 and eDP 1.3)

Ack

> 
> Heiko
> 
> > > +
> > >  	dp->dev = dev;
> > >  	dp->adp = ERR_PTR(-ENODEV);
> > > -	dp->data = dp_data;
> > > +	dp->data = &dp_data[id];
> > >  	dp->plat_data.panel = panel;
> > >  	dp->plat_data.dev_type = dp->data->chip_type;
> > >  	dp->plat_data.power_on = rockchip_dp_poweron;
> > > @@ -464,19 +507,38 @@ static int rockchip_dp_resume(struct device *dev)
> > >  static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_suspend,
> > >  		rockchip_dp_resume, NULL);
> > >  
> > > -static const struct rockchip_dp_chip_data rk3399_edp = {
> > > -	.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
> > > -	.chip_type = RK3399_EDP,
> > > +static const struct rockchip_dp_chip_data rk3399_edp[] = {
> > > +	{
> > > +		.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
> > > +		.chip_type = RK3399_EDP,
> > > +	},
> > > +	{ /* sentinel */ }
> > > +};
> > > +
> > > +static const struct rockchip_dp_chip_data rk3288_dp[] = {
> > > +	{
> > > +		.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
> > > +		.chip_type = RK3288_DP,
> > > +	},
> > > +	{ /* sentinel */ }
> > >  };
> > >  
> > > -static const struct rockchip_dp_chip_data rk3288_dp = {
> > > -	.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
> > > -	.chip_type = RK3288_DP,
> > > +static const struct rockchip_dp_chip_data rk3588_edp[] = {
> > > +	{
> > > +		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
> > > +		.chip_type = RK3588_EDP,
> > > +	},
> > > +	{
> > > +		.edp_mode = GRF_REG_FIELD(0x0004, 0, 0),
> > > +		.chip_type = RK3588_EDP,
> > > +	},
> > > +	{ /* sentinel */ }
> > >  };
> > >  
> > >  static const struct of_device_id rockchip_dp_dt_ids[] = {
> > >  	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
> > >  	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
> > > +	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
> > >  	{}
> > >  };
> > >  MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
> > > diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> > > index 6002c5666031..54086cb2d97d 100644
> > > --- a/include/drm/bridge/analogix_dp.h
> > > +++ b/include/drm/bridge/analogix_dp.h
> > > @@ -15,11 +15,12 @@ enum analogix_dp_devtype {
> > >  	EXYNOS_DP,
> > >  	RK3288_DP,
> > >  	RK3399_EDP,
> > > +	RK3588_EDP,
> > >  };
> > >  
> > >  static inline bool is_rockchip(enum analogix_dp_devtype type)
> > >  {
> > > -	return type == RK3288_DP || type == RK3399_EDP;
> > > +	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
> > >  }
> > >  
> > >  struct analogix_dp_plat_data {
> > 
> > 
> 
> 
> 
> 

-- 
With best wishes
Dmitry

