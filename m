Return-Path: <devicetree+bounces-134103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B90B9FCB69
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 15:39:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 391E97A14EB
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 14:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A448D13A3ED;
	Thu, 26 Dec 2024 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RZyl6iZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FF21C6B4
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735223918; cv=none; b=MjuB91yOi3g9moTtcM8lwo+FsQldb1awtf5I+NvZKo96GlYP2HxoSpYH0QaAfmocjKjbuKaeMHycxDBH0SsS6qKRVQcU0pDQASJiihe8KsVVqOE/4eGLqE5BcH/RLDmmyyC/j/22VqB11/9PKIqkQz9M5xuH9g6QMkdmTaE1+Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735223918; c=relaxed/simple;
	bh=vEsdYvups3gEP5yn5PstJ1DmPRncvVS/rQlaAxVO50U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YTteSC3jGRiav/TGvGmUkxwAF6niMpiNq0YwfuN4Z1T37fxUe9aIzWtf8vQJZgoFckHONvmZ6fzoZaEz7/AmG+nyUaw9uYjs4AuaytJy5apwIgSZpxuuzmtF2tpLGZyz6EcklxVOTQQRWJKFRb5KJJB7atdl8rBtQ9MtGWHnwIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RZyl6iZX; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so65060375e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 06:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735223915; x=1735828715; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ppCCMWUp+TBSk6cyVK5gjcdhw0wzNeHxXsbdb9zpgKQ=;
        b=RZyl6iZXLVV29GI48smdvLOxMFq7OPi2OZPV0bXGeang+YrIlGnS+Cu1hybc5rnx9q
         64NiGgCutQZeaEICKQg30DcfP78VHNHog4uqQDPPZTW8L4V/lMp49zf7BaTcJEbz5HsM
         OecPSb+KJ8E1mkEu6dY+Q4Uh9/W7AeyUVoYpvioMDHB6mPStphgiSfmfq+BC/R9KpbgU
         +uK7kA3+L0xfs8/i/F/Qm1p5yDTsVS9iU0Rcb0JLoymev2E68jazzRA55OJ8ZqGrXVqw
         yYAjGEzDiRBfRvLizwf5BaKeDPkVEl1x8aA/hs3tuOgI2WgRnCCxjzTa1j/vXK5RwV5m
         Ypfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735223915; x=1735828715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ppCCMWUp+TBSk6cyVK5gjcdhw0wzNeHxXsbdb9zpgKQ=;
        b=oBRGuPQrmOSSAmzkJfs9PgtTQvKIOojk7uIHKEPg5GxljT4QQ3RMrwiy8exqT5+mU7
         MU4fgJQNN0hczjEMEyMVa2JS3HgjgmZAEAVbUHdL7DVtOJKKFbl77WRsUXy9McPMDOJT
         sXMcaoaXOX3t9eXLE7y1t/Q3jtVXhsaeTt/sV6Sd8JdTmOOKAkySeeG4lqh1CAIN0Sjx
         XPywQY9+GMDX2S1zSO87AJKQZ+GOil5ITI+XdijnQu0FToTtbhnPp301+5rYvTQGbv8W
         fpgBgCaTcOYoR7L/D+mArZ2P3KPSSmM6bpU4g+cblG5LnAdMoCwb8DwuOBj0F2uDiuXk
         EBIw==
X-Forwarded-Encrypted: i=1; AJvYcCUL8X4XbvOY6r97TIvIFceFxzoxPswPl60PT/CCpSGAIwU5GWjMxUz6KUhRt2NdD0Vmgi20gakj0MXg@vger.kernel.org
X-Gm-Message-State: AOJu0YzC11WwLPvrC0R93BHZ2HzrJUD0QgzpwbCQsRaNnUEXUsUCEfpH
	SRNGSgkyASS+XDNlEa0XtslsxZEFxCouGrpjIKBZaTbpA2cTuMM7q2cscUmkHkM=
X-Gm-Gg: ASbGncta85vPbGyQ9o5NTM4Tdnz9jMocvBDrVCVtrTn8jlZvpAIeJZL9GJ+M7bMwszS
	Zq4NMLtJ/NKJcqV+J6MS24FU3cO3gLlz60s9PrWc11qikzT0c3xNe4YjU51yT7+/P7G35NBjjTl
	8EyuWoGeZhChYdJk3Pz2dKJ0TGzWiBw1SfsYhNmQkai9aGtIad6u64FXgAaVUzg9F2YpWTyLP/4
	tXaFVOLq3MxMfQNm63jfh5QVrhc7wfziQEvHx/JXVcxG9joNObiJSI=
X-Google-Smtp-Source: AGHT+IFPzIF1oPeem4JaOE0kiI2t8N5T16Kp29XglspdwnIhUCG31MxEJbnojAYYdfxmNkxmbdm+AA==
X-Received: by 2002:a05:600c:a0a:b0:434:fe62:28c1 with SMTP id 5b1f17b1804b1-43668645ffdmr208219815e9.18.1735223914701;
        Thu, 26 Dec 2024 06:38:34 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656af6c25sm267607585e9.8.2024.12.26.06.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 06:38:34 -0800 (PST)
Date: Thu, 26 Dec 2024 16:38:31 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	abelvesa@kernel.org, peng.fan@nxp.com, mturquette@baylibre.com,
	sboyd@kernel.org, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, quic_bjorande@quicinc.com, geert+renesas@glider.be,
	dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
	marex@denx.de
Subject: Re: [PATCH v6 2/7] Revert "clk: imx: clk-imx8mp: Allow media_disp
 pixel clock reconfigure parent rate"
