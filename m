Return-Path: <devicetree+bounces-165547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A99A84942
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:08:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F41D16F5B9
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 946781EB5D0;
	Thu, 10 Apr 2025 16:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kv6hALmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B0C1EA7D4
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744301187; cv=none; b=UplhhFdpH/Y9/5teb88cAp+rfl3YAOCXYCM28c8IJbYP8zcN32OuKwIOMhYd60Rv01ofSnzvDXxm94WBr0epDLVknEH/rH38p3C+kPmAjfh9KOOSyOxVGF9oND9knXAG4lWBx0hl84uDInwqjO85/O+JhT+5EUitUU2I+JB4EYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744301187; c=relaxed/simple;
	bh=Z/+pIx183ZqhC6dbLA2bEzx8LGs6zCrtEsOL1W2vNFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XsxbErtqTI/aX+O65wa4r4GhBkZOIUuPJorm29y2NL2DGbN19Q2AVnpO7yZCKIM2McbYO6/p56JaBmBwBWcS8Zig8Wyg9tTuxMKKntzfBZcveXZwOthkHRAKLfGOBA7P3J+Du7MPUgJ3b11DxigN6d7mm6HXp6xbw72TL4B19rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kv6hALmQ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso7786985e9.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744301183; x=1744905983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uNANuCdKbQEweCi3G2Fd19BgtgZsZ5dY4zsAI5oU5dU=;
        b=kv6hALmQxCX7EFJDN0mG5xSNkeiDKHunqCgdTk6DgCosMSe4B/S56SkQab7q5HbKQ5
         lt0abLvahoMtgSDxxjmfvSsj/F1/boTDZTYgnO5kNIwbg4fgv9eR/0x2MREhXJg/M6sS
         xvseAf0PeUJxxFEInbRVoOB5dztlDAnLk9ejmnLD86xoJeO2VQyNCwdg/XajCIJn/NIY
         NwlUUo/C6g/QEsZ/FgrbHkLwFzlyZ0OrSUh06tON/ESdN6C3LfLcTXGkkbAWZB6azf8I
         UMksSjWtsGhi2rh5fh4QgdNAnTCuXQoawIMPViH5Jgy0nqsP+UK2KpVtuF626iD4tjbw
         s/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744301183; x=1744905983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uNANuCdKbQEweCi3G2Fd19BgtgZsZ5dY4zsAI5oU5dU=;
        b=twv8T5KUjdWP0Xv/8deADKlDn86m39YaYuR+ikdaqyi0WCx3eF/fV3EdSu3JPDg3Bp
         lGDPDvjD2+F9mbLUa7lo/AOJeDfe8IQ3sv0Ux06Jw/jdelEQOmsDEUhlk/1QoYSK/iI9
         g2kKs7RityVGm1TMv4FYVhTxkv+mAOw/3BYHew0eN2tgsC/AOSTSqj9YxMFmfLlzjZto
         5g96kqr3KiTsosx0oUFpMynNgynSYHGbcCmIQUW3La9dpqCB98FjnoaJsbIteNY9WHyx
         9agLxN4lKcFsoQmRYFxSgs72Neg00rd6ytMWXHunWdNjY/6FsCjjBJGhxSqZO+HXwpo/
         Pfog==
X-Forwarded-Encrypted: i=1; AJvYcCVJelvHZxyTkq3SJK9gqnVbHHofVGaCGuag43wqy/jXL1h4l/AOD3KTboAgTo7nwR9nhMhJOKn9GGe9@vger.kernel.org
X-Gm-Message-State: AOJu0YxUqbVT1Z5wZBAfsApAzOHHTLvt1LDaU5eKnQNLw0g8u9SJnPXE
	8ZarowwEhQ75ctMUj+A9aq4YHfjTGQJu0mMyZ8wUd0z8ymFRCY86z6o5SVU+bEw=
X-Gm-Gg: ASbGncvChsWaTSM8el4+7EmEXnw6SMDq8nkkkouoKpFuFBqzBcAm51BYmyshYN54pcM
	AYqN8vEZ2lsJNzNZN4BXdu66toXzBRnesv+W7S03QLHSFY0G03QfYD5S5P52dkRoekZrvsmWq53
	OYcttYcZ8H2TBpA1OV2IFn/k9qDNIaSZXCXf/IIeBiCwkt7NhhkrynjswG5GTQL1UGGpE/OQpUz
	pHtxEfa+Cymu0U7hRjq3EQyIeLept4dBZUWYYCNbOi8n9+cl9Xd0SwinmXwUvlVOjXQ2zG7s/U1
	w7D9qTX5Jl5LFopwRSpPU2MQknnZz7GICt3n1ZIHT4a/9UeogF6xPiaNDjx3AestIgyMgsBuOgc
	KlwnyHQ==
