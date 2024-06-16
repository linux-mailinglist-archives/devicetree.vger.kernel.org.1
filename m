Return-Path: <devicetree+bounces-76143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3DD909C5C
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 09:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 818111F214F3
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 07:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C91180A96;
	Sun, 16 Jun 2024 07:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="teZHHJsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EE817B41E
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 07:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718524182; cv=none; b=OGdFhX07QH2maY7sK+DHH1kEXwK5o5h1V/DIY2d9fMy6VBu385xe1mS18MyE6yW05pKhEIjLvA3df/6O5DqEJCGO906lF8u0ZcTNcEpOhfpVT4c6xb/mR/13ury3adGAhUh/sNw2LQwHN9WOtfC3VZdzhJvEFDyeKCi2EGWBPEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718524182; c=relaxed/simple;
	bh=HejHULBzGymitulylESro3rXLowj2YYTSXNJaJtgz9M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N9Egpd2mmtYLVnjVnOQBw/PvSx3Y4xeASwYhpu5nExNPaHpLPZQTwurtDCNRor+f0iDGRU4UDJh687zk0kxJ33GoAsL/eFDqrIpNw4YoPHzRCT7/AyIqK98sFc0L5HegGFTZb8eCul1Ot+fItKBlSDHttA50xgRuS7LNJdnDIlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=teZHHJsX; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-57a44c2ce80so4033268a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 00:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718524178; x=1719128978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QwgXZsM35RnKSk3KbXQFEg1LMCCqtXq5AS0doiK9cKg=;
        b=teZHHJsXtSVcKGupegFtUap8/Uz0JZPNgwigg+unSjQpdHsLX0K0I6sHvOojhb3uR7
         EMY3WWxKa4PIlDYcF90YbewloI9CtkW6VAWytEKRN55GgCMmJs/WdzRRmzxYp19NFdvw
         kmVhVpW6ZAJMXYCFi1ysp7qoFfqOkq+v+fXay5wsyxEkDxAtZa0uJ5JIQ8Ym3Pa29WJk
         Y3osfheOW56qhQ3xCeZJnF2cxfcYFIC/N0IeK/kT5XS9r2NKnDU5f5kbA3jodS83PEb5
         OC2ocyfB768xm0JoOcTGI7Qsg6nCMaRyCZa3a3qZQHEmJGAzd2GopoG4XvkAJaYtodvQ
         yxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718524178; x=1719128978;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QwgXZsM35RnKSk3KbXQFEg1LMCCqtXq5AS0doiK9cKg=;
        b=C1/upBBqCrUW1HXb6sEyY080dJiYTnT7XO1bN+c3mHKEmIB3gGcGfKIwViqJMP+tn0
         xA0BH0pKv/lkbO4kLciFdNBxoXrOAFDdxLNQMw/QQvaSiQ7Nn332s4qHcCrhANH1xhgF
         LW5ijjnpnNeV1Mp6hOfJjvxQmRmrLnscPFqY1jme8i56bfoKTVE/VNwJjIr/Ijg403zt
         tnWft2lesmJ3rfRaxJSBtcP9/afkJZVh9sDkEgLZZmkhxsW4s8U/yAL+oVFSN81ksvaJ
         Omx+R9R4D40JDxhNuJ5Uy6sDucifCqDGKi7dEY4lwKCgsrouiDevukVh1/GB+6EsY69I
         qsfA==
X-Forwarded-Encrypted: i=1; AJvYcCWBupY20eJOHpWlDFnXx5krb4eJLa87qrVD0PfDt7LZcgAignM7FCEniTqk692uts04SrTyMYbrzHMQsV8obFMkLJIcBQPgVU2llg==
X-Gm-Message-State: AOJu0Ywz2xMHjatVIoQ8kQxZ2WF3tUwJI+CvrXzMy4JHZhWKcmcKHyVE
	voUbbBUfm0mHy7IQWBF/QkhK+/+kvAOuUIhIwCTpU1h4cY179003coS5VmikN0s=
X-Google-Smtp-Source: AGHT+IFXLyAxLYNUuQ0pk9G3q8JrkH0kIoDvGpD5TyjLj49AH6DlH5p1ronmgiZsyFu1Q2OaiLYBEQ==
X-Received: by 2002:a50:8746:0:b0:573:5c4f:27a8 with SMTP id 4fb4d7f45d1cf-57cbd8e7144mr4654273a12.35.1718524178136;
        Sun, 16 Jun 2024 00:49:38 -0700 (PDT)
