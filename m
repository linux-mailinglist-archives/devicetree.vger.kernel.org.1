Return-Path: <devicetree+bounces-27345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C914F819FBF
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 14:22:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8118F286708
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 13:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1897E2577A;
	Wed, 20 Dec 2023 13:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vXDhFHaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B212CCB4
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2cc7d2c1ff0so27765001fa.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 05:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703078511; x=1703683311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7oFlTMabigYjmKu9hB3PA+2ishWi1oEJOR42AVBlS3w=;
        b=vXDhFHaZmuA6YaDQ4YYCUy0R+oN/BXv1Jjy95f7fLM3BG7SvisqCwTIoQ62e9/SNaK
         P8bsUYqUrkGMf2vJz2ha3cncexH9+tU/13bNwCDBv1C1J5qF8xkhNMMA+aRDoAE5/Ka3
         ljLN/tuw/F6SM4j8zsjyz0ay7udao2+rNuBo1sRmdqH+jwOGWBO15nSm40F6Fw/2+N4u
         tSO2NoB4qCJcuXL+30u+0Sv6QCp4Zu/SGxYwa2ok5vaOIzfhesF3YoLvwiTODYqVxTGY
         6JLFImju6Hi4xmP9wGkneur7A00PyPqdQH8rBK9HufW3wCjSrNrUexgm/iSEUxexmGGY
         ke3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703078511; x=1703683311;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7oFlTMabigYjmKu9hB3PA+2ishWi1oEJOR42AVBlS3w=;
        b=kWdFj+fokRMab0jifLrR3w+7xlDLJhZxx6z16Fr+kaUlCQx6FWoHyl1NzUORpk+SiG
         BITsJ4mfEHyWNuuSwR9ZZysxqvRysDqrOWzV0rpylIuE+TDqbk0fysvu+hkNImnNuYm7
         wBphaI6FZ/H3Ql4MNvU0oQ30e8XTNiDpQ3nfD1DrDzP/NGhVTbgdpxbfebTXeAzHOo1L
         MlXJfJC/O3pTr/+BIZQzolbRYFtg6pb6pH/8Mu4ahAcHcNeJGeUfitANIwoAMEDzyHfb
         JEc27ahG2f7vPX/Isaxv42DApMGAip8kJYeOwqkpM13HW/hvct4n9ken3vqUSada8DEm
         wLAA==
X-Gm-Message-State: AOJu0YzRgMEvuMErEyoSluN5xzcSNxriF7+N0jNraG8yOAbmVbSXUwpF
	K5mEeX+ZeBbkJvLl/BZgGDlO8Q==
X-Google-Smtp-Source: AGHT+IEoSmmrFFjT4fk/E4P3WaAMABJS0GZLWtw+Avx8+aRNbYdtYwVzxg+dOgmglOq/GuD9sr0U2A==
X-Received: by 2002:a2e:350f:0:b0:2cc:7157:4e78 with SMTP id z15-20020a2e350f000000b002cc71574e78mr2953492ljz.77.1703078511060;
        Wed, 20 Dec 2023 05:21:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id a15-20020a5d508f000000b0033330846e76sm13484938wrt.86.2023.12.20.05.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 05:21:50 -0800 (PST)
Message-ID: <77ba0140-5b74-40d7-a923-4b270d661d3a@linaro.org>
Date: Wed, 20 Dec 2023 14:21:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add coresight nodes for sm8450
Content-Language: en-US
To: Jinlong Mao <quic_jinlmao@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Tao Zhang <quic_taozha@quicinc.com>, coresight@lists.linaro.org
References: <20231220124009.16816-1-quic_jinlmao@quicinc.com>
 <dfc7fe85-7418-410c-bd82-6e08799e6417@linaro.org>
 <439916dc-8f71-4998-b145-1d183d9e68f5@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <439916dc-8f71-4998-b145-1d183d9e68f5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/12/2023 14:07, Jinlong Mao wrote:
> 
> 
> On 12/20/2023 8:46 PM, Krzysztof Kozlowski wrote:
>> On 20/12/2023 13:40, Mao Jinlong wrote:
>>> Add coresight components on Qualcomm SM8450 Soc. The components include
>>> TMC ETF/ETR, ETE, STM, TPDM, CTI.
>>>
>>> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 742 +++++++++++++++++++++++++++
>>>   1 file changed, 742 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>>> index 1783fa78bdbc..112b5a069c94 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>>> @@ -285,6 +285,192 @@ CLUSTER_SLEEP_1: cluster-sleep-1 {
>>>   		};
>>>   	};
>>>   
>>> +	ete0 {
>>
>> ete-0
> Thanks for the review.
> 
> In arm,embedded-trace-extension.yaml, the node name pattern is 
> "^ete([0-9a-f]+)$".

I don't understand why this binding requires ete name. It's not like it
is a generic name worth preserving. Also, the recommended suffix for
names is with '-'.


Best regards,
Krzysztof


