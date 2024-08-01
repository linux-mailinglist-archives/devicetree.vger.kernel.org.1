Return-Path: <devicetree+bounces-90219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F68D944695
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 10:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 344B21F265A5
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 08:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B2216EB4F;
	Thu,  1 Aug 2024 08:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q0zaNRWD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEE916EB40
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 08:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722500854; cv=none; b=VoxNORQWeBzVmiS5RdZiVLx6FRAMAwM1bhfmfBIQaeY2Z7MI4sUqI2PUSjan8vnXZCqkp8FFkhairZbLeeU837HkyLxcgGmRMnWTXlPTjOu0N/dElu6iK9bz5hrPyOY2sLhl5OEUg6mup2ZVIX31GnOJpG1k7D6Qr2/3PZYqgF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722500854; c=relaxed/simple;
	bh=jvsobS85OVCahF1SQTwtsolA3mYyFo9+mVdQPSBBk8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ijS2daOpxDOTrgZVJl+dNqorq7Dr+tZbjh2bk2fl+Grhhdv0T7y72g0XA41ViZWd8Tr9CshfKj3HvqzOYZEmiYGC5FiYGX9X+WnvgLrwJq9BUnNt2/tzcDK6Qj7Lwl7mOK3sNslS7Ncey2oOJ8ZD13Yqu5UHGaWUyQatusjygxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q0zaNRWD; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52efd855adbso9635792e87.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 01:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722500850; x=1723105650; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OD9G/3mCVlkVRRCgF4YN9knfhI9XiLKaZwoXUSFER6s=;
        b=q0zaNRWDIFzhheLn+2EVfa5HNVN1/5kX9eVmIs9wl2I0pNPoE1RPBkTBZVyqkec3q0
         nX141WpEfRCeeswMYL7MMYS+iIZ+TaFkkEhWKC0pX/mZI8zNKHtV72xsJOz/YhNfnO+6
         /BHpzLul7dr0nqd+LSK1K/jhH5UruJc+njhwwet2F1OXXyegm+9lZzhKAzjddwczBnKG
         kD4I0emKBqRwLf0YaQUNCotxkIH5q+U9kwknL2VCwblBHxwZ3FAT6/peaUVM7WOKxgH1
         2VzAOR5LwDitsCkPAkAm0H93tiMoQwDI+GWZDnSlLLemrrC27FEMUCDaX4T+uRTXdkOX
         PQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722500850; x=1723105650;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OD9G/3mCVlkVRRCgF4YN9knfhI9XiLKaZwoXUSFER6s=;
        b=a3LTzyESxWQYV5CcMMIf/LKdDIBlF5ofbnO/iWFA6fj0mOpoWK3d9HH+Lw1wvdSyeA
         f2V9gWqQk9IXqZfrZX/2d9Sd496TOtHCIog6pEd99WZRhFftJ0L3JbTDnXOQwg8kGOAE
         L72z6LWlreJjWkaeqgrr3CXlLA1xn0f7qRNdtlYY+bGvYGQdgk9iSaDTCLlZTDK+i9G1
         DnGEQfbe2EsBiA8mPglrOPCmcY9tTF8fw9Z34s8TEQj0g/k7TmkyuPGny1SybBgMjHta
         so9rtKdVD77bsvO127oq0U+CnOfP6fcuLJP3l+MRGkb+1GwK9qBDxNa7skE/4Sm3fk21
         V9GA==
X-Forwarded-Encrypted: i=1; AJvYcCWp8cq70wps12Fsj3jnreOK8dE0p3nMpB0Nz89b4FHf+Icz5fWEBl4nXDR3mSzMyG9ReWO795fC8VVXNw0luaz36hHaCk4BLuhcKQ==
X-Gm-Message-State: AOJu0YzmoZOc0MMQfwcRxVxe2AN15nesttkhXFJyWTF6cnkhZT8SKmSh
	etG3Vv5lfb437VIWWPqw/4qj86AjdslzjbHERYhru7OXVVV23M4twx7S1Yw8UGg=