Message-ID: <Z21qZzfjzxPb6PzO@linaro.org>
References: <20241112100547.2908497-1-victor.liu@nxp.com>
 <20241112100547.2908497-3-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241112100547.2908497-3-victor.liu@nxp.com>

On 24-11-12 18:05:42, Liu Ying wrote:
> This reverts commit ff06ea04e4cf3ba2f025024776e83bfbdfa05155.
> 
> media_disp1_pix clock is the pixel clock of the first i.MX8MP LCDIFv3
> display controller, while media_disp2_pix clock is the pixel clock of
> the second i.MX8MP LCDIFv3 display controller.  The two display
> controllers connect with Samsung MIPI DSI controller and LVDS Display
> Bridge(LDB) respectively.  Since the two display controllers are driven
> by separate DRM driver instances and the two pixel clocks may be derived
> from the same video_pll1_out clock(sys_pll3_out clock could be already
> used to derive audio_axi clock), there is no way to negotiate a dynamically
> changeable video_pll1_out clock rate to satisfy both of the two display
> controllers.  In this case, the only solution to drive them with the
> single video_pll1_out clock is to assign a sensible/unchangeable clock
> rate for video_pll1_out clock.  Thus, there is no need to set the
> CLK_SET_RATE_PARENT flag for media_disp{1,2}_pix clocks, drop it then.
> 
> Fixes: ff06ea04e4cf ("clk: imx: clk-imx8mp: Allow media_disp pixel clock reconfigure parent rate")
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
> v6:
> * New patch.
> 
>  drivers/clk/imx/clk-imx8mp.c | 4 ++--
>  drivers/clk/imx/clk.h        | 4 ----
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> index 516dbd170c8a..e561ff7b135f 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -547,7 +547,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_CLK_AHB] = imx8m_clk_hw_composite_bus_critical("ahb_root", imx8mp_ahb_sels, ccm_base + 0x9000);
>  	hws[IMX8MP_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mp_audio_ahb_sels, ccm_base + 0x9100);
>  	hws[IMX8MP_CLK_MIPI_DSI_ESC_RX] = imx8m_clk_hw_composite_bus("mipi_dsi_esc_rx", imx8mp_mipi_dsi_esc_rx_sels, ccm_base + 0x9200);
> -	hws[IMX8MP_CLK_MEDIA_DISP2_PIX] = imx8m_clk_hw_composite_bus_flags("media_disp2_pix", imx8mp_media_disp_pix_sels, ccm_base + 0x9300, CLK_SET_RATE_PARENT);
> +	hws[IMX8MP_CLK_MEDIA_DISP2_PIX] = imx8m_clk_hw_composite_bus("media_disp2_pix", imx8mp_media_disp_pix_sels, ccm_base + 0x9300);
>  
>  	hws[IMX8MP_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb_root", ccm_base + 0x9080, 0, 1);
>  
> @@ -609,7 +609,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_CLK_USDHC3] = imx8m_clk_hw_composite("usdhc3", imx8mp_usdhc3_sels, ccm_base + 0xbc80);
>  	hws[IMX8MP_CLK_MEDIA_CAM1_PIX] = imx8m_clk_hw_composite("media_cam1_pix", imx8mp_media_cam1_pix_sels, ccm_base + 0xbd00);
>  	hws[IMX8MP_CLK_MEDIA_MIPI_PHY1_REF] = imx8m_clk_hw_composite("media_mipi_phy1_ref", imx8mp_media_mipi_phy1_ref_sels, ccm_base + 0xbd80);
> -	hws[IMX8MP_CLK_MEDIA_DISP1_PIX] = imx8m_clk_hw_composite_bus_flags("media_disp1_pix", imx8mp_media_disp_pix_sels, ccm_base + 0xbe00, CLK_SET_RATE_PARENT);
> +	hws[IMX8MP_CLK_MEDIA_DISP1_PIX] = imx8m_clk_hw_composite("media_disp1_pix", imx8mp_media_disp_pix_sels, ccm_base + 0xbe00);
>  	hws[IMX8MP_CLK_MEDIA_CAM2_PIX] = imx8m_clk_hw_composite("media_cam2_pix", imx8mp_media_cam2_pix_sels, ccm_base + 0xbe80);
>  	hws[IMX8MP_CLK_MEDIA_LDB] = imx8m_clk_hw_composite("media_ldb", imx8mp_media_ldb_sels, ccm_base + 0xbf00);
>  	hws[IMX8MP_CLK_MEMREPAIR] = imx8m_clk_hw_composite_critical("mem_repair", imx8mp_memrepair_sels, ccm_base + 0xbf80);
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index aa5202f284f3..adb7ad649a0d 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -442,10 +442,6 @@ struct clk_hw *__imx8m_clk_hw_composite(const char *name,
>  	_imx8m_clk_hw_composite(name, parent_names, reg, \
>  			IMX_COMPOSITE_BUS, IMX_COMPOSITE_CLK_FLAGS_DEFAULT)
>  
> -#define imx8m_clk_hw_composite_bus_flags(name, parent_names, reg, flags) \
> -	_imx8m_clk_hw_composite(name, parent_names, reg, \
> -			IMX_COMPOSITE_BUS, IMX_COMPOSITE_CLK_FLAGS_DEFAULT | flags)
> -
>  #define imx8m_clk_hw_composite_bus_critical(name, parent_names, reg)	\
>  	_imx8m_clk_hw_composite(name, parent_names, reg, \
>  			IMX_COMPOSITE_BUS, IMX_COMPOSITE_CLK_FLAGS_CRITICAL)
> -- 
> 2.34.1
> 

