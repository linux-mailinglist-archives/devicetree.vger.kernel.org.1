Return-Path: <devicetree+bounces-20317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1B77FEC95
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 11:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 709A21C20976
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 10:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E908B3B2A9;
	Thu, 30 Nov 2023 10:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q0m9yJqt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA7310C2
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 02:11:24 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a013d22effcso103545966b.2
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 02:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701339082; x=1701943882; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BQKXf1q2OEZnZ3kEZQU0tyP5ahd6SKR/Xu20SNGKyvI=;
        b=q0m9yJqtu2DQf/EE1EwzftGf3pDLx3OYr3s10XvOXPS10UzyY8L+o6cnbyHBy0PsNd
         pTbRkUPYlkzJ0uKboXQcbRYzQ+7NwHaJ9k+3UbXaEK5tl6e6/5kOyau5TIfa4TLOO/Te
         4CF4dXl14h/0TLvAhPgqtlJJXNA+rejXHhePeS5SxDvVjq9N3ZhqsqXEzxNh7e1tAD3R
         NIeG1as7ZFCN56gnlXZ0jG2GZ3EOUFS6+Gp8Jd5n9UiT+5dAq0gW1xY+0T/w21qxKfAL
         rPfqIRTqr6VC8aKhmXo7IHzfAlYtwTaaca0CXJ2gZWz9ZYxb5A7TfQ2E0AIrCBTd16dP
         zgTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701339082; x=1701943882;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQKXf1q2OEZnZ3kEZQU0tyP5ahd6SKR/Xu20SNGKyvI=;
        b=iGmCk5iYNZVrNKtUnBvkLM2g1Z8E37UUscYL9htEASUWLR7uH8zYkLDQjnsicLw4wR
         rbbGQeKYMvT6rTaIMdBp9QOAcF6P8tWRQQ5uelR7438J9BdToq8m1DZMjvvJobh4VVPm
         xI/GXBHQytGNeGvVPf0v3Sow8oAL90ooY+9iFEEOa4DhTU/qb6zqcL8tWLEf1GKF68Cm
         OgomljSncczQyJ3VpzQQE3/CPTPA9tCdqHAmd3ul3sY0se4qp/GdyBpM+LUitBcWwLns
         6Q5359zIBIDPWum8n73IITSgkiPBRO+m5cjPlzvEnipzpoeZYOf75wOe4Ln7yTI2NfZv
         BTtg==
X-Gm-Message-State: AOJu0YxMMhNIlux8SJ8IF7z0L7M8/OeVyC8A2lXUawraw5ilb1F5+mMM
	5YURnNmLgGPyyjVrNxf1c9GJmA==
X-Google-Smtp-Source: AGHT+IG3ruccL35j76zEEvNRMlePh8SiM5AZ0WyM0wpJQBtIO9fxbhSqjZBvKqiH0QLtO6/n8eTOJw==
X-Received: by 2002:a17:906:2756:b0:9bd:9bfe:e40b with SMTP id a22-20020a170906275600b009bd9bfee40bmr13385846ejd.75.1701339082444;
        Thu, 30 Nov 2023 02:11:22 -0800 (PST)
Received: from [192.168.209.83] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id r21-20020a170906281500b009fca9f39e98sm504965ejc.26.2023.11.30.02.11.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Nov 2023 02:11:22 -0800 (PST)
Message-ID: <1e014d8c-9a46-4a99-bca2-9f84598bd614@linaro.org>
Date: Thu, 30 Nov 2023 11:11:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: correct TX Soundwire clock
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>
References: <20231129140537.161720-1-krzysztof.kozlowski@linaro.org>
 <20231129140537.161720-2-krzysztof.kozlowski@linaro.org>
 <3ec70fd9-11a3-4bd3-bd8c-a73c3d44dcde@linaro.org>
 <0be610ed-ac95-4de1-9639-d634cf979359@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <0be610ed-ac95-4de1-9639-d634cf979359@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.11.2023 09:06, Krzysztof Kozlowski wrote:
> On 29/11/2023 15:35, Konrad Dybcio wrote:
>> On 29.11.2023 15:05, Krzysztof Kozlowski wrote:
>>> The TX Soundwire controller should take clock from TX macro codec, not
>>> VA macro codec clock, otherwise the clock stays disabled.  This looks
>>> like a copy-paste issue, because the SC8280xp code uses here correctly
>>> clock from TX macro.  The VA macro clock is already consumed by TX macro
>>> codec, thus it won't be disabled by this change.
>>>
>>> Fixes: 61b006389bb7 ("arm64: dts: qcom: sm8550: add Soundwire controllers")
>>> Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>> Interestingly, downstream 8550 has
>>
>> qcom,use-clk-id = <VA_CORE_CLK>;
>>
>> which doesn't seem to be used in techpack
> 
> In which node? I see it in the va-macro node, not the tx-macro.
You're right, I misread this.

Konrad

