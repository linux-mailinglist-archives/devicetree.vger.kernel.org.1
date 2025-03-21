Return-Path: <devicetree+bounces-159646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BB0A6BAB0
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 13:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5C9B19C0E3C
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 12:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34701228CBE;
	Fri, 21 Mar 2025 12:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PylM+OmA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91138227E89
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 12:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742560159; cv=none; b=r0aQ0DznYHvnnjLMsQkJrwrvzs0nPJ20XfjShiQubm+wPUDZklCI4MLxYpz6NfDRTUEkbaoxW/jIxdllBuPlM0Z5rIKFbJ66ec5tJvm72dhtYicGTzPhiiJVZkIPtVcVbrRUwBh/i2/ua4fJWw8DaW1lhSJ0npq+2GRW9YJBrnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742560159; c=relaxed/simple;
	bh=rVnQZXzA6JyIyOTUd7XuexNwWQ+JpNN7mt/BrTRTsVE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hDt3RD0QuQc8uNLiGoDEi7y0UP/9OCYD690QgapbwgZ+RuibqOz+mChbFeqMjLFu5PmT1IxH0ysg6J16AbbX2vOAS3vIKR9lW+B4xo5e55emuNXqZfLtgL2TGGzKScaH66rBzyZFeRBP/MZ0UOLTAfwuyocp6nbMyVrxFEUn/b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PylM+OmA; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3913d45a148so1574819f8f.3
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 05:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742560155; x=1743164955; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C3SbkmY/ZqJcTj/0FuWSzOs5OjdIbM9VrnkM1LTgh1k=;
        b=PylM+OmAE9PCm3Tcq1DmejBitqz3rSVDqWvS2+bvHjo98lkHGa+4hZnSzTWdX0qupE
         6rOSZRGk/g6r1+tz+RCcm950UcCVP9J66v32S+X79KEsYBqZhdb6urXm0vw/Mtz9lZFm
         G/CP3+fcOKvWI5k/5eltvrbg3rbXRL560ap9UhVskDfnQLo2kvUBPUau6HVaZafwWzWI
         vn0LFCcVkvlzbpwayU+OwG6oPeD4wzjw9fJFX1drprYK0Wc2qECIi17z0SMIpXbeNTpF
         c23lue4e5/c9MAdk+C0s3sVLsWPPiUT7y2hy+8v1OXbqMonMzJeU/dL48WzG0uedT2eG
         3J0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742560155; x=1743164955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C3SbkmY/ZqJcTj/0FuWSzOs5OjdIbM9VrnkM1LTgh1k=;
        b=P1S10d1VpOrJP181I1jdjiX+ONozLQj0R81I2xY0wG6HwTyl5aZKPxI4UDAOyZ0ncP
         qNc3sgXqsIYsSuBFw6YbMi1e7vQkGAsl7CI/SYi/yEbnmzrhvLwbb/iJoUHMNmp636an
         zfqn8SC52v0u/zYfQsDqYgX4CmTHtrdefPp9WrM5UGHCkoBH1CCOhFd6Fw4UJ5WVd78/
         cze1/W8D9fw6cyd5JhPheskaNU2ZOVe/YESIvOLrv4udCfHG5h9Zb1mKmkbesCRTMUnS
         zfomwCgOiu78mDC18cF2x+6o980jMQLSPTcCWOVt7bsFVT8Ovs0qej9wFD4LqxH1NYHM
         JnFw==
X-Forwarded-Encrypted: i=1; AJvYcCXNUaeuQ61f17PcuBiM19J5b+mvnGlqZ8YMC6xnwGuxv4T0aYHKNPG0IaLg8w2lFAd9qrYIEz3NZu58@vger.kernel.org
X-Gm-Message-State: AOJu0YxV8t4FFKWCQhMAQn6bu0EoQtd22uHxRXM8zdrQnS4P/pCDmH23
	Xw9wJqawte/9INpsTlwYtXpCi8B63IWAWZ0MJ57SzwHMpPx8ugFN/CvEDwnq3EiiApoygrByQ1y
	GjG8=
X-Gm-Gg: ASbGncsirJNcsFh6Cw756hO9irNcQFLyk/rCAwuPnZsEwfXAoVgVh32jB/81ZVhWE1+
	DCGoof/cn0z47FLeCK28eClRFEr82jEIt1lR3e0gbNVhiyIVUN3w5kEI7UtFm4+bu5YaOar3IFR
	FNoOgo9xz1lhhYg3rkWCKkPCsHmlnrQ2ylHgDizX0dEo3vohq3Nx5V8AC7lYBCnlFN+y8VuoE9p
	BPZDQqoxCEKRc5HfQiPO2UfRJEvThNPhZyVvbCCpXOLqqpL7MSpohPzg9++mwTGajGuNnWGCegN
	kEBMXBm4g78Ur+/o46RhG/yZOQl/rQzScLbvLxUb/Jr71xqhaEuI8oLGAIiiULs=
X-Google-Smtp-Source: AGHT+IFBZoh/8u7yI73Eo6y4FHWJpjFIM1ekg9sKkOS3yKX2k4UHIdny93pk+Zu+zSOxe3lYxYq5TA==
X-Received: by 2002:a5d:47c6:0:b0:38d:d371:e04d with SMTP id ffacd0b85a97d-3997f937cd7mr3013030f8f.34.1742560154684;
        Fri, 21 Mar 2025 05:29:14 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f9b25c9sm2225387f8f.42.2025.03.21.05.29.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 05:29:13 -0700 (PDT)
Message-ID: <c276c310-c6af-4ee6-8635-73430aeb4bbf@linaro.org>
Date: Fri, 21 Mar 2025 12:29:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] ASoC: dt-bindings: wcd93xx: add bindings for audio
 mux controlling hp
To: Krzysztof Kozlowski <krzk@kernel.org>, peda@axentia.se,
 broonie@kernel.org, andersson@kernel.org, krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, dmitry.baryshkov@oss.qualcomm.com,
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 johan+linaro@kernel.org
References: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
 <20250320115633.4248-4-srinivas.kandagatla@linaro.org>
 <e2dc0587-28c1-4294-9bce-e18952ba645d@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <e2dc0587-28c1-4294-9bce-e18952ba645d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 21/03/2025 09:29, Krzysztof Kozlowski wrote:
> On 20/03/2025 12:56, srinivas.kandagatla@linaro.org wrote:
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>> index 10531350c336..e7aa00a9c59a 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>> @@ -23,8 +23,13 @@ properties:
>>         - qcom,wcd9380-codec
>>         - qcom,wcd9385-codec
>>   
>> +  mux-controls:
>> +    description: A reference to the audio mux switch for
>> +      switching CTIA/OMTP Headset types
>> +
>>     us-euro-gpios:
>> -    description: GPIO spec for swapping gnd and mic segments
>> +    description: GPIO spec for swapping gnd and mic segments.
>> +      This property is considered obsolete, recommended to use mux-controls.
>>       maxItems: 1
> 
> 
> Assuming intention is to really obsolete/deprecate, then please add:
> 
>    deprecated: true

Thanks, I was looking for this flag..

v3 will fix this.

--srini
> 
> 
> 
> 
> Best regards,
> Krzysztof

