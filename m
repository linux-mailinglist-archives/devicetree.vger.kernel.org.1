Return-Path: <devicetree+bounces-239749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6388C68FC1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id C1E352A9A4
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095E333BBBB;
	Tue, 18 Nov 2025 11:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zBJLxkuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163B9331A7D
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763464086; cv=none; b=WsxCYJeoLygFag/5ds/JMO2V9WXjeFpavdeRjqh7V3kfjJwePzLA42HIYDrgqNBiAIkuxez5tzhHg15ymGSqr7n16aSO4Sl32bPhVzF+rn2hgzkC2aRaCJsb8udCqxYpcGa6SrdA5EFzR9p7K2s7SbjewR60+5LCbsf6ftrAlwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763464086; c=relaxed/simple;
	bh=OQF0sk46s2hLmjrUOiUzHeID2ZztqA4oI0bB6vj5ooQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZSFRLdrDUIFD+WMsR+ETv4OvA5kQZuyvd7tQjoxiU2o1OCRnn52SrYXA2Mi5kpw3oSqy67lI+gAKi/fTBkoF4o2CBCFj5ns5nuaYkEM2KFTzL7NDWwSX2E0kHu2Z60D8R+9waetQjCSz3oixtbOVaUEOVraWFP/+WXxuPGgkA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zBJLxkuJ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47774d3536dso44237065e9.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 03:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763464083; x=1764068883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AoB6bHmy3Gr2c9dl9LxyC0mWmZ5xq1v+qI2e+g/jvls=;
        b=zBJLxkuJLSYviU4ISl3zDgXfKnxH6/z2ryxkLAWaBI067G7ryVkL62V2vinvocVscv
         W3bsMtUOmcDBzSDSeb+HB7bDPVRVbF6POYgOFGOEBPVi8mk5oj8rXjxl1Py14U+u8oF0
         bSfJi2V2NSXk1+DQSo2JQO29iR/AxVCEyoRTV+sjxzICIjyDlTsncHomUy4Qm55m75zP
         xq2ytQkpxea7WClkvYeoY+1/fbjbdzN51oQK4u7a3LcaoY8xnL/gt2Pk+6Q57nH+JRLu
         Wnmx5O1iz98fW/Uk1KFAoUvOmUH8vq0tJG6bBLEQLl/+W1SzSdk399P/XY427/SanQs6
         Rjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763464083; x=1764068883;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AoB6bHmy3Gr2c9dl9LxyC0mWmZ5xq1v+qI2e+g/jvls=;
        b=oFKTwPeU/6hy+optC9gi1j9tPl96y2VVrnp2kVAiIfci2W0C7pQaDuY4L54cJXQ4MH
         l3I/4wl2wnY4/cd+Oc3D1/FyCOtN7EKcFGPLN/r9Vrgw+OaA6HN2b/9TTfEoWbkMHEIp
         GKwSiyMrL6fcQ4bSSjRU5osgSLTLvH2zJrMWTFFozhgDaD6C/dAvz/PQQ6sjngwsF3c6
         W/yJyEjfhWEICtrZNEy5ix+MRajijPRfrx6zk4fmcE8rdtZj4Hri42RdQwV9qLWidPdF
         JrXUqq0PZRRt9+vUY5AFkMJAg6aKSexcaxIH0r6bUGcqVbyh4DQhq7NLu/M8q5VaX4/9
         BBOQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2wmIwdL5zt44M7emadI6XDOgy0TMFt5NSTyeI4uI/TvmF1vwCEu7r7okAbc1lLsVg/niauSgjEpAF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywoub9ttH9Rl8f4EeThPVaRScxMHM9ExyT5sxsLJxh9yU7GQgtS
	fPqqoOzSNVH9b7hr4lkra4p+Ax1WfRSgCxj3e8HLA8E36v/hkqwKybxDD00hdV2kBOGY6LFqvlR
	C9Kjlrtg=
X-Gm-Gg: ASbGncvpg1IaCabsiiEL1VIpUMLrK12rPVJTi4BvMvr/nHHZrMOzOhZaY9mBf7VmqSn
	C2wlR8Ae4/xUFGxWULXI8+4vNmONaD04EY/4s0+vtHgmyYkdFKiACPUEZGW8/vclCapF0aYrpXf
	Htd9wMq8R81kE8NHpw0DmOTzRuja2GBvMfYBug4Cvni30dEM/3o1p54WmtWm6Byodz01Em8kYSP
	YjsBkFs0Wvj9evNSzGjAuC5W+hgmamX6THjANYIMdr6O/bZI4Ky+4zIxbb6yIN+AAhAqALlnEMw
	uRNbew1mFLwx9KJ2JAFaRPvQ0JaehrDPtRA6DBSgqRgeyCk6OMl3RetBv23uTATdNv4QHY7Lr5Z
	wi0zlskwHgS60H/RZZ5eHcJHwxqK23cAidm+mvhz2Mw1J+cO04edg5oat2swyaruh58jD9b04ax
	8zkdthjPxvMv0X2b7jiTPyT/rve/VYGUMzuAX3C0YCGA==
X-Google-Smtp-Source: AGHT+IFwBfUbutDFVGFhG/tpcbmLbS1ovbAuX60wD/D/mUkwyiz6bbGTHlNaOEa8ByNTSBTIa85fWA==
X-Received: by 2002:a05:600c:524e:b0:475:dadd:c474 with SMTP id 5b1f17b1804b1-477a94e88bcmr26303945e9.10.1763464083352;
        Tue, 18 Nov 2025 03:08:03 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779a684202sm180035855e9.10.2025.11.18.03.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 03:08:02 -0800 (PST)
Message-ID: <0a114896-ffca-427a-8761-977dafa73ea5@linaro.org>
Date: Tue, 18 Nov 2025 11:08:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add CAMSS support for SM6350
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Luca Weiss <luca.weiss@fairphone.com>, Bryan O'Donoghue <bod@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <3ph8XeidoxkUIsK7qiOH29pde94sdwa3ReWKVVrPabgS5enIAmwVAC5plyFnBMJGKQBnxFB6df6j69OMFIeavw==@protonmail.internalid>
 <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
 <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org>
 <DE8JJCQA0C4Q.35NEED7XG0K0V@fairphone.com>
 <17e7ebc9-3b88-4334-b87d-1bce6d5bb120@linaro.org>
 <893b97ad-7d2b-4408-bab5-2cd63fdaa33b@oss.qualcomm.com>
 <28f33d3a-6866-4bdb-a1e5-d193dcb7d4d1@linaro.org>
 <a15bbbf1-549d-4603-ad6d-3a578b548184@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <a15bbbf1-549d-4603-ad6d-3a578b548184@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/11/2025 10:06, Konrad Dybcio wrote:
>>> Konrad
>> vfe170 is what we have on sdm845
>>
>> So I'm just asking Luca to try the sdm845 method of waggling this clock since what we have doesn't work.
> It's of course going to work because this way you're not calling the
> code that throws this error
> 
> I was curious whether you know the actual reason why this is being
> done in some other GCC drivers
> 
> Konrad

No notion at all, perhaps as a workaround to this very problem.

---
bod

