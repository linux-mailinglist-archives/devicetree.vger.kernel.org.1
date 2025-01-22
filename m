Return-Path: <devicetree+bounces-140149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AFBA1896C
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 02:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5D333A5C63
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 01:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A348F49620;
	Wed, 22 Jan 2025 01:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iBfySVe5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EA5182CD
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737508543; cv=none; b=TdVlwzotTt9Dp9Z2Amp6AJtJX4t+SjKINP5OCfdCD5n8T81Xl4Xfba7pF5ifGrfdcBxvUpt1stG8vxilDZN+m+5e30EoXa65+tNIHBuQyDq9kOjd+Oj2GYl8zqfEiDd1CBIM+uBnoYUUPMKY87t3ZVCPbMqnVbM2OuxivMDZ6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737508543; c=relaxed/simple;
	bh=H0JfTWoUMRlsEkwm9VwEC/1mft12kUF3Cmx4VYZLd8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cvx6yt/qQ3LKimpGjAQwaZO2Cb464hyGU0YhDCYu2GMK2vsIaeZWSQsoBGs+//jPLk6HU8bigWDSrQqveM8AwZYHGHCZG6+0afrhFpX5l7g53riMwEulVJsNWeicl3P6/hxUfQdCFmKCJv1EVwtccAQ25Ro7wHzCLtE8ztdlkHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iBfySVe5; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-305ff7d1f3fso4791311fa.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 17:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737508538; x=1738113338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=71oTq1tfJ6OdXta5fX0Cv202oPwqJcZET2o/hNbVh+Y=;
        b=iBfySVe5zJg7Zb9QVx+b871SDBwfIkK+0cfoE710A+jzyPJHh2nNamlw2YktliKfqi
         e0Gfak0+unAu1TzAPMOSwO6bdNJ0KLUUrDodI3kMSZA0JM/AJLy1hMnEn5EFCCeMOUo6
         qVAAcjIdto3NCfuqrgww1G5O0N9pr27URzIK24Fwj/oxCgDq06gHbfoXs6KJQgSCK9+1
         AERDJeHQENbN7Sg4b43BMwHSuVazvJ5h7JLAiNIgEr90BmYz42Wg2gXFaZ7Y6evu13dW
         dZ58EtJCe/SItrl9H8CZifKp+/fxuv5KSw5Hhm0r304lcdVLZwuVOASp5UVceyJ+dad5
         L3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737508538; x=1738113338;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=71oTq1tfJ6OdXta5fX0Cv202oPwqJcZET2o/hNbVh+Y=;
        b=VTKY6dFULZ9IfGa9RrbR29d9N88SzefYL6gZZunVeg+p1vFbmifDb6tsyjCvROLH2X
         fF8JbuNkdTZ+Bt1Mrs1EkGsJD98mFgzgPXOI1DtGj8yCIzWePqTLJoYnAVaXFS/2omW8
         M49UfyQpymHeuL5OdoCvNvjt4sWifEV7fpnMtOxbAk2yhWBO3CI1HjsgAUrNJHUD0ROv
         lY9q/8QwY0pGyMrxKZmxc1G2K0QJ6ulJLveqv58QW9mHXXQUb4ouehRZt6TNTc0tUtBo
         XlFVeuRHf/sujtfXMBwpWFBbCc08doEGUp4dMOIo2rFyeCIke8Xgii+rh5iC7dWXYRGp
         YcqA==
X-Forwarded-Encrypted: i=1; AJvYcCVPX+oJueze1NUxx3kcvMh+DxRGLllU+hzSnfW1PvMggbWsYI0bdyOYd/3jWYyEsHIFqDU5JXGJthtO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5MzMkRq51t11Joag8/RVvo3BbMcbV44DnUfi5pUAl79vIuWHi
	9hZVtt9wknNFqh0zbUtZlFSyRPNCYC1bmnpucnQKjV1F3ZAH0ZaDbNrIdZCDoIcGo4Kgqa9Sw3G
	E
