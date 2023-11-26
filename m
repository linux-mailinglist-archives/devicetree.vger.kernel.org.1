Return-Path: <devicetree+bounces-18924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A802A7F9128
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 04:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F67F2812E6
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 03:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39DB137E;
	Sun, 26 Nov 2023 03:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CP90BNv5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4A911F
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 19:51:48 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6d81fc0ad6eso112727a34.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 19:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700970708; x=1701575508; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=n3ePcv5eyiWbDO+V9MEwPvr8kWuH4Kzge2qv1KaLJqs=;
        b=CP90BNv57gYzjErADY76HsSuCRTZ7zSBtsPJtFcf5iebZisOfRtOwq8jiyUtqA09W0
         MPamyBQdYeYnbh7YieOrPHOPuafS4pMuJ3bHYOVipcGSjNC/fSfG1T11R+TYgxLroNT7
         CVB9vz9TXxE7MBjdpn5WznFeiMsfszTKqBmuX6Gci4G/9CZ1ry6IzgtkU4rgGwFum+BE
         d+/p9SUb0UTXlsagmnwJ0X4Ez7Kctpw2qHG/LpUfDgK6PO6ihCnnN2pxB2ogxnD1m1wl
         bsVSDKd2Xi1pDNybdnGzWWD4bIvWItPyEpEkJtEyvm6/lYMKCuhzrJ7xYh8qt/zJnMEl
         rATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700970708; x=1701575508;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n3ePcv5eyiWbDO+V9MEwPvr8kWuH4Kzge2qv1KaLJqs=;
        b=iP51PsduwUVHEWsiS4GCt76nuOJj3LhlBLSuPlrGspntMy16QiSCYEEhRg8xmgiDBd
         rBHSm/NhGpNH2O4NuHCWgqRdjzxYDGm2gjDrxp6gOrqapjOHbqLBtFWhcJX9v4yuu9io
         ruOJ+YrSrKA0JWD4shhxhh+wZHoZLFuJlMWpJi64DZ44U2JVRZpxBGipGV297rwIaqCH
         G9Hm7wwKqH1zujpL94Z8BxpmflLLjGjdZzxTxxntZVecD5hxXO4lj9/rrWflspGZZ/2x
         qWNMx2pHJ6fb+FpCE3TgGEKG/BgLwKPDa0yDDVxt55tGv5nDRSkhbiydcGzill1grLaH
         0tYQ==
X-Gm-Message-State: AOJu0YzGpBWd9PKTT75DZhEOgB6AzcfugQG8SiaxcufHgAZECjjfr7SV
	b0iztlxP5ZbWBslZemDoXuU=
X-Google-Smtp-Source: AGHT+IF/X8aRobgXRIN9qGUIxqzUHSyxSexoCuANEUhynakNMA+LmC0DkbZCl5A53nkihBW/EJWx5g==
X-Received: by 2002:a05:6808:1407:b0:3b2:f2e0:6b39 with SMTP id w7-20020a056808140700b003b2f2e06b39mr10679999oiv.12.1700970708056;
        Sat, 25 Nov 2023 19:51:48 -0800 (PST)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id be8-20020a056808218800b003b2e4754cc2sm1064673oib.26.2023.11.25.19.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 19:51:47 -0800 (PST)
Message-ID: <6562c0d3.050a0220.2a5c5.554b@mx.google.com>
X-Google-Original-Message-ID: <ZWLA0WS8boG6j1Rc@neuromancer.>
Date: Sat, 25 Nov 2023 21:51:45 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, neil.armstrong@linaro.org,
	sam@ravnborg.org, Chris Morgan <macromorgan@hotmail.com>,
	sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org,
	robh+dt@kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>,
	Macebrooks@gmail.com
Subject: Re: [PATCH V4 2/6] drm/panel: nv3051d: Hold panel in reset for
 unprepare
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
 <20231117202536.1387815-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231117202536.1387815-3-macroalpha82@gmail.com>

On Fri, Nov 17, 2023 at 02:25:32PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Improve the panel's ability to restore from suspend by holding the
> panel in suspend after unprepare.

Now I have confirmation this does fix a bug for some users, and a
somewhat serious bug at that. A user had their device suspended for
approximately 12 hours and when they returned the screen was not
displaying correctly, even after a reboot. This patch was recommended
for troubleshooting, and confirmed to fix the problem (note, the screen
did eventually "right" itself after several hours of being off prior to
testing this fix). So now knowing it's really a bug as there was some
question previously if there were actual issues, is there a way this
can be added to the 6.6 and older supported kernels?

Thanks to brooksytech for the bug report and confirmation of fixes.

Might be a bit late for this, but:
Tested-by: brooksytech <macebrooks@gmail.com>

> 
> Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
> ---
>  drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> index 79de6c886292..c44c6945662f 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> @@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
>  
>  	usleep_range(10000, 15000);
>  
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +
>  	regulator_disable(ctx->vdd);
>  
>  	return 0;
> -- 
> 2.34.1
> 

