Return-Path: <devicetree+bounces-167367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B04B0A8A0CC
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 16:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEB1F189ECDA
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 14:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B24274667;
	Tue, 15 Apr 2025 14:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ordKE7h2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758E21CDA2E
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 14:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744726776; cv=none; b=RTfb6j9CWSjlD+C9rgwlVmNtWX/FaqfyNU7IUUhtwEGY2z47H7z+8XAkv2WBrCWJcONTy3+VIZ3zI8Le8Ryu//L3yMc8Qpvpza883tbq34T0GW4+P6uLZapqtcRWYK9sI6ky+PfmPaMCbxoafn9qG9KzEzJDHz7Z9wG5mAdt/FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744726776; c=relaxed/simple;
	bh=TKBizYbb+ObZgZo2bVrY5qt4R6o1B6w12p675iqQ1BE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oB52StOnTZkPvpBYikBEi0ToKtD8EfS/OqwD1P2w22vRV7u7lqKjRMEJIGc7EAG04lWZDYkxeBytB6WGrDfcR1Gf26lphLrrhCrhhqYOJ5taq9WcZHm6kJFQjMSd0aDIxlUQewVq20yt0/B7QZWFi/9QsKn6OF8OwAht2CCENkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ordKE7h2; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43edb40f357so47443955e9.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744726773; x=1745331573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UfCvTnIS9OZc5M7XI0J4tIRNzKT0F52uI2/GNpyhC+0=;
        b=ordKE7h2LMVSMgFA0MMHqfB4aby9FLm6UpxpaTtHL72LEJkxj/J5jNWx7O4Yxb5vwq
         DkFHzfwYo0zgAEOdWl41Eal+QgMRoLwGB2GrKS0gca7DT36qlzs+xvpJo4NIoGEVk1a1
         nTnkC/GJ/yxm/+ZaBrOMGYzw7TkQELld/VqciCxmypSG1Xh+DjWoZ6t45/0WrPW94rgK
         HALmlknQEFkIvhahBZWnaHWLR0tqmw16CP4ZxS/bAu8nv67/CTBJqkzB63VBBxLhqKh3
         Epd8G1SUGjmB85AS0cyOx/d31IDFD8Q8YX+smISMynReyXGmyjSPhoaWkzsn4kJF7I4t
         sOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744726773; x=1745331573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UfCvTnIS9OZc5M7XI0J4tIRNzKT0F52uI2/GNpyhC+0=;
        b=CLEIUiSKg/dNNrwyx8xyrTVywh7wL6CTkaYIEsABlt2aTz7RCyEg5ePXB72sxnPlMR
         q0TRUeen3X18huO/D2wBdH9DFBBWu9in+I9qFyDHwI03Oi9dtwdvdH9+F2BPmAK8e4C5
         R3VdGpDf+JRJXQfAQYxVM3xYZUgBAyqmqc7CpZL6ilezWWC/hqwXNQh0ENp1RArxY9nM
         W0MOQVAZ1v4hPRneYZ6oFoQTDRdP4L++abYD4X/LyQgnGcSUVraWA7B33NZVRezLGMXf
         S+f20glK5ZiiQJcEhOi+fc0+/xMgfgzYeTBl/UBudOetjbHYKdPQQUG4tVDDRvQAvly5
         TY2w==
X-Forwarded-Encrypted: i=1; AJvYcCW9YXjNcVSCudEBP9qlTqcXHTNlngr0Ah+qperKSnVF/BXieHmdFKYqRlhWA8huzf4sI5OWKP/4Fm8j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5TA1bUHcHRmyyBbFWnkeyGgXhwMRTSczSZreMY/FjF/YF1S2a
	fmSnsih9wqkbA9Cz6xUaYPYPq8Ag92kAppI0ya59mu3RGIJzWchUe2kRreTdYhE=
X-Gm-Gg: ASbGncuSRxov7UrlRFYSMOzbhv+tqHV/gqIC/s6NxyY7GjE449n2ZdwCzVnLf+6eW82
	qQy9q2WkOjKErSbQmaC7l6hEzBq4WNf6k+5RCK95WhJudlJPc+vOfy8qv3dddx3+TXXOG/Fb6mw
	yzXKUiuJXFveXxKvTOlRmok1Ka+wW+8Tq0xGPDnkF31QQm7oOmUO5B0JJDr70bAsOWOb9i5e+mQ
	3cKMnGKq+iMefr17+xWnh5e5A4DcN3FNxIG8juP9HyB9BWBSIqNaK7TkkqD5QgtdtgFxVkfBQRC
	rY1lp1tinzkL5sQF4NXeXUvJOD6kisDm5V8mIqkGvgPVhbjW7cn0RHSfv/KkqqGYS08fR1sAWCc
	UA8zgKA==
