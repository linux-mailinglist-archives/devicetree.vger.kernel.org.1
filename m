Return-Path: <devicetree+bounces-252504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9F9D00287
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 22:26:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C1F83004B96
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 21:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD23832D0EF;
	Wed,  7 Jan 2026 21:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a5nxX0hI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27ED329E6D
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 21:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767821066; cv=none; b=kfdlnmjFL+YAQG3YOWJy/26udPzy3o+hg8nG+sHNY9hvSt0qVkLejTrTgk4T1o6XArqxS/osvwBBTL1YEeE4cRjhGtxrb6dWI2D5mu6KYaxZyZ9X5jgw7YlW+qIqbL/KC6apuZvyrO9M3UuPRAyJLCxSZMtRFtCAxrlg0FgKQCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767821066; c=relaxed/simple;
	bh=xuhPSFxHT5dicps+AzXUc5xZwOnIs5QdImrqvGMjdcY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cz7QBZ65wuQ97KtfeJIFbeiJuwbFlySOrPNf/uy03JN6yL8ITSKxHc/m+sRsUoG9vc0O/EWhuq/vex3d1IjXWSqvFNTqm6p6z93FQJNjRTpiR3Ys8Vw/l0OrC4qU8dNIeSJzD/9SMXRHbPqwKY4CAdXsT9d3OpyDnZo4G/UdN3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a5nxX0hI; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-37a33bd356fso2262831fa.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 13:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767821063; x=1768425863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/TDnZeMqywPB6R9BWNPYGT+EayXhfAhq0K6Z+LpKaw=;
        b=a5nxX0hIAJ7aPbLMg7vlyFUOibQiu4qYt8ZBwnIxOwZ8k9dR7oCCCp1EyKKsSrXeq1
         B11XTAWscz6iDk0WdBAzV369nddJIYyibBLDzoov3b/neArkP+UkFujLlkdyU+m6/gCq
         R0+lKQkQtOBpCx4uokSDMUJroxyBGtPbjy5W7uPjw25NWyG2ze1JlzziWQ8f8n4ts2rJ
         7bLc9ePxZo60ovhicFtEMmvKJfZGxZ/PB+mKPKRMnly6QL9PI/6RxrM0cMxdhjxP2wWS
         4Zqo/NCH3w28WQaKZFr5QufFwkzGyZFjWrwIapHE30F4Ftfr2D0EvTeQLS18OKayaP90
         5Ijw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767821063; x=1768425863;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f/TDnZeMqywPB6R9BWNPYGT+EayXhfAhq0K6Z+LpKaw=;
        b=PB4rt6o0pBpWinIhHwbFZoYzMioFFLaMnKZXWuW3m85XXjqAFkUxuFyf8QK2hurFTp
         BQImcAGzkvMEvCilHJg7E8HHahLkLHGjdGdX6OntMo7kd7RBYjEB/+VKmuTAwRNrlNES
         fLbXqL/L9W/kAJi6KjbJCkc+fQ7FRoXUcO3uzMMkRwwohCfF8aV83nTkI4C+iPM7Ysut
         CnS4P1zhAzBn+CfZIOAL5wdJ7UGLfjWI3JX7wH5yyu49huK7RPfTyRjuv91ogIAd9m6l
         n46x+7jA+RltpIAW5c7+4QJasFMl05LwdNIOCU5qHdcKmROXvLkvpqBhVKXCjHJFHz1p
         V4Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWfCD6hnO5alNVRvB59k7ZZJLEYTHktc5TJaFy7gTyny13OfAIh/sp04YLKEA/HkvjV/5V+c3h3dy5U@vger.kernel.org
X-Gm-Message-State: AOJu0YwbGDv133WU6eUzqJ28XkISAU8mh8to84nmszWTeAc8GPTIF0g2
	odSdknUPXkqRYlLH78o6kVsJI9C3Z6cYCd0cmPo5OJkP1VY+HQWSilNCWd55hs1ZVBA=