X-Google-Smtp-Source: AGHT+IFEQAlBtsd3c3WM20Ox494H4GnJiH3quGOuq3BsVzf5gTiqvKwfAHkZTbHznDN+fyFizN/S6A==
X-Received: by 2002:a05:6000:4313:b0:391:3207:2e6f with SMTP id ffacd0b85a97d-39d8fd8c3b9mr3053897f8f.42.1744301183470;
        Thu, 10 Apr 2025 09:06:23 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2075a593sm59722495e9.25.2025.04.10.09.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 09:06:22 -0700 (PDT)
Message-ID: <e6dca8e2-d550-4819-9833-ecbbd1a8f376@linaro.org>
Date: Thu, 10 Apr 2025 17:06:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] media: platform: qcom/iris: add sm8650 support
To: neil.armstrong@linaro.org, Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org>
 <20250409-topic-sm8x50-iris-v10-v4-6-40e411594285@linaro.org>
 <36e25d6e-36de-fec6-e54d-0683503c7a09@quicinc.com>
 <1550c870-188e-4b41-b17c-2009cda41ffc@linaro.org>
 <8cade183-72ac-eac1-1a57-a9db37657fca@quicinc.com>
 <a51e2e8a-bd7b-7d30-8cd6-9438b053ea2c@quicinc.com>
 <fb5cfe3a-36bf-4722-be7a-20e7f0c803bd@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <fb5cfe3a-36bf-4722-be7a-20e7f0c803bd@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/04/2025 16:40, neil.armstrong@linaro.org wrote:
