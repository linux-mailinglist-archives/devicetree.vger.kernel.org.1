Return-Path: <devicetree+bounces-79018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB6D913E33
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 22:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84886B20DEF
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 20:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241AA18307B;
	Sun, 23 Jun 2024 20:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I8Wl626x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0E62AD22
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 20:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719175884; cv=none; b=ONeladwU1mM9/Li9W6YFN18EAogAz7tPKuJHtWwTjoKwlFE2jd/g34/4JSKKSXuzm1tFYkpXMFgyLFwAS1Rl5ivGBSnoyJmgiSOBE7SjA2BG/ALNt0dLpCb8GMF4v2KdR+k/8kiZbHNklGhizII78Iqd4vHtre5InuBDGmSFydY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719175884; c=relaxed/simple;
	bh=qRtP1ZqGaQY0elmXbEOHHK7RNihyFvwQ/QQgk1WbhPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=htMo9Mzc1ag6PMCgKlwiIcAFT708C/mzQ2lHHEfupiSqxezybNd7ZoFfCdk73pbdncyEvER/Kb5y7aZz3W83Hg6bfNq7cp42o94BaWlYqYqAajqQl+ImgoRV7MTuq18Lh5fSwaJUBxGkEqOYCveez8pb1WQZK3HBm8C2aarfCJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I8Wl626x; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52ce655ff5bso304119e87.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 13:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719175880; x=1719780680; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zrQbfjK1hK2vAutZ4L9NKgXJBoJGQBefjmL3XamYmsQ=;
        b=I8Wl626xMC0J4BEzwPQyRCr9P9vVZflNqyP7mhpmjI8m1UtwdIiFKvYRfKDcrj16lB
         BReWc8Y4v3WEXKSmWU7eUlgpGygCLEQo3UU0uV74xZawZlPpG6IZXkHHbvxE5fGwg1bt
         /iWpLO3ITS8pPxEI+p2AP+CVjFzBW1+cPVe6jOJID/QexLxafAQdaDljwNLha8tyafg4
         I6BKfl6n/dluwoodWRj7VuitEvF1SuL3pVjhtdRRVXd/nfEhPv1hHiJ8664ccl39t959
         5BAx72GL5A3Rlz9n77LpYfRiaYVSRWdqhsQ/NdKw+slnPi7WF5EjBPBZ8f6QsH/9h4LU
         oAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719175880; x=1719780680;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zrQbfjK1hK2vAutZ4L9NKgXJBoJGQBefjmL3XamYmsQ=;
        b=ws2MaPDDB2KBCf0Gkyk2LWEdM4COtvXGIMBgBlGB53pm13+ipB+XgzVNaOGl99IxrA
         TCRLkms9bJh7K3JJKhMjtXtH78QHVIuNRxvyLqY/Cw412IYtL2GfPZqz6zwu5W0PB4of
         oOLZDtSHlpAc93wMIHzQ94vRdnIVKG7gufQyZAq6a40stY2jdUlqk/ZdVDyI6A9n/nvg
         KhevALtP8w46n+kgZ4xd4HJjX09i2H3XXPSqE8PpZM/FxzNakyNdYEHvTEzW97zYyjuc
         eJkthQ9umlTYg9yoZe95zBHhQrLA99dBnxj8b3fm4k+cAc8vW3qk7Vk7I3PmBDxVCR8l
         6B/g==
X-Forwarded-Encrypted: i=1; AJvYcCWyF6Tm1wPLMvv2JRRsJNgcWarksjwUhaz/dPlbb70MDBVh5956jokx40CZ9w7D0VuBlUyzr89qIH0zDuMls+4QMWV0Z0Jnwh2fwA==
X-Gm-Message-State: AOJu0YxxPZWxPN4oCKekzGlHsUbklJYrS7N7pdmQZPHs8JZJ7miK4Dn/
	D62HOAobsXdoWNHnbt+YXueySNE4vfb908q0PJ/VLjvhMNcONJ4RORepAltCerw=
