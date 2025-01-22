Return-Path: <devicetree+bounces-140409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 155EBA198DF
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 19:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DA1216BFC3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 18:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D522153EA;
	Wed, 22 Jan 2025 18:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nUDHc35M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3ECF2B9A4
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 18:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737572182; cv=none; b=s5unh7+/iLzpqrHJ4O1ApAA+Xpys+Q5FTMIhN+sbAgckxEvhL23Evc+QzzgW5OSdp7OfLS1CiMLCeCW6KIfoK9Ptsu8LJ2iIi3ujgZU7eoylZUkhksphW67bq5N5YqSQLR9EUlQbSfvV/GZmbE3S4RzqVq9y8Sp437MQsNb4JKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737572182; c=relaxed/simple;
	bh=CLhA9atvXYKzLIGW5SofpnqG6mJ00hcX6McbFLTcDBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iuo+uyf7nlck81DxlHRjRkLqqGHy6Zi7VhpQfz6XxK42Gq595zMSz2Vhxc1+1pmG0KqQfyZlPI4sQBfBSIfO3nsjzbTIHtVmGo7g9+ULA9IzOORiQs9p/RQtCy06uc2zij9H1oYBmaXh5aYf3tWzeHlfLyIKF0XJm5avj5U+IaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nUDHc35M; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30167f4c1e3so267581fa.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737572179; x=1738176979; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucEtL2vpaDXIcOOJNCX2jaEjGKELSNePIN/Dbu21H78=;
        b=nUDHc35MTJbpu6ztziZWLqtL7NrY4Bl0VZYTuWq0Xsarfdt7dlb75nCyffMlqBKRbt
         6gn6UNSdk3v/ExpFUql7arEfOKZiIeQSmwV6SRl+XACLPhlunamnQze2rqHmlZcVogQ8
         oYX5UsDhqtyF50OELAF7+u6Z03JTlZiBQ9fDvV+4g8pQc00vV/t/D6vwTJ3K5DCZPYpy
         xUNzEBrK9KQHlEed90jidTi3oPRu/LEY4pTNGYRxUf2Nk1nASJjMGdJ1RL/EzQQnWZEO
         e48um7SEJ/jurIgl8/lRCNa3nzfAeEuUuRYzr9UrfKi3zx2N8+IcRhQZdT2Z7XbDEMST
         mK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737572179; x=1738176979;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ucEtL2vpaDXIcOOJNCX2jaEjGKELSNePIN/Dbu21H78=;
        b=DfPzxybZMHSecUQLwRoeoWwj34QUYRcKS7YEH+0J9UqXHXRXohAdMXsRQ0qHai2gLI
         amkSN5TyYCXpJandhHKVX92dzf77+MS3l9VLamXtsiTnv91ZTepaYeKlz8EBiX0GnpWh
         DFZ+CtQTGAoSqOi2iZDY4i+6aLGV74xT0bALWS2i0bOVoG5awavATiwxqQmN4DBIvZJ3
         mn4oNkN0nqvTsYk0XR42BZ+UkNeNTHs3+rlNu0Eyuhvd+dviAAnVE+k4Zx7qBKc4YWCi
         4pkTksHzw35P2oyXIbhiEohf26EFf0SxkHXv1mVl/xRpC8Rj5JQi2Qfs6mnBmOfEBk6w
         b6uA==
X-Forwarded-Encrypted: i=1; AJvYcCV7YML5QQwdd5heLisIzQr3TE43pUTPMI0h4rKBUaFjAz8O6BjQqxzGZ4gTbQKMkeBRmEr+FIJi/n08@vger.kernel.org
X-Gm-Message-State: AOJu0YwqVGw7u5C8GNw/r5mYqswSy3XPKvNsNHApGNeojuK2qeiAX+yc
	HGC/9w1hZ11kbpv4Vaa0fF4xU+VgqGrXVLpYmyqeoVfJD3YxYhTB0oS4+7OC5/s=
