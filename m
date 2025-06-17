Return-Path: <devicetree+bounces-186858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4EAADDDEB
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 23:30:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5713E3B326C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 21:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6381B2EAB90;
	Tue, 17 Jun 2025 21:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k7X8++08"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEFE2EBBA4
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 21:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750195840; cv=none; b=sUx5L0oVhlV8+twpGqOjW3bbYxYfmUaliGyoC6Lm5YL/qX+DnT1hBYrCxGsFkb0aM4MaxeoYgj4RJcG9uNuNFm2qW51UnBzVcdVj3XyYLYDEqKfPurk0eBRug+aDLeHlTQL+fHVQ05ER0xGjlfu0uZWZD6JxcE95weqmZYhHHak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750195840; c=relaxed/simple;
	bh=57GG017WnvsgeO3G2EDT/hrJC07voSkXSXCi0ddkyI4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PRDqJcT3XVoTBox8FpawC3yRWy1PdDbDTHm8kud7E6ytN+0Gx17puygZc+CvMV2tR4M1Y5JoN89QZWA6I9/PsNCGbYf7WhwGlfrs1Adp56wUrUMbdo8rcR/e1sKHmn/qjfEgkC+EPiuA+KTFshf8Jr0c/GMcSEb1WTLMmIvs1J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k7X8++08; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-32b6da713f2so2207811fa.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 14:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750195836; x=1750800636; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1ru3Y1J+U8NViKVmQGNuGxbL/kEmW5KcH1aIJSH/7IU=;
        b=k7X8++08VHn4Ewts5PxpWPWzZjdmzkUF9GbFmwN58+qAtUMgV74dLcNDs8M1d0MysO
         51efcOTM0nMf0Sh5lE39QxYVrsWjb8Mi67YLXgDSNI4l7s8lR370RJFB/A2PNfugCQxx
         0OVMrdYsZnOp3ijYzxscEqjZkxmy0BUMtPN8L/HXERk9L/8tuOyrXkLCln8pEjoaMX5Z
         YB2s1Z74w9unHXXEN0HlSXEvb6i7HsY4InMR9XuZ8VC3Q5Q2DVXVBhSKOPanYshY9xJS
         Dwn3kmSreQAbPFBcqgL8zyqper2LaCS448sFT44JVXc5Yxf7YwaOH/8PyZoGuSGpkIG3
         g0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750195836; x=1750800636;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ru3Y1J+U8NViKVmQGNuGxbL/kEmW5KcH1aIJSH/7IU=;
        b=i/LB0zCg4o1NM+rgSuUlWmWGVNz5OmLcUW+vu1d1PAf3oPDWnGBTYE/YHBgmeI87AE
         bOdKPcdWDKP5PMtZ9dOBL2iLBYJyZS7fQtey7aVF/yVBnJfv3cQvjJjNxIS47m4i3MZn
         RNwJlP7UMH99gCZm2u0CYWooKMt6O74PLMgLAAe4d1ogAbsuPdDXkeXdZeXaKxTbgCGZ
         PHNCWHLRamBdZXRoCVrTaV1TIl7JfTNJ73qQwzi4L69rPcS1Aly1U2L1Y4zEKvpplz7Y
         bJvd1JxvimCd+JMYFjINxzz+mOD2IDIV7pd7MBE7doIN2a1HdZzlgo7hG85Tl/vGzQzR
         Yb5A==
X-Forwarded-Encrypted: i=1; AJvYcCXCH4Zuau6C8oAHri9b1/hMe21Erkl31ElJa3fq7wzVFXG+K9ROptMJz+/dZfrYbqs4n0rhcIANT2ji@vger.kernel.org
X-Gm-Message-State: AOJu0YzB9Y2pJRWQUqbW+8aypUv+S36sSqqpY2Km3I/OshetuYK33hGS
	sFp/+AELTpZ+I9fl2TuASSGnRRhAWrd+TnB6L9y8hJX6cMaGGvBKcGgSlCiwokPAhYE=
