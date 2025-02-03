Return-Path: <devicetree+bounces-142404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D484EA25453
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 417BD188475A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE171FBEAA;
	Mon,  3 Feb 2025 08:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SwthbFKX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDEE1FBEA1
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738571013; cv=none; b=J3kMs7/DnfUU0A/8kLHceNQEAud5SCcpcPUJujjcuuhJzDpNFb54njPY1RUOO3co6e3+3XTBrqyBmzs+zJ+v/yH/RgPaPpwviTHph2ctDu/hsgD//ZxFN5R2Qd0nSsTY66inTpOqMgZysPaYrFXYu4u/rr2PEalJ0xuGf68l07Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738571013; c=relaxed/simple;
	bh=lsYMgQzyZBIQnv3whEA7UEb+4odLzI1QwzOG3iDq1+I=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=mKy4Q0N849lVXbPfuQf+HDKk5ujM0qdy56njUKi1ahQZpVsoq0JRuDxByiFTtMk3aQ1NoKGmiYsjkSleDGsNizSqCYX2ptARZJjE1mYGGJOV8mp2Wdi7CDWt8PC1GBHIzIp4uncY1NOn20uhYWqgpu5//H7Lt+ET9ko4No3+E8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SwthbFKX; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so3666425f8f.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738571010; x=1739175810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZOuSDlUyybSiEJ3f6h/LZmrdiywD5/68VjAoOBVcbwg=;
        b=SwthbFKXzWp6GCTwFXA+ZJnIKADVnqLPtmqEcqwPHoTn5Ryv8jTueP7IRVNz+jPoXM
         YO5YrvY1r87IDz+UETLmE05BRYktMXRU2q5xhNtdKOcz/h9jYCNPowv4637se9CVAUmv
         rDn9wVwgza3Ib6bDRNt/8Kt6unUBX9QKGyqJanVEkLnabiz6/SOMAL4AKNmoVbozdMoc
         6Tj1VquknNs+nZmX7n82aBHJHVltjev4C/ZuzH8XG0S9gDqSrWec5J5cRhtk9XJLZjWo
         hbqtCKTpRHaiz28LNllyjGvz4dlFd0lweIgFiUZBbpz14zhYeVdSROF7dOuPt7TYhECP
         cUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738571010; x=1739175810;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZOuSDlUyybSiEJ3f6h/LZmrdiywD5/68VjAoOBVcbwg=;
        b=q3IkrKYuM0yXfDlEBigje5bdpLA1DzeB+70yo8wdyywHHRbIF3EtcLq48GNYSTKFIY
         m77OqosN3gYijyjfJTRoqwbglsnODIenD5U5KYm91OIjaD5SJFr3XFy64nR/XgB7Kp2r
         vD6PF6u1xhWxnclSUmGDbPXYNxa283r/GqU4opAxcHNsVWKimOdJsU+/IlTJ/pmdwKZ4
         staE26bNGyE1t3sCrd5YkI6SwQMOT9LU2vG3Na5tK/uUXCqjW/Z0lKNY/c74tKji4CJ0
         /0TgejXiyyxsKYfRm0wCcq4Cp34Ucg5TYt8UfOygNka0QKChxJCDBxi6YFohDYmrHjga
         zrcA==
X-Forwarded-Encrypted: i=1; AJvYcCXArFXaEnjxSJVrDc3AQXsSEt6BRTHP0khPuyWzvthsNcue3nwFw+pjyVuelg2Z3XJWKSHXPTYur426@vger.kernel.org
X-Gm-Message-State: AOJu0YwAEoEKOBJb6cHFBh/GtMOXXgr/OpI/B6HVs7MiGfPo5pzk3zil
	O+zCcRI5fV7l1RaNfS1D9Pil/26ocWZZTlNu59VrVohU5cLx9vg8j+xCsL9aSC0=
X-Gm-Gg: ASbGncuywLBHkw90xPDF9S1JZFja4nPSPq+xtU5KgywutSqscOaFzgcYTargesDSZKo
	60ZVRidBLsfNpK0qEA9PDRLknUNnm5etgPuHfvSkMYq9iDbiIUh1LJFMFaNRSb+4ZNh9EIHPZkS
	iy45zhFZs6C4pnNXUNCmsb19Ht6dXC4txjlmUWgIgOg9YrAy4OGvB2Xkb1nKArj6ZZ77qEeqdul
	8G+giusioK1vzJ8acuBeNsVRKmynhkW8WDINtKnWJ/ubVM5cWL/YKCr1tcPDq+d3iyJti2ZGlIu
	jhDmfBHNFt7fPG4fRAbE39SYPys7xyiOGooG7Rr7eC4zcHcd2O94qs/XC0Mzz259USCH
X-Google-Smtp-Source: AGHT+IHPELpFTdB9Xb7SriUYuda4fkxNg6z+5NJPCGuw6it+EnAph0FkWSLlDR63D4RB9ZM6K2zXTg==
X-Received: by 2002:adf:e90c:0:b0:385:f23a:2fe1 with SMTP id ffacd0b85a97d-38c51960357mr12150693f8f.26.1738571009776;
        Mon, 03 Feb 2025 00:23:29 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:e2ce:628f:fe98:a052? ([2a01:e0a:982:cbb0:e2ce:628f:fe98:a052])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102d00sm12280434f8f.32.2025.02.03.00.23.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 00:23:29 -0800 (PST)
Message-ID: <cf5f9a36-db3a-46e8-aa61-a46a06b1f446@linaro.org>
Date: Mon, 3 Feb 2025 09:23:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sm8650: drop cpu thermal passive
 trip points
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
 <20250129-topic-sm8650-thermal-cpu-idle-v3-1-62ab1a64098d@linaro.org>
 <80948a6f-1cd4-47b3-9218-f5ab0c25eb3b@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <80948a6f-1cd4-47b3-9218-f5ab0c25eb3b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/02/2025 16:41, Konrad Dybcio wrote:
> On 29.01.2025 10:43 AM, Neil Armstrong wrote:
>> On the SM8650, the dynamic clock and voltage scaling (DCVS) is done in an
>> hardware controlled loop using the LMH and EPSS blocks with constraints and
>> OPPs programmed in the board firmware.
>>
>> Since the Hardware does a better job at maintaining the CPUs temperature
>> in an acceptable range by taking in account more parameters like the die
>> characteristics or other factory fused values, it makes no sense to try
>> and reproduce a similar set of constraints with the Linux cpufreq thermal
>> core.
>>
>> In addition, the tsens IP is responsible for monitoring the temperature
>> across the SoC and the current settings will heavily trigger the tsens
>> UP/LOW interrupts if the CPU temperatures reaches the hardware thermal
>> constraints which are currently defined in the DT. And since the CPUs
>> are not hooked in the thermal trip points, the potential interrupts and
>> calculations are a waste of system resources.
>>
>> Drop the current passive trip points and only leave the critical trip
>> point that will trigger a software system reboot before an hardware
>> thermal shutdown in the allmost impossible case the hardware DCVS cannot
>> handle the temperature surge.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 180 -----------------------------------
>>   1 file changed, 180 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 25e47505adcb790d09f1d2726386438487255824..95509ce2713d4fcc3dbe0c5cd5827312d5681af4 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -5751,18 +5751,6 @@ cpu2-top-thermal {
>>   			thermal-sensors = <&tsens0 5>;
>>   
>>   			trips {
>> -				trip-point0 {
>> -					temperature = <90000>;
>> -					hysteresis = <2000>;
>> -					type = "passive";
>> -				};
> 
> Feel free to drop polling-delay-passive from these nodes too

Good catch

Neil

> 
> Konrad


