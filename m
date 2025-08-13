Return-Path: <devicetree+bounces-204398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1826DB2553C
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 23:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D85A1173342
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 21:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D062FFDD4;
	Wed, 13 Aug 2025 21:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="asEJuap2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B71129BD97
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 21:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755120067; cv=none; b=JmIlBedQJtq8P8Bs34rYVarIrID3t5mQ4fs4nYLVY/QHIevVSqJ/sZZKqVikgN6n8HRZU8HYdMFSEiQBfKeEchNo6AE6o+E0QLV0bE2jNk8l1v0S9SnJWUqArPWrRuHPNPxW2oNE3xURuoAIXlw3lrdfRxfeSlTSEhorwEHkAUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755120067; c=relaxed/simple;
	bh=X9U1rSN5iZDi12tqSIkpchS69oS9HZZkYkRkccT9xrw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q0nr52cJ68/6JhG0Xhb+Me+xWCeQE4PCUq5jWGqnM5mATTMnI/ZEtU+hhcFkIiz95JyGQOeA3cOZIICDt023AmYUTORSYDF+8B9enLXac4IOoxVg5h3aFBsSKVEy7GbxLvYeZNZwc7GW4RwEtFs6gDiflyd2LDXWTVcaYmwQyGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=asEJuap2; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a15f1a073so8066385e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 14:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755120062; x=1755724862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n+4L/tCfnDisKcwTagSWW4ZOeKB0w0o7diP0uW+eLtk=;
        b=asEJuap2Zye86ay+j//8JJqwZ7NKq7dqiWXuRG4J+SV3nAWTIr9vGKBOGXWul4H/Sj
         IqittdIEly0snuhUCPSjFMMFkChGSeRtuR1P6Sn7qDH59YjWardEAh4Od58/abdmtybd
         XYIFxVp5SYITYTwXP13QiiV0gTwzO9l2cR1WIJIXZjLo8Vr7zpQKvlX7uxi81nejsADm
         naTGR7xbLRXxhdLhNg1orvQCKS6u4VBnpBPlUQCpY84/pPG9oNgJmQ5CNc1WPli+MgyD
         tk38fdaXOXjGZ8rTut2GZWTiDLIiIawkapaWZafheZRa7VKAAwCmn54s26aDbtfx5asz
         HEhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755120062; x=1755724862;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+4L/tCfnDisKcwTagSWW4ZOeKB0w0o7diP0uW+eLtk=;
        b=TM1PPGa7H3yrh70H7+IjKGWpcVN+QMImWaPb0u78lPgN9q7+x85rEOpBsUrivA0UoC
         x1EledecMN0NwbmRxmU0nGGSzSH90UpkOLWjn1h8quEsXtrhANJoCPK2uhvE5gfDdO05
         u06FgsVWZf+5O4fh96/sN2t5qlh1xwEDRZ5Df0FUxP5iq7PJy3jCeUrzn8ssGQ5qbFXL
         WY7QkQTGfAjraWOQOQuBmS95/6t42hTpGt5b+I/JFYJF2wrnCo7VGfNB0cQRREReWhes
         0WBBVP6wgwKRStF+pwqcYl+ztqwmQK8eP4p6tgBLDGMr9raONqGDp+8o0IvYGNVS2uXL
         Vsqg==
X-Forwarded-Encrypted: i=1; AJvYcCWACt5bd7q71kUkntEXyechTyujjMdFkS/ekfFBrrdh4XNw8EmAbQhYfX+L5r/ZzW7SraSo7LgqAFMN@vger.kernel.org
X-Gm-Message-State: AOJu0YzjQ9+Qkzg8gIZio48xnk6thif0waGwu9ZsC7cp4uqM9ezQsDh5
	dYwL5+0ANbYiV6cA1vqcMtUs4hTQTW4J0UUMIXQejyziiVlodsuR5CBwv/ezws9juU0=