X-Gm-Gg: ASbGncso79c+eAi7ISsojw/qnjw5m4rXs60lJ5uiVe8sf5bwoCl2MKvt8SBLOempEUH
	ZG9EkVKPcgk/um2iVGNqbsVHHxzhLfEwDvj+05lXeqMnReKgALH5pTWDzpJJRnsFS/aYMTTfvCS
	zwo1dN/onen2S2rNo0OkAPXEVxnEmagqjIsIdOMN8s+i7lv6N5zlyvgo5/hoQTfqrEfa2cWvEYc
	oBNnBbiSjmNHN6UptGZriKWKhNU4WreAFXs8aVNgKtgwSBlecAS0dhdzjnd20fBC02cUUTqDJe4
	O/OL5SqP6RKTDbrOOJw3R/kHhIcLlAiBa1Dz+Vk0nVjQ/bHixQ==
X-Google-Smtp-Source: AGHT+IH1Num8sybuVWGX6lQCu41xk40pAQuzRF+kjqRrF1p7We/fl/ksVQE0dG+SV6CSYwqD02NYlQ==
X-Received: by 2002:a05:651c:1713:b0:300:7f87:a6a with SMTP id 38308e7fff4ca-3072cab0c95mr63866951fa.7.1737572178788;
        Wed, 22 Jan 2025 10:56:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a35acb6sm26558281fa.62.2025.01.22.10.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 10:56:17 -0800 (PST)
Date: Wed, 22 Jan 2025 20:56:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <qrtcanwfokvc5x6xtgxhi2fs6fcibhnnhenegrdialx7cgy7u3@ea4v3woh5gki>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
 <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
 <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
 <ba369b98-9a2a-421a-9251-4db3c1dcedd9@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ba369b98-9a2a-421a-9251-4db3c1dcedd9@rock-chips.com>

On Wed, Jan 22, 2025 at 05:37:53PM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2025/1/22 16:17, Damon Ding wrote:
> > Hi Dmitry,
> > 
> > On 2025/1/9 20:48, Dmitry Baryshkov wrote:
> > > On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
> > > > Move drm_of_find_panel_or_bridge() a little later and combine it with
> > > > component_add() into a new function rockchip_dp_link_panel().
> > > > The function
> > > > will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> > > > aiding to support for obtaining the eDP panel via the DP AUX bus.
> > > > 
> > > > If failed to get the panel from the DP AUX bus, it will then try
> > > > the other
> > > > way to get panel information through the platform bus.
> > > > 
> > > > In addition, use dev_err() instead of drm_err() in rockchip_dp_poweron()
> > > > , which will be called before rockchip_dp_bind().
> > > > 
> > > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > > 
> > > > ---
> > > > 
> > > > Changes in v4:
> > > > - Use done_probing() to call drm_of_find_panel_or_bridge() and
> > > >    component_add() when getting panel from the DP AUX bus
> > > > 
> > > > Changes in v5:
> > > > - Use the functions exported by the Analogix side to get the pointers of
> > > >    struct analogix_dp_plat_data and struct drm_dp_aux.
> > > > - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
> > > > 
> > > > ---
> > > >   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 ++++++++++++++-----
> > > >   1 file changed, 30 insertions(+), 11 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/
> > > > drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > > index 0957d3c5d31d..3ae01b870f49 100644
> > > > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > > @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct
> > > > analogix_dp_plat_data *plat_data)
> > > >       ret = clk_prepare_enable(dp->pclk);
> > > >       if (ret < 0) {
> > > > -        drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
> > > > +        dev_err(dp->dev, "failed to enable pclk %d\n", ret);
> > > 
> > > 
> > > why?
> > > 
> > 
> > The &rockchip_dp_device.drm_dev will be assigned in rockchip_dp_bind(),
> > which is called after probing process. The PM operations have been
> > advanced to the probing for the AUX transmission, so the dev_err() may
> > be better than drm_err().
> > 
> 
> Using drm_...() uniformly may be better [0].

Yes

> 
> > > >           return ret;
> > > >       }
> > > >       ret = rockchip_dp_pre_init(dp);
> > > >       if (ret < 0) {
> > > > -        drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
> > > > +        dev_err(dp->dev, "failed to dp pre init %d\n", ret);
> > > >           clk_disable_unprepare(dp->pclk);
> > > >           return ret;
> > > >       }
> > > 
> 
> Best regards,
> Damon
> 
> [0]https://patchwork.kernel.org/project/linux-rockchip/patch/20250109032725.1102465-6-damon.ding@rock-chips.com/#26209891
> 

-- 
With best wishes
Dmitry

