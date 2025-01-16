Return-Path: <devicetree+bounces-138980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52682A137AF
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 11:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6260F164A23
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19D5142E7C;
	Thu, 16 Jan 2025 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZAwhqpq6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB051DA60B
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737022835; cv=none; b=KFuX+XgQjP8mU9HkkA6Ipm3H9YY7gWJrFub0i7hVdfZz/z1vsAzo8bwlO2/6Sk6SSNEDD5nt62kv2rQ1uGZFih1orwtqDE4vW8ELYmt/vIAzeoz9wnkvFUf9RLuKUD9UHhA3/Zt/v7R/wclTZ7yTpbt+s1OGIzziysUiNDc3tnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737022835; c=relaxed/simple;
	bh=hQq3LtLLzAgbs9lMleFMABeHLJ7RA3JE/VRxLNZyRvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YlLSdl8WqH+8o18NT14yq6OSuX8s2/ohKj1q/lmz/3ou9+alz3dOh9yZ3ux6vxFydsTz5rtDfcDyeorB2+/A5w+T0LvPbTIv/dHiFxNDcuQ7eiWn91Fbl/EjioULVdfqCZANkqUETgHY1SFWwc7rYmLfNmi68LF6RT2gmXl+6Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZAwhqpq6; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5401fb9fa03so712160e87.1
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 02:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737022832; x=1737627632; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IKzS07QyNV5PfVKuDGj2iZEKiDP4ruqCdUX0hoG49YM=;
        b=ZAwhqpq6BsKfWBtSJOXkR8d8q/yl5JP9nOwc+kTaXHy61quTNdt/mz2BVUscjH3HRx
         dpPR7fsSnAOY1GQU5+T/xX4QvtIH2wTutkrAm6RAUD6EwtVLtTDvVbeAKZ96gnMlLQjv
         OLZgl6sBnyKRChQrJu4iMeStgGCx2FPYxW54pINGb3WaLsUWQFvSLdVt4jZRP//0820E
         KFw3gnksiAkuwex1eO2sMto2wp0aWNXv8GIFL7/AGoTGcAxTXS/T0hk/yYcyURroT4CG
         I7NfIRXYVFPpc/nHF96mde4x5l+DGcwqC2DRWH1kvqvqYHYYSfi69ytSSaFPJrxtoZUN
         oQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737022832; x=1737627632;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IKzS07QyNV5PfVKuDGj2iZEKiDP4ruqCdUX0hoG49YM=;
        b=HIMyeiPyHHkncoHfnsiT+eThdAiwitC+AHzBG0U49NQCs5A2gPdzqEvPOr9O91MhVg
         wrRoELG+3h0Eh0j6Lg94cuItIGKEoseRfSO4kuAT38gJj2VTpyj0TQM9BvGWCJIS+rp8
         49Drb33XA41cwW6Icvn9EfG5JeykOEXaIPN0IN/uoGlXtXWnZPbY27T2mHIPSvf6+bW+
         IoPQH4sMxdYIUcsyDapX3AIBc+u5SCd+Blp6kFn/hjDnAgsNalmhVErIfTqVigDhl+Km
         NqiliW9AKEmlUZl2zcqkhoFQPTG3bhGIacwgEbMDQYNRHZ6AJAFvyeO52VbdgctYnW3o
         a0dQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoihoEhDigWZzQEUxHHdyO9g5ZlW2fPmVGxWalILTlkGve44GVJevGwHFTPiNHRllI0MKmFEiGE0FK@vger.kernel.org
X-Gm-Message-State: AOJu0YwDFfBheptkPpKy7vbyyDZxSz27I4kmZIwEt51Q4y5QwteeC2iI
	PReZVORfAfv+DJ0W3pjEcwcs2GntzB5nuH/NAm5ve5IAFm2r48LTk6inhveQTE4=
