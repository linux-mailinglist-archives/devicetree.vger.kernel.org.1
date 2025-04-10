Return-Path: <devicetree+bounces-165621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB1AA84CE6
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 21:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23E698A7D8B
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 19:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 814B7290BB7;
	Thu, 10 Apr 2025 19:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MfTHyMwR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D926028FFCA
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744312810; cv=none; b=JnAWNw2bDrSPncPZOxfr0iGdWYuYpPxfi1G2JOlA6D5ZXcA/dE+n1kWKM/ok5J84ZVA3kA0Y6P4GFD5B8rfHShBJ9mHL4zj6km0PHrCsbWDSyF4RKxVpSNJhWj+gMOlBflJm4BAmL6NlNGm47htuP7Ky4b0XQTv6nMLXnTX+lBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744312810; c=relaxed/simple;
	bh=cmOxgMYeXuiv/pQXl+s/yMcwTC1lnAs0cstnKTzASMM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ezNyqtQJYbJLinp5+ysU6jqPvanhdZmawrAblnMLkeZJRRDo4Gp3O8ANpzcqExHJffQRAk6IpD2cZhqS0NZigUlBmAklAk6mF0vVU55CgWBMegvKKJkmRIn43WRZzTSic+tisDD/Fs8Fbvk08svQKsrszq9uVN8RfOV3Whdu9ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MfTHyMwR; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so10308895e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 12:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744312806; x=1744917606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4PeML4HkryCZ6NAJ6y4QX+nve1DMi7KD87VmFketEG0=;
        b=MfTHyMwRd2/9FIMXWzp9D7SnMviZTFvIw1r8jdeTyfVuczKaUKapS5OVXzIbDzyjIo
         GNTZFCLwLPfk2zjUB4/8+B362S2g48MWgkXmhCNR0n6kGgIf/Od5/LpAOu8ns8dBidTp
         7h7/o1uJna9QfF6wBrw3L8uCUxKD4UIYAXqfUaEov4BU0Y+NOk0/suAM/KETJVTNYqCc
         PfL2lXKoFljdKqRjw3NktraUfg5w+jKD1CxLf1xW3RqayutnV5gA7hCH34UztiPTbu2/
         kl7mskRICH3GvRliud6OB4t2/sE3tEyC6IYJ7Fkw5N4lT/TseEjhFC4+KHHi5FiCXfXw
         7LVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744312806; x=1744917606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4PeML4HkryCZ6NAJ6y4QX+nve1DMi7KD87VmFketEG0=;
        b=W5WpXlQ2ZpUwQndU3Ifx0OrlyD4lq2eqxsR6uxYB9ch4ldEUsctnLiNntv2sp9o0vS
         Xhlvqtl/jxW0cChPwvr4bPXqsPEXdCp96oohTiIO5vfSHtQv2lEoMlajUla5FLIv2Qon
         b1d2v+TjtA3uc4emFk7hC0oF9FLjKoayPggriRc8bWZUgiPcGeJ/lAmzkddh4HbLniRW
         KkepmEEvlhX0Ww1BLZadzw2cQwz4T54sExAIwujg5dm6kFNczO70/XRtPaybkFJzkHwO
         ale1DiDmnQopmKv1951U4L97kF9/y36V19UcyX5Sdtlgx8ZiHkDjllV4SXIRt6GLGI8E
         alCw==
X-Forwarded-Encrypted: i=1; AJvYcCXPeTfZdZ14SiUFb8x5XaUgbs37cm415c8Vxi81DXd6WYq4HsSOaA7ur7BunXqB5vwNi1oov82vjTPR@vger.kernel.org
X-Gm-Message-State: AOJu0YxkDNep/RrCuFPhhrciS/ZhHcPXLe9GHkn/8N9wDeKfromkaIoj
	FIZ5WcuiOgwUmGCx7ntr7JtKLK1NQVxlu2Oi/FhxAVWK785njVB2g1Rs2rfD4Fg=