X-Google-Smtp-Source: AGHT+IH5Gc9wgYQKhJCZC/uHWKBK4SNxF2Lbo4rqJf9jYQAS8sW2aFqgwA3d+2MJ4dqWvBgxmGp97w==
X-Received: by 2002:a05:600c:5494:b0:43d:1840:a13f with SMTP id 5b1f17b1804b1-43f3a9aaf8amr124822655e9.25.1744726772673;
        Tue, 15 Apr 2025 07:19:32 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233a2c53sm208580445e9.14.2025.04.15.07.19.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 07:19:32 -0700 (PDT)
Message-ID: <93dc4307-f1d8-4016-be9e-3b9bc1824e1b@linaro.org>
Date: Tue, 15 Apr 2025 15:19:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/7] media: platform: qcom/iris: add sm8650 support
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250415-topic-sm8x50-iris-v10-v6-0-8ad319094055@linaro.org>
 <20250415-topic-sm8x50-iris-v10-v6-7-8ad319094055@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250415-topic-sm8x50-iris-v10-v6-7-8ad319094055@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/04/2025 14:47, Neil Armstrong wrote:
> Add support for the SM8650 platform by re-using the SM8550
> definitions and using the vpu33 ops.
> 
> Move the reset tables that diffes in a per-SoC platform
> header, that will contain mode SoC specific data when
> more codecs are introduced.
> 
> The SM8650/vpu33 requires more reset lines, but the H.264
> decoder capabilities are identical.
> 
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   .../platform/qcom/iris/iris_platform_common.h      |  1 +
>   .../media/platform/qcom/iris/iris_platform_gen2.c  | 65 +++++++++++++++++++++-
>   .../platform/qcom/iris/iris_platform_sm8550.h      | 11 ++++
>   .../platform/qcom/iris/iris_platform_sm8650.h      | 13 +++++
>   drivers/media/platform/qcom/iris/iris_probe.c      |  4 ++
>   5 files changed, 92 insertions(+), 2 deletions(-)
> 
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
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> index 35d278996c430f2856d0fe59586930061a271c3e..6d1771bd68689d96b5b9087b0ad32b934f7295ee 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> @@ -10,6 +10,9 @@
>   #include "iris_platform_common.h"
>   #include "iris_vpu_common.h"
>   
> +#include "iris_platform_sm8550.h"
> +#include "iris_platform_sm8650.h"
> +
>   #define VIDEO_ARCH_LX 1
>   
>   static struct platform_inst_fw_cap inst_fw_cap_sm8550[] = {
> @@ -142,8 +145,6 @@ static const struct icc_info sm8550_icc_table[] = {
>   	{ "video-mem",  1000, 15000000 },
>   };
>   
> -static const char * const sm8550_clk_reset_table[] = { "bus" };
> -
>   static const struct bw_info sm8550_bw_table_dec[] = {
>   	{ ((4096 * 2160) / 256) * 60, 1608000 },
>   	{ ((4096 * 2160) / 256) * 30,  826000 },
> @@ -264,3 +265,63 @@ struct iris_platform_data sm8550_data = {
>   	.dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
>   	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
>   };
> +
> +/*
> + * Shares most of SM8550 data except:
> + * - vpu_ops to iris_vpu33_ops
> + * - clk_rst_tbl to sm8650_clk_reset_table
> + * - controller_rst_tbl to sm8650_controller_reset_table
> + * - fwname to "qcom/vpu/vpu33_p4.mbn"
> + */
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
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.h b/drivers/media/platform/qcom/iris/iris_platform_sm8550.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..ac8847edb585e4a9ce6b669a3a5988e7809972af
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8550.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef __IRIS_PLATFORM_SM8550_H__
> +#define __IRIS_PLATFORM_SM8550_H__
> +
> +static const char * const sm8550_clk_reset_table[] = { "bus" };
> +
> +#endif
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8650.h b/drivers/media/platform/qcom/iris/iris_platform_sm8650.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..75e9d572e788de043a56cf85a4cb634bd02226b9
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8650.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef __IRIS_PLATFORM_SM8650_H__
> +#define __IRIS_PLATFORM_SM8650_H__
> +
> +static const char * const sm8650_clk_reset_table[] = { "bus", "core" };
> +
> +static const char * const sm8650_controller_reset_table[] = { "xo" };
> +
> +#endif
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
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