X-Gm-Gg: ASbGncvAFkWj9ryGopCtOeEiaMjPAPjI3X5jYlOcJkpAoQzUcX1XZW98mFPvHSxdvJ5
	PEi/omqWEwkdQ4aswNZUU2T1B7tpaoz2FPhcy9/iCj/qw1NfkO2U0e2LzkrEM9LlTS+hViFLgfJ
	be1k6NwiHbGVWwBeyKBEcuY+jyJYyO6JyProzknySly/6RM2iiwHYdipAhD9MlIBW1yfkRduWTg
	T8pYO895OqaCNcmYFG4oDLSQ2rl4VjCKRwV2zTZCX3sdE7BEYt++HjEBhjtCRKE/l4szEJpyHlq
	orcbCxcKhPfNpbyZyLZTcoKIgu4bG7sdy2bYvfyzMfLrohU0D/+6a3dux/vR7nQyaHc+BQu1Wak
	lyLb7lcjs9/fFXITzfdpbak4R+cD2/oEHop7rqbcZ
X-Google-Smtp-Source: AGHT+IGahrp4OijeVMN6/wrtyWB6f0c2IuaTQ9tTQDqYMs+wKjPRh5mEIg4iR4LsiSPfe/WRq8fYMA==
X-Received: by 2002:a05:6512:3055:b0:553:38b1:810e with SMTP id 2adb3069b0e04-553b6e7577dmr1393954e87.2.1750195836360;
        Tue, 17 Jun 2025 14:30:36 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1f75a0sm2047133e87.219.2025.06.17.14.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 14:30:35 -0700 (PDT)
Message-ID: <05b4878a-f6c1-4a69-bbb8-900064267cd5@linaro.org>
Date: Wed, 18 Jun 2025 00:30:34 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
Content-Language: ru-RU
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-9-vladimir.zapolskiy@linaro.org>
 <6e411e89-ce1e-4d6a-8d48-b800554f830e@kernel.org>
 <e9afdd0f-7842-4780-9044-d5afa6a09d7f@linaro.org>
 <b96f9cca-cdd4-4456-8ced-f4a8fd810ff1@kernel.org>
 <9e383935-a10c-40ec-a63a-243cd028374e@oss.qualcomm.com>
 <4f7225ee-fbb4-472e-8e14-a98f4cef9fc3@kernel.org>
 <83769dc1-9000-4074-bba2-d1bd465b77a2@linaro.org>
 <1fba505c-bd01-4d36-9efe-17172e11fb1a@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <1fba505c-bd01-4d36-9efe-17172e11fb1a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/17/25 22:20, Konrad Dybcio wrote:
> On 6/17/25 11:51 AM, Vladimir Zapolskiy wrote:
>> On 6/17/25 09:32, Krzysztof Kozlowski wrote:
>>> On 14/06/2025 21:31, Konrad Dybcio wrote:
>>>> On 6/13/25 8:28 AM, Krzysztof Kozlowski wrote:
>>>>> On 12/06/2025 19:13, Vladimir Zapolskiy wrote:
>>>>>> On 6/12/25 10:38, Krzysztof Kozlowski wrote:
>>>>>>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>>>>>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>>>>>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>>>>>>
>>>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>>>> ---
> 
> [...]
> 
> 
>>>> I don't have the docs before my eyes right now, but I would not be
>>>> surprised if it's also called "csiphy" in there..
>>>
>>> Let's check that first.
>>
>> Here only someone with the access to the specs can help, when I rely
>> on downstream code, and it says the right clock name here is 'csiphy'.
> 
> Unfortunately, I can't find anything more descriptive than that.
> 

Thank you for checking it.

It might happen that a widely used clock name "core" serves the purpose,
so here I can introduce CSIPHY clocks "core" and "timer", if Krzysztof
also finds it acceptable.

--
Best wishes,
Vladimir

