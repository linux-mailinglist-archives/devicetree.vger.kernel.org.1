Return-Path: <devicetree+bounces-229536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D53BDBF92D1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 01:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9714D188EB12
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 23:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594B42BE04F;
	Tue, 21 Oct 2025 23:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gy2DxIAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1A32857F0
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761087982; cv=none; b=qdJJdA5XGBS4sV9Wd3mhPzO3wOZF1iVGqiFlEY2X/S5iiBvjXmwxgllopjjDZaFxQx5UNEx4m+R07Rl1O38wp7Q4DWaWg59PEy1MgoCqWFMrhQIfi2ntDa21IPXjB6AUmji4Rll4hLM2C0lJR4Jbh8ObQ/xOVGoV/bxOH7lx4W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761087982; c=relaxed/simple;
	bh=v9qdrPtUu7fyhR7g5W1mWsSB1mC75h6wItXGPacFG6g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ht4UhGQ/7W5ZiMSezNCK2Pjy9GKMGQQ5i/fIHjbx42/NifX2zr41AhTyVXEtWi33/fo4YPlovtR/ZPtCun16xauUWgRCJNpEOm8mL23pp4+wklGMuGw+MRk5+Vh7rFCpLsb5EbttnZPbM1k/sVPgcifjf8p2680uWkAlDKoZnfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gy2DxIAM; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-63c556b4e0cso7900694a12.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 16:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761087977; x=1761692777; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1skSu2R/EvG/sBAR/zOuIUly/4EtcboZ1vNpxOtlC6Q=;
        b=Gy2DxIAMz7JgiGjcHBezvujflomdr+MS5VzckydOdzppa/rnM/ky34FoE4zmYFDrB+
         evrmIqEusTl+YDb4XcEgp+20K74ESqgGTMzp3lFP2+WP5ReMAEPkI2u7cIvTA6FY7lU9
         fPFDRGod01pQieR5pHH2I6eTd8kQk+yMOPOg6VDNOnIzAGOWemS1qA/15MtXO7vg4nML
         oRevTf/ewLOiMIXs6K1MEGbuO74CP3akTKKOAekmV7kOwv7M+7hBDlyoP1t84bvv8pEY
         pVjfxf+KDGjJ5I7UaS9023P3j7oqClEyoFrQSqXbTSM+QoiLhfnOdaQxuzrvIdh1fTSz
         Te5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761087977; x=1761692777;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1skSu2R/EvG/sBAR/zOuIUly/4EtcboZ1vNpxOtlC6Q=;
        b=db50DtiH/vaaJMybbGpqSwWSiBTNWbzNi7JTQC7R/EvMV/Q0DB9mBW1aGrojuC4wi3
         pRxOwygKdqiifrJo6omY0vJIRIVLT6W6KMk1/I+60NNsOkADHwPEvXxckDZkkiuS4LCD
         Sxvrw+HIoLd4iK2UrOcKiO+HUTaR67lP0OfX49qZFryS5KfrfyjC1IQ4wmhckZF0B6ok
         c5/6ilu3Za/Ly9l3oQQDM0nVhC45+L+O1j2fW0MtZtImuknzbIXS4RvgSmJybyZk55Et
         TVkuDdwFWXYFrlhjJvgqBq8qvf1DFwiWMKvsl1gYUi4oIaP7azCpHfs3m6ysSP7IrOpp
         gCLA==
X-Forwarded-Encrypted: i=1; AJvYcCUKSiCaIuIjIRzl90swAiMBmMgMrc48IXRMs6CReZcobEYx7Rh1yxVCz4naE9BJz0bKp0X6+kx6F79V@vger.kernel.org
X-Gm-Message-State: AOJu0YyRWyaPwUpOV8oWEhC5TmXP6BFTAw7ilUChrf0tT0kvtKNyfhBv
	fE3iOTJLq1SKk0xTSp1+5If1qQnIio75E7aaZsRcEwtDeAnIMtuD/P8C6bRIQ3TNCZc=
X-Gm-Gg: ASbGncvfZL0dk4hTh+EHZakmwi6qoJP4iV1CZLZBOcpInIBI3IEHKucylRfKrNFNJSx
	P4vTDve807dTyjtvEW7X05UqKG7OA+YArQQw5YOczPybnL8IIVwjEWK04beXzHcD36lqxd4rgIb
	6EPcP1oh42YSfSNWLpMQ6GOYff3pCa92qft+OnILHMkYChqgDXoihGFnhRvFnUkCK7u1fInjU/F
	DqOlFspACVoe4qaIHQpUPdMtGMMadbQOgealnFGaN8c98zoQYCLJYZx7RAcOYhPYh0btutKppdV
	IpasLB8k4rASvR05IBdrWTOoh8qqErjVcfrtS2ABm5VjJS0rQ2gncbkitGJnLgD15Qb+mBf83vM
	AfnYM7+RsMssHG2edfqO8L2NxNjFFwBLoPmXMTWnoqKHfTV1352ymdHzhqL4ClTz2Wy7AwoX3og
	xQov73VUzM+zdgObild0mPEmNUSUG4IHTvAGZ9nqZ69B4=