X-Gm-Gg: ASbGncv8uT0+2whZ1MQbVf6H0i4gi0U45fbhWvoBnZoc8M9NNu7WuREyfgbCkWR9zaL
	yHrkVYWvImZdQbBkmTLnojd+BVyvIsS9Dk/wMzbHwP41xNMcydnXsdTY/Zx2XFRZW80okohsjha
	a2hLHJQPiawAZt2XXl4f11YTbMTC6rCJJ07JUMFuUVzo3upfVviJF6b7iP+GBe0mWMWDDekD4Ut
	1CXqxOJbY4TrgcpQ+K+PzIOl91Wsvm5jg8XB54NK854EumJLbgi6qxS07+N7iqEYpFUIGQNnKBX
	ISCBCGksz645fK3UYvUzCqPNVa/idqFMKqRu6XBq1UkaKef6W5ds16f0w2Tnc0BOUoOtm9cSCDm
	IfqZSajQPf3LWS2jf7ichpocTxLjy93Jz9ISypEzcFHYEQgXQrFcsRe5FqCHfFoak
X-Google-Smtp-Source: AGHT+IFGYhPMnk24xFVtUvs1bX876yJ2eaEVzyvanQgTstTce4THnmsjT/5iydRanKcWbtpnAglYKQ==
X-Received: by 2002:a05:600c:b95:b0:456:1157:59ac with SMTP id 5b1f17b1804b1-45a1b79dc1emr1546285e9.7.1755120062385;
        Wed, 13 Aug 2025 14:21:02 -0700 (PDT)
Received: from [192.168.0.13] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a51902bsm15405035e9.10.2025.08.13.14.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 14:21:01 -0700 (PDT)
Message-ID: <c77cb942-74b4-40d6-b965-81d0df9c7cdc@linaro.org>
Date: Wed, 13 Aug 2025 22:21:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/9] media: qcom: camss: Add support for VFE 690
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wenmeng Liu <quic_wenmliu@quicinc.com>
References: <20250807121105.710072-1-quic_vikramsa@quicinc.com>
 <20250807121105.710072-8-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250807121105.710072-8-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/08/2025 13:11, Vikram Sharma wrote:
> Add support for VFE found on SA8775P (Titan 690). This VFE is
> different from vfe 780 w.r.t few register offsets.
> It supports two full and five lite VFE.
> 
> Co-developed-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Co-developed-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../platform/qcom/camss/camss-vfe-gen3.c      |  67 +++++--
>   drivers/media/platform/qcom/camss/camss-vfe.c |   5 +-
>   drivers/media/platform/qcom/camss/camss.c     | 174 ++++++++++++++++++
>   3 files changed, 228 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-gen3.c b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> index 93d16b0951e9..f2001140ead1 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> @@ -12,13 +12,43 @@
>   #include "camss.h"
>   #include "camss-vfe.h"
>   
> -#define BUS_REG_BASE			(vfe_is_lite(vfe) ? 0x200 : 0xC00)
> +#define IS_VFE_690(vfe) \
> +	    (vfe->camss->res->version == CAMSS_8775P)
> +
> +#define BUS_REG_BASE_690 \
> +	    (vfe_is_lite(vfe) ? 0x480 : 0x400)
> +#define BUS_REG_BASE_780 \
> +	    (vfe_is_lite(vfe) ? 0x200 : 0xC00)
> +#define BUS_REG_BASE \
> +	    (IS_VFE_690(vfe) ? BUS_REG_BASE_690 : BUS_REG_BASE_780)
> +
> +#define VFE_TOP_CORE_CFG (0x24)
> +#define VFE_DISABLE_DSCALING_DS4  BIT(21)
> +#define VFE_DISABLE_DSCALING_DS16 BIT(22)
> +
> +#define VFE_BUS_WM_TEST_BUS_CTRL_690 (BUS_REG_BASE + 0xFC)
> +#define VFE_BUS_WM_TEST_BUS_CTRL_780 (BUS_REG_BASE + 0xDC)
> +#define VFE_BUS_WM_TEST_BUS_CTRL \
> +	    (IS_VFE_690(vfe) ? VFE_BUS_WM_TEST_BUS_CTRL_690 \
> +	     : VFE_BUS_WM_TEST_BUS_CTRL_780)
> +/*
> + * Bus client mapping:
> + *
> + * Full VFE:
> + * VFE_690: 16 = RDI0, 17 = RDI1, 18 = RDI2
> + * VFE_780: 23 = RDI0, 24 = RDI1, 25 = RDI2
> + *
> + * VFE LITE:
> + * VFE_690 : 0 = RDI0, 1 = RDI1, 2 = RDI2, 3 = RDI3, 4 = RDI4, 5 = RDI5
> + * VFE_780 : 0 = RDI0, 1 = RDI1, 2 = RDI2, 3 = RDI3, 4 = RDI4
> + */
> +#define RDI_WM_690(n)	((vfe_is_lite(vfe) ? 0x0 : 0x10) + (n))
> +#define RDI_WM_780(n)	((vfe_is_lite(vfe) ? 0x0 : 0x17) + (n))
> +#define RDI_WM(n)	(IS_VFE_690(vfe) ? RDI_WM_690(n) : RDI_WM_780(n))
>   
>   #define VFE_BUS_WM_CGC_OVERRIDE		(BUS_REG_BASE + 0x08)
>   #define		WM_CGC_OVERRIDE_ALL		(0x7FFFFFF)
>   
> -#define VFE_BUS_WM_TEST_BUS_CTRL	(BUS_REG_BASE + 0xDC)
> -
>   #define VFE_BUS_WM_CFG(n)		(BUS_REG_BASE + 0x200 + (n) * 0x100)
>   #define		WM_CFG_EN			BIT(0)
>   #define		WM_VIR_FRM_EN			BIT(1)
> @@ -39,17 +69,6 @@
>   #define VFE_BUS_WM_MMU_PREFETCH_CFG(n)		(BUS_REG_BASE + 0x260 + (n) * 0x100)
>   #define VFE_BUS_WM_MMU_PREFETCH_MAX_OFFSET(n)	(BUS_REG_BASE + 0x264 + (n) * 0x100)
>   
> -/*
> - * Bus client mapping:
> - *
> - * Full VFE:
> - * 23 = RDI0, 24 = RDI1, 25 = RDI2
> - *
> - * VFE LITE:
> - * 0 = RDI0, 1 = RDI1, 2 = RDI3, 4 = RDI4
> - */
> -#define RDI_WM(n)			((vfe_is_lite(vfe) ? 0x0 : 0x17) + (n))
> -
>   static void vfe_wm_start(struct vfe_device *vfe, u8 wm, struct vfe_line *line)
>   {
>   	struct v4l2_pix_format_mplane *pix =
> @@ -62,14 +81,24 @@ static void vfe_wm_start(struct vfe_device *vfe, u8 wm, struct vfe_line *line)
>   
>   	writel(0x0, vfe->base + VFE_BUS_WM_TEST_BUS_CTRL);
>   
> -	writel(ALIGN(pix->plane_fmt[0].bytesperline, 16) * pix->height >> 8,
> -	       vfe->base + VFE_BUS_WM_FRAME_INCR(wm));
> +	if (IS_VFE_690(vfe))
> +		writel(ALIGN(pix->plane_fmt[0].bytesperline, 16) * pix->height,
> +		       vfe->base + VFE_BUS_WM_FRAME_INCR(wm));
> +	else
> +		writel(ALIGN(pix->plane_fmt[0].bytesperline, 16) * pix->height >> 8,
> +		       vfe->base + VFE_BUS_WM_FRAME_INCR(wm));
> +
>   	writel((WM_IMAGE_CFG_0_DEFAULT_WIDTH & 0xFFFF),
>   	       vfe->base + VFE_BUS_WM_IMAGE_CFG_0(wm));
>   	writel(WM_IMAGE_CFG_2_DEFAULT_STRIDE,
>   	       vfe->base + VFE_BUS_WM_IMAGE_CFG_2(wm));
>   	writel(0, vfe->base + VFE_BUS_WM_PACKER_CFG(wm));
>   
> +	/* TOP CORE CFG */
> +	if (IS_VFE_690(vfe))
> +		writel(VFE_DISABLE_DSCALING_DS4 | VFE_DISABLE_DSCALING_DS16,
> +			vfe->base + VFE_TOP_CORE_CFG);
> +
>   	/* no dropped frames, one irq per frame */
>   	writel(0, vfe->base + VFE_BUS_WM_FRAMEDROP_PERIOD(wm));
>   	writel(1, vfe->base + VFE_BUS_WM_FRAMEDROP_PATTERN(wm));
> @@ -92,7 +121,11 @@ static void vfe_wm_update(struct vfe_device *vfe, u8 wm, u32 addr,
>   			  struct vfe_line *line)
>   {
>   	wm = RDI_WM(wm);
> -	writel((addr >> 8) & 0xFFFFFFFF, vfe->base + VFE_BUS_WM_IMAGE_ADDR(wm));
> +
> +	if (IS_VFE_690(vfe))
> +		writel(addr, vfe->base + VFE_BUS_WM_IMAGE_ADDR(wm));
> +	else
> +		writel((addr >> 8), vfe->base + VFE_BUS_WM_IMAGE_ADDR(wm));
>   
>   	dev_dbg(vfe->camss->dev, "wm:%d, image buf addr:0x%x\n",
>   		wm, addr);
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 4bca6c3abaff..99cbe09343f2 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -346,6 +346,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
>   	case CAMSS_8550:
> +	case CAMSS_8775P:
>   	case CAMSS_X1E80100:
>   		switch (sink_code) {
>   		case MEDIA_BUS_FMT_YUYV8_1X16:
> @@ -910,7 +911,8 @@ static int vfe_match_clock_names(struct vfe_device *vfe,
>   
>   	return (!strcmp(clock->name, vfe_name) ||
>   		!strcmp(clock->name, vfe_lite_name) ||
> -		!strcmp(clock->name, "vfe_lite"));
> +		!strcmp(clock->name, "vfe_lite") ||
> +		!strcmp(clock->name, "camnoc_axi"));
>   }
>   
>   /*
> @@ -1974,6 +1976,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
>   	case CAMSS_8550:
> +	case CAMSS_8775P:
>   	case CAMSS_X1E80100:
>   		ret = 16;
>   		break;
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 5f1e267045cb..08763d92f659 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2687,6 +2687,180 @@ static const struct camss_subdev_resources csid_res_8775p[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources vfe_res_8775p[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe0", "vfe0", "vfe0_fast_ahb",
> +			   "cpas_ahb", "gcc_axi_hf",
> +			   "cpas_fast_ahb_clk",
> +			   "camnoc_axi"},
> +		.clock_rate = {
> +			{ 0 },
> +			{ 480000000 },
> +			{ 300000000, 400000000 },
> +			{ 300000000, 400000000 },
> +			{ 0 },
> +			{ 300000000, 400000000 },
> +			{ 400000000 },
> +		},
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = false,
> +			.pd_name = NULL,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe1", "vfe1", "vfe1_fast_ahb",
> +			   "cpas_ahb", "gcc_axi_hf",
> +			   "cpas_fast_ahb_clk",
> +			   "camnoc_axi"},
> +		.clock_rate = {
> +			{ 0 },
> +			{ 480000000 },
> +			{ 300000000, 400000000 },
> +			{ 300000000, 400000000 },
> +			{ 0 },
> +			{ 300000000, 400000000 },
> +			{ 400000000 },
> +		},
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = false,
> +			.pd_name = NULL,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE2 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite0" },
> +		.interrupt = { "vfe_lite0" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE3 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite1" },
> +		.interrupt = { "vfe_lite1" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE4 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite2" },
> +		.interrupt = { "vfe_lite2" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE5 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite3" },
> +		.interrupt = { "vfe_lite3" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE6 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite4" },
> +		.interrupt = { "vfe_lite4" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +};
> +
>   static const struct resources_icc icc_res_sa8775p[] = {
>   	{
>   		.name = "ahb",
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