X-Google-Smtp-Source: AGHT+IH7PuCWS7ZghapNrL+2urV935YiXDzkaG1/DNXXG1GrFFJu2t7xV4PtFx7LqoOLdngwLxAa3g==
X-Received: by 2002:a19:2d18:0:b0:52c:dbc6:8eb0 with SMTP id 2adb3069b0e04-52ce061a287mr2139587e87.21.1719175880336;
        Sun, 23 Jun 2024 13:51:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63b47bfsm831004e87.35.2024.06.23.13.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 13:51:19 -0700 (PDT)
Date: Sun, 23 Jun 2024 23:51:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>, 
	"Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"hjc@rock-chips.com" <hjc@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, 
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, Xingyu Wu <xingyu.wu@starfivetech.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 04/10] drm/vs: Add hardware funcs for vs.
Message-ID: <ogrcyxroz77zu6raq3lzmjt2k72uxxeayseyhvkivtsxn2kfix@ioupv56oa6lc>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-5-keith.zhao@starfivetech.com>
 <24bxty2zmlmrjmfi2qtfolkea3acghbhmkxnkxmcroovsz57jq@q5ynybr65z7f>
 <NTZPR01MB105049A5A7FD4ECAAECFC403EECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <NTZPR01MB105049A5A7FD4ECAAECFC403EECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>

Hi Keith,

On Sun, Jun 23, 2024 at 07:16:47AM GMT, Keith Zhao wrote:
> > On Tue, May 21, 2024 at 06:58:11PM +0800, keith wrote:
> > > +}
> > > +
> > > +static inline void dc_set_clear(struct dc_hw *hw, u32 reg, u32 set, u32 clear)
> > > +{
> > > +	u32 value = dc_read(hw, reg);
> > > +
> > > +	value &= ~clear;
> > > +	value |= set;
> > > +	dc_write(hw, reg, value);
> > 
> > regmap_update_bits?
> 
> regmap_update_bits follows 4 steps:
> 
> 1、ret = _regmap_read(map, reg, &orig);
> .........
> 
> 2、tmp = orig & ~mask;
> 3、tmp |= val & mask;
> ......
> 4、ret = _regmap_write(map, reg, tmp);
> If the value out of mask range
> It will just clear the mask bir
> 
> dc_set_clear will do clear and set without limit.
> 
> Maybe the name should be dc_clear_set

This is not really better. regmap_update_bits() has clear semantics of
updating a value in the field that is defined by a mask. You function is
just clearing some bits and setting other bits. It's not obvious whether
it is a mask and value, several concurrent flags or something else.

Even if you are not going to switch to regmaps (you don't have to),
please use mask & value instead.

> 		}
> > > +static void load_rgb_to_yuv(struct dc_hw *hw, u32 offset, s16 *table)
> > 
> > Is there any reason why load_rgb_to_yuv differs from two other
> > functions?
> > 
> load_rgb_to_yuv matches crtcs
> 
> load_yuv_to_rgb matches planes
> load_rgb_to_rgb matches planes

Then these functins should have that reflected in their names (and also
documented, why). If the CSC programming interface is similar, please
split the implementation to have common code and different data to be
used for programming.

> the coefficient(table) is diff between load_rgb_to_yuv and load_yuv_to_rgb

> > > +void plane_hw_update_scale(struct vs_dc *dc, struct drm_rect *src, struct
> > drm_rect *dst,
> > > +			   u8 id, u8 display_id, unsigned int rotation);
> > > +void plane_hw_update_blend(struct vs_dc *dc, u16 alpha, u16
> > pixel_blend_mode,
> > > +			   u8 id, u8 display_id);
> > 
> > Could you please settle on a single prefix for all your function names?
> > Ideally it should be close to the driver name. It's hard to understand
> > that the function comes from the verisilicon driver if its name starts
> > from dc_ or especially with plane_.
> Yes  starting with plane_ is not a good idea ,i will add vs_
> _ , thanks  
> > 
> > I'd strongly suggest to stop defining anything outside of the selected
> I don't quite understand what "the selected" means, 
> I hope you can fill in some specific details about it
> Thanks

"the selected vs_ namespace". So prefix all function names and all
structures with vs_


-- 
With best wishes
Dmitry

