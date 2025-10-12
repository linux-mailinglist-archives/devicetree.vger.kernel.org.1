Return-Path: <devicetree+bounces-225687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DB7BCFF98
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 08:07:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4A3CA4E02D2
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 06:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12274D599;
	Sun, 12 Oct 2025 06:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=me-ssier-org.20230601.gappssmtp.com header.i=@me-ssier-org.20230601.gappssmtp.com header.b="iojdxx85"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE3E2045B5
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 06:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760249220; cv=none; b=TIEY5XGi82+f2dDvCeYRvXMvAxyAsd0dvZhbdS4L5pQaFdMSilVK66Q1t45emK2I0rd3/v3xRpNuvwqbKwXARGZ7CF4TZ71j/pxf3r9usIglbJdCbF+mwjjVOZ2jxf00wq3xa3Pil53Mh7l/KDiuLYY+HZ9LhBXqmBRkDFAh0vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760249220; c=relaxed/simple;
	bh=J4GE7EyQXEOo3w5bDh2vhnigRy0tlpj7MlJXIT6c3eo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wf3uLJhsi1oxt6nYRdzhPRkUp7QNY8RkQHAKP6KqR4Y8wgBdCg96LqqDESPtViIVrf64Dcp+o8ZlxjbOL/YHmta23QUfvSHUzuMfJnWE7uvZIoRkQnRWyvXSW5U38SiV0G5CFjXo1OBWianfm5hqSBhy+mm/47icJHDF2utKFOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=me.ssier.org; spf=pass smtp.mailfrom=me.ssier.org; dkim=pass (2048-bit key) header.d=me-ssier-org.20230601.gappssmtp.com header.i=@me-ssier-org.20230601.gappssmtp.com header.b=iojdxx85; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=me.ssier.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=me.ssier.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-854cfde0ca2so629315085a.3
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 23:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=me-ssier-org.20230601.gappssmtp.com; s=20230601; t=1760249218; x=1760854018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rMI7wRbzRfPNICl70mUsYJErke1tBJAXXVxBPXEiK5c=;
        b=iojdxx854spNBqH/HxnpIPwpC/h7rVVJCPnjnb+tpWTJwstzlc78XyyT61COZ+gBry
         gNJpEijjsakKSXbee13g3nnlo1X3ZdfmwNdbyTBEn2/e7On60E+J21s3c3E2fg+tJj5Z
         YgjySyNIXXZ4jRBmVxraHVHwkJfL4tNn5M/P3Jij/vfpPRK/09KamSLr4pg19I/C0ONY
         YvzaGftOSKNIlbhnZZz86H8m7AKorFDZgnGzeQ6fH8qDpqU5CSinYEAePRDw4PYb2539
         Lyx+3Cbicbba+T7jL2eg/3tsWGs1ByUo+3Qg1z3gjXdOxlzwlc2J5OjvV4X3nZwovWjk
         fKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760249218; x=1760854018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rMI7wRbzRfPNICl70mUsYJErke1tBJAXXVxBPXEiK5c=;
        b=vTKC7xzJ9ePyzKqKdgVwvQUmI2xcEzPJiLtF2CbggojPdA6jRLRc2wEeHHtX1W6Hev
         GokI57M5MeRvwu4kGNaeQI+Ixq+MblqqKNy3qu9EgHgdaAcwe8vi0B6Q9VJVWTCq6Vqs
         Ees9t6W4RTxqk/xXzP/Y/nPkkWlhwECV9epYNWKw4yL5rYpsVkmGY0mzBk4MmcH+UOu7
         pALYibhvZGUoetT/Y1/OoCHe5AlbpqSambOxdhJHtAQvLesj8xvDvg/wyCMfGAn0DJia
         Pwm9hO9fOj3YfWeDrowInNaia5cWUYrxt3P5E4nFrtb77YaCrXys9bXJuohlp0cwJ44k
         QbbA==
X-Forwarded-Encrypted: i=1; AJvYcCW7h7zJiYN+yRNFJmblAzGj5mzEf8v8w3fRovcRxqkSNoV8YVjPshDKeCDS9vyBaYTLnt0VcFYQmypJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwNvmdxiO54jJbI2q2VQwmGpFL6yJNEBzu2dFGWoPlJviSBD3n0
	dEkLXOP79Bmgg2SqfL6RE16iz0CbTyBXZvOGezIsxDHwyRTjiOZrpMU0fmzyEjDNsFg=
