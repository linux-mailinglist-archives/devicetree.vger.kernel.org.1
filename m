Return-Path: <devicetree+bounces-3800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC5A7B0296
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 982E42823DC
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CF0C262A7;
	Wed, 27 Sep 2023 11:16:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E66523741
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:16:12 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1A2D1B0
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:16:09 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32172f8a5dbso9157890f8f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695813368; x=1696418168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7mEG755J6mA7UKW3osl1F7PnRsnYr6Mei3mYlrdVt/c=;
        b=XxO/tgFKBAK03VLSCtsN3WLByxXnELBKcTW/1QU9f3P9g+xYgldyKYy//XlkNChplX
         GTYCvc+K1XRM9ivLpJuCkwQQ2ho+INa+VEIwKSGV5piW5UnZwVGpFrwODbDztVzTVwva
         aODucYgBSHKIMzS2cev57MDfhtaeOB7xmzPMkB/TAxx2oJRMXA/vW3gXTjeNnWnqZMIR
         rydXFybmETz3zmnW5oTJNz/97aELiPXNPmTiFKAzMghdnSjs2J8fDuDSEIf49AlsDjxr
         QTc734Ep7Dn0nr/FyW7eIXa94xugTmYy61xzdht3EbPevi5B1wgKqHGQEtkFCJUiIaeb
         b5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695813368; x=1696418168;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7mEG755J6mA7UKW3osl1F7PnRsnYr6Mei3mYlrdVt/c=;
        b=ptcbcrtUrXxVPS45X3l4N4Tkl6ytpajlIpHx164gbLN6G8rf4SI8strpB8yRZeyc7N
         dMx62dpd1SJ/Lk5GK88vquk+Fx/rdXsZgcWd4zqDwrgGJX97dJTiC3SFuez52bknvZsr
         dVdmdiAC3cCz8x4+8RsASruyvUVD+09ZJwQfNmZ/I3p+1rbt8EpJnfSXorJaJqU1BmQN
         dOpXBldDDKAbGxgh7n0YQyvMQaZ8GSBplaY1rlPxIInhcLoezspKeR2FYrNckwAhWPjL
         jk7ZTGvPByfBOC1PCMyIRwSQ1afN3X4u6RVkazvhhmMTWbqQ3WrMOLRu3GsmpXE1lY1X
         HbGA==
X-Gm-Message-State: AOJu0YxNeMaS0eYP56vXgF1GcsIP5v5IFC5UvrG6K6pStUwJu1qcxvRI
	LWFpWqLjJJlNbWerOeu7/cHcZiqD3PTTInGnfkyONQ==
X-Google-Smtp-Source: AGHT+IHJJe5Jd54mOEoX3twENw0wNV3ryf0EENKQ1NcOMhVp0LkOGXOlDDAF3YkbdjSBAQNzUAyfig==
X-Received: by 2002:a05:6000:1106:b0:31f:a16a:aecd with SMTP id z6-20020a056000110600b0031fa16aaecdmr1459762wrw.68.1695813367872;
        Wed, 27 Sep 2023 04:16:07 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d46c7000000b0031fbbe347e1sm16896539wrs.65.2023.09.27.04.16.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 04:16:07 -0700 (PDT)
Message-ID: <2bd16a5b-260d-457d-98c5-bee030f05f00@linaro.org>
Date: Wed, 27 Sep 2023 12:16:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm6375-pdx225: Add USBPHY
 regulators
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
 <20230927-topic-6375_stuff-v1-4-12243e36b45c@linaro.org>
 <8bbdf132-a007-4cb7-b842-a81de7c1629a@linaro.org>
 <354e5b45-468e-4fe6-9646-6b4d9596393a@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <354e5b45-468e-4fe6-9646-6b4d9596393a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 27/09/2023 12:05, Konrad Dybcio wrote:
> On 27.09.2023 13:01, Bryan O'Donoghue wrote:
>> On 27/09/2023 10:21, Konrad Dybcio wrote:
>>> To make dtbs_check happy and the software more aware of what's going
>>> on, describe the HSUSB PHY's regulators and tighten up VDDA_PLL to match.
>>>
>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>> ---
>>>    arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts | 7 +++++--
>>>    1 file changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
>>> index bbec7aee60be..0ce4fa8de8b0 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
>>> @@ -243,8 +243,8 @@ pm6125_l6: l6 {
>>>            };
>>>              pm6125_l7: l7 {
>>> -            regulator-min-microvolt = <720000>;
>>> -            regulator-max-microvolt = <1050000>;
>>> +            regulator-min-microvolt = <880000>;
>>> +            regulator-max-microvolt = <880000>;
>>
>> Where did the old values come from and why are the new values better ?
>>
>> Consider enumerating that in the commit log.
> That's the pretty standard situation where:
> 
> - downstream defines very loose ranges
> - developer uses these very loose ranges as a guideline
> - some hardware (often the exclusive user of that regulator)
>    has a hidden-ish request of a tighter range
> - the developer realizes that and has to fix up the ranges
> 
> Konrad

If you got 72 and 105 from downstream, where did you get 88 from ?

---
bod