X-Gm-Gg: ASbGncu9x48ZypXmRCKw3V0c1a4LBwohALRUHPO9Kp7ZmlEnas3BF/deYrpqGAziT9R
	777zHeUZePzvePq4mexwF/SvnSOPmIAnqXpm2hPvVzB7mke34xWGbMNJ4vMQde73keiTDzChyRo
	VIrSo8gHgN8Szt693dxN75m6h048gk+d6MiGCj/dK5Yc0XadgGAQUdWLvCVIMUvbhxHAyDxvQrG
	JNZ8ZzWSoXbBVuT2X8oF7U0Fne1hWxfDwUkhU4wTqx3p+6+GRFD42XQT6P4rQAxl3UzU+XXodiu
	DyABFsqm7uQ24OrEnC5r+sETbGAFN2MV/Tsc
X-Google-Smtp-Source: AGHT+IG+bbFDC/EdDSi/gHjALTs2O820pXIV5L3kyMR/k99YeNT4ma3kwBSovX+wwkES0o4gplvGlA==
X-Received: by 2002:a05:6512:224b:b0:540:2d60:d6ce with SMTP id 2adb3069b0e04-542abfbe688mr2337273e87.24.1737022831663;
        Thu, 16 Jan 2025 02:20:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be5483bsm2315800e87.105.2025.01.16.02.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 02:20:31 -0800 (PST)
Date: Thu, 16 Jan 2025 12:20:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: quic_vgarodia@quicinc.com, quic_abhinavk@quicinc.com, 
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, p.zabel@pengutronix.de, 
	hverkuil@xs4all.nl, sebastian.fricke@collabora.com, bryan.odonoghue@linaro.org, 
	neil.armstrong@linaro.org, nicolas@ndufresne.ca, u.kleine-koenig@baylibre.com, 
	stefan.schmidt@linaro.org, lujianhua000@gmail.com, linux-arm-msm@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	krzysztof.kozlowski@linaro.org, johan@kernel.org
Subject: Re: [RFC PATCH v10 27/28] media: iris: enable video driver probe of
 SM8250 SoC
Message-ID: <opr6hm5ci2palw3ilj3qrotqnkxbrphngfknddd6yhgojf2ixm@kfu22wuaylek>
References: <20250116070234.4027116-1-quic_dikshita@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116070234.4027116-1-quic_dikshita@quicinc.com>

On Thu, Jan 16, 2025 at 12:32:34PM +0530, Dikshita Agarwal wrote:
> Initialize the platform data and enable video driver probe of SM8250
> SoC. Add a kernel param to select between venus and iris drivers for
> platforms supported by both drivers, for ex: SM8250.
> 
> This is for preview only, and I will post a proper v10,
> if everyone is OK with this RFC patch.
> 
> Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org> # x1e80100 (Dell XPS 13 9345)
> Reviewed-by: Stefan Schmidt <stefan.schmidt@linaro.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-SDK
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>

Hmm, it seems lore has only this patch from the whole series. Was it
sent properly?

