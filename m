Return-Path: <devicetree+bounces-127410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F1A9E5584
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 13:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6021A1883BB9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E23121859F;
	Thu,  5 Dec 2024 12:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gn7PHUcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE96218AA1
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 12:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733401751; cv=none; b=tNMxyP3EmDLKGQaryQSJKNUqyn0j8oS0IjErJTULsAlvJoxaF2R/NCwFPuy7dBWJXlEn3vvhjDZey58Z7NgMSHMy6hmDksRA4MkFPaMoPpPUzTs/SpCkkXa/rsyvS0JBV/9Q4sJzZZU5fNDgoDPIVQMo6se8mQLyRBAuCv8/Mm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733401751; c=relaxed/simple;
	bh=dg0/rI1JIhIKxLXXre0pWDYon+oztxDZmcKvYWMKM6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aPDQPAf/h1DJeh1kniUSJChM7hAI1G2EfsIoOfGTFLt36XnGsH+cMZthx2/jtCgogATOxeGLqEphoZXwtJ9CcSarKsTPuPkGLRFYHcb+vNgGximZKkUFvffyRtgusNGP0cTj7eiDjoNZZj7EKRSMOFrAoPQFBauRkLL/ToFVfrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gn7PHUcc; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53de771c5ebso868531e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 04:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733401747; x=1734006547; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DzZzeW6LtUsNwMv+kA0kTMV9+3xVaKazBCL45YLJgXw=;
        b=Gn7PHUcc7dbRuJe2uzQz58oImANDzzQ6p54DCAnIwSIx/0MGSS7GwVXBjIxrxFMSHo
         Rj2Q0aZvvLNa1R36xlJj2RW8C5zDSu7pNoCYsavXRu3mXVjNFE4IP4Kky6h677MD6TA1
         +YONa3wMsuYe9FpSYBbNkmlqjwsG30xGdvelKC+Ct9WkeulOWcf9NAgY6doL2nuFt/BP
         U9Psawi/SU253/1hrqsd6ga3Bzq5OhjVgje6cK1oo8s4qbfcQX6MqcVnXjkZu725ZyZw
         w9mquS2z4yoXepiIogHZn5u4iByec0L1lcRFPLY7LKfmqA0UeNOmFx/ugE/Pxpcx8sWm
         eJ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733401747; x=1734006547;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DzZzeW6LtUsNwMv+kA0kTMV9+3xVaKazBCL45YLJgXw=;
        b=d85rL9t/AfKaxPk1WVP4Znrl/PKiht5t4Uj3L3lI/9xkjjo5tp1yvIsBTvbuQUZgUm
         2CAopKKDpsdtDT7ymQr2/Y18yF5thxH0mwEvbGwXuvJcUy39TpZy4mtQeiMMsRi02qU/
         r44MeLQ5a7l4qcYX3gBdr0gVkJ/9mLFn+5qvPjrFmxs3pu/STlgLaenXmWF/TQAgWsxY
         JIp5I/p+und2L1prdSSvUJnVKmAna64IxWm3pOg/b0aDZI/iZ6gXEONwjZer38+HuSrn
         hlNaNO0QWtewXvo5AlURbyR82P1Osu9Ch52fNaTh74EG1iMems+bZPbQ4qUB6qXSB5O/
         oDcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWC+icH/wXwW93OPRLgzDA9F2fWvZD+O6bnSgGoifWXuot1YFZGC/71ynJjn1FZVLTY/xDiLBDtdbJ9@vger.kernel.org
X-Gm-Message-State: AOJu0YzwOGY40eMc2/Dr0IZaLwZenkdx9EPob87eECymHU5gLAw7PL66
	BFe+hDoGfSOosGJb8JQEVUnVDx9GkOLkeDRDAirRtCbSrVvvRls5VP3Oei1R1VA=
