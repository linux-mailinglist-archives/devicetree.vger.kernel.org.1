Return-Path: <devicetree+bounces-229541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B779DBF9412
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 01:35:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4688C3AAA8F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 23:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56AE22C159A;
	Tue, 21 Oct 2025 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uSNtzrd7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592782BE7AB
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761089733; cv=none; b=NO+JJQZHYJfce9HgkdL1vKgUmOL+DozqlwRSaGC0Zt3n833FDobN/5SfJe+qw+WkXsNYhpMA3y/5hKzOqUiYPsScjDUcAZvIC9avMiJtTch+6757QK1cz1SFqYyvdNk6Mw90I7tAVMLRmYzeWBnlO0AwL5C5LGKvL/rFkmn9hi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761089733; c=relaxed/simple;
	bh=d0rri72HUDD7sLN8He2gM8MVhsCdzHnM4aRPUZ7Wp4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bsCg8DkX2w+Pfe7xgw3B/voyxS+TX9tTD81jCpp3MOw5rA/m87QvygHpiczmzRzDZnCPiusBXVwOFFtEzY0uEaixK6o1JQqgONWyZw0ZdgnvPsOJT3D5k7dCTUSHocfFd2gOTX/g0SqPNCJnFmk/kw+T+U12j9OsKS5j+A262lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uSNtzrd7; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42701b29a7eso213318f8f.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 16:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761089728; x=1761694528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xCXGcVVHwvNBqgCg7ypa7rVa+Pb3fcXZRoAO3UaaUjc=;
        b=uSNtzrd7zbseTdg5RA4OY7xTCDu/+iAj/HAW7Ifsym33wjDcs2QbwZB4hc+gk8jJXk
         P1B+5ZnvRs2mXtfMbJZCHj5BABuoiXvA6SSLJN7GnKKQQSSfxpgburz0ZJQuBaD8WEfm
         Tk1tq5ykEDk77i03vJUX/k8pgTtjI7nroyypr75SAdNMrD7/piZMY1NxEEaAKlFbIgf7
         BdyVbvVqWRjHJh8OgopDImRhMhMHBXw+JqnC5/I0wTj0vdfgs7GQsdfYf2m83bJdXnCu
         OVD4WmmDASIGD+NXmk4YITKNIm+CngzvoToU8/jvL3QZ6e/Xv3aYACt6mRPsXLuzey4J
         lgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761089729; x=1761694529;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xCXGcVVHwvNBqgCg7ypa7rVa+Pb3fcXZRoAO3UaaUjc=;
        b=ExQtnfDFxhQfdz9Rj1vQsvNOYFKbhBcbJRy8fS0Emv5PHKhWYwfmCmK8A3geTV9x7j
         DfS+4afyEGs7VwcUOMIkcDyTnmhc4aehMymEDEoICPjwv2lpBXgG9esC/Xmuz0kmuzuO
         k7y6pFbQ7P0Z83jRw+WgbVmgWcFoHBHC6Oab6PofGfNZ6lQhZA1hHEY84elSKeyaYAqq
         3TgH6fHYCklRipGy2pCYGcKU1jDncajsafA1o38vqESWDlpDYlJ0ocsZXPKhcLNTyMJ8
         HBE0PhqiDOUQbP1fxSDFDA50olA6qielPt7f45RRzHF173CIo9qtBz9GhZZPyn9HPq27
         ceLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUVtckuEg7hGhFWtXKXMKz/8xefsNC/qWqV0aJCPt9RQpei00/osW4RiTVj8FeZcFsy1yDw1nzkxok@vger.kernel.org
X-Gm-Message-State: AOJu0YyZR3LeyVSf+XNXN04DmM0uZtZkA4sHyXftgr+mbmuPo7KxSPWE
	RMjFh8Byvd7h+MWq1NCq/8lFlgKRdcI/nR9DGcRcWv5M9Ynv5+fyw382vtCdo63yfds=
X-Gm-Gg: ASbGnctibN62UKXLt7JiOpYplqRpdRueVg6H7n2sQIU6mHXHy2oBx4IU1h8GEXG/lmW
	tTBPDTI7i8Sy/XU/9Sl788Wew0vk62VOL2VlIsz+iKWOZHCiqGYe668+c17Zv7we0QIlCrNxk3h
	SsF7V4dMEqqwWUjqHQwXzWfvHzz45xMmMXZ/FmN1pl7Z+UE6tQ4QfCFOBuxRkMLNwGvtz7734OV
	HjhY03ay+8VXB8AelH0zAnx35L/EeE7cFSX2dbKofgi+xakLsQl7s1ziTpt2ypIMeFyGn5I1uIs
	BTRvvaXk3RlMFf5Wsc3as5C7HlPFgP3iG4KL9QYMbUe4Cu8KX4/kzgX77mxyrQrj8ekbZwx2cNQ
	F3Toa9Tr+dAY5C2lP24nfpwoLaBGmJMUiASyPMdXf5DecIvpNSyMTV5+B2VYWkcNexgey+MdcTH
	hjeSQs6OtmPffDeNJLF9WGNACYol44wcGoo/mfser4Cm6Ea9QH2dUagA==
