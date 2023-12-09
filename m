Return-Path: <devicetree+bounces-23442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ED880B4D4
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 15:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AC55280FBF
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 14:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B1215497;
	Sat,  9 Dec 2023 14:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QHoIi1T8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23D7610E6
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 06:23:14 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a1ec87a7631so271195866b.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 06:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702131792; x=1702736592; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4g0Ql0HSI1unyhrbNS+xVTJppYqi/HCOhP+DhZyP3C0=;
        b=QHoIi1T8IHWPlxDIYARIPVNEzTeAyD7LXqImrtc1ZhTcNS8EhtOkqp4lwJqTIvXvkY
         R4TeTFUvwiWqxuKyPPuxM+1Nho+KyFyKg4OYx3oDpXO3bxjuIFUtkTYO/678qc8fH2Rl
         +fqrxKouThlYZcFAKoxd+a3yU0A3vbUb9wqeOe9FE04zicT/kyPnftArjFM2EayR8Jz2
         UgFiYGXmdp7F/aVJORRPw0N6ne8AGp4m4UNa0Y90GcQqNStGumslRM1HNpzJBKq1cwVI
         bjhItoMh9jNQ//MrWGn/zKI2kFoHZFSD78hrdrIAW1vnJy3ZEkUi8Kd7gxqvw5yq3Ran
         ZAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702131792; x=1702736592;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4g0Ql0HSI1unyhrbNS+xVTJppYqi/HCOhP+DhZyP3C0=;
        b=daRfCIHA3xcQOS0WRXV/oGnLn7Qv25WxnK7j+5cJNbgeOAd52IlsGbZ/UKhtwiy42M
         wYbKZj1fqiQ14Yu7lC/ePSkcTwEYJaMLDMnxn/zD788fg8xJ2U3TxM5hyAmgHPXuP4xY
         KK1ap5ZAxKfvws8PAUmmT52UJLBrJDf6/ngw7aQJfmycXHxW9qwR31r0YdffaADm2/Ku
         gV1z9vpeKSCAD237BAq+lLbOJh2u5CSpAYHiJUaDiQwrG8nUx8aqs/VB8HX01MYTPavN
         YN43ueYLpfYUhNDWsmumu9U1m9Z9yzzh6eJOUkuiG2FidWbvOum/EtXf0ebMzo8cyYJI
         3hmQ==
X-Gm-Message-State: AOJu0YwNrRFdp+3I0A7qnrVuqiZQcXMyqlzfyF0iE++IaORPu7QPfAbi
	SWN04hjiLylSuWVCFwLUwHf5Mg==
X-Google-Smtp-Source: AGHT+IF/+osBbGWpGXWQzTH9f0PuH26cfc5YGS5PW9IGpDDm9sF3L5L005T3bLJ5Vv7bl/Tc3vVXDQ==
X-Received: by 2002:a17:906:106:b0:a10:ef07:fa9e with SMTP id 6-20020a170906010600b00a10ef07fa9emr1117110eje.6.1702131792580;
        Sat, 09 Dec 2023 06:23:12 -0800 (PST)
Received: from [192.168.36.128] (178235179179.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.179])
        by smtp.gmail.com with ESMTPSA id tb19-20020a1709078b9300b00a1cd30d06d1sm2311036ejc.14.2023.12.09.06.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Dec 2023 06:23:12 -0800 (PST)
Message-ID: <b71982c3-9f28-4586-8528-3a4f5dbc6eae@linaro.org>
Date: Sat, 9 Dec 2023 15:23:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
Content-Language: en-US
To: Thomas Gleixner <tglx@linutronix.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Shawn Guo <shawn.guo@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20230328-topic-msgram_mpm-v7-0-6ee2bfeaac2c@linaro.org>
 <20230328-topic-msgram_mpm-v7-2-6ee2bfeaac2c@linaro.org>
 <87fs0csqu1.ffs@tglx>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <87fs0csqu1.ffs@tglx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8.12.2023 15:37, Thomas Gleixner wrote:
> On Mon, Nov 27 2023 at 16:52, Konrad Dybcio wrote:
> 
> The prefix in the subject is wrong. Also please write out register. This
> is not Xitter.
Had a feeling it would be too long, but actually it'd be perfect
72 chars :)

> 
>> The MPM hardware is accessible to us from the ARM CPUs through a shared
> 
> to us? Can you access that hardware? I doubt it.
With a small enough "stick".. but I get your point

> 
> Please use neutral tone as documented in Documentation/process/
> 
>> memory region (RPM MSG RAM) that's also concurrently accessed by other
>> kinds of cores on the system (like modem, ADSP etc.). Modeling this
>> relation in a (somewhat) sane manner in the device tree basically
>> requires us to either present the MPM as a child of said memory region
>> (which makes little sense, as a mapped memory carveout is not a bus),
>> define nodes which bleed their register spaces into one another, or
>> passing their slice of the MSG RAM through some kind of a property.
>>
>> Go with the third option and add a way to map a region passed through
>> the "qcom,rpm-msg-ram" property as our register space.
>>
>> The current way of using 'reg' is preserved for ABI reasons.
> 
> It's not an ABI reason. It's backwards compatibility with old device
> trees, right?
Yes, I thought of something else.

> 
> I'll fix it up for you this time. No need to resend.
Thanks!

Konrad

