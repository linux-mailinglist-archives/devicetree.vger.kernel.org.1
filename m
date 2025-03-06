Return-Path: <devicetree+bounces-154956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D81A551A4
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 17:44:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C45CB3B11F2
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E822F213236;
	Thu,  6 Mar 2025 16:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V6NI8MyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B995919992C
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741279195; cv=none; b=BXFigqfJ+yMX9E6KOCPRR4qJU5X1VfG/msvC0CpIiIWZ2rwlHk1rEhi/5VX5f4e3qZji+hFZFoIJYCSfrjS5oE66G2zMEAz8Mkot1u2NBAajpLAl4J7mnr6LwASl8BEPnQzd+v+napX49P6ofgMzjGChpizsznd9TrPWBwNe40A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741279195; c=relaxed/simple;
	bh=ynKvw/iMKOjcg4LQA/GCMnYhUnMmIfOIDrMN02XfzjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tjtPTdKd529b/D5AtpqXtcMIbWxn1uoNvY/lQcpDIYOPJxnr4wWyyGw1DMGJaSltSX3URkbATMmuQFkUvGxmRErEaeTI46YXBVq+qJMUfX74zZlvA8oQryQlcDQ+RmYdGCCf/URAAt3HnhPKw7Jf+Xqy8sLo+flYrjmFQDMvdg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V6NI8MyV; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5495078cd59so1048468e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 08:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741279192; x=1741883992; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FBPYVaLi/uKYGxgimpo2QNuRdBqjr1WrILf7lC0MLjw=;
        b=V6NI8MyVPJL6TJRURMH0yX5Ggq7gLrz9N+Nhldg7BaNC++yNKTOMYw56ZJeWxVsMyl
         FIieehju1PbHmuuvYE+qyMglDSc8VoOjiGsIs0BwkSl6yMJOMurKyUXSk8dSxcTRxmwY
         ip/WWxH0fwmeMEAEPfU3c3kBA/EZN9eQLLBZxNKZ8d9d8Hu80Mv31qKSFifD07B119or
         0KOvhPpXhqfKDcK4ymOgu+RjnfLaQq1Y3KSyVXfik6mgZdyGzhE/vqGHoE+v2ftSc/RR
         WVJde3rFtbs3NCR5DslMyBlMlM8jXpekbcQUN1k3HHGKJjaQfgpOMPuLjdzCeQIaKbv4
         Uuhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741279192; x=1741883992;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FBPYVaLi/uKYGxgimpo2QNuRdBqjr1WrILf7lC0MLjw=;
        b=Ol7N6BsqJAQe5NH2Js6dx7zIT9YYepBQw7vKof0z7+V5d51wF2NZwhsdyl6IxkwnvJ
         b4QxQI6IGWDkMpwbIq1snkxs/5oak8tKx/R/Uf9pUiCFAl79iwIUjlQRPqZ6djK8diTd
         95ZcUdU8aNs+za9DLraobBSE/J42GpscNs9nHOYSdyQFvaYeIYu3jz6z/fo/q0QLvlim
         cb44XbUrzrCtsjDfd9iFS+UBMU7VFVpGFMNZI4Nsos/p+gmxp/VYsj64XCzmqEHwKAQd
         omTK2+qiPTccvC8mO+ApLzIAq0QrSd/o9vE8GzXzdrY3s4IPDsjRAKwBpRG2X8jTHcIU
         OzgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxNUXpXxhkD31Xc7q18VfWjODOdJalxZ/hAaJjHWUFdqzldv10JDlXELCeE0waYBAKZkv/kH1JuvaQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyUKQHXOWvyUuRqpC08kHqE5vPwhpYHgqMK/9nw7FHeO/SAN2bH
	YTN7sD+nhyPOnTs4cYFzu5HIvGQn+MDrKAwKMUrQQ8GFLhQiMCws5dWBhAXATUc=
X-Gm-Gg: ASbGncs//Vo3HliNIWvDP+onQKl4I4wc/SHYCAJn2412UIyC6tzuKlZSy9NoWqJZOiH
	o7wG+9LVYuaurkx5uD5jEZh28VfH4bm6+PMMyka/7i/HnkrQGLF3sUhCt12lhdlCTT4YNH2fGAF
	Pyi67Y0rTDvdfVqvji45OpaX1kbBL+JFaC7OKplyVpf3jlu/0Fq62Oyk47+eTFWFCpHnCrzE5Wc
	nXaFOPiHKAytL6/erOfRpNHAtV94FQ7ZxAel1w+vnuPeyBzp5S3C5MhPLUREMuu3d3xZciwbuLl
	UKXZnnj0NmAd2Y2HuJQdpKtKBVOFaV0FrawZqJUGURmCL+15Mgg96p90SjVFgNNlWkZ9YcbP8WM
	KSO+OSx0dfGavGmex+52y20MJ
X-Google-Smtp-Source: AGHT+IHt8WQLWAGDWHo3md1Ffan9Wx7URm1t0MnTSAc9qQkPKqnAbToODyzMc5O6JoOi7DfCRhZZiA==
X-Received: by 2002:a05:6512:2391:b0:549:9078:dd45 with SMTP id 2adb3069b0e04-5499078ddd8mr7463e87.28.1741279191737;
        Thu, 06 Mar 2025 08:39:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1c3c0esm227438e87.248.2025.03.06.08.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 08:39:51 -0800 (PST)
Date: Thu, 6 Mar 2025 18:39:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, heiko@sntech.de, 
	neil.armstrong@linaro.org, sebastian.reichel@collabora.com, devicetree@vger.kernel.org, 
	hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
Message-ID: <zybxwxxkua2zqukcd7tn2z4uwbqjbxt2fdtnrmpsov4hy55tzn@moxuyfxtyagb>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
 <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
 <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>