X-Google-Smtp-Source: AGHT+IGAFLCl48Lc20o0k175qMA8ECYoPcsbHgJr1TYSq+qDL1SyBGQ/3qEO66SBlR5lpciSN2paDA==
X-Received: by 2002:a05:6000:4012:b0:3df:9ba8:21a3 with SMTP id ffacd0b85a97d-4285326765cmr879407f8f.18.1761089728509;
        Tue, 21 Oct 2025 16:35:28 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3c56sm22616463f8f.18.2025.10.21.16.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 16:35:27 -0700 (PDT)
Message-ID: <9e71bd5c-e4d9-4b2b-bec9-95b101bdd91c@linaro.org>
Date: Wed, 22 Oct 2025 00:35:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] media: iris: Add support for multiple TZ content
 protection(CP) configs
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
 Vishnu Reddy <quic_bvisredd@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <vWebMQzqRdPJMtF45GS9wvdpHGc4w0O4Ft0KSmDAC54LhULoJZ_uNAW8KkJ8tbK4WKwvUVdeYtDuyZCH3Z_BBA==@protonmail.internalid>
 <20251017-knp_video-v2-3-f568ce1a4be3@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251017-knp_video-v2-3-f568ce1a4be3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/10/2025 15:16, Vikash Garodia wrote:
> vpu4 needs an additional configuration with respect to CP regions. Make
> the CP configuration as array such that the multiple configuration can be
> managed per platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/iris/iris_firmware.c   | 23 ++++++++++++---------
>   .../platform/qcom/iris/iris_platform_common.h      |  3 ++-
>   .../media/platform/qcom/iris/iris_platform_gen2.c  | 24 ++++++++++++++--------
>   .../platform/qcom/iris/iris_platform_sm8250.c      | 15 ++++++++------
>   4 files changed, 39 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_firmware.c b/drivers/media/platform/qcom/iris/iris_firmware.c
> index 9ab499fad946446a87036720f49c9c8d311f3060..9186e0144dc0df4045c9995adc5fc93993cc3fba 100644
> --- a/drivers/media/platform/qcom/iris/iris_firmware.c
> +++ b/drivers/media/platform/qcom/iris/iris_firmware.c
> @@ -70,9 +70,9 @@ static int iris_load_fw_to_memory(struct iris_core *core, const char *fw_name)
> 
>   int iris_fw_load(struct iris_core *core)
>   {
> -	struct tz_cp_config *cp_config = core->iris_platform_data->tz_cp_config_data;
> +	const struct tz_cp_config *cp_config;
>   	const char *fwpath = NULL;
> -	int ret;
> +	int i, ret;
> 
>   	ret = of_property_read_string_index(core->dev->of_node, "firmware-name", 0,
>   					    &fwpath);
> @@ -91,14 +91,17 @@ int iris_fw_load(struct iris_core *core)
>   		return ret;
>   	}
> 
> -	ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
> -					     cp_config->cp_size,
> -					     cp_config->cp_nonpixel_start,
> -					     cp_config->cp_nonpixel_size);
> -	if (ret) {
> -		dev_err(core->dev, "protect memory failed\n");
> -		qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
> -		return ret;
> +	for (i = 0; i < core->iris_platform_data->tz_cp_config_data_size; i++) {
> +		cp_config = &core->iris_platform_data->tz_cp_config_data[i];
> +		ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
> +						     cp_config->cp_size,
> +						     cp_config->cp_nonpixel_start,
> +						     cp_config->cp_nonpixel_size);
> +		if (ret) {
> +			dev_err(core->dev, "qcom_scm_mem_protect_video_var failed: %d\n", ret);
> +			qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
> +			return ret;
> +		}
>   	}
> 
>   	return ret;
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
> index df03de08c44839c1b6c137874eb7273c638d5f2c..ae49e95ba2252fc1442f7c81d8010dbfd86da0da 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
> @@ -220,7 +220,8 @@ struct iris_platform_data {
>   	u32 inst_fw_caps_dec_size;
>   	struct platform_inst_fw_cap *inst_fw_caps_enc;
>   	u32 inst_fw_caps_enc_size;
> -	struct tz_cp_config *tz_cp_config_data;
> +	const struct tz_cp_config *tz_cp_config_data;
> +	u32 tz_cp_config_data_size;
>   	u32 core_arch;
>   	u32 hw_response_timeout;
>   	struct ubwc_config_data *ubwc_config;
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> index fea800811a389a58388175c733ad31c4d9c636b0..00c6b9021b98aac80612b1bb9734c8dac8146bd9 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> @@ -648,11 +648,13 @@ static struct ubwc_config_data ubwc_config_sm8550 = {
>   	.bank_spreading = 1,
>   };
> 
> -static struct tz_cp_config tz_cp_config_sm8550 = {
> -	.cp_start = 0,
> -	.cp_size = 0x25800000,
> -	.cp_nonpixel_start = 0x01000000,
> -	.cp_nonpixel_size = 0x24800000,
> +static const struct tz_cp_config tz_cp_config_sm8550[] = {
> +	{
> +		.cp_start = 0,
> +		.cp_size = 0x25800000,
> +		.cp_nonpixel_start = 0x01000000,
> +		.cp_nonpixel_size = 0x24800000,
> +	},
>   };
> 
>   static const u32 sm8550_vdec_input_config_params_default[] = {
> @@ -771,7 +773,8 @@ struct iris_platform_data sm8550_data = {
>   	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
>   	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
>   	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
> -	.tz_cp_config_data = &tz_cp_config_sm8550,
> +	.tz_cp_config_data = tz_cp_config_sm8550,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
>   	.core_arch = VIDEO_ARCH_LX,
>   	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
>   	.ubwc_config = &ubwc_config_sm8550,
> @@ -864,7 +867,8 @@ struct iris_platform_data sm8650_data = {
>   	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
>   	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
>   	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
> -	.tz_cp_config_data = &tz_cp_config_sm8550,
> +	.tz_cp_config_data = tz_cp_config_sm8550,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
>   	.core_arch = VIDEO_ARCH_LX,
>   	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
>   	.ubwc_config = &ubwc_config_sm8550,
> @@ -947,7 +951,8 @@ struct iris_platform_data sm8750_data = {
>   	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
>   	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
>   	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
> -	.tz_cp_config_data = &tz_cp_config_sm8550,
> +	.tz_cp_config_data = tz_cp_config_sm8550,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
>   	.core_arch = VIDEO_ARCH_LX,
>   	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
>   	.ubwc_config = &ubwc_config_sm8550,
> @@ -1035,7 +1040,8 @@ struct iris_platform_data qcs8300_data = {
>   	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_qcs8300_dec),
>   	.inst_fw_caps_enc = inst_fw_cap_qcs8300_enc,
>   	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_qcs8300_enc),
> -	.tz_cp_config_data = &tz_cp_config_sm8550,
> +	.tz_cp_config_data = tz_cp_config_sm8550,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
>   	.core_arch = VIDEO_ARCH_LX,
>   	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
>   	.ubwc_config = &ubwc_config_sm8550,
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> index 1b1b6aa751106ee0b0bc71bb0df2e78340190e66..8927c3ff59dab59c7d2cbcd92550f9ee3a2b5c1e 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
> @@ -278,11 +278,13 @@ static const char * const sm8250_opp_clk_table[] = {
>   	NULL,
>   };
> 
> -static struct tz_cp_config tz_cp_config_sm8250 = {
> -	.cp_start = 0,
> -	.cp_size = 0x25800000,
> -	.cp_nonpixel_start = 0x01000000,
> -	.cp_nonpixel_size = 0x24800000,
> +static const struct tz_cp_config tz_cp_config_sm8250[] = {
> +	{
> +		.cp_start = 0,
> +		.cp_size = 0x25800000,
> +		.cp_nonpixel_start = 0x01000000,
> +		.cp_nonpixel_size = 0x24800000,
> +	},
>   };
> 
>   static const u32 sm8250_vdec_input_config_param_default[] = {
> @@ -348,7 +350,8 @@ struct iris_platform_data sm8250_data = {
>   	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8250_dec),
>   	.inst_fw_caps_enc = inst_fw_cap_sm8250_enc,
>   	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8250_enc),
> -	.tz_cp_config_data = &tz_cp_config_sm8250,
> +	.tz_cp_config_data = tz_cp_config_sm8250,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8250),
>   	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
>   	.num_vpp_pipe = 4,
>   	.max_session_count = 16,
> 
> --
> 2.34.1
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