> ---
>  drivers/media/platform/qcom/iris/Makefile     |   1 +
>  drivers/media/platform/qcom/iris/iris_core.h  |   1 +
>  .../platform/qcom/iris/iris_platform_common.h |   1 +
>  .../platform/qcom/iris/iris_platform_sm8250.c | 149 ++++++++++++++++++
>  drivers/media/platform/qcom/iris/iris_probe.c |  48 ++++++
>  drivers/media/platform/qcom/venus/core.c      |   5 +
>  drivers/media/platform/qcom/venus/core.h      |   1 +
>  7 files changed, 206 insertions(+)
>  create mode 100644 drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> 
> diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
> index ca31db847273..a746681e03cd 100644
> --- a/drivers/media/platform/qcom/iris/Makefile
> +++ b/drivers/media/platform/qcom/iris/Makefile
> @@ -9,6 +9,7 @@ iris-objs += iris_buffer.o \
>               iris_hfi_gen2_packet.o \
>               iris_hfi_gen2_response.o \
>               iris_hfi_queue.o \
> +             iris_platform_sm8250.o \
>               iris_platform_sm8550.o \
>               iris_power.o \
>               iris_probe.o \
> diff --git a/drivers/media/platform/qcom/iris/iris_core.h b/drivers/media/platform/qcom/iris/iris_core.h
> index 37fb4919fecc..f2e478c25c02 100644
> --- a/drivers/media/platform/qcom/iris/iris_core.h
> +++ b/drivers/media/platform/qcom/iris/iris_core.h
> @@ -107,5 +107,6 @@ struct iris_core {
>  
>  int iris_core_init(struct iris_core *core);
>  void iris_core_deinit(struct iris_core *core);
> +bool iris_should_not_bind(struct device *dev);
>  
>  #endif
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
> index 189dd081ad0a..af24ce4fc417 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
> @@ -34,6 +34,7 @@ enum pipe_type {
>  };
>  
>  extern struct iris_platform_data sm8550_data;
> +extern struct iris_platform_data sm8250_data;

Keep it sorted, please.

>  
>  enum platform_clk_type {
>  	IRIS_AXI_CLK,
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> new file mode 100644
> index 000000000000..b14b1c5d632c
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include "iris_core.h"
> +#include "iris_ctrls.h"
> +#include "iris_platform_common.h"
> +#include "iris_resources.h"
> +#include "iris_hfi_gen1.h"
> +#include "iris_hfi_gen1_defines.h"
> +#include "iris_vpu_common.h"
> +
> +static struct platform_inst_fw_cap inst_fw_cap_sm8250[] = {
> +	{
> +		.cap_id = PIPE,
> +		.min = PIPE_1,
> +		.max = PIPE_4,
> +		.step_or_mask = 1,
> +		.value = PIPE_4,
> +		.hfi_id = HFI_PROPERTY_PARAM_WORK_ROUTE,
> +		.set = iris_set_pipe,
> +	},
> +	{
> +		.cap_id = STAGE,
> +		.min = STAGE_1,
> +		.max = STAGE_2,
> +		.step_or_mask = 1,
> +		.value = STAGE_2,
> +		.hfi_id = HFI_PROPERTY_PARAM_WORK_MODE,
> +		.set = iris_set_stage,
> +	},
> +	{
> +		.cap_id = DEBLOCK,
> +		.min = 0,
> +		.max = 1,
> +		.step_or_mask = 1,
> +		.value = 0,
> +		.hfi_id = HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER,
> +		.set = iris_set_u32,
> +	},
> +};
> +
> +static struct platform_inst_caps platform_inst_cap_sm8250 = {
> +	.min_frame_width = 128,
> +	.max_frame_width = 8192,
> +	.min_frame_height = 128,
> +	.max_frame_height = 8192,
> +	.max_mbpf = 138240,
> +	.mb_cycles_vsp = 25,
> +	.mb_cycles_vpp = 200,
> +};
> +
> +static void iris_set_sm8250_preset_registers(struct iris_core *core)
> +{
> +	writel(0x0, core->reg_base + 0xB0088);
> +}
> +
> +static const struct icc_info sm8250_icc_table[] = {
> +	{ "cpu-cfg",    1000, 1000     },
> +	{ "video-mem",  1000, 15000000 },
> +};
> +
> +static const char * const sm8250_clk_reset_table[] = { "bus", "core" };
> +
> +static const struct bw_info sm8250_bw_table_dec[] = {
> +	{ ((4096 * 2160) / 256) * 60, 2403000 },
> +	{ ((4096 * 2160) / 256) * 30, 1224000 },
> +	{ ((1920 * 1080) / 256) * 60,  812000 },
> +	{ ((1920 * 1080) / 256) * 30,  416000 },
> +};
> +
> +static const char * const sm8250_pmdomain_table[] = { "venus", "vcodec0" };
> +
> +static const char * const sm8250_opp_pd_table[] = { "mx" };
> +
> +static const struct platform_clk_data sm8250_clk_table[] = {
> +	{IRIS_AXI_CLK,  "iface"        },
> +	{IRIS_CTRL_CLK, "core"         },
> +	{IRIS_HW_CLK,   "vcodec0_core" },
> +};
> +
> +static struct tz_cp_config tz_cp_config_sm8250 = {
> +	.cp_start = 0,
> +	.cp_size = 0x25800000,
> +	.cp_nonpixel_start = 0x01000000,
> +	.cp_nonpixel_size = 0x24800000,
> +};
> +
> +static const u32 sm8250_vdec_input_config_param[] = {
> +	HFI_PROPERTY_PARAM_FRAME_SIZE,
> +	HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE,
> +	HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT,
> +	HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO,
> +	HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL,
> +	HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM,
> +	HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL,
> +	HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE,
> +};
> +
> +static const u32 sm8250_dec_ip_int_buf_tbl[] = {
> +	BUF_BIN,
> +	BUF_SCRATCH_1,
> +};
> +
> +static const u32 sm8250_dec_op_int_buf_tbl[] = {
> +	BUF_DPB,
> +};
> +
> +struct iris_platform_data sm8250_data = {
> +	.get_instance = iris_hfi_gen1_get_instance,
> +	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
> +	.init_hfi_response_ops = iris_hfi_gen1_response_ops_init,
> +	.vpu_ops = &iris_vpu2_ops,
> +	.set_preset_registers = iris_set_sm8250_preset_registers,
> +	.icc_tbl = sm8250_icc_table,
> +	.icc_tbl_size = ARRAY_SIZE(sm8250_icc_table),
> +	.clk_rst_tbl = sm8250_clk_reset_table,
> +	.clk_rst_tbl_size = ARRAY_SIZE(sm8250_clk_reset_table),
> +	.bw_tbl_dec = sm8250_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
> +	.pmdomain_tbl = sm8250_pmdomain_table,
> +	.pmdomain_tbl_size = ARRAY_SIZE(sm8250_pmdomain_table),
> +	.opp_pd_tbl = sm8250_opp_pd_table,
> +	.opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
> +	.clk_tbl = sm8250_clk_table,
> +	.clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
> +	/* Upper bound of DMA address range */
> +	.dma_mask = 0xe0000000 - 1,
> +	.fwname = "qcom/vpu-1.0/venus.mbn",
> +	.pas_id = IRIS_PAS_ID,
> +	.inst_caps = &platform_inst_cap_sm8250,
> +	.inst_fw_caps = inst_fw_cap_sm8250,
> +	.inst_fw_caps_size = ARRAY_SIZE(inst_fw_cap_sm8250),
> +	.tz_cp_config_data = &tz_cp_config_sm8250,
> +	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
> +	.num_vpp_pipe = 4,
> +	.max_session_count = 16,
> +	.max_core_mbpf = (8192 * 4352) / 256,
> +	.input_config_params =
> +		sm8250_vdec_input_config_param,
> +	.input_config_params_size =
> +		ARRAY_SIZE(sm8250_vdec_input_config_param),
> +
> +	.dec_ip_int_buf_tbl = sm8250_dec_ip_int_buf_tbl,
> +	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_ip_int_buf_tbl),
> +	.dec_op_int_buf_tbl = sm8250_dec_op_int_buf_tbl,
> +	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_op_int_buf_tbl),
> +};
> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
> index 954cc7c0cc97..a9cec0d15dcb 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -189,6 +189,45 @@ static void iris_sys_error_handler(struct work_struct *work)
>  	iris_core_init(core);
>  }
>  
> +/* The venus driver supports only hfi gen1 to communicate with the firmware while
> + * the iris driver supports both hfi gen1 and hfi gen2.
> + * The support of hfi gen1 is added to the iris driver with the intention that
> + * it can support old gen1 interface based firmware, while enabling gen2 based future SOCs.
> + * With this, the plan is to migrate older SOCs from venus to iris.
> + * As of now, since the iris driver supports only entry level features and doesn't have
> + * feature parity with the venus driver, a runtime-selection is provided to user via
> + * module parameter 'prefer_venus' to select the driver.
> + * This selection is available only for the SoCs which are supported by both venus
> + * and iris eg: SM8250.
> + * When the feature parity is achieved, the plan is to switch the default to point to
> + * the iris driver, then gradually start removing platforms from venus.
> + * Hardware supported by only venus - 8916, 8996, SDM660, SDM845, SC7180, SC7280

Please mention that SC7280 should also be migrated to the Iris driver by
the interested parties.

> + * Hardware supported by only iris - SM8550
> + * Hardware supported by both venus and iris - SM8250
> + */
> +
> +#if IS_REACHABLE(CONFIG_VIDEO_QCOM_VENUS)
> +static bool prefer_venus = true;
> +MODULE_PARM_DESC(prefer_venus, "Select whether venus or iris driver should be preferred");
> +module_param(prefer_venus, bool, 0444);
> +
> +/* list all platforms supported by both venus and iris drivers */
> +static const char *const venus_to_iris_migration[] = {
> +	"qcom,sm8250-venus",
> +	NULL,
> +};
> +
> +bool iris_should_not_bind(struct device *dev)
> +{
> +	/* If it is in the migration list, use venus */
> +	if (of_device_compatible_match(dev->of_node, venus_to_iris_migration))
> +		return prefer_venus;
> +
> +	return false;
> +}
> +EXPORT_SYMBOL_GPL(iris_should_not_bind);
> +#endif
> +
>  static int iris_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -196,6 +235,11 @@ static int iris_probe(struct platform_device *pdev)
>  	u64 dma_mask;
>  	int ret;
>  
> +#if IS_REACHABLE(CONFIG_VIDEO_QCOM_VENUS)
> +	if (iris_should_not_bind(&pdev->dev))
> +		return -ENODEV;
> +#endif
> +
>  	core = devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
>  	if (!core)
>  		return -ENOMEM;
> @@ -324,6 +368,10 @@ static const struct of_device_id iris_dt_match[] = {
>  		.compatible = "qcom,sm8550-iris",
>  		.data = &sm8550_data,
>  	},
> +	{
> +		.compatible = "qcom,sm8250-venus",
> +		.data = &sm8250_data,
> +	},
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, iris_dt_match);
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 77d48578ecd2..9116188bfe74 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -375,6 +375,11 @@ static int venus_probe(struct platform_device *pdev)
>  	struct venus_core *core;
>  	int ret;
>  
> +#if IS_REACHABLE(CONFIG_VIDEO_QCOM_IRIS)
> +	if (!iris_should_not_bind(&pdev->dev))
> +		return -ENODEV;
> +#endif
> +

The practice of having preprocessor code in function body is frowned
upon. Please add a stub function instead.

Also, as I wrote earlier, this call will result in (unnecessary) runtime
dependency from venus to the iris module. Please add a small helper
module which basically contains this function (and a separate header
file for it). Then both iris and venus drivers can use that function.

>  	core = devm_kzalloc(dev, sizeof(*core), GFP_KERNEL);
>  	if (!core)
>  		return -ENOMEM;
> diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
> index abeeafa86697..e2e7d8ec9807 100644
> --- a/drivers/media/platform/qcom/venus/core.h
> +++ b/drivers/media/platform/qcom/venus/core.h
> @@ -570,4 +570,5 @@ is_fw_rev_or_older(struct venus_core *core, u32 vmajor, u32 vminor, u32 vrev)
>  }
>  
>  void venus_close_common(struct venus_inst *inst);
> +extern bool iris_should_not_bind(struct device *dev);
>  #endif
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