X-Gm-Gg: ASbGncvqD9f5iKpW2785GFyIUgdyDTeAhYvpEFn72pEb/KqN4bARxsYc+ifw1WQGVGY
	tmyXV1DRtFE9/foaUZcpUHtUZ41m5ubmWesyTDAcxCb5EEqlDrRYIdxp2egd0pAdBjPPEGhXmYj
	MHOMVatXKqc8Mo4091k0cPgIfVfXIeh+NdjOIFyCi+fJtDyU5m71hgrwdILr3Vdy/oBhPv13tSg
	W9Ai72TRk6QaOPvIEbI20Cw0Po0ENp3Wi+U32Lq/PrVWxlu1GF3gFYy+lWZYegb8ccacFvEh1kB
	++BTvbxm1H/o+u4zj6mineiqjO+xKQ==
X-Google-Smtp-Source: AGHT+IGWyrIJVNkXZfMk2D77Z12NxWguDqxu6KGooscExaYt6vk4bYi8IUDxyjnT5IkrNFyNFyZrTg==
X-Received: by 2002:a05:6512:3f1f:b0:53d:eefc:2b48 with SMTP id 2adb3069b0e04-53e12a01888mr5509943e87.33.1733401747192;
        Thu, 05 Dec 2024 04:29:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229c1d6dsm233341e87.183.2024.12.05.04.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 04:29:05 -0800 (PST)
Date: Thu, 5 Dec 2024 14:29:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com, jie.qiu@mediatek.com, 
	junzhi.zhao@mediatek.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 12/15] drm/mediatek: mtk_hdmi: Split driver and add
 common probe function
Message-ID: <olxtqto5mbgofxg4iqjvsmpxxzz6zoj7pbwmoeklhfjiavqfvv@dyveek7hgtki>
References: <20241205114518.53527-1-angelogioacchino.delregno@collabora.com>
 <20241205114518.53527-13-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205114518.53527-13-angelogioacchino.delregno@collabora.com>

On Thu, Dec 05, 2024 at 12:45:14PM +0100, AngeloGioacchino Del Regno wrote:
> In preparation for adding a new driver for the HDMI TX v2 IP,
> split out the functions that will be common between the already
> present mtk_hdmi (v1) driver and the new one.
> 
> Since the probe flow for both drivers is 90% similar, add a common
> probe function that will be called from each driver's .probe()
> callback, avoiding lots of code duplication.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/gpu/drm/mediatek/Kconfig           |  11 +-
>  drivers/gpu/drm/mediatek/Makefile          |   1 +
>  drivers/gpu/drm/mediatek/mtk_hdmi.c        | 724 +++------------------
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 425 ++++++++++++
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.h | 203 ++++++
>  5 files changed, 729 insertions(+), 635 deletions(-)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi_common.h
> 
> @@ -1026,19 +812,12 @@ static int mtk_hdmi_setup_vendor_specific_infoframe(struct mtk_hdmi *hdmi,
>  	return 0;
>  }
>  
> -static int mtk_hdmi_output_init(struct mtk_hdmi *hdmi)
> +static void mtk_hdmi_send_infoframe(struct mtk_hdmi *hdmi, u8 *buffer_spd, size_t bufsz_spd,
> +				    u8 *buffer_avi, size_t bufsz_avi,
> +				    struct drm_display_mode *mode)
>  {
> -	struct hdmi_audio_param *aud_param = &hdmi->aud_param;
> -
> -	hdmi->csp = HDMI_COLORSPACE_RGB;
> -	aud_param->aud_codec = HDMI_AUDIO_CODING_TYPE_PCM;
> -	aud_param->aud_sample_size = HDMI_AUDIO_SAMPLE_SIZE_16;
> -	aud_param->aud_input_type = HDMI_AUD_INPUT_I2S;
> -	aud_param->aud_i2s_fmt = HDMI_I2S_MODE_I2S_24BIT;
> -	aud_param->aud_mclk = HDMI_AUD_MCLK_128FS;
> -	aud_param->aud_input_chan_type = HDMI_AUD_CHAN_TYPE_2_0;
> -
> -	return 0;
> +	mtk_hdmi_setup_avi_infoframe(hdmi, buffer_avi, bufsz_avi, mode);
> +	mtk_hdmi_setup_spd_infoframe(hdmi, buffer_spd, bufsz_spd, "mediatek", "On-chip HDMI");

Please use the HDMI Connector framework instead of handling everything
on your own.

>  }
>  
>  static void mtk_hdmi_audio_enable(struct mtk_hdmi *hdmi)

-- 
With best wishes
Dmitry