> On 10/04/2025 15:07, Dikshita Agarwal wrote:
>>
>>
>> On 4/10/2025 2:43 PM, Vikash Garodia wrote:
>>>
>>> On 4/10/2025 2:31 PM, Neil Armstrong wrote:
>>>> On 09/04/2025 18:57, Vikash Garodia wrote:
>>>>> Hi Neil,
>>>>>
>>>>> On 4/9/2025 8:08 PM, Neil Armstrong wrote:
>>>>>> Add support for the SM8650 platform by re-using the SM8550
>>>>>> definitions and using the vpu33 ops.
>>>>>>
>>>>>> The SM8650/vpu33 requires more reset lines, but the H.264
>>>>>> decoder capabilities are identical.
>>>>>>
>>>>>> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
>>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>> ---
>>>>>>    .../platform/qcom/iris/iris_platform_common.h      |  1 +
>>>>>>    .../platform/qcom/iris/iris_platform_sm8550.c      | 64 +++++++ 
>>>>>> +++++++++++++++
>>>>>>    drivers/media/platform/qcom/iris/iris_probe.c      |  4 ++
>>>>>>    3 files changed, 69 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> b/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> index
>>>>>> fdd40fd80178c4c66b37e392d07a0a62f492f108..6bc3a7975b04d612f6c89206eae95dac678695fc 100644
>>>>>> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> @@ -35,6 +35,7 @@ enum pipe_type {
>>>>>>      extern struct iris_platform_data sm8250_data;
>>>>>>    extern struct iris_platform_data sm8550_data;
>>>>>> +extern struct iris_platform_data sm8650_data;
>>>>>>      enum platform_clk_type {
>>>>>>        IRIS_AXI_CLK,
>>>>>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
>>>>>> b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
>>>>>> index
>>>>>> 35d278996c430f2856d0fe59586930061a271c3e..d0f8fa960d53367023e41bc5807ba3f8beae2efc 100644
>>>>>> --- a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
>>>>>> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
>>>>>> @@ -144,6 +144,10 @@ static const struct icc_info 
>>>>>> sm8550_icc_table[] = {
>>>>>>      static const char * const sm8550_clk_reset_table[] = { "bus" };
>>>>>>    +static const char * const sm8650_clk_reset_table[] = { "bus", 
>>>>>> "core" };
>>>>>> +
>>>>>> +static const char * const sm8650_controller_reset_table[] = 
>>>>>> { "xo" };
>>>>>> +
>>>>>>    static const struct bw_info sm8550_bw_table_dec[] = {
>>>>>>        { ((4096 * 2160) / 256) * 60, 1608000 },
>>>>>>        { ((4096 * 2160) / 256) * 30,  826000 },
>>>>>> @@ -264,3 +268,63 @@ struct iris_platform_data sm8550_data = {
>>>>>>        .dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
>>>>>>        .dec_op_int_buf_tbl_size = 
>>>>>> ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
>>>>>>    };
>>>>>> +
>>>>>> +/*
>>>>>> + * Shares most of SM8550 data except:
>>>>>> + * - vpu_ops to iris_vpu33_ops
>>>>>> + * - clk_rst_tbl to sm8650_clk_reset_table
>>>>>> + * - controller_rst_tbl to sm8650_controller_reset_table
>>>>>> + * - fwname to "qcom/vpu/vpu33_p4.mbn"
>>>>>> + */
>>>>>> +struct iris_platform_data sm8650_data = {
>>>>>> +    .get_instance = iris_hfi_gen2_get_instance,
>>>>>> +    .init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
>>>>>> +    .init_hfi_response_ops = iris_hfi_gen2_response_ops_init,
>>>>>> +    .vpu_ops = &iris_vpu33_ops,
>>>>>> +    .set_preset_registers = iris_set_sm8550_preset_registers,
>>>>>> +    .icc_tbl = sm8550_icc_table,
>>>>>> +    .icc_tbl_size = ARRAY_SIZE(sm8550_icc_table),
>>>>>> +    .clk_rst_tbl = sm8650_clk_reset_table,
>>>>>> +    .clk_rst_tbl_size = ARRAY_SIZE(sm8650_clk_reset_table),
>>>>>> +    .controller_rst_tbl = sm8650_controller_reset_table,
>>>>>> +    .controller_rst_tbl_size = 
>>>>>> ARRAY_SIZE(sm8650_controller_reset_table),
>>>>>> +    .bw_tbl_dec = sm8550_bw_table_dec,
>>>>>> +    .bw_tbl_dec_size = ARRAY_SIZE(sm8550_bw_table_dec),
>>>>>> +    .pmdomain_tbl = sm8550_pmdomain_table,
>>>>>> +    .pmdomain_tbl_size = ARRAY_SIZE(sm8550_pmdomain_table),
>>>>>> +    .opp_pd_tbl = sm8550_opp_pd_table,
>>>>>> +    .opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>>>>>> +    .clk_tbl = sm8550_clk_table,
>>>>>> +    .clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
>>>>>> +    /* Upper bound of DMA address range */
>>>>>> +    .dma_mask = 0xe0000000 - 1,
>>>>>> +    .fwname = "qcom/vpu/vpu33_p4.mbn",
>>>>>> +    .pas_id = IRIS_PAS_ID,
>>>>>> +    .inst_caps = &platform_inst_cap_sm8550,
>>>>>> +    .inst_fw_caps = inst_fw_cap_sm8550,
>>>>>> +    .inst_fw_caps_size = ARRAY_SIZE(inst_fw_cap_sm8550),
>>>>>> +    .tz_cp_config_data = &tz_cp_config_sm8550,
>>>>>> +    .core_arch = VIDEO_ARCH_LX,
>>>>>> +    .hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
>>>>>> +    .ubwc_config = &ubwc_config_sm8550,
>>>>>> +    .num_vpp_pipe = 4,
>>>>>> +    .max_session_count = 16,
>>>>>> +    .max_core_mbpf = ((8192 * 4352) / 256) * 2,
>>>>>> +    .input_config_params =
>>>>>> +        sm8550_vdec_input_config_params,
>>>>>> +    .input_config_params_size =
>>>>>> +        ARRAY_SIZE(sm8550_vdec_input_config_params),
>>>>>> +    .output_config_params =
>>>>>> +        sm8550_vdec_output_config_params,
>>>>>> +    .output_config_params_size =
>>>>>> +        ARRAY_SIZE(sm8550_vdec_output_config_params),
>>>>>> +    .dec_input_prop = sm8550_vdec_subscribe_input_properties,
>>>>>> +    .dec_input_prop_size = 
>>>>>> ARRAY_SIZE(sm8550_vdec_subscribe_input_properties),
>>>>>> +    .dec_output_prop = sm8550_vdec_subscribe_output_properties,
>>>>>> +    .dec_output_prop_size =
>>>>>> ARRAY_SIZE(sm8550_vdec_subscribe_output_properties),
>>>>>> +
>>>>>> +    .dec_ip_int_buf_tbl = sm8550_dec_ip_int_buf_tbl,
>>>>>> +    .dec_ip_int_buf_tbl_size = 
>>>>>> ARRAY_SIZE(sm8550_dec_ip_int_buf_tbl),
>>>>>> +    .dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
>>>>>> +    .dec_op_int_buf_tbl_size = 
>>>>>> ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
>>>>>> +};
>>>>> While i was extending the data for QCS8300 (one another iris-v3 
>>>>> variant), i
>>>>> realize that this file iris_platform_sm8550.c is getting dumped 
>>>>> with all SOC
>>>>> platform data. It would be a good idea at this point to split it 
>>>>> into something
>>>>> like this
>>>>> 1. Introduce SOC specific c file and move the respective SOC 
>>>>> platform data to
>>>>> it, for ex, in this case sm8650_data
>>>>> 2. Move the common structs from iris_platform_sm8550.c to
>>>>> iris_platform_common.h. This way more SOCs getting added in future, 
>>>>> can include
>>>>> the common header to reuse them, otherwise it would end up using 
>>>>> 8550.c for all
>>>>> future SOC.
>>>>>
>>>>> Share your comments if you have any better approach to manage/re- 
>>>>> use these
>>>>> platform data considering more SOCs getting added.
>>>>
>>>> Right, yes the architecture is fine, but I don't feel 
>>>> iris_platform_common is
>>>> the right
>>>> place, perhaps we could introduce a platform_catalog.c where we 
>>>> could place all
>>>> the common
>>>> platform data and reuse them from the platform_<soc>.c files ?
>>> Common structs would certainly need to be part of a header which can be
>>> included. Where do you plan to keep common struct to be used across 
>>> SOC specific
>>> file in your approach ?
>>>>
>>>> I can design prototype on top of this patchset as an RFC.
>>> I was thinking that the changes are not that big, and can be done in 
>>> existing
>>> series though.
>>>
>> For now, I think you can introduce a platform_sm8650.c as part of this
>> series and use the common structure from platform_sm8550.c.
>> Shouldn't be a big change.
> 
> I tried but I don't how to solve this, you need a build-time ARRAY_SIZE for
> the arrays, so they need to be in the same .c file to allow a build-time
> evaluation of ARRAY_SIZE. If he common tables are moved into a header
> they will be duplicated into both platform_sm8650 & platform_sm8550 objects
> which is not what we want.
> 
> The solution would be to write all the platform tables & iris_platform_data
> into headers, with common headers, then include those into a 
> platform_catalog.c
> like is done for the drm/msm/dpu1 catalog.
> 
> Neil
> 
>>
>> Later you can post a separate patch series to add platform_catalog.c and
>> have common struct placed there which can be used across different SOC
>> platform files.
>>
>> or other way is,
>> Post a patch series to introduce platform_catalog.c with common struct 
>> and
>> then rebase your 8650 series on top of it.
>>
>> Thanks,
>> Dikshita
>>> Thanks,
>>> Vikash
>>>>
>>>> Neil
>>>>
>>>>>
>>>>> Regards,
>>>>> Vikash
>>>>>
>>>>>> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c
>>>>>> b/drivers/media/platform/qcom/iris/iris_probe.c
>>>>>> index
>>>>>> 4f8bce6e2002bffee4c93dcaaf6e52bf4e40992e..7cd8650fbe9c09598670530103e3d5edf32953e7 100644
>>>>>> --- a/drivers/media/platform/qcom/iris/iris_probe.c
>>>>>> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
>>>>>> @@ -345,6 +345,10 @@ static const struct of_device_id 
>>>>>> iris_dt_match[] = {
>>>>>>                .data = &sm8250_data,
>>>>>>            },
>>>>>>    #endif
>>>>>> +    {
>>>>>> +        .compatible = "qcom,sm8650-iris",
>>>>>> +        .data = &sm8650_data,
>>>>>> +    },
>>>>>>        { },
>>>>>>    };
>>>>>>    MODULE_DEVICE_TABLE(of, iris_dt_match);
>>>>>>
>>>>
> 

Eh as I read the suggestion about putting the structs - instantiating 
the structs in the header, I wondered if that would link but anyway.

One way to solve this without going the dpu1 route right now is to 
rename the platform files

iris_platform_sm8250.c -> iris_platform_common_hfi_gen1.c
iris_platform_sm8550.c -> iris_platform_common_hfi_gen2.c

The differentiation around HFI into "generations" instead of 
incrementing the already existing HFIXXX version is unfortunate.

At least this way we have a repository of common HFI code located in 
each file, in expectation of HFI GEN3 whenever.

---
bod