Received: from [192.168.0.18] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72ce2b3sm4704451a12.14.2024.06.16.00.49.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jun 2024 00:49:37 -0700 (PDT)
Message-ID: <7ed1a911-ee75-4fb4-9223-c79fa5d3a293@linaro.org>
Date: Sun, 16 Jun 2024 09:49:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: lpassaudiocc-sc7280: Add support for LPASS
 resets for QCM6490
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 quic_jkona@quicinc.com, quic_imrashai@quicinc.com, devicetree@vger.kernel.org
References: <20240531102252.26061-1-quic_tdas@quicinc.com>
 <20240531102252.26061-3-quic_tdas@quicinc.com>
 <9eb80c39-562c-49de-b4fd-61d138247b7f@linaro.org>
 <7a0c9bbe-d499-428a-bfb4-deea45a345ce@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7a0c9bbe-d499-428a-bfb4-deea45a345ce@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/06/2024 12:03, Taniya Das wrote:
> 
> 
> On 5/31/2024 9:56 PM, Krzysztof Kozlowski wrote:
>> On 31/05/2024 12:22, Taniya Das wrote:
>>> On the QCM6490 boards the LPASS firmware controls the complete clock
>>> controller functionalities. But the LPASS resets are required to be
>>> controlled from the high level OS. The Audio SW driver should be able to
>>> assert/deassert the audio resets as required. Thus in clock driver add
>>> support for the same.
>>>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---
>>>   drivers/clk/qcom/lpassaudiocc-sc7280.c | 28 ++++++++++++++++++++++++++
>>>   1 file changed, 28 insertions(+)
>>>
>>> diff --git a/drivers/clk/qcom/lpassaudiocc-sc7280.c b/drivers/clk/qcom/lpassaudiocc-sc7280.c
>>> index c43d0b1af7f7..7fdfd07c111c 100644
>>> --- a/drivers/clk/qcom/lpassaudiocc-sc7280.c
>>> +++ b/drivers/clk/qcom/lpassaudiocc-sc7280.c
>>> @@ -1,6 +1,7 @@
>>>   // SPDX-License-Identifier: GPL-2.0-only
>>>   /*
>>>    * Copyright (c) 2021, The Linux Foundation. All rights reserved.
>>> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>>>    */
>>>   
>>>   #include <linux/clk-provider.h>
>>> @@ -869,10 +870,36 @@ static struct platform_driver lpass_aon_cc_sc7280_driver = {
>>>   	},
>>>   };
>>>   
>>> +static const struct of_device_id lpass_audio_cc_qcm6490_match_table[] = {
>>> +	{ .compatible = "qcom,qcm6490-lpassaudiocc" },
>>> +	{ }
>>> +};
>>> +MODULE_DEVICE_TABLE(of, lpass_audio_cc_qcm6490_match_table);
>>> +
>>> +static int lpass_audio_cc_qcm6490_probe(struct platform_device *pdev)
>>> +{
>>> +	lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc_reset";
>>> +	lpass_audio_cc_sc7280_regmap_config.max_register = 0xc8;
>>> +
>>> +	return qcom_cc_probe_by_index(pdev, 1, &lpass_audio_cc_reset_sc7280_desc);
>>> +}
>>> +
>>> +static struct platform_driver lpass_audio_cc_qcm6490_driver = {
>>> +	.probe = lpass_audio_cc_qcm6490_probe,
>>> +	.driver = {
>>> +		.name = "lpass_audio_cc-qcm6490",
>>> +		.of_match_table = lpass_audio_cc_qcm6490_match_table,
>>> +	},
>>> +};
>>> +
>>>   static int __init lpass_audio_cc_sc7280_init(void)
>>>   {
>>>   	int ret;
>>>   
>>> +	ret = platform_driver_register(&lpass_audio_cc_qcm6490_driver);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>>   	ret = platform_driver_register(&lpass_aon_cc_sc7280_driver);
>> Why this is a new platform driver?  There should be just one driver with
>> different match data.
>>
> 
> The main problem for me is that the current board(QCM6490) needs to be 
> only support a subset of the entire(only resets) functionality the 
> SC7280. If I redesign the probe function to pick the match data then I 
> might accidentally break the existing functionalities on SC7280 boards.

That's not a reason to not implement changes. Test your changes first.

> 
> Hence I thought to have a separate driver registration which looked a 
> cleaner approach to go away from the "of_device_is_compatible".

No. You over complicate simple case introducing unusual pattern.

Best regards,
Krzysztof