X-Gm-Gg: AY/fxX4KUIw0XNL8cD2yp0ZTvrJckWsipfVv+kxAcBvRObehCALWTKD8F6PxdzEPy11
	K3xQt3qUfgbgh2BmauF39MGYvPAq7B0+PL3Z3cpV8ekq/WHLVqWw0boU6+Vc3uAmgIdr+MHXIiJ
	uZp2/CMRWfl0GZXXqJmy5f3vxCSLImsM2oNFBQcH1zr0gi8PqVcWTuLEB22W64GPMYsn1iEfLWT
	f+oMJYUMpJnkCfFB1NkoreMKQxnUKooyPPf+opnGbz6WuIeggYVfArB+TkK+5K9cOpmrNNWVd2O
	z0eVRTxUxZPoJk0mJM37nez7fm0oXjrbp1I90bAtJTmFtsi5YPJw5qcHw6pwBgMeS4nNXuyz04v
	ItFEzus+u8BXKK8YHpRYzEPgNmrakIRP412uTzutG5P2YMWi1+OHCms68OVmpaJCr5510/0frTw
	VABnFGn70uohJyqstn6pAAvNGV5Aa0z7ZxpP+v5XjCePQ0pG4CDUTrhyUVHCnSnwPlrQ==
X-Google-Smtp-Source: AGHT+IFfcRWxAkywDeN2SZBwl0HWgo5W5lepeGrLd7xnmJgoH3TiNoELSgeJNH2HwayG/aI4gRkMSw==
X-Received: by 2002:a2e:bc15:0:b0:37e:6e31:c9bc with SMTP id 38308e7fff4ca-382ff8256famr6465671fa.8.1767821062911;
        Wed, 07 Jan 2026 13:24:22 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb3a0039sm11811641fa.4.2026.01.07.13.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 13:24:21 -0800 (PST)
Message-ID: <6d2a582d-a738-4f1e-97c1-d8ee6d9b0882@linaro.org>
Date: Wed, 7 Jan 2026 23:24:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-4-bb112cb83d74@oss.qualcomm.com>
 <ndexzb5bo2rxjsj7jkf3bevbb6vmtjpuuhxbonpf3v5csxnjtu@sotufkkvfc4r>
 <f09670ed-1aba-4622-94b2-85ade831f7fa@oss.qualcomm.com>
 <e91414c6-fc89-4b38-a5be-f282c8601b5f@linaro.org>
 <3a8e8327-1a55-4822-885a-86fec029952d@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <3a8e8327-1a55-4822-885a-86fec029952d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/7/26 07:55, Wenmeng Liu wrote:
> On 1/7/2026 1:16 PM, Vladimir Zapolskiy wrote:
>> On 1/7/26 05:05, Wenmeng Liu wrote:
>>> On 1/7/2026 2:23 AM, Dmitry Baryshkov wrote:
>>>> On Tue, Jan 06, 2026 at 05:39:56PM +0800, Wenmeng Liu wrote:
>>>>> Enable IMX577 via CCI on Taloss EVK Core Kit.
>>>>>
>>>>> The Talos EVK board does not include a camera sensor
>>>>> by default, this overlay reflects the possibility of
>>>>> attaching an optional camera sensor.
>>>>> For this reason, the camera sensor configuration is
>>>>> placed in talos-evk-camera.dtso, rather than
>>>>> modifying the base talos-evk.dts.
>>>>>
>>>>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>>>>> ---
>>>>>     arch/arm64/boot/dts/qcom/Makefile              |  2 +
>>>>>     arch/arm64/boot/dts/qcom/talos-evk-camera.dtso | 63 +++++++++++++
>>>>> +++++++++++++
>>>>
>>>> Is it possible to attach other sensors? If so, overlay name should
>>>> depicit which sensors are attached (compare this to the RBn boards where
>>>> specifying "vision kit" defines all sensors attached to the device).
>>>
>>> Okay, we previously had a discussion on this. I will rename the file to
>>> talos-evk-camera-imx577.dtso.
>>>
>>
>> Other camera or display .dtso names commonly repeat the name given by
>> the vendor, and the bare minimum is to name it the commit message or in
>> the code. Is it Arducam 12.3MP IMX577 Mini Camera Module or something else?
>>
> 
> I believe that modifications for the sensor do not need to include
> Arducam descriptions, because this DTS is intended to support this
> sensor module. Even if it is replaced with another vendor`s IMX577
> sensor, it should still work.
> 

Most probably yes, if the connector type and its pads are one-to-one equal,
but before such another camera sensor module appears, it makes sense to
mention at least in the commit message the exact type of the sensor module,
which has been tested and supported by your change.

Hopefully, it should not be too complicated to add a line into the commit
message, that the change supports Arducam 12.3MP IMX577 Mini Camera Module.

-- 
Best wishes,
Vladimir