X-Google-Smtp-Source: AGHT+IFtNmFUjXoSgBEFbhWp4FEFDk6kOFYy/fkKwIxw3udp45uEWOU+nEdWHQxP3zzwua5iSJikTA==
X-Received: by 2002:a05:6402:5650:b0:636:6801:eed7 with SMTP id 4fb4d7f45d1cf-63c1f6d05b1mr13395163a12.32.1761087976999;
        Tue, 21 Oct 2025 16:06:16 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c48ab54fbsm10165210a12.15.2025.10.21.16.06.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 16:06:15 -0700 (PDT)
Message-ID: <1e3053ae-3482-4388-a6e4-1edc921bfdcb@linaro.org>
Date: Wed, 22 Oct 2025 00:06:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] media: iris: Add support for multiple clock
 sources
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <-nNKoml-evcewtxxqJqJKKjaeWf8uLZt3Vgbwq_EjIBXLfYOmkWyNTPHpARSXlsa6fjxoudnLDHuneVT6ZvCcA==@protonmail.internalid>
 <20251017-knp_video-v2-2-f568ce1a4be3@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251017-knp_video-v2-2-f568ce1a4be3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/10/2025 15:16, Vikash Garodia wrote:
> vpu4 depends on more than one clock source. Thus far hardware versions
> up to vpu3x have been clocked by a single source.
> This adds support for multiple clocks by,
> - Adding a lookup table
> - Configuring OPP table for video device with different video clocks
> - Setting OPP for multiple clocks during dev_pm_opp_set_opp()
> 
> This patch extends the support for multiple clocks in driver, which
> would be used in subsequent patch for kaanapali, when the platform data
> is prepared.
> 
> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>   .../media/platform/qcom/iris/iris_platform_common.h  |  1 +
>   .../media/platform/qcom/iris/iris_platform_gen2.c    |  9 +++++++++
>   .../media/platform/qcom/iris/iris_platform_sm8250.c  |  6 ++++++
>   drivers/media/platform/qcom/iris/iris_power.c        |  2 +-
>   drivers/media/platform/qcom/iris/iris_probe.c        | 20 ++++++++------------
>   drivers/media/platform/qcom/iris/iris_resources.c    | 16 ++++++++++++++--
>   drivers/media/platform/qcom/iris/iris_resources.h    |  1 +
>   drivers/media/platform/qcom/iris/iris_vpu_common.c   |  4 ++--
>   8 files changed, 42 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
> index 58d05e0a112eed25faea027a34c719c89d6c3897..df03de08c44839c1b6c137874eb7273c638d5f2c 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
> @@ -206,6 +206,7 @@ struct iris_platform_data {
>   	const char * const *opp_pd_tbl;
>   	unsigned int opp_pd_tbl_size;
>   	const struct platform_clk_data *clk_tbl;
> +	const char * const *opp_clk_tbl;
>   	unsigned int clk_tbl_size;
>   	const char * const *clk_rst_tbl;
>   	unsigned int clk_rst_tbl_size;
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> index 36d69cc73986b74534a2912524c8553970fd862e..fea800811a389a58388175c733ad31c4d9c636b0 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> @@ -633,6 +633,11 @@ static const struct platform_clk_data sm8550_clk_table[] = {
>   	{IRIS_HW_CLK,   "vcodec0_core" },
>   };
> 
> +static const char * const sm8550_opp_clk_table[] = {
> +	"vcodec0_core",
> +	NULL,
> +};
> +
>   static struct ubwc_config_data ubwc_config_sm8550 = {
>   	.max_channels = 8,
>   	.mal_length = 32,
> @@ -756,6 +761,7 @@ struct iris_platform_data sm8550_data = {
>   	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>   	.clk_tbl = sm8550_clk_table,
>   	.clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
> +	.opp_clk_tbl = sm8550_opp_clk_table,
>   	/* Upper bound of DMA address range */
>   	.dma_mask = 0xe0000000 - 1,
>   	.fwname = "qcom/vpu/vpu30_p4.mbn",
> @@ -848,6 +854,7 @@ struct iris_platform_data sm8650_data = {
>   	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>   	.clk_tbl = sm8550_clk_table,
>   	.clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
> +	.opp_clk_tbl = sm8550_opp_clk_table,
>   	/* Upper bound of DMA address range */
>   	.dma_mask = 0xe0000000 - 1,
>   	.fwname = "qcom/vpu/vpu33_p4.mbn",
> @@ -930,6 +937,7 @@ struct iris_platform_data sm8750_data = {
>   	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>   	.clk_tbl = sm8750_clk_table,
>   	.clk_tbl_size = ARRAY_SIZE(sm8750_clk_table),
> +	.opp_clk_tbl = sm8550_opp_clk_table,
>   	/* Upper bound of DMA address range */
>   	.dma_mask = 0xe0000000 - 1,
>   	.fwname = "qcom/vpu/vpu35_p4.mbn",
> @@ -1017,6 +1025,7 @@ struct iris_platform_data qcs8300_data = {
>   	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>   	.clk_tbl = sm8550_clk_table,
>   	.clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
> +	.opp_clk_tbl = sm8550_opp_clk_table,
>   	/* Upper bound of DMA address range */
>   	.dma_mask = 0xe0000000 - 1,
>   	.fwname = "qcom/vpu/vpu30_p4_s6.mbn",
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> index 16486284f8acccf6a95a27f6003e885226e28f4d..1b1b6aa751106ee0b0bc71bb0df2e78340190e66 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> @@ -273,6 +273,11 @@ static const struct platform_clk_data sm8250_clk_table[] = {
>   	{IRIS_HW_CLK,   "vcodec0_core" },
>   };
> 
> +static const char * const sm8250_opp_clk_table[] = {
> +	"vcodec0_core",
> +	NULL,
> +};
> +
>   static struct tz_cp_config tz_cp_config_sm8250 = {
>   	.cp_start = 0,
>   	.cp_size = 0x25800000,
> @@ -333,6 +338,7 @@ struct iris_platform_data sm8250_data = {
>   	.opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
>   	.clk_tbl = sm8250_clk_table,
>   	.clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
> +	.opp_clk_tbl = sm8250_opp_clk_table,
>   	/* Upper bound of DMA address range */
>   	.dma_mask = 0xe0000000 - 1,
>   	.fwname = "qcom/vpu-1.0/venus.mbn",
> diff --git a/drivers/media/platform/qcom/iris/iris_power.c b/drivers/media/platform/qcom/iris/iris_power.c
> index dbca42df0910fd3c0fb253dbfabf1afa2c3d32ad..91aa21d4070ebcebbe2ed127a03e5e49b9a2bd5c 100644
> --- a/drivers/media/platform/qcom/iris/iris_power.c
> +++ b/drivers/media/platform/qcom/iris/iris_power.c
> @@ -91,7 +91,7 @@ static int iris_set_clocks(struct iris_inst *inst)
>   	}
> 
>   	core->power.clk_freq = freq;
> -	ret = dev_pm_opp_set_rate(core->dev, freq);
> +	ret = iris_opp_set_rate(core->dev, freq);
>   	mutex_unlock(&core->lock);
> 
>   	return ret;
> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
> index 00e99be16e087c4098f930151fd76cd381d721ce..ad82a62f8b923d818ffe77c131d7eb6da8c34002 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -40,8 +40,6 @@ static int iris_init_icc(struct iris_core *core)
> 
>   static int iris_init_power_domains(struct iris_core *core)
>   {
> -	const struct platform_clk_data *clk_tbl;
> -	u32 clk_cnt, i;
>   	int ret;
> 
>   	struct dev_pm_domain_attach_data iris_pd_data = {
> @@ -56,6 +54,11 @@ static int iris_init_power_domains(struct iris_core *core)
>   		.pd_flags = PD_FLAG_DEV_LINK_ON | PD_FLAG_REQUIRED_OPP,
>   	};
> 
> +	struct dev_pm_opp_config iris_opp_clk_data = {
> +		.clk_names = core->iris_platform_data->opp_clk_tbl,
> +		.config_clks = dev_pm_opp_config_clks_simple,
> +	};
> +
>   	ret = devm_pm_domain_attach_list(core->dev, &iris_pd_data, &core->pmdomain_tbl);
>   	if (ret < 0)
>   		return ret;
> @@ -64,16 +67,9 @@ static int iris_init_power_domains(struct iris_core *core)
>   	if (ret < 0)
>   		return ret;
> 
> -	clk_tbl = core->iris_platform_data->clk_tbl;
> -	clk_cnt = core->iris_platform_data->clk_tbl_size;
> -
> -	for (i = 0; i < clk_cnt; i++) {
> -		if (clk_tbl[i].clk_type == IRIS_HW_CLK) {
> -			ret = devm_pm_opp_set_clkname(core->dev, clk_tbl[i].clk_name);
> -			if (ret)
> -				return ret;
> -		}
> -	}
> +	ret = devm_pm_opp_set_config(core->dev, &iris_opp_clk_data);
> +	if (ret)
> +		return ret;
> 
>   	return devm_pm_opp_of_add_table(core->dev);
>   }
> diff --git a/drivers/media/platform/qcom/iris/iris_resources.c b/drivers/media/platform/qcom/iris/iris_resources.c
> index cf32f268b703c1c042a9bcf146e444fff4f4990d..939f6617f2631503fa8cb3e874b9de6b2fbe7b76 100644
> --- a/drivers/media/platform/qcom/iris/iris_resources.c
> +++ b/drivers/media/platform/qcom/iris/iris_resources.c
> @@ -4,6 +4,7 @@
>    */
> 
>   #include <linux/clk.h>
> +#include <linux/devfreq.h>
>   #include <linux/interconnect.h>
>   #include <linux/pm_domain.h>
>   #include <linux/pm_opp.h>
> @@ -58,11 +59,22 @@ int iris_unset_icc_bw(struct iris_core *core)
>   	return icc_bulk_set_bw(core->icc_count, core->icc_tbl);
>   }
> 
> +int iris_opp_set_rate(struct device *dev, unsigned long freq)
> +{
> +	struct dev_pm_opp *opp __free(put_opp);
> +
> +	opp = devfreq_recommended_opp(dev, &freq, 0);
> +	if (IS_ERR(opp))
> +		return PTR_ERR(opp);
> +
> +	return dev_pm_opp_set_opp(dev, opp);
> +}
> +
>   int iris_enable_power_domains(struct iris_core *core, struct device *pd_dev)
>   {
>   	int ret;
> 
> -	ret = dev_pm_opp_set_rate(core->dev, ULONG_MAX);
> +	ret = iris_opp_set_rate(core->dev, ULONG_MAX);
>   	if (ret)
>   		return ret;
> 
> @@ -77,7 +89,7 @@ int iris_disable_power_domains(struct iris_core *core, struct device *pd_dev)
>   {
>   	int ret;
> 
> -	ret = dev_pm_opp_set_rate(core->dev, 0);
> +	ret = iris_opp_set_rate(core->dev, 0);
>   	if (ret)
>   		return ret;
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_resources.h b/drivers/media/platform/qcom/iris/iris_resources.h
> index f723dfe5bd81a9c9db22d53bde4e18743d771210..6bfbd2dc6db095ec05e53c894e048285f82446c6 100644
> --- a/drivers/media/platform/qcom/iris/iris_resources.h
> +++ b/drivers/media/platform/qcom/iris/iris_resources.h
> @@ -8,6 +8,7 @@
> 
>   struct iris_core;
> 
> +int iris_opp_set_rate(struct device *dev, unsigned long freq);
>   int iris_enable_power_domains(struct iris_core *core, struct device *pd_dev);
>   int iris_disable_power_domains(struct iris_core *core, struct device *pd_dev);
>   int iris_unset_icc_bw(struct iris_core *core);
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> index bb98950e018fadf69ac4f41b3037f7fd6ac33c5b..bbd999a41236dca5cf5700e452a6fed69f4fc922 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> @@ -266,7 +266,7 @@ void iris_vpu_power_off_hw(struct iris_core *core)
> 
>   void iris_vpu_power_off(struct iris_core *core)
>   {
> -	dev_pm_opp_set_rate(core->dev, 0);
> +	iris_opp_set_rate(core->dev, 0);
>   	core->iris_platform_data->vpu_ops->power_off_hw(core);
>   	core->iris_platform_data->vpu_ops->power_off_controller(core);
>   	iris_unset_icc_bw(core);
> @@ -352,7 +352,7 @@ int iris_vpu_power_on(struct iris_core *core)
>   	freq = core->power.clk_freq ? core->power.clk_freq :
>   				      (u32)ULONG_MAX;
> 
> -	dev_pm_opp_set_rate(core->dev, freq);
> +	iris_opp_set_rate(core->dev, freq);
> 
>   	core->iris_platform_data->set_preset_registers(core);
> 
> 
> --
> 2.34.1
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

