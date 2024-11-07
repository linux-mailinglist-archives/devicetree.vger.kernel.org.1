Return-Path: <devicetree+bounces-119911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2291B9C07E4
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 14:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 552231C23B99
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 13:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3E5212646;
	Thu,  7 Nov 2024 13:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DU+1MsVd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F620FAB1
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 13:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730987115; cv=none; b=Qi9sROSrPR3vZANm+RiutHbho2uR2wWdfzDMkcOcBRBTMgnLnCUpR4PAsuaEUeS6ofFszo9EZZvq1EbBI/kYQDWx2vNaLYJJbnxHwBOAasUzcr+B29juZ4ufo95NebZOdzwJwEsTaWVXHDyIu63AB30qV+DlasYtRn2EKFjkz9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730987115; c=relaxed/simple;
	bh=7dXks9Wg5DwoNadhwKqjULHIrjO397kLI7QsVsJWPbw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LnyIXwOyNgBhpFR1DVqVdyhqoIiFHJ4aroaarAiGVk/uey1a/cRdbytPZT1orpuegoZq99mb2OZsYnoHmz6h1H5mG/yiMQQwFYhAoJj+oIeWuMV8PtuMbA3AkpTu2SwVOkLNjjbobgIooqapq0Eyn3mpTupwI2ii6EogiRV+z0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DU+1MsVd; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fb5111747cso9654541fa.2
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 05:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730987111; x=1731591911; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oYfmjInTwSrf8wkLQDjO5520/3amtQeI91RgnNq7ubc=;
        b=DU+1MsVdKm718jbYtocN1OwGGDu5RQVZJ9IlJNa1zZeoY26vAKKjZAr5m1qzO3Ba5U
         kxjkOyu326/Rx9aNM0g1nizmpDUHIX5na+gQ8/8LBpyGKJqTV8JquO2A++Y55hOycmFd
         7msDHwxyAwYCImRh9ncu+RGROj01H932CV/bAE5iUabQYT76HUqMyBHyaxdxdemccfxo
         /l4pb5/C+4f8G5VOusf+iQLIVX38REclp0bRq8GM63qM270r/msPO0e128SJIwlE+fIx
         p5F/59LkXlKX6i79aDEfXevy5mO7rFx9Q98rqOMtmKjb8hEuD4+vElOBJuPMhNqMhNup
         QvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730987111; x=1731591911;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oYfmjInTwSrf8wkLQDjO5520/3amtQeI91RgnNq7ubc=;
        b=bt6ek5wEp4AT7go60wn4JYHJ/Q52Z43OYQIBGRvRYar5Flyf80qp0P8T1eUpOrFbdU
         05GQ1YI4JFanEeEpyTEa+tQ4TT6o/XSL0So9dZe5Rjxo8rT66e9VZJVRr4ZmnNqy6eI7
         18psu6a/vjMXblEo5WuslZEKST5wAySN7o2Tl4xzMzlW9bBzm1Ioat8Mxc84PkyOf66x
         iXUlR+qur80+ybv3uLHctf4QHY4jK2MsE2EAucvxJ+D48wbfOlxgkVviT6xIZpVonUSd
         g3Q0UOvcoz6AT98iteRSRw76BShuAxx+Tp10kS7ddVu6nUt3OCSdb7NqljrQrPkx3doj
         Oz2w==
X-Forwarded-Encrypted: i=1; AJvYcCUDMcVCVtJscS6BVslfqFFShw9tF0RJNfcT9U+KkNW5V2fgaI4GuY5yXaLZ5GcR0mOfCkxR4SZ3/RaK@vger.kernel.org
X-Gm-Message-State: AOJu0YzHHGJIHFRd2i/bbtMfVU0U9gmpZvbXNm5ux3YuvLbTsJ7ypopM
	eGwI5yQ7D7DPBujQm0pQLlssZLbOj9fwreXp5A//uZoFDMi0JaUaPUR0liSrhtE=
X-Google-Smtp-Source: AGHT+IFl+p0mMdxu5dSXrUkocxo9piGoG3Bvth7m60W3yHUYwLPE2t5/+pSBydipp+y555REAJVHHg==
X-Received: by 2002:a05:651c:543:b0:2fb:628c:2580 with SMTP id 38308e7fff4ca-2ff1e88880amr264501fa.2.1730987111409;
        Thu, 07 Nov 2024 05:45:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff178f3ba1sm2202531fa.35.2024.11.07.05.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2024 05:45:10 -0800 (PST)
Date: Thu, 7 Nov 2024 15:45:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux@armlinux.org.uk, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, varshini.rajendran@microchip.com, dharma.b@microchip.com, 
	arnd@arndb.de, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 4/4] ARM: configs: at91: Enable Microchip's MIPI DSI
 Host Controller support
Message-ID: <6r4nna5i63eo7oo2xoclqxpuodbttvxceuwn2yl4to7aqti3md@i2wtdzhsj4fp>
References: <20241106093429.157131-1-manikandan.m@microchip.com>
 <20241106093429.157131-5-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241106093429.157131-5-manikandan.m@microchip.com>

On Wed, Nov 06, 2024 at 03:04:29PM +0530, Manikandan Muralidharan wrote:
> Enable the Microchip's DSI controller wrapper driver that uses
> the Synopsys DesignWare MIPI DSI host controller bridge.

... It used on the board ABC DEF.

> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>  arch/arm/configs/at91_dt_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
> index 2022a7fca0f9..3ff89e27e770 100644
> --- a/arch/arm/configs/at91_dt_defconfig
> +++ b/arch/arm/configs/at91_dt_defconfig
> @@ -145,6 +145,7 @@ CONFIG_VIDEO_OV7740=m
>  CONFIG_DRM=y
>  CONFIG_DRM_ATMEL_HLCDC=y
>  CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER=y
> +CONFIG_DRM_MICROCHIP_DW_MIPI_DSI=y
>  CONFIG_DRM_PANEL_SIMPLE=y
>  CONFIG_DRM_PANEL_EDP=y
>  CONFIG_FB_ATMEL=y
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

