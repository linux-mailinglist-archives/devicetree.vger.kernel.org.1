Return-Path: <devicetree+bounces-133526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 898309FAD99
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8853188556C
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18A3B193091;
	Mon, 23 Dec 2024 11:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ovxwq1tP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A0D192B9D
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952635; cv=none; b=o9JoHKvMWwNW48BOToPGQvPwR6jkte2n7CWEwcm2i5vMAO/Yy1LutmeA6Q5AU2UEmVb22nb3AMyFA8aqIiIfWF5pMn3Rk5+JJC2sqz8X3gtXfZYgTy7TnP5367GJSDMxHF7HK7FIi/KZf94DEn5rOORELKpg6SQi3/CchiBlTVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952635; c=relaxed/simple;
	bh=gddnFubPquA8KlRVCcM7OyD1/U0UlHokw/tbt7He7RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZuUN206StNBqqcu+CDsAy6NVhcSl8D95ZLvByKikpptUcZPPWsf0UUg4U7Zsn2pW1iSC/5ZJC35yPHYpxGa6oFcavQkXZ9stDTvZz8sHis6yI1U+nk/xV6GeAHwtvPr3OE7iAruvZhtIqxOUp+z3V5VvuNPtfHU9seZAuS4EkoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ovxwq1tP; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54026562221so4345909e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734952631; x=1735557431; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oAg0zQo1HvAo0iqaanIJTGGSdxrt4g4lbpXT4Fzk4t8=;
        b=Ovxwq1tPfqxXp04c7+0CunQQJNrVDuXweTfcNRDkZDv6yTMMCJES/Uni1U3maN9YXL
         mABAbERGVuiL7hxrDRGJPvLgBpUh6iXhxF1B4Xra+apuTWDe1T8nw/7KhmWb+J6w3jfc
         J4zpRLyoVUbwF0nTrXTtoauHzW7RPnJr+mLYw8NNAHH/Zz0LGlHPr97IAvBd/76H+M15
         pU3p+Sb6OvvS7xwnTkWJlfCfH7jRUQHCCMFxS2YZmdjTrr76c49epAhVjvtb4WfcBNQ5
         7iuU/f0SlIJjoXyhakTTZ/0MQ0ptIesB8Nfb07Be8TEa06iKV9RCe+RUWrGfC9hR+lHZ
         Nl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734952631; x=1735557431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAg0zQo1HvAo0iqaanIJTGGSdxrt4g4lbpXT4Fzk4t8=;
        b=FQzsWh13f59UUduI0sIwAxoBxygw1Q2RB4uJUNSIz3G+DfV8wu1zWBqqsxziUxBiwj
         ttZtIXX8sBuPla9dw1wAVv/3yJ4dVU807hyt6val1HL2FPcakpMaSZLWemILpBxFL3WQ
         d4+n6a+5MdG9IDclJGWwN0l7NsxhmHKYXOkgvkb0QIQ2GealX7xDoO6SaGz2d70afjF0
         XADQGbwacOySNX1KDPKBPKBfSI/KEKz6XTL9w8ZdrjdsPNH1UzH05rLR/ppaomwqM45P
         uTQsqPjboqs+GQ8Ulqcdp0PLu+tuNqZkCSCxtvm49vc/3I1jVE6ac+RJdhx3NcJyuRI2
         xPFA==
X-Forwarded-Encrypted: i=1; AJvYcCVci4h3KaDiwzADBRyhWpD8GObjFM8GJ6EVynCGTye2bJG5DH9YPoacFloAS5j9q302RsTePNDd8pmc@vger.kernel.org
X-Gm-Message-State: AOJu0YzRWDUCMMUlsbQTTumD08VViF7jyH0aFA5Y5URrbM62uaGCOj9q
	yWI+BoZWigHIlUXONcMB5ZfN8B2UuEz3fiPZthF7EqGGBqsMrj1tZa+uatDJgPO3tWHqZdNauHR
	J
X-Gm-Gg: ASbGnctxmLH53bkGpfIkfAlSwNO2TfGzj8/mbUIY2cgztHcRqgT0JHyIJVnCtH5fcRb
	hsSwykQGHFEn+C32YCuHbkYtXvjR1KXIsxysh83BU1evi3eaL44n2kQ5oeTjEuy3jNPJGNn+RyO
	T9RaR++WK3zTOxV9pAKQ0RW1EX+x0Se6RqB08RexhIV6a0BmyOa+Xq1z79wpF7S0k3BSSbc4+/H
	NU7rGZtgeQ7fVX+T1+m7+kuifdGPLkdQUjpfeDcxM7gSo7/IumOhOCOGqmQZCzLcEeY0WGR7a8R
	AlgP7k9zEYqc0/LDWyk36BViYxkz1VsSpUWL
X-Google-Smtp-Source: AGHT+IGwOxJn54Td8r+NyaqARiydob0173z+5mppR6r0JXqtqFfPSqJJa2vifkVmQItUKQ/aSDHrlg==
X-Received: by 2002:a05:6512:39cc:b0:542:250d:eefb with SMTP id 2adb3069b0e04-5422955fd2fmr4096765e87.41.1734952631337;
        Mon, 23 Dec 2024 03:17:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223825f48sm1244622e87.225.2024.12.23.03.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 03:17:10 -0800 (PST)
Date: Mon, 23 Dec 2024 13:17:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 11/19] drm/imx: Add i.MX8qxp Display Controller
 interrupt controller
Message-ID: <6eg5ahmcxfvwzoybqqcksqergoeu5ivsqshfjjmotwe6t4brge@aahohpjlfqic>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-12-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-12-victor.liu@nxp.com>

On Mon, Dec 23, 2024 at 02:41:39PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller has a built-in interrupt controller to support
> Enable/Status/Preset/Clear interrupt bit.  Add driver for it.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Fix regmap_config definition by removing name field, correcting read ranges
>   and setting max_register field.
> * Collect Maxime's R-b tag.
> 
> v6:
> * No change.
> 
> v5:
> * Replace .remove_new with .remove in dc-ic.c. (Uwe)
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_ic_data data strutures.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the driver.
> * Take DC interrupt controller driver as a standalone driver instead of a
>   component driver.
> * Replace drmm_kcalloc() with devm_kcalloc() to allocate an array for
>   struct dc_ic_entry.
> * Call platform_get_irq() from DC interrupt controller driver to make sure
>   parent interrupt controller driver is probed first.
> 
> v3:
> * No change.
> 
> v2:
> * No change.
> 
>  drivers/gpu/drm/imx/dc/Kconfig  |   1 +
>  drivers/gpu/drm/imx/dc/Makefile |   2 +-
>  drivers/gpu/drm/imx/dc/dc-drv.c |   1 +
>  drivers/gpu/drm/imx/dc/dc-drv.h |   1 +
>  drivers/gpu/drm/imx/dc/dc-ic.c  | 282 ++++++++++++++++++++++++++++++++
>  5 files changed, 286 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-ic.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