X-Gm-Gg: ASbGncsQM2TI+AP/jGgvNcalKpg+e50DCl1bc7q7aH/rL+pHz+xgmzapOdk3VkHnkzI
	fKQjN8rD+rqgT0ZmXHCV7/jHoxoKbYjh7DW5Xm8aIpAGu7ZZeiQvZ19wi8hPMGF6+VJ3elHPoED
	AtTV8rRhMRs5yCgyXVMHCQu8P/F/VhwjKIZ7JDWS6ZoqIJuWMooiuo4skaKw03rWV3JRNtPiYF0
	faRzKKWH+sgY3/HZFEGPa6gBICVOIccTB8cC3VxIkb3rm6EgymXzVj8UNyJl8m8mLfrGmXIyg8i
	jLlrApYeP+tjU9XM4c6DIKa31I6zIaDHmFfGpB8q6yj/miIA
X-Google-Smtp-Source: AGHT+IHve06/vEn3qIU2uDAYfBOs/5tXMrPkws0JE+XxC+z2d4pvx/ozboaTN8UCw67mkMvJeUa+pQ==
X-Received: by 2002:a05:6512:1047:b0:540:2339:375c with SMTP id 2adb3069b0e04-5439c2811e3mr2251858e87.8.1737508538161;
        Tue, 21 Jan 2025 17:15:38 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af77c23sm2020922e87.218.2025.01.21.17.15.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 17:15:36 -0800 (PST)
Message-ID: <c64f26a4-9ac4-4d1f-948c-3a40e380797f@linaro.org>
Date: Wed, 22 Jan 2025 03:15:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 16/16] media: qcom: camss: Add support for VFE 780
Content-Language: ru-RU
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, hverkuil@xs4all.nl
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Yongsheng Li <quic_yon@quicinc.com>
References: <20250113043133.1387162-1-quic_depengs@quicinc.com>
 <20250113043133.1387162-17-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250113043133.1387162-17-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/13/25 06:31, Depeng Shao wrote:
> Add support for VFE found on SM8550 (Titan 780). This implementation is
> based on the titan 480 implementation. It supports the normal and lite
> VFE.
> 
> Co-developed-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Yongsheng Li <quic_yon@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/Makefile    |   1 +
>   .../media/platform/qcom/camss/camss-vfe-780.c | 159 ++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
>   drivers/media/platform/qcom/camss/camss-vfe.h |   1 +
>   drivers/media/platform/qcom/camss/camss.c     | 121 +++++++++++++
>   5 files changed, 284 insertions(+)
>   create mode 100644 drivers/media/platform/qcom/camss/camss-vfe-780.c
> 
> diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
> index 9a723e8712a2..f6db5b3b5ace 100644
> --- a/drivers/media/platform/qcom/camss/Makefile
> +++ b/drivers/media/platform/qcom/camss/Makefile
> @@ -17,6 +17,7 @@ qcom-camss-objs += \
>   		camss-vfe-4-8.o \
>   		camss-vfe-17x.o \
>   		camss-vfe-480.o \
> +		camss-vfe-780.o \
>   		camss-vfe-gen1.o \
>   		camss-vfe.o \
>   		camss-video.o \
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-780.c b/drivers/media/platform/qcom/camss/camss-vfe-780.c
> new file mode 100644
> index 000000000000..b9812d70f91b
> --- /dev/null
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-780.c
> @@ -0,0 +1,159 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Qualcomm MSM Camera Subsystem - VFE (Video Front End) Module v780 (SM8550)
> + *
> + * Copyright (c) 2024 Qualcomm Technologies, Inc.
> + */
> +
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +
> +#include "camss.h"
> +#include "camss-vfe.h"
> +
> +#define BUS_REG_BASE			(vfe_is_lite(vfe) ? 0x200 : 0xC00)
> +
> +#define VFE_BUS_WM_CGC_OVERRIDE		(BUS_REG_BASE + 0x08)
> +#define		WM_CGC_OVERRIDE_ALL		(0x7FFFFFF)
> +
> +#define VFE_BUS_WM_TEST_BUS_CTRL	(BUS_REG_BASE + 0xDC)
> +
> +#define VFE_BUS_WM_CFG(n)		(BUS_REG_BASE + 0x200 + (n) * 0x100)
> +#define		WM_CFG_EN			BIT(0)
> +#define		WM_VIR_FRM_EN			BIT(1)
> +#define		WM_CFG_MODE			BIT(16)
> +#define VFE_BUS_WM_IMAGE_ADDR(n)	(BUS_REG_BASE + 0x204 + (n) * 0x100)
> +#define VFE_BUS_WM_FRAME_INCR(n)	(BUS_REG_BASE + 0x208 + (n) * 0x100)
> +#define VFE_BUS_WM_IMAGE_CFG_0(n)	(BUS_REG_BASE + 0x20c + (n) * 0x100)
> +#define		WM_IMAGE_CFG_0_DEFAULT_WIDTH	(0xFFFF)
> +#define VFE_BUS_WM_IMAGE_CFG_2(n)	(BUS_REG_BASE + 0x214 + (n) * 0x100)
> +#define		WM_IMAGE_CFG_2_DEFAULT_STRIDE	(0xFFFF)
> +#define VFE_BUS_WM_PACKER_CFG(n)	(BUS_REG_BASE + 0x218 + (n) * 0x100)
> +
> +#define VFE_BUS_WM_IRQ_SUBSAMPLE_PERIOD(n)	(BUS_REG_BASE + 0x230 + (n) * 0x100)
> +#define VFE_BUS_WM_IRQ_SUBSAMPLE_PATTERN(n)	(BUS_REG_BASE + 0x234 + (n) * 0x100)
> +#define VFE_BUS_WM_FRAMEDROP_PERIOD(n)		(BUS_REG_BASE + 0x238 + (n) * 0x100)
> +#define VFE_BUS_WM_FRAMEDROP_PATTERN(n)		(BUS_REG_BASE + 0x23c + (n) * 0x100)
> +
> +#define VFE_BUS_WM_MMU_PREFETCH_CFG(n)		(BUS_REG_BASE + 0x260 + (n) * 0x100)
> +#define VFE_BUS_WM_MMU_PREFETCH_MAX_OFFSET(n)	(BUS_REG_BASE + 0x264 + (n) * 0x100)
> +
> +/*
> + * Bus client mapping:
> + *
> + * Full VFE:
> + * 23 = RDI0, 24 = RDI1, 25 = RDI2
> + *
> + * VFE LITE:
> + * 0 = RDI0, 1 = RDI1, 2 = RDI3, 4 = RDI4
> + */
> +#define RDI_WM(n)			((vfe_is_lite(vfe) ? 0x0 : 0x17) + (n))
> +
> +static void vfe_wm_start(struct vfe_device *vfe, u8 wm, struct vfe_line *line)
> +{
> +	struct v4l2_pix_format_mplane *pix =
> +		&line->video_out.active_fmt.fmt.pix_mp;
> +
> +	wm = RDI_WM(wm);
> +
> +	/* no clock gating at bus input */
> +	writel(WM_CGC_OVERRIDE_ALL, vfe->base + VFE_BUS_WM_CGC_OVERRIDE);
> +
> +	writel(0x0, vfe->base + VFE_BUS_WM_TEST_BUS_CTRL);

Here you write 0x0 (hexadecimal), later you write 0 or 1 (decimal),
please select one style and be consistent with it.

> +
> +	writel(ALIGN(pix->plane_fmt[0].bytesperline, 16) * pix->height >> 8,
> +	       vfe->base + VFE_BUS_WM_FRAME_INCR(wm));
> +	writel((WM_IMAGE_CFG_0_DEFAULT_WIDTH & 0xFFFF),
> +	       vfe->base + VFE_BUS_WM_IMAGE_CFG_0(wm));
> +	writel(WM_IMAGE_CFG_2_DEFAULT_STRIDE,
> +	       vfe->base + VFE_BUS_WM_IMAGE_CFG_2(wm));
> +	writel(0, vfe->base + VFE_BUS_WM_PACKER_CFG(wm));
> +
> +	/* no dropped frames, one irq per frame */
> +	writel(0, vfe->base + VFE_BUS_WM_FRAMEDROP_PERIOD(wm));
> +	writel(1, vfe->base + VFE_BUS_WM_FRAMEDROP_PATTERN(wm));
> +	writel(0, vfe->base + VFE_BUS_WM_IRQ_SUBSAMPLE_PERIOD(wm));
> +	writel(1, vfe->base + VFE_BUS_WM_IRQ_SUBSAMPLE_PATTERN(wm));
> +
> +	writel(1, vfe->base + VFE_BUS_WM_MMU_PREFETCH_CFG(wm));
> +	writel(0xFFFFFFFF, vfe->base + VFE_BUS_WM_MMU_PREFETCH_MAX_OFFSET(wm));
> +
> +	writel(WM_CFG_EN | WM_CFG_MODE, vfe->base + VFE_BUS_WM_CFG(wm));
> +}
> +
> +static void vfe_wm_stop(struct vfe_device *vfe, u8 wm)
> +{
> +	wm = RDI_WM(wm);
> +	writel(0, vfe->base + VFE_BUS_WM_CFG(wm));
> +}
> +
> +static void vfe_wm_update(struct vfe_device *vfe, u8 wm, u32 addr,
> +			  struct vfe_line *line)
> +{
> +	wm = RDI_WM(wm);
> +	writel((addr >> 8) & 0xFFFFFFFF, vfe->base + VFE_BUS_WM_IMAGE_ADDR(wm));

addr is of u32 type, please remove the unneeded masking to 0xFFFFFFFF.

> +
> +	dev_dbg(vfe->camss->dev, "wm:%d, image buf addr:0x%x\n",
> +		wm, addr);
> +}
> +
> +static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	camss_reg_update(vfe->camss, vfe->id, port_id, false);
> +}
> +
> +static inline void vfe_reg_update_clear(struct vfe_device *vfe,
> +					enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	camss_reg_update(vfe->camss, vfe->id, port_id, true);
> +}
> +
> +static const struct camss_video_ops vfe_video_ops_780 = {
> +	.queue_buffer = vfe_queue_buffer_v2,
> +	.flush_buffers = vfe_flush_buffers,
> +};
> +
> +static void vfe_subdev_init(struct device *dev, struct vfe_device *vfe)
> +{
> +	vfe->video_ops = vfe_video_ops_780;
> +}
> +
> +static void vfe_global_reset(struct vfe_device *vfe)
> +{
> +	vfe_isr_reset_ack(vfe);
> +}
> +
> +static irqreturn_t vfe_isr(int irq, void *dev)
> +{
> +	/* nop */
> +	return IRQ_HANDLED;
> +}
> +
> +static int vfe_halt(struct vfe_device *vfe)
> +{
> +	/* rely on vfe_disable_output() to stop the VFE */
> +	return 0;
> +}
> +
> +const struct vfe_hw_ops vfe_ops_780 = {
> +	.global_reset = vfe_global_reset,
> +	.hw_version = vfe_hw_version,
> +	.isr = vfe_isr,
> +	.pm_domain_off = vfe_pm_domain_off,
> +	.pm_domain_on = vfe_pm_domain_on,
> +	.reg_update = vfe_reg_update,
> +	.reg_update_clear = vfe_reg_update_clear,
> +	.subdev_init = vfe_subdev_init,
> +	.vfe_disable = vfe_disable,
> +	.vfe_enable = vfe_enable_v2,
> +	.vfe_halt = vfe_halt,
> +	.vfe_wm_start = vfe_wm_start,
> +	.vfe_wm_stop = vfe_wm_stop,
> +	.vfe_buf_done = vfe_buf_done,
> +	.vfe_wm_update = vfe_wm_update,
> +};
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 2a037860b09f..9ffa6bc72cf1 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -345,6 +345,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
> +	case CAMSS_8550:
>   		switch (sink_code) {
>   		case MEDIA_BUS_FMT_YUYV8_1X16:
>   		{
> @@ -1970,6 +1971,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
> +	case CAMSS_8550:
>   		ret = 16;
>   		break;
>   	default:
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.h b/drivers/media/platform/qcom/camss/camss-vfe.h
> index fcbf4f609129..9dec5bc0d1b1 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.h
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.h
> @@ -243,6 +243,7 @@ extern const struct vfe_hw_ops vfe_ops_4_7;
>   extern const struct vfe_hw_ops vfe_ops_4_8;
>   extern const struct vfe_hw_ops vfe_ops_170;
>   extern const struct vfe_hw_ops vfe_ops_480;
> +extern const struct vfe_hw_ops vfe_ops_780;
>   
>   int vfe_get(struct vfe_device *vfe);
>   void vfe_put(struct vfe_device *vfe);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index e9519fb99f06..f4fbf0d73dd1 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2127,6 +2127,125 @@ static const struct camss_subdev_resources csid_res_8550[] = {
>   	}
>   };
>   
> +static const struct camss_subdev_resources vfe_res_8550[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb_clk", "vfe0_fast_ahb",
> +			   "vfe0", "cpas_vfe0", "camnoc_axi" },
> +		.clock_rate = { { 0 },
> +				{ 80000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 },
> +				{ 466000000, 594000000, 675000000, 785000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 } },
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = true,
> +			.pd_name = "ife0",
> +			.hw_ops = &vfe_ops_780,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb_clk", "vfe1_fast_ahb",
> +			   "vfe1", "cpas_vfe1", "camnoc_axi" },
> +		.clock_rate = {	{ 0 },
> +				{ 80000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 },
> +				{ 466000000, 594000000, 675000000, 785000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 } },
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = true,
> +			.pd_name = "ife1",
> +			.hw_ops = &vfe_ops_780,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE2 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb_clk", "vfe2_fast_ahb",
> +			   "vfe2", "cpas_vfe2", "camnoc_axi" },
> +		.clock_rate = {	{ 0 },
> +				{ 80000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 },
> +				{ 466000000, 594000000, 675000000, 785000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 } },
> +		.reg = { "vfe2" },
> +		.interrupt = { "vfe2" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = true,
> +			.pd_name = "ife2",
> +			.hw_ops = &vfe_ops_780,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE3 lite */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb_clk", "vfe_lite_ahb",
> +			   "vfe_lite", "cpas_ife_lite", "camnoc_axi" },
> +		.clock_rate = {	{ 0 },
> +				{ 80000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 },
> +				{ 400000000, 480000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 } },
> +		.reg = { "vfe_lite0" },
> +		.interrupt = { "vfe_lite0" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_780,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE4 lite */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb_clk", "vfe_lite_ahb",
> +			   "vfe_lite", "cpas_ife_lite", "camnoc_axi" },
> +		.clock_rate = {	{ 0 },
> +				{ 80000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 },
> +				{ 400000000, 480000000 },
> +				{ 300000000, 400000000 },
> +				{ 300000000, 400000000 } },
> +		.reg = { "vfe_lite1" },
> +		.interrupt = { "vfe_lite1" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_780,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +};
> +
>   static const struct resources_icc icc_res_sm8550[] = {
>   	{
>   		.name = "ahb",
> @@ -3181,11 +3300,13 @@ static const struct camss_resources sm8550_resources = {
>   	.pd_name = "top",
>   	.csiphy_res = csiphy_res_8550,
>   	.csid_res = csid_res_8550,
> +	.vfe_res = vfe_res_8550,
>   	.csid_wrapper_res = &csid_wrapper_res_sm8550,
>   	.icc_res = icc_res_sm8550,
>   	.icc_path_num = ARRAY_SIZE(icc_res_sm8550),
>   	.csiphy_num = ARRAY_SIZE(csiphy_res_8550),
>   	.csid_num = ARRAY_SIZE(csid_res_8550),
> +	.vfe_num = ARRAY_SIZE(vfe_res_8550),
>   	.link_entities = camss_link_entities
>   };
>   

--
Best wishes,
Vladimir

