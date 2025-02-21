Return-Path: <devicetree+bounces-149437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 577A1A3F823
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 391F817E092
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F7621018C;
	Fri, 21 Feb 2025 15:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dJ9OUPmw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B288720B7EC
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740150747; cv=none; b=e/Z8D2KdVgUQFrHzj7h5KXPg89Rp6wFUsURHSSSoEgYxV2U9Jj8or2HaC4jFcNSQkw1MwzixP+H4xscLJ67e7aCbDvaLfJnFubvXU6k8tywNqo0+0rMv/pbyzzKjsIwsGmyU74W+ti1VODPKjjEPbo3V16zFBDM/2s4/SnNrnlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740150747; c=relaxed/simple;
	bh=TqVTg2fH4nD9jhCMXM4i1HWkjsyKhoocodxqzx8OtWI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d3Sw/3yyjuwSknpBqF9sB3H6qvDFzvSfLep9GkhB0lzmZLOGC9sm5K2KdaFdG/8USbL/9VSxQAjbS2bJYoZFg6YYSlM6H345x4umkUhZUjMnW/7CS0tB7yEg2mTLmEujaG1yKEasoTLUYjoKTtCLgKP+u1y+X7M+PGH2pQXimTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dJ9OUPmw; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab7098af6fdso33568866b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740150744; x=1740755544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zzvaA4W/Mwyu/5eJMfvW4z8km7jxnh77A2iodnVpKVM=;
        b=dJ9OUPmwnmGxAdjX6aq/nrfBxs3SEHOZmfUVhlk48icf65BXpx9WI2W2M76PH66JF6
         NadGYohn1WvXNV96f3Lh07UHG5Lw0SduPCUTqrkFth14RWQXlpx8lpmlUqaJ2oB6dyV7
         GXxl2bIn5eEve6zFw8RezsT+igJOjUviLs6gh9uN1yGuPbYOdqKWrteTlBcydUBL5lm9
         X0pqF87k6Wm+DYzRH/UW8zj8qaQR/S9h8P5xldxlLh1OPq8i1j/bipkmFQKGCL+EMEL3
         nFT7k95sY6ragRLT4+LiKiSaQt0o8HniTq11Fb6Y5C5PGE2Ex/roiaHJfUMdK1Yjf0pC
         3vjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740150744; x=1740755544;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zzvaA4W/Mwyu/5eJMfvW4z8km7jxnh77A2iodnVpKVM=;
        b=itumjndB3aBkadRJ3uP04Ad16PiTRizPKLp/WWxhFSCG3Zx7oI+Hs5NFwQYCeoYrmi
         5fuaIunZgPqL9Oqe/y8GQa9o6QR0TthGg7K9DvBReLG52KqAiptg1U574tCLDrpVGPMq
         m5eGSyjM1xCimfaAa2FrORfwL2nt9BKyk0Io4n8v3Df04G8K3pq5+ajyrlMu5tfuyTDF
         RBC/UimO7/yhEnBRUYAi5gCWCNkqHAwT7OSyfRqpb7TfiuwHrKGhrontlXIt2HX5LpLM
         1ut+5zeQ83AfzLhx7qx5bwaTddvdScSAt7zDGaKmb53ck6/C4GQn9T5lYSD0RJ12ZVpK
         /Icg==
X-Forwarded-Encrypted: i=1; AJvYcCUnRXcFh0AKn0v6r4CLHFCtC9s2OwfQ+BREsmUDmP4GQUB8+meyzreN2MhrqwGT2n/F+BeCjfk7gDdY@vger.kernel.org
X-Gm-Message-State: AOJu0YxaW+DjYGWQMI3U9rMF/0/VkJa27UBs9LWrHDz9vZ6aYvvTUyUb
	E6ZyzB1YNJDXp9LvJPhDpwN16bkvA68XGbYtlnviuNNG9Vr2D1eLnniueLYRYEM=
X-Gm-Gg: ASbGncsBD8P2IHl6V/MkazgQOSSZ721GcHr7NSt3pCKxjNMZsgPmly0uHR+x+XKQ1m2
	AHhkSR1hkU0XE/o9MCnYBL4u0bOgWEruuJaaSiYIpzppwJmDTKNU3p+5bKbIc9Rs1L9KUUTUqE7
	jmGkjxg9eWOmjEf+MHWaeZDT2S9mOYagas6wi/cih2bUTdi+bqXEeDvjsJTrZe/VkTbtoCesqBr
	4n9ZVq72dzLqvB5LtltmabnqLia5LUXLBnz9VrhWCooWVtGpT2d7u0rs123TqbiJ8tP4aVUKbtx
	v4ilRxP7ZXvVRkwehelwEl1cD7KBMQ8V9BaYhDOMpEVH2dag9YpgMi4X+7RSNvo/RRolOQF5RK/
	GYKN9
X-Google-Smtp-Source: AGHT+IG4pbshgiS6Tvd6ebMPhYFkwTHXXamzaX+sw8dumFdG0LOul4EfU4+b4CW3SFd0NX2pTqja1w==
X-Received: by 2002:a17:906:6a0f:b0:aac:619:6411 with SMTP id a640c23a62f3a-abc09c24753mr150710966b.11.1740150743999;
        Fri, 21 Feb 2025 07:12:23 -0800 (PST)
Received: from [192.168.0.18] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba278e1b1sm935037666b.99.2025.02.21.07.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 07:12:23 -0800 (PST)
Message-ID: <fe337f0d-55b7-477b-8025-0a5aeda78fe7@linaro.org>
Date: Fri, 21 Feb 2025 16:12:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable CDSP and
 mention MPSS
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220-b4-sm8750-cdsp-v2-0-a70dd2d04419@linaro.org>
 <20250220-b4-sm8750-cdsp-v2-3-a70dd2d04419@linaro.org>
 <dihnqsdjqxq7uhomceeiejey7dezfyvhpnyc3zyzhyuyfdjtec@d4ruo5xbxid3>
 <e4630796-49b9-4a09-b511-fffff1352350@linaro.org>
 <7ge5bnzqggaeoyme57sjbchehdla5icblyjc6jiop6f64bfk5y@gobmmlvp3cie>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7ge5bnzqggaeoyme57sjbchehdla5icblyjc6jiop6f64bfk5y@gobmmlvp3cie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2025 15:15, Dmitry Baryshkov wrote:
> On Fri, Feb 21, 2025 at 09:38:09AM +0100, Krzysztof Kozlowski wrote:
>> On 20/02/2025 17:19, Dmitry Baryshkov wrote:
>>> On Thu, Feb 20, 2025 at 04:44:13PM +0100, Krzysztof Kozlowski wrote:
>>>> Enable the CDSP on MPT8750 board and add firmware for the modem, however
>>>> keep it as failed because modem crashes after booting for unknown
>>>> reasons.
>>>
>>> So the modem crashes on MTP, but does not on QRD?
>> QRD was not tested - which mentioned in that patch - and I hope someone
>> will test it and tell me :)
> 
> Then it might also be broken. I have the same situation on SAR2130P,
> ADSP works, but CDSP crashes. Please separate modem to a separate series
> and clearly mark that it is not supposed to work. Until it works on any
> of the boards I don't think we should be merging corresponding driver
> bits, which are known-broken.
> 
OK

Best regards,
Krzysztof

