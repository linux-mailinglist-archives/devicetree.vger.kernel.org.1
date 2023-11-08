Return-Path: <devicetree+bounces-14460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8F57E4E3C
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 01:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72E46280FC1
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 00:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D1463F;
	Wed,  8 Nov 2023 00:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y/Qro9zR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CBB641
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 00:47:06 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C92661700
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 16:47:05 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c5b7764016so85104081fa.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 16:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699404424; x=1700009224; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fxXEGNqHkCROwSi+05eOdPd8Sd9PO1LMoRgHN4n0oAM=;
        b=y/Qro9zRaSnMG3SCFs1GFHbyC+dMggpAFRn8Dhtyi3Gjwfn31KdPGzuCmhslqTGmrI
         h2nW1gDzNNCLs0p0RlG51QCd4E36LSDJuhw1IbMaCaWJN+ZYaR7akDGR6x3jVzKhpv6n
         yoSHRfcqXt4U1FA5pdReWrCcK9Ay58dmphYttG9nt1JGZefcCZMzfCc7SPB1Dgo8zhlH
         xBwKmzzlxIR3oAwOwzKoE1PAyTjeECz6zeivD1tduDJT3pQPilVYRSamnaOWQHf66FZc
         0IW2KfV4Uu0ZQdfqrRk2rPzGfDQix8XEeFDPUTcbSlx/BeLsvfADMcTGSQ+mqQaTnYLG
         G8lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699404424; x=1700009224;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fxXEGNqHkCROwSi+05eOdPd8Sd9PO1LMoRgHN4n0oAM=;
        b=NimhrRTEzlmRW5PGaL3aPX6zFqgaSjts0mv3eXFttvjl6tPoXp5N2noqGBYu696pNc
         FS1WRjnkWMoGhZxqIWjmMIIf4qMk/ZjUCS4kdr0dLddvuEUccc7yg+1wQl64wqs5u2f5
         AKMnBF6+Mm40eW3V7dvGS5sV0N/gtlta2NpinCxi9RsaGKCrTh5G41tdfnIEaioS4K7z
         F488yQ/9S8sSiTQblepg/sC6NBk9mZhYtsU0QQ1Nnt2Ob/xYV9LIroYour1XhQKpkPED
         ZUxxpDxy8o97yvLa5rM/TuggjQJVQyeXH+YVSo2uLoPrLAIu6Qxap5BmZ5bo5oIURWQq
         xrDA==
X-Gm-Message-State: AOJu0Yy388NwXN6e51DyfGm1zxWZDBu0CXtZYWYi9oaNn1QwipMPeWBI
	u613FtsB+AZ2YNxg8oWouZp1MQ==
X-Google-Smtp-Source: AGHT+IGMIX8wFIZGEr49kMo8SuWeyfpquE8WvWyM8NzCa8/zQ6brjMQRGNEGtiBTC651CY1T3J8NVw==
X-Received: by 2002:a05:651c:8b:b0:2c5:f1a:1f31 with SMTP id 11-20020a05651c008b00b002c50f1a1f31mr491337ljq.1.1699404424023;
        Tue, 07 Nov 2023 16:47:04 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id c14-20020a05600c0a4e00b004030e8ff964sm17960914wmq.34.2023.11.07.16.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 16:47:03 -0800 (PST)
Message-ID: <9601c3ca-c7a1-4c90-878d-feeccd9e6610@linaro.org>
Date: Wed, 8 Nov 2023 00:47:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] media: qcom: camss: Add sc8280xp resource details
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
 <20231105-b4-camss-sc8280xp-v3-4-4b3c372ff0f4@linaro.org>
 <871e668a-1732-4ed6-9d12-818504296464@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <871e668a-1732-4ed6-9d12-818504296464@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/11/2023 21:48, Konrad Dybcio wrote:
> 
> 
> On 11/5/23 18:45, Bryan O'Donoghue wrote:
>> This commit describes the hardware layout for the sc8280xp for the
>> following hardware blocks:
>>
>> - 4 x VFE, 4 RDI per VFE
>> - 4 x VFE Lite, 4 RDI per VFE
>> - 4 x CSID
>> - 4 x CSID Lite
>> - 4 x CSI PHY
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   drivers/media/platform/qcom/camss/camss.c | 383 
>> ++++++++++++++++++++++++++++++
>>   1 file changed, 383 insertions(+)
>>
>> diff --git a/drivers/media/platform/qcom/camss/camss.c 
>> b/drivers/media/platform/qcom/camss/camss.c
>> index 8778fdc1ee342..51619842f3925 100644
>> --- a/drivers/media/platform/qcom/camss/camss.c
>> +++ b/drivers/media/platform/qcom/camss/camss.c
>> @@ -941,6 +941,374 @@ static const struct resources_icc 
>> icc_res_sm8250[] = {
>>       },
>>   };
>> +static const struct camss_subdev_resources csiphy_res_sc8280xp[] = {
>> +    /* CSIPHY0 */
>> +    {
>> +        .regulators = {},
>> +        .clock = { "csiphy0", "csiphy0_timer" },
>> +        .clock_rate = { { 400000000 },
>> +                { 300000000 } },
>> +        .reg = { "csiphy0" },
>> +        .interrupt = { "csiphy0" },
>> +        .ops = &csiphy_ops_3ph_1_0
>> +    },
>> +    /* CSIPHY1 */
>> +    {
>> +        .regulators = {},
>> +        .clock = { "csiphy1", "csiphy1_timer" },
>> +        .clock_rate = { { 400000000 },
>> +                { 300000000 } },
>> +        .reg = { "csiphy1" },
>> +        .interrupt = { "csiphy1" },
>> +        .ops = &csiphy_ops_3ph_1_0
>> +    },
>> +    /* CSIPHY2 */
>> +    {
>> +        .regulators = {},
>> +        .clock = { "csiphy2", "csiphy2_timer" },
>> +        .clock_rate = { { 400000000 },
>> +                { 300000000 } },
>> +        .reg = { "csiphy2" },
>> +        .interrupt = { "csiphy2" },
>> +        .ops = &csiphy_ops_3ph_1_0
>> +    },
>> +    /* CSIPHY3 */
>> +    {
>> +        .regulators = {},
>> +        .clock = { "csiphy3", "csiphy3_timer" },
>> +        .clock_rate = { { 400000000 },
>> +                { 300000000 } },
>> +        .reg = { "csiphy3" },
>> +        .interrupt = { "csiphy3" },
>> +        .ops = &csiphy_ops_3ph_1_0
>> +    },
>> +};
>> +
>> +static const struct camss_subdev_resources csid_res_sc8280xp[] = {
>> +    /* CSID0 */
>> +    {
>> +        .regulators = { "vdda-phy", "vdda-pll" },
>> +        .clock = { "vfe0_csid_src", "vfe0_csid", "cphy_rx_src",
>> +               "vfe0_cphy_rx", "vfe0_src", "vfe0", "vfe0_axi" },
> This looks like downstream hack copypasta.. All the _src clocks
> should be axed from here, from the camss bindings and simply be
> enabled with CLK_OPS_PARENT_ENABLE on their children (which should
> be the default for all branch clocks anyway eh)

This is a legitimate comment though, at least in principle,.

I ought to be able to drop vfe0_src and vfe0_csid_src since they should 
be the roots for vfe0 and vfe0_csid.

I will see what can be rationalised in this list tomorrow.

---
bod