X-Google-Smtp-Source: AGHT+IFMDpzmXM0CWf5tfKiNvDCH2OumQvacpGxa6JDE2TzEZY8ZGmaMFzWYonjhfvNnmFKelVat9g==
X-Received: by 2002:a05:6512:1296:b0:52e:f2e8:1646 with SMTP id 2adb3069b0e04-530b6214eb8mr1091075e87.58.1722500849604;
        Thu, 01 Aug 2024 01:27:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c2bfaasm2520775e87.256.2024.08.01.01.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 01:27:29 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:27:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	vkoul@kernel.org, vladimir.zapolskiy@linaro.org, quic_jkona@quicinc.com, 
	konradybcio@kernel.org, quic_tdas@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@mainlining.org
Subject: Re: [PATCH 08/10] clk: qcom: videocc-sm8450: Add SM8475 support
Message-ID: <zs6fwvt4fcd25wnvepcj3reh6or5xcljcuusj6xmyppsgaimxi@py54xfhrwr3v>
References: <20240731175919.20333-1-danila@jiaxyga.com>
 <20240731175919.20333-9-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731175919.20333-9-danila@jiaxyga.com>

On Wed, Jul 31, 2024 at 08:59:17PM GMT, Danila Tikhonov wrote:
> Add support to the SM8475 video clock controller by extending the
> SM8450 video clock controller, which is almost identical but has some
> minor differences.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/clk/qcom/Kconfig          |  2 +-
>  drivers/clk/qcom/videocc-sm8450.c | 31 ++++++++++++++++++++++++++++---
>  2 files changed, 29 insertions(+), 4 deletions(-)
> 
> @@ -420,6 +421,30 @@ static int video_cc_sm8450_probe(struct platform_device *pdev)
>  		return PTR_ERR(regmap);
>  	}
>  
> +	if (of_device_is_compatible(pdev->dev.of_node, "qcom,sm8475-videocc")) {
> +		/* Update VideoCC PLL0 Config */
> +		video_cc_pll0_config.l = 0x1e;
> +		video_cc_pll0_config.config_ctl_hi1_val = 0x82aa299c;
> +		video_cc_pll0_config.test_ctl_val = 0x00000000;
> +		video_cc_pll0_config.test_ctl_hi_val = 0x00000003;
> +		video_cc_pll0_config.test_ctl_hi1_val = 0x00009000;
> +		video_cc_pll0_config.test_ctl_hi2_val = 0x00000034;
> +		video_cc_pll0_config.user_ctl_hi_val = 0x00000005;

Maybe it would be better to define new PLL configs rather than to patch
the existing ones?

> +
> +		video_cc_pll0.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE];
> +
> +		/* Update VideoCC PLL1 Config */
> +		video_cc_pll1_config.l = 0x2b;
> +		video_cc_pll1_config.config_ctl_hi1_val = 0x82aa299c;
> +		video_cc_pll1_config.test_ctl_val = 0x00000000;
> +		video_cc_pll1_config.test_ctl_hi_val = 0x00000003;
> +		video_cc_pll1_config.test_ctl_hi1_val = 0x00009000;
> +		video_cc_pll1_config.test_ctl_hi2_val = 0x00000034;
> +		video_cc_pll1_config.user_ctl_hi_val = 0x00000005;
> +
> +		video_cc_pll1.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE];
> +	}
> +
>  	clk_lucid_evo_pll_configure(&video_cc_pll0, regmap, &video_cc_pll0_config);
>  	clk_lucid_evo_pll_configure(&video_cc_pll1, regmap, &video_cc_pll1_config);
>  
> @@ -445,5 +470,5 @@ static struct platform_driver video_cc_sm8450_driver = {
>  
>  module_platform_driver(video_cc_sm8450_driver);
>  
> -MODULE_DESCRIPTION("QTI VIDEOCC SM8450 Driver");
> +MODULE_DESCRIPTION("QTI VIDEOCC SM8450 / SM8475 Driver");
>  MODULE_LICENSE("GPL");
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

