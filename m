Return-Path: <devicetree+bounces-49928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDAD878BC6
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 01:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E7EB1F21BA8
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 00:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BE8181;
	Tue, 12 Mar 2024 00:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jH+2Iac9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFCFAD4C
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 00:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710201845; cv=none; b=d9uoEGf0YM5IMS7+M+zYHuspnoNsW2hIUgXXPooKIt8mGG2GvG+4D4zb1CKNP1eyzLC7VyF4zzvbJAfzpUnRccGg+CmEHcyc1mdE8Q8dH7rtx/1jaIAdsaAuD9itfQjOy98f+n6vqXP144w1/4jBTpzrJkwMIpCwGKlKW8hLs9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710201845; c=relaxed/simple;
	bh=GtWzUpROLy03of4DzRBU4Zj6eH43yIsxZ63cj2+uvk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VFI3EPhIg2iLZxZDPVrGS2tJeBp3Wvkq+ZdmpKopFhvcZwxqD7k8nLE/9Q3GMhP/aQuRjhka9k0xq9t5wwGQzYqI8bvaYfnIvrGqb8CK7nL4q02teu9et0tuZ4TKFna54mx2lmw/0VZXKrJU6zOzwHxbWjfnMSQ1K2tsRxpaYMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jH+2Iac9; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5135486cfccso4565691e87.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 17:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710201841; x=1710806641; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BQpqFFicQ5YfomKVXzegGQYmkOjou4tROZ8z6s/Q/bE=;
        b=jH+2Iac9k/rDZ+xgG4jZbQpeTCnJDJB4jJsSVdVz5AeAtzD6pzaGz4cz9IXSrPwrpM
         pU7opKFPH0m5gFm8LebMbVLf/Vtl1jYIWASRUFNlydkzDLry3I+va7l2K1z2NlO49RvX
         rZEI6N8UmxWrO/4CIZ6smHIU1jDpFvI7jPJ1MIl1/c8B6+8k2UYVp9prAMY3Gt6hXQnF
         2TRBiv7uuedsyTAoH9ZaY4Djf/Wf9cyZ5DAkqdGEKwlhLr5Z7dbVNS0I+gVyV96Nuybc
         nyYzHqKmnZxy/blq3zeknbaOtSY0nUB992Ka0mTmk5UY2pSU6FsYaL2T22qe9mltJ/Fq
         yHMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710201841; x=1710806641;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQpqFFicQ5YfomKVXzegGQYmkOjou4tROZ8z6s/Q/bE=;
        b=peq6lSN25B5odlo+enPb3se8YjhzO61tosGxlM2dTxk8mXX9qivjF6W3QpeKRIy5Ub
         E4xgWofPJGJRu9CpegyftNEveiLzK0MiURu3/S4YcBCZzrQirkLmmyDFEh1BfOkehiGe
         eZE5im4zyLhltNz1o56S5wbgpaojTmDI/M8Fj+iLrrh2Pg8vYQR3zSxvmfVoVbq5JoSB
         NzSRJobuhiFM9/IXNGqo66ZZDRtVxU/tnrIRYQZ6KJ9VyQ81bSH/QaQxvsbNgTssayJd
         w0L1xtMhm/6Sw6a93SX1zTy8wfyWtIMaCJxxgRyEqkjzlUo/tzTXF7eiXtCGREfWM8ms
         9L4g==
X-Forwarded-Encrypted: i=1; AJvYcCVMEMJ31+B6mIGKPCE6mJsiSY+64zmacH6mxFfg6ldXT8ur1JamG6VPKDGpJXIywhaefw2o2WebbR10SwGapIl1/wUFEN/3xkrr4w==
X-Gm-Message-State: AOJu0YyDcgp9/yvcFuHChrTFLvxd2wy2u+OHMixOWUIxOhBlH/i3sSEp
	Zc4SvoWDsRJEjKI2IoC94i/FL09MH5RGp+hqnoLFtbh/K0keZtzBQEyoZbnO46M=
X-Google-Smtp-Source: AGHT+IH6yRmOXext+BOdsK7e8To7SfioRgtqDEWmkaxrfNU+TvvgE17KOn0grChRMEn/Uu4NSlYjhQ==
X-Received: by 2002:a19:ca17:0:b0:513:3fa6:efe3 with SMTP id a23-20020a19ca17000000b005133fa6efe3mr5254639lfg.8.1710201841082;
        Mon, 11 Mar 2024 17:04:01 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n16-20020ac24910000000b00512ebe62693sm1300360lfi.255.2024.03.11.17.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Mar 2024 17:04:00 -0700 (PDT)
Message-ID: <e787706d-b5ef-40bd-9fa8-fed784a9d7b7@linaro.org>
Date: Tue, 12 Mar 2024 01:04:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: qdu1000-idp: enable USB nodes
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Amrit Anand <quic_amrianan@quicinc.com>
References: <20240311120859.18489-1-quic_kbajaj@quicinc.com>
 <20240311120859.18489-3-quic_kbajaj@quicinc.com>
 <CAA8EJpqMWBWAEUCiJXm0x7zjZYbP8SkRDgu+w+goYjB=8JBN0A@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJpqMWBWAEUCiJXm0x7zjZYbP8SkRDgu+w+goYjB=8JBN0A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/11/24 13:14, Dmitry Baryshkov wrote:
> On Mon, 11 Mar 2024 at 14:10, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>>
>> Enable both USB controllers and associated hsphy and qmp phy nodes
>> on QDU1000 IDP.
>>
>> Co-developed-by: Amrit Anand <quic_amrianan@quicinc.com>
>> Signed-off-by: Amrit Anand <quic_amrianan@quicinc.com>
>> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 24 ++++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
>> index 89b84fb0f70a..126bc71afd90 100644
>> --- a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
>> +++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
>> @@ -500,3 +500,27 @@ &tlmm {
>>   &uart7 {
>>          status = "okay";
>>   };
>> +
>> +&usb_1 {
>> +       status = "okay";
>> +};
>> +
>> +&usb_1_dwc3 {
>> +       dr_mode = "peripheral";
> 
> Are these ports really peripheral-only?
> 
>> +       maximum-speed = "high-speed";

More importantly, are these ports really HS-only?

Konrad