On Thu, Mar 06, 2025 at 08:15:13PM +0800, Andy Yan wrote:
> Hi Piotr,
> 
> 在 2025-03-06 19:47:31，"Piotr Oniszczuk" <piotr.oniszczuk@gmail.com> 写道：
> >
> >> Wiadomość napisana przez Andy Yan <andyshrk@163.com> w dniu 6 mar 2025, o godz. 09:53:
> >> 
> >> 
> >> Hi,
> >> 
> >> 在 2025-03-06 16:42:00，"Piotr Oniszczuk" <piotr.oniszczuk@gmail.com> 写道：
> >>> 
> >>> 
> >>>> Wiadomość napisana przez Andy Yan <andyshrk@163.com> w dniu 6 mar 2025, o godz. 01:59:
> >>>> 
> >>>> 
> >>>> 
> >>>> 
> >>>> Both of the two config options should be enabled.
> >>>> andy@Pro480:~/WorkSpace/linux-next$ rg DW_DP .config
> >>>> 4044:CONFIG_ROCKCHIP_DW_DP=y
> >>> 
> >>> here i’m a bit lost….
> >>> greping on full kernel sources (with applied https://patchwork.kernel.org/project/linux-rockchip/list/?series=936784) gives me no single appearance of ROCKCHIP_DW_DP…
> >>> Do i miss something?
> >> 
> >> see PATCH 3/6:   
> >> 
> >> 
> >> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> >> index 26c4410b2407..c8638baf9641 100644
> >> --- a/drivers/gpu/drm/rockchip/Kconfig
> >> +++ b/drivers/gpu/drm/rockchip/Kconfig
> >> @@ -8,6 +8,7 @@ config DRM_ROCKCHIP
> >> select DRM_PANEL
> >> select VIDEOMODE_HELPERS
> >> select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
> >> + select DRM_DW_DP if ROCKCHIP_DW_DP
> >> select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
> >> select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
> >> select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
> >> @@ -58,6 +59,12 @@ config ROCKCHIP_CDN_DP
> >>  RK3399 based SoC, you should select this
> >>  option.
> >> 
> >> +config ROCKCHIP_DW_DP
> >> + bool "Rockchip specific extensions for Synopsys DW DP"
> >> + help
> >> +  Choose this option for Synopsys DesignWare Cores DisplayPort
> >> +  transmit controller support on Rockchip SoC.
> >> 
> >> https://lore.kernel.org/linux-rockchip/047EECFC-7E55-44EC-896F-13FE04333E4D@gmail.com/T/#m178a325ea0ebc64187aae474d77c3f7a9e0bc93d
> >>> 
> >
> >
> >Ah my bad!
> >One patch patch was commented - so not all dp code was applied.
> >
> >Now it is much better:
> >
> >root@myth-frontend-56b0f018b5e0:~ # dmesg | grep drm
> >[    9.795380] panthor fb000000.gpu: [drm] clock rate = 198000000
> >[    9.796257] panthor fb000000.gpu: [drm] mali-g610 id 0xa867 major 0x0 minor 0x0 status 0x5
> >[    9.796262] panthor fb000000.gpu: [drm] Features: L2:0x7120306 Tiler:0x809 Mem:0x301 MMU:0x2830 AS:0xff
> >[    9.796265] panthor fb000000.gpu: [drm] shader_present=0x50005 l2_present=0x1 tiler_present=0x1
> >[    9.851869] panthor fb000000.gpu: [drm] Firmware protected mode entry not be supported, ignoring
> >[    9.851921] panthor fb000000.gpu: [drm] Firmware git sha: 814b47b551159067b67a37c4e9adda458ad9d852
> >[    9.852127] panthor fb000000.gpu: [drm] CSF FW using interface v1.1.0, Features 0x0 Instrumentation features 0x71
> >[    9.852436] [drm] Initialized panthor 1.3.0 for fb000000.gpu on minor 0
> >[   10.003108] rockchip-drm display-subsystem: bound fdd90000.vop (ops vop2_component_ops)
> >[   10.004705] rockchip-drm display-subsystem: bound fde60000.dp (ops dw_dp_rockchip_component_ops)
> >[   10.006085] rockchip-drm display-subsystem: bound fdea0000.hdmi (ops dw_hdmi_qp_rockchip_ops)
> >[   10.006679] [drm] Initialized rockchip 1.0.0 for display-subsystem on minor 1
> >[   10.006737] rockchip-drm display-subsystem: [drm] Cannot find any crtc or sizes
> >[   10.007663] rockchip-drm display-subsystem: [drm] Cannot find any crtc or sizes
> >
> >Unfortunately still nothing on screen
> >
> >dri state: https://gist.github.com/warpme/5e971dfd2e9fd52fae76641831cebe46
> >
> >and kernel dmesg https://termbin.com/r0m3
> >
> >i’m not sure what is missing (some dts enablement or….)
> 
> From your dts,  I find you use gpio for hpd, I'm not sure how to handle it  with upstream  code now.
> 
> 
> &dp1 {
> 	status = "okay";
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&dp1_hpd>;
> 	hpd-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;

If this GPIO is handled by the DP controller itself, it should be a part
of DP's node. Otherwise please move it to the correctponding
dp-connector node.

> };
> 
> I suggest a change like this:
> 
> &dp1 {
> 	status = "okay";
> 	pinctrl-names = "default";
>         pinctrl-0 = <&dp1m0_pins>;
> 
> };
> 
> And also remove dp1_hpd pinctrl in your dts.
> 
> Then when you DP cable plugin, you can run command as bellow to see if the driver detects the HPD:
> 
> # cat /sys/class/drm/card0-DP-1/status 
> connected
> # 

-- 
With best wishes
Dmitry

