Return-Path: <devicetree+bounces-7707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE5E7C5228
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:32:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BB101C20C28
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5AD1E524;
	Wed, 11 Oct 2023 11:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lUTrVc3r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D86B35506
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:32:29 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BBB6B0
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:32:27 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-317c3ac7339so6110004f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697023946; x=1697628746; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DsAOowwWi0mesEKoVHK/FxVP45knAnyTgl6rwq9d2Wk=;
        b=lUTrVc3rbmUmso8qs5tXp6uyqqbg3KlfOS0wTeIyOFfoVnEEiZIaLMI7yra6lV30I4
         LxgJlj1BRP0boHaeIDR/7qlF9Cl6rvK4Bq1/Yrb+Xuxfp220vyFolFqEBNub81spCKts
         M3/0p4DehkEG+AaWM2SmJYyVg3Ah3OQtdFA4RHF6g7I9Jsn0Y7Mwnz9U8NU/csw6TqBf
         BoYxYIO5Xl0MLRUgtmCzNBRmMptoKP5QuA8oIzNbXVDez2WuCPtEJOwWLH05CI2qWk9B
         eGPuzitegsVKH43ycpFtdTWDmQiGEYPk4jV4zRDQ3Wp4Y6wLdGU5Bve3aWlDpEfeOlTw
         BEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697023946; x=1697628746;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DsAOowwWi0mesEKoVHK/FxVP45knAnyTgl6rwq9d2Wk=;
        b=Q22HmDX9KPh4NdaG4gZm5dpJz+D7WUVasfa5txcoizlkpGCAPJ1yYsG1C9icPDyWvr
         /lGt+8p13X/YjuPrOYBDp1QN3A8vtKRDn7FzjgVb7W8ckoamBZNVvND0XB44QLbXun3x
         Qk38M/SmEulIVb7CurgOX/4cDqwHLrLcaBpLfrRJrWd/7tGC0pusgNHtc0O7wOhuypnD
         585T39KS3xjWrCZyVq47CyWN/iICtR7qZxsJ+NKQy2xdQIQ3Lz8OiHXQe9bKlZRdf68t
         oXGwmyqVAvCEQkA0dUzbQUiQcFcwgcL+7Rn+tfE7VF9XNUTIrfONdgsGv2GUWX3dZpet
         IUsw==
X-Gm-Message-State: AOJu0YxMu0WrtCrpm0a2kBDyPn6jLNPVm/6rXey+WlY4Tn9Hweh27Pig
	3UTXsx5iqov+iwA1NywDRoIzSw==
X-Google-Smtp-Source: AGHT+IFVqtSBtBksjGsb0ABOial+OCLDVVV8fSQM2KSkd89dHm4/o/uhzWuDJfp//dH7f49WpCFPpA==
X-Received: by 2002:adf:fc4c:0:b0:319:785a:fce0 with SMTP id e12-20020adffc4c000000b00319785afce0mr18564439wrs.26.1697023945994;
        Wed, 11 Oct 2023 04:32:25 -0700 (PDT)
Received: from [172.30.204.240] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n20-20020adf8b14000000b003296b62d413sm14830649wra.82.2023.10.11.04.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 04:32:25 -0700 (PDT)
Message-ID: <f97d167e-688e-428d-8463-5b315b9a9593@linaro.org>
Date: Wed, 11 Oct 2023 13:32:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/4] clk: qcom: add clock controller driver for
 qca8386/qca8084
Content-Language: en-US
To: Jie Luo <quic_luoj@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_srichara@quicinc.com
References: <20230923112105.18102-1-quic_luoj@quicinc.com>
 <20230923112105.18102-5-quic_luoj@quicinc.com>
 <10bcb0cc-19db-4914-bbc4-ef79c238a70d@linaro.org>
 <49c8a8ff-bdb9-a523-9587-d2a46d401e41@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <49c8a8ff-bdb9-a523-9587-d2a46d401e41@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 13:26, Jie Luo wrote:
> 
> 
> On 10/11/2023 6:25 PM, Bryan O'Donoghue wrote:
>> On 23/09/2023 12:21, Luo Jie wrote:
>>> The clock controller driver of qca8386/qca8084 is registered
>>> as the MDIO device, the hardware register is accessed by MDIO bus
>>> that is normally used to access general PHY device, which is
>>> different from the current existed qcom clock controller drivers
>>> using ioremap to access hardware clock registers.
>>
>> "nsscc-qca8k is accessed via an MDIO bus"
>>
>>> MDIO bus is common utilized by both qca8386/qca8084 and other
>>
>> commonly
>>
>>> PHY devices, so the mutex lock mdio_bus->mdio_lock should be
>>> used instead of using the mutex lock of remap.
>>>
>>> To access the hardware clock registers of qca8386/qca8084, there
>>> is special MDIO frame sequence(three MDIO read/write operations)
>>> need to be sent to device.
>>
>> "there is a special MDIO frame sequence"
>>
>> "which needs to be sent to the device"
> 
> I will update the comments, thanks Bryan.
> 
>>
>> the following indentation splat from checkpatch
>>
>> CHECK: Alignment should match open parenthesis
>> #2071: FILE: drivers/clk/qcom/nsscc-qca8k.c:2004:
>> +        ret = __mdiobus_write(bus, switch_phy_id, (reg | 
>> QCA8K_REG_DATA_UPPER_16_BITS),
>> +                upper_16_bits(val));
>>
>> CHECK: Alignment should match open parenthesis
>> #2131: FILE: drivers/clk/qcom/nsscc-qca8k.c:2064:
>> +static int qca8k_regmap_update_bits(void *context, unsigned int regaddr,
>> +        unsigned int mask, unsigned int value)
>>
>> total: 0 errors, 1 warnings, 2 checks, 2162 lines checked
>>
>> NOTE: For some of the reported defects, checkpatch may be able to
>>        mechanically convert to the typical style using --fix or 
>> --fix-inplace.
>>
>> 0004-clk-qcom-add-clock-controller-driver-for-qca8386-qca.patch has 
>> style problems, please review.
> 
> Thanks Bryan for the review. The code line mentioned by CHECK is more 
> than 100 columns, so i separate the lines.
Please read what checkpatch tells you.

It asks you to change

very_long_func_name(arg1, arg2,
	arg3);

to

very_long_func_name(arg1, arg2,
		    arg3);

(remember tab len is 8 for the linux kernel)

Konrad

