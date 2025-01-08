Return-Path: <devicetree+bounces-136653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3BA05C69
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 14:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22FAA1883861
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A5A1F8AEC;
	Wed,  8 Jan 2025 13:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vhGmPGho"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F9D14A82
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 13:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736342036; cv=none; b=d2vHvyWJPnIYZpaW+Jmes0shEcMI4SGTbd4FvfrjlRX02Sg+LvlaQGtZa4c7c/Njjuq2D3DiZ1B3GnLez4VoBxjGjY1r7sk0tEyNoxyTg2NpyeOhiYaXKFPD5siU007zObambpwaDO0Iwd4qQwxHbSzIEvOAoJmsTcx/HPLNyZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736342036; c=relaxed/simple;
	bh=rbAuMdLeVIHJxGAmrFB4pU2Jv3N1FjIiysZFlVbIhmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKjVO6kPnUqxZO3NMhaaCdax6U2kqMppU+X85brpkeKGLvEVW0j4BX8U8gDVTTIGUoMejNHh1eu37e8QxUhWTLd4fFxzQRUmSvMd/Z6CtwKljeWqTORsqL8rEDDuYjl7eJkGcvonytYkgJk0Fso1ehVrvTea9HKYTQoLxjEzLpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vhGmPGho; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54024aa9febso17717380e87.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 05:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736342032; x=1736946832; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YqZewggKXh0wm9IbjtQFexabLRuUSMGH6a4/lzMIbGw=;
        b=vhGmPGho++a59EiUOaVnkV+Uz7UfSsKeCbzH+vocd9Iueu6E+NDFQRXQvCyOw22DYa
         YfLBUEPCx2GR/R7asVv2eTwwn4M06li61nz/aqNzlR4C6CTEVC0uvLPb9Ti+pdrRHSdw
         zcBVzScA8+OBk1tu5ywj4qufYJRUKfq8EPBWVDUwIxQEOqd+pLI40mSuUns5HBlaOLDt
         rgjSJ0iaoIvJjxsVyHCF6kzyn/c+vnHOpG9ct7iGuCGpfNsnJ5O1CtzuP6o64Extwskk
         ecW65Zd4hLSmtmqW/OBYfbfFgE4k00W7ib9feIlZgRuFgPx7MxBPF2lngXgqtkacYacn
         IsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736342032; x=1736946832;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YqZewggKXh0wm9IbjtQFexabLRuUSMGH6a4/lzMIbGw=;
        b=EzkxfNua8udLsSMV/fRBoHaiyjTT8pWh4nJ7DXTCbj6RvW+AQYX8TV3NtyrXe/uG4Z
         KDqWedm5QwWzXHMzPGygcl5R9m0roFGJyyinwTVuG2rC1w9GpzHzuDhtxIyfcbj/eAeZ
         rYewf9DjTbXFEljgIFEL0uezOTuIRfWGoI36nLZyPh8tC0prpY/afUEaJVyIEDPr9bdT
         haMq1euhmeili96+PyDx0p3APUPG8h0Qs65oaRblKAmoSi2TLmOwz8i0Tj7pTiKsxU41
         pv/3vCxkuxZYDed8+OktTqJhS+yyBYjcSghONaVveDTIvAsBzKQ9SyYW2O+dtl2s2jdA
         iSSg==
X-Forwarded-Encrypted: i=1; AJvYcCXMpYJ0wNA6/ztRdTPSK826nFfaZgii4fH+u3x1dl9X/GADlN+71wGz9Pobjzfvx0P14z4zo2vWjr3Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxrmWL4pyTiNskR0g9kAHRGzz5K4/jByvCmVDB52AHXWVEL8Y5H
	XrtwqFyCcwzy3lfMNSpUpCgp28JQ1/9EKl/AFC1RwzYMZJOO7xyeD4Q3BdUjNc0=
X-Gm-Gg: ASbGncteCg4D9dc1MoFRjG0uGu133Ku18XTxPZQhDeXofCgZDjVge4RziF7rBj1+rfY
	TMYk6hHT1fieFYIeHPpjZs6dx8oSCGMhwM5OpS5R+oFzjQM5YwWiCh1IBowjGv9Z6rid4hZPCZ7
	E9N9NsDToOKnG/9rewHICEX5S5SIXrRnFOuWkvxDFsJf64HO1NL/ZvLUl1oS42h7uZjoXMxJ3ju
	UJ+/N7h7o2qHq7I2naGAqDN6HcB/PtceeOi0/wozt7s1rtMYbSMOqyAatMM4ZQDzdnMmDY56hYA
	FtpSL9qPf3/tANsfj4I5L6O5NAiuuY5YB7/3
X-Google-Smtp-Source: AGHT+IEkuQPiOLgGXs8zWdEMj0wAqNSMaSTV6vSQ/tkCnop+NG9gWvZpeLRpiajpdeM8K2LlU6tzqA==
X-Received: by 2002:a05:6512:3c8a:b0:542:28dc:b692 with SMTP id 2adb3069b0e04-542845b9480mr694480e87.14.1736342032480;
        Wed, 08 Jan 2025 05:13:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54269fd89e8sm1549488e87.91.2025.01.08.05.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 05:13:52 -0800 (PST)
Date: Wed, 8 Jan 2025 15:13:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com, jie.qiu@mediatek.com, 
	junzhi.zhao@mediatek.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, lewis.liao@mediatek.com, 
	ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com, jason-jh.lin@mediatek.com
Subject: Re: [PATCH v4 33/34] drm/mediatek: mtk_hdmi_common: Add var to
 enable interlaced modes
Message-ID: <bovw662duw6ufmjleicb4kuhyn3an6emo53mgg3477dfuarapq@zcmekc7zzeub>
References: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
 <20250108112744.64686-34-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108112744.64686-34-angelogioacchino.delregno@collabora.com>

On Wed, Jan 08, 2025 at 12:27:43PM +0100, AngeloGioacchino Del Regno wrote:
> Add an interlace_allowed bool member to struct mtk_hdmi_ver_conf
> which will be used to signal whether interlaced modes are supported
> by the bridge (in our case, the HDMI IP), and enable it for HDMIv2.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 1 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.h | 1 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_v2.c     | 3 ++-
>  3 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
> index 4cecfef1466b..8841fa4e476a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
> @@ -1301,7 +1301,8 @@ static const struct mtk_hdmi_ver_conf mtk_hdmi_conf_v2 = {
>  	.bridge_funcs = &mtk_v2_hdmi_bridge_funcs,
>  	.codec_ops = &mtk_hdmi_v2_audio_codec_ops,
>  	.mtk_hdmi_clock_names = mtk_hdmi_v2_clk_names,
> -	.num_clocks = MTK_HDMI_V2_CLK_COUNT
> +	.num_clocks = MTK_HDMI_V2_CLK_COUNT,
> +	.interlace_allowed = true

Nit: if you have a trailing comma, you don't have to change the last
line when adding a new one.

>  };
>  
>  static const struct mtk_hdmi_conf mtk_hdmi_conf_mt8188 = {
> -- 
> 2.47.0
> 

-- 
With best wishes
Dmitry