X-Gm-Gg: ASbGncvw2CBo0942Ye76sciJqsFIix6Ay7degWEQtK2gvPXnfjvoIGv6W7Wd7LyS/WC
	+JnRXa9zAixtBX1pEi34BUl9gGDhynukdpOvX4lsYAbIBn8X7OtmDWs0uM6w51/vXQ1RMfA0Cc5
	dIBuZjeRRdtTRqYeR7n68dVd3H5Our0oC/nktEvamU7Af7j9/5VThBcEGLrv3/G3/U8n9H6VxZi
	1oMo9YdkqFYhWrwRDg/QFiEt0O9eigFyhy7IrG3/WlUwz3flXSMOg5Rp0EOkJkDYBGaOOkwnmS7
	A0Krjw+8ZJEBOh26Y74V9p+EKlyEzjHqSiuGlSGhfo0KX3RahqAaMJx4VrtoivcidzMBsWgcsl/
	Nk5bSrw==
X-Google-Smtp-Source: AGHT+IHnbbg2oQEhdS9pBWSuU067/lrColYgyfvpNZrHx5zV1btkqBntvobWJ9dX2TLoxmYpRTFngg==
X-Received: by 2002:a05:600c:4e13:b0:43d:ed:acd5 with SMTP id 5b1f17b1804b1-43f2fedc486mr46994095e9.10.1744312806182;
        Thu, 10 Apr 2025 12:20:06 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893fdf6dsm5698830f8f.90.2025.04.10.12.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 12:20:05 -0700 (PDT)
Message-ID: <919203d2-cae2-4ed8-8144-8303d185d773@linaro.org>
Date: Thu, 10 Apr 2025 20:20:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v5 8/8] media: platform: qcom/iris: add sm8650 support
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
 <20250410-topic-sm8x50-upstream-iris-catalog-v5-8-44a431574c25@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250410-topic-sm8x50-upstream-iris-catalog-v5-8-44a431574c25@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/04/2025 17:30, Neil Armstrong wrote:
