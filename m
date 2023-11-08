Return-Path: <devicetree+bounces-14459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F40727E4E32
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 01:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31AE21C20D87
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 00:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAAE1C29;
	Wed,  8 Nov 2023 00:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MJ7iTFmg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1CE1375
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 00:36:05 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0A1310F9
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 16:36:04 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507a29c7eefso8003329e87.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 16:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699403763; x=1700008563; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tLCtsTg94ZkYKlxM35PI/7QpN+IW2xY9/USBi3sx8e0=;
        b=MJ7iTFmgyaWBmmY4IGaip5aDrJrcOq9jDFtsabyuT1LUHyrsNQMcm/ctN1gzE7fygf
         eoZTJ1wqNcXJQBq+10gxZsont/tB/4blfYDuXM1XPjQsgZI1MMjg6l4EtN9UUJ/Aoh62
         zyUst9rAuz8ZP5boXAsW3fv2b2SEdXajpuV0CcYJdQegfazIVJaes3KFjNM66MVZClXT
         yaLFq2Xlpq6LOsbgeyej1sYmrBqpqeOK6dRAo7VyEov8YVsObJEkZOCSHKo33rjbmHAp
         XAjS1msE1UQkRIgZa+wJcT5NEF5P6Bc7oE741KOYwU6S/lplbdssm3egY1zIFdU1B1L5
         s+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699403763; x=1700008563;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tLCtsTg94ZkYKlxM35PI/7QpN+IW2xY9/USBi3sx8e0=;
        b=th7AWVFbSgYu0BCT4hB5bHF4PVY/Lsb4q40TR3AGmCxMz8mD8duns8xyqaVvdmP0jo
         kJXC3KNLIhMgrw1nMovkwipxm1GZ0D4Rke3fuX7fnado2epJ3OJDoB43284W5hkdWULb
         H1mjwnjRa/RaJiED/nPUqoyAo6Oj70WgxaALLi9FbA+bcE9jR79Cr3EpWOf/cRcTNyGD
         O0QJi81HvMro1KPsrCAmgZFaIFSlVEEAZpYEp6MoA46rmrRBkN93mYcNQH3w7Wxua63w
         2V56+wRIC6KfEbyR/CC/bbjb/TrtmCS1Hxi2xn3WBJKzs51h2wAo6cRgwwezXIqJfFHA
         RefQ==
X-Gm-Message-State: AOJu0YzjFgfDn2HCdDi81u+J516BooUcTh7a9vFrhRgJXx96KW+ql+VO
	/vtKwcnUX2CFxYWZL1cVuF4mri5FVs1d5NoPVI3PiQ==
X-Google-Smtp-Source: AGHT+IHl+VAYGxe/DNmWYTV7boSYThTTOIb/X3vqD8Z9d7rD2VPoeP9ac4YqJU0Le6n452fR4Otgrw==
X-Received: by 2002:ac2:4f06:0:b0:507:9a8c:a8fe with SMTP id k6-20020ac24f06000000b005079a8ca8femr219318lfr.53.1699403762869;
        Tue, 07 Nov 2023 16:36:02 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id a4-20020a5d53c4000000b0032f7d7ec4adsm3581791wrw.92.2023.11.07.16.36.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 16:36:02 -0800 (PST)
Message-ID: <27cb79f8-2c44-48db-8f6d-c2ec861dc249@linaro.org>
Date: Wed, 8 Nov 2023 00:36:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] media: qcom: camss: csiphy-3ph: Add Gen2 v1.1
 two-phase MIPI CSI-2 DPHY init
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
 <20231105-b4-camss-sc8280xp-v3-3-4b3c372ff0f4@linaro.org>
 <ff8532ca-fe74-4f52-bab9-b14f6a4599b1@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ff8532ca-fe74-4f52-bab9-b14f6a4599b1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/11/2023 21:43, Konrad Dybcio wrote:
> 
> 
> On 11/5/23 18:45, Bryan O'Donoghue wrote:
>> Add a PHY configuration sequence for the sc8280xp which uses a Qualcomm
>> Gen 2 version 1.1 CSI-2 PHY.
>>
>> The PHY can be configured as two phase or three phase in C-PHY or D-PHY
>> mode. This configuration supports two-phase D-PHY mode.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
> Makes it sound like the current 2ph/3ph split is rather nonsensical?
> 
> Perhaps we should restructure it to match hw revision? Especially since
> one can get it from the hardware itself..
> 
> Konrad

For the C-PHY though we have to either add or remove caps - I forget 
which on ~ all of our reference platforms.

"The PHY can do it" but I'd be surprised to find there's a single real 
implementation of it outside of a silicon test bench.

---
bod

