Return-Path: <devicetree+bounces-177924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ECBAB9A59
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 12:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E5194E05C6
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA57D23535C;
	Fri, 16 May 2025 10:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bMNggA6k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FF0233128
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 10:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747392067; cv=none; b=m3/gbziwL4jKIJkMmTSEXV+3qKSCs+Ecpx8bbOhXTercWxpnWqDHoA1LrIar+IzVjfyjS5CM8j87WDkVBRBd8c6+pOuUK2g8VYD+z4KxRY+sLjPyT4dbiSFX6QLS+EW/b/eZoGxbl82QJatGrY/4BoQNhS9ptl38eSY8L9j1LSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747392067; c=relaxed/simple;
	bh=JJ8vXiUW0U6U48IJH3VFUazK3FU4pVH1KXQ6O9widAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mUwT9ENfV6264haNlP1clTZae4KafKTngFuNuxN5vfkLLlmLWLQqIrCwZ7w1jlP+ABYwsouLLqDU8tHlp8BoROhCtjVcA/9xoA7yyo/gCoKssctx7CzDdnOg2eiCC9Gx0Qc5Hb7QV4EM1A4ka11OYRELcgoyZ6tRYjNXWRrKG8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bMNggA6k; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a0b9af89f2so1251749f8f.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747392063; x=1747996863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2tO92LujsTUu4E4qe0APuNwo29/s1qsBe6W4/ruBxlM=;
        b=bMNggA6kWrViZSLCeyp3vn++mr+WkE48VNY9YOo717rv+4rDTaOangr5VvrfMHWrLR
         Lbgy9Scj0ccgIIgQ8HA9LfDKN/h9eS/Z3Ia3HrvObDZptmQ+3Jbnz0487NByVncArOH6
         st2xATPSpbb8KzsGlvsTr3NQQxvRJ0lCnUWlYhdiVwkMMar2uE+sduvmK5NUP4246cdP
         X1J8yJ2W4Sa5YSX4zeRH9yU1Q4jjxF9dRk9x5Gb5Njlc0/GFoVr2O7ShB42+CTYNwZAu
         cxACFLx7HAtOm2TgQ4g37CMM3IanejXXJH10DamSjYmQaJ1ssfElKrIIRqyMR+5cv4I4
         lq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747392063; x=1747996863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2tO92LujsTUu4E4qe0APuNwo29/s1qsBe6W4/ruBxlM=;
        b=pBeTgzl/44RUc+UEoLtEOFkocZM00gJHnEZAUiy/dTjwMaKWpx25Hab/NNuz8/yTWA
         vRWHvyyt0NS2oPB27h/HEfXFKR+g9inVoY2OCM4ONSPTw5yXDFdMQXTTyp0m7+I3sG9s
         Z6a+fC0raxdGL1NnX24ryQ0raeFntN0otOLipT7NBD+L4n9nanHrDZFOD3LUacIsAE/H
         IO9xEAFwlf5QgJKf6SjQxu1u0tmgav0GFWKx5xEesmk88K+zTQ/Tz2AiUYsLxcD33Mlm
         hrJpcQk0TNGtCXZlkAVFHAvEiyk2r7fAJQGw3Vxhs1LnoCctHaCiIlR+lxvcgdzl2pf+
         JowQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCu2rj7y9+V9X9xEc7zE+L17JcrCiL7jSm7hyAuaDRMoRwmtSVAiQSlgJe2OpPv3OsxpOYX8rAu5MU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/GLw3maX23s9p+GMA/MjSVmkdmdzl9g9qpxQJB0J/83gkjNwt
	U5J+jvfstEMZ0g+/kcvOZuJNg8Aru/s7ooYokJ/VurLk+iziZFs74eSD+lmglMNXGV0=
X-Gm-Gg: ASbGncuc5xdwGWgZ0arJyLVYZfSEU+R12w+XO6z66H+1THB9nXU4FBzKCUOuTbjpP6k
	pthlx9f+1g6aLo+ebhA2y9M+EcgEYSPEK03Zq+PfLuOUqBA/iotOJdlRfCX7BLTYuQJA/hNyIrC
	xWVTugygcUVNgSe/0Y+wIgCLlJlmrpWg2FDcgNj/e4xNqJ4Djt06kWG3EGWH/iUdVrXsd3j0u3B
	b5Wwqid3W05H5dbeIHvD6Bvl6IMoiKzPzu6VresQVp4EdtX1gugJz20U38G5+8uJkO/2/vYMb2K
	2nKgJgQyszl5yOtpGHXTJvrkMR1m0HkdVS0Q32sd5lS7ocF7izvjYDrHCbLkYgecy6JxKXTS6yA
	xg8ffn8bpDAH+
X-Google-Smtp-Source: AGHT+IF32T5XVdwbwxiiOP6vj4T8RjVPOe8zmd+vWmpBenfaU1R+up+rSQSvT1653B1phIGvMxs8tw==
X-Received: by 2002:a05:6000:3109:b0:3a3:584b:f5ce with SMTP id ffacd0b85a97d-3a35fe67a86mr1636113f8f.23.1747392063533;
        Fri, 16 May 2025 03:41:03 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca889a7sm2454163f8f.72.2025.05.16.03.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 03:41:03 -0700 (PDT)
Message-ID: <020576a8-8edb-4d4f-a58e-6cf6e30f6df9@linaro.org>
Date: Fri, 16 May 2025 11:41:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Add support for camss
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Depeng Shao <quic_depengs@quicinc.com>
References: <20250415-sm8550_camss-v1-1-d4b7daa168ac@quicinc.com>
 <wOxjiEBKO2XU-PikPlT8IMpSGOrP4ocgZEIj_zNhLzzBjySkhGQzupjmJAFhUHcnknLKSASwk33LjBI6WrZ9vg==@protonmail.internalid>
 <1ee8587b-2bf6-418a-9834-8f8cbf1e94d8@oss.qualcomm.com>
 <4e81a1fe-3ee5-4f5f-b958-13e6cf9138f7@linaro.org>
 <db059233-523d-420b-81a7-73b02beef4d1@quicinc.com>
 <36f02ed8-b440-4760-8d08-b633406ce92a@linaro.org>
 <72b61199-bb70-4965-9ca9-f21966195f60@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <72b61199-bb70-4965-9ca9-f21966195f60@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/05/2025 11:32, Wenmeng Liu wrote:
> 
> 
> On 2025/5/16 18:15, Bryan O'Donoghue wrote:
>> On 16/05/2025 08:34, Wenmeng Liu wrote:
>>>> This should be 689 yes
>>>>
>>>> ---
>>>> bod
>>>
>>> Hi Bryan,Konrad,
>>>
>>> I confirmed that the value is 688 instead of 689. The documentation 
>>> incorrectly listed it as 689. To CC linux-media, I have resent the 
>>> patch:
>>> https://lore.kernel.org/linux-arm-msm/20250516072707.388332-1- 
>>> quic_wenmliu@quicinc.com/
>>
>> Do you mean the documentation in the kernel or the documentation 
>> inside of qcom ?
>>
>> I checked the internal silicon definition, I think Konrad did also.
>>
>> Which documentation do you mean here ?
>>
>> ---
>> bod
> 
> I mean is the ipcat documentation.
> And if configured to 689, the interrupt will fail to request:
> irq：irq: type mismatch, failed to map hwirq-721 for interrupt- 
> controller@17100000!
> 
> According the mobile configuration, this value should be 688.
> 
> Thanks,
> Wenmeng

OK, thank you for clarification.

---
bod