> Add support for the SM8650 platform by re-using the SM8550
> definitions and using the vpu33 ops.
> 
> The SM8650/vpu33 requires more reset lines, but the H.264
> decoder capabilities are identical.
> 
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   .../media/platform/qcom/iris/iris_catalog_gen2.c   |  1 +
>   .../media/platform/qcom/iris/iris_catalog_sm8650.h | 68 ++++++++++++++++++++++
>   .../platform/qcom/iris/iris_platform_common.h      |  1 +
>   drivers/media/platform/qcom/iris/iris_probe.c      |  4 ++
>   4 files changed, 74 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_catalog_gen2.c b/drivers/media/platform/qcom/iris/iris_catalog_gen2.c
> index c3f8ad004cb7f9317859b2594640c7138dbb6534..ad559351f1125d266dedac7eb6e91cda90bbae72 100644
> --- a/drivers/media/platform/qcom/iris/iris_catalog_gen2.c
> +++ b/drivers/media/platform/qcom/iris/iris_catalog_gen2.c
> @@ -186,3 +186,4 @@ static const u32 sm8550_dec_op_int_buf_tbl[] = {
>   
>   /* platforms catalogs */
>   #include "iris_catalog_sm8550.h"
> +#include "iris_catalog_sm8650.h"
> diff --git a/drivers/media/platform/qcom/iris/iris_catalog_sm8650.h b/drivers/media/platform/qcom/iris/iris_catalog_sm8650.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..be8737dd4f3d9ec20a457d50076be1b4d841787c
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_catalog_sm8650.h
> @@ -0,0 +1,68 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef _IRIS_CATALOG_SM8650_H
> +#define _IRIS_CATALOG_SM8650_H
> +
> +#define VIDEO_ARCH_LX 1
> +
> +static const char * const sm8650_clk_reset_table[] = { "bus", "core" };
> +
> +static const char * const sm8650_controller_reset_table[] = { "xo" };
> +
> +struct iris_platform_data sm8650_data = {
> +	.get_instance = iris_hfi_gen2_get_instance,
> +	.init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
> +	.init_hfi_response_ops = iris_hfi_gen2_response_ops_init,
> +	.vpu_ops = &iris_vpu33_ops,
> +	.set_preset_registers = iris_set_sm8550_preset_registers,
> +	.icc_tbl = sm8550_icc_table,
> +	.icc_tbl_size = ARRAY_SIZE(sm8550_icc_table),
> +	.clk_rst_tbl = sm8650_clk_reset_table,
> +	.clk_rst_tbl_size = ARRAY_SIZE(sm8650_clk_reset_table),
> +	.controller_rst_tbl = sm8650_controller_reset_table,
> +	.controller_rst_tbl_size = ARRAY_SIZE(sm8650_controller_reset_table),
> +	.bw_tbl_dec = sm8550_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8550_bw_table_dec),
> +	.pmdomain_tbl = sm8550_pmdomain_table,
> +	.pmdomain_tbl_size = ARRAY_SIZE(sm8550_pmdomain_table),
> +	.opp_pd_tbl = sm8550_opp_pd_table,
> +	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
> +	.clk_tbl = sm8550_clk_table,
> +	.clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
> +	/* Upper bound of DMA address range */
> +	.dma_mask = 0xe0000000 - 1,
> +	.fwname = "qcom/vpu/vpu33_p4.mbn",
> +	.pas_id = IRIS_PAS_ID,
> +	.inst_caps = &platform_inst_cap_sm8550,
> +	.inst_fw_caps = inst_fw_cap_sm8550,
> +	.inst_fw_caps_size = ARRAY_SIZE(inst_fw_cap_sm8550),
> +	.tz_cp_config_data = &tz_cp_config_sm8550,
> +	.core_arch = VIDEO_ARCH_LX,
> +	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
> +	.ubwc_config = &ubwc_config_sm8550,
> +	.num_vpp_pipe = 4,
> +	.max_session_count = 16,
> +	.max_core_mbpf = ((8192 * 4352) / 256) * 2,
> +	.input_config_params =
> +		sm8550_vdec_input_config_params,
> +	.input_config_params_size =
> +		ARRAY_SIZE(sm8550_vdec_input_config_params),
> +	.output_config_params =
> +		sm8550_vdec_output_config_params,
> +	.output_config_params_size =
> +		ARRAY_SIZE(sm8550_vdec_output_config_params),
> +	.dec_input_prop = sm8550_vdec_subscribe_input_properties,
> +	.dec_input_prop_size = ARRAY_SIZE(sm8550_vdec_subscribe_input_properties),
> +	.dec_output_prop = sm8550_vdec_subscribe_output_properties,
> +	.dec_output_prop_size = ARRAY_SIZE(sm8550_vdec_subscribe_output_properties),
> +
> +	.dec_ip_int_buf_tbl = sm8550_dec_ip_int_buf_tbl,
> +	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_ip_int_buf_tbl),
> +	.dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
> +	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
> +};
> +
> +#endif
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
> index fdd40fd80178c4c66b37e392d07a0a62f492f108..6bc3a7975b04d612f6c89206eae95dac678695fc 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
> @@ -35,6 +35,7 @@ enum pipe_type {
>   
>   extern struct iris_platform_data sm8250_data;
>   extern struct iris_platform_data sm8550_data;
> +extern struct iris_platform_data sm8650_data;
>   
>   enum platform_clk_type {
>   	IRIS_AXI_CLK,
> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
> index 4f8bce6e2002bffee4c93dcaaf6e52bf4e40992e..7cd8650fbe9c09598670530103e3d5edf32953e7 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -345,6 +345,10 @@ static const struct of_device_id iris_dt_match[] = {
>   			.data = &sm8250_data,
>   		},
>   #endif
> +	{
> +		.compatible = "qcom,sm8650-iris",
> +		.data = &sm8650_data,
> +	},
>   	{ },
>   };
>   MODULE_DEVICE_TABLE(of, iris_dt_match);
> 

This LGTM one thing is I think you should convert the sm8250 stuff into 
a corresponding iris_catalog_gen1.c

Would be grateful if you could add that patch to a V6.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