X-Gm-Gg: ASbGncuOusnpVCG3LgtTsTcvu2P1n4CLpe5q4wnvfemr3dHZ9+JznPUESOXloct+S+7
	NdyH5s/dRRVI5OZeuw9+vKWqDDmz48hyXV5HItAkp43IbkgJk3mYs/JVnt4jgn//E4OgkPZ5p5G
	6nuSHxb7zkXppAq6taoH4xVoV+Atsy/sg79NHZFI2MaIxD4PehY5inRiqozHHuS+N6yScTVJ85S
	QMd6FNGFwYVAmzIVJpJZ4dgCuzBiSfPUHvvv4lrEnrmueD0GsvkJ4b6JoppRHaEdeS4eE2Owxfr
	GiTzfBm4GkIVm92O9xqixvcW5H2/HUUtYk+LJM8WRMJt0aZHsG4ZNn14njiL11lUZ8hsCH/Lj8L
	AC9+MlEb2WtfgRIOuMVG5JzGY60dzWzs6Uuirwm8/ls3x9bcfqM4aGmAlTsf8qyblivLtEa62lu
	I698cD8DCHFwCIri5lf8JR2kYVh9fHX4N9BJopuofbWmlyzC8a5g==
X-Google-Smtp-Source: AGHT+IEMl4hzF79Bq4DCeP0JM3aR8UtTQq0FlGDLXT7cxwwHa5K+nkf//3379/x4FHU0neaf3KpzLg==
X-Received: by 2002:a05:620a:a901:b0:886:17fb:9436 with SMTP id af79cd13be357-88617fb9445mr508393185a.71.1760249217775;
        Sat, 11 Oct 2025 23:06:57 -0700 (PDT)
Received: from [192.168.2.8] (bras-base-stggpq3702w-grc-09-74-14-126-215.dsl.bell.ca. [74.14.126.215])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-884a1ca17dcsm738639285a.36.2025.10.11.23.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Oct 2025 23:06:56 -0700 (PDT)
Message-ID: <458ba722-ab52-4b30-b020-30039102ce57@me.ssier.org>
Date: Sun, 12 Oct 2025 02:06:55 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974pro-htc-m8: add touchscreen
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-4-53d7ab3594e7@me.ssier.org>
 <5a9a2ed9-9e95-4bb0-b5b9-e4e0edcfa8d8@oss.qualcomm.com>
 <1d60b78e-136f-4051-8296-245d111ca49f@me.ssier.org>
 <84d7ab07-4026-4313-8919-b5f9205132c6@oss.qualcomm.com>
From: Alexandre Messier <alex@me.ssier.org>
In-Reply-To: <84d7ab07-4026-4313-8919-b5f9205132c6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025-10-09 05:30, Konrad Dybcio wrote:
> On 10/9/25 7:50 AM, Alexandre Messier wrote:
>> On 2025-10-07 06:04, Konrad Dybcio wrote:
>>> On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
>>>> From: Alexandre Messier <alex@me.ssier.org>
>>>>
>>>> Add the touchscreen device node for the HTC One (M8).
>>>>
>>>> Signed-off-by: Alexandre Messier <alex@me.ssier.org>
>>>> ---
>>>>  arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts | 36 +++++++++++++++++++++++
>>>>  1 file changed, 36 insertions(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
>>>> index 36eb42f0f3d9..040a256f9465 100644
>>>> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
>>>> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
>>>> @@ -65,6 +65,35 @@ vreg_vph_pwr: vreg-vph-pwr {
>>>>  	};
>>>>  };
>>>>  
>>>> +&blsp1_i2c2 {
>>>> +	clock-frequency = <384000>;
>>>
>>> This is not a valid I2C frequency
>>>
>>> You're looking for 100/400/1000 kHz
>>
>> Hello Konrad,
>>
>> This frequency value is used in the vendor kernel [1], hence why I used it.
>>
>> I did a test at 400 kHz, and the I2C devices (touchscreen here, and NFC in the
>> other patch) are still detected, with basic functions still working.
>>
>> Let me know if I should still update to use 400 kHz. I would prefer to keep
>> the value from the vendor kernel (and in that case, I will update the commit
>> message to add that information).
> 
> Hm, I grepped around in old vendor trees, and it seems like there was
> a period of horrid wild west wrt this..
> 
> I see 355 kHz, 384 kHz, next to "normal" values of 100/400..
> 
> Let's just keep it as-is, but please note in the commit message that this
> is intended and that's what the downstream sets too

Got it, for V2, I will add a note in the commit message, for this patch and the
other one (for the NFC support).

> 
> Konrad


