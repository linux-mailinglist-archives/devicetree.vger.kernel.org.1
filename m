Return-Path: <devicetree+bounces-109006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B965994849
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:11:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A7C71F25E4E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721F41DE8A9;
	Tue,  8 Oct 2024 12:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O8cuz91g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B051DE886
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 12:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728389490; cv=none; b=tYxuDK+RJvuwbL0Tu1ZnHxCKv+qxNqikZHdg7E2ETyLVISRlbTSasn9OOnNbdEMB6MdFqSlvdS7KZ69ybgMLpyLz7yqDQuTKzobAtklinvnngOd1+GK/UhqnNV2ObVipmkYpJuFRKK8nEwQqJ67c+Stu1arzrXCxbHMGIncgpXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728389490; c=relaxed/simple;
	bh=RsjroUMGmd0Q1BPiY1Xz7P+prrM74WtXWZeF75uCLMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PZq/e9K1PeD7TIhfbG2TkT0QHa85fr6paHvgUVljJI+d+iOw+sRGgN+Vi4rWGqZjvLHGxT4Gnk8ufTcyxMXW8KFAK/hx0JKRSTd8SiO6nqfoZayp567cTfCloKEZlGttv9mEHE5lce7TPEJWGV1rSgkO/jwVlaX5g+OT0amvVnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O8cuz91g; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fad25e3c44so2743531fa.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 05:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728389487; x=1728994287; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Q7tsc5AFiFd1L+hyqDI7tkY1clM0x3yYY6pzn4xsyE=;
        b=O8cuz91gNHdcMa+ZWj6ha9SyANjf+1NJ69QJ5DTO2lofv4D+ETRhLddAlDhuuxXX43
         bvHRqWL9x8H9dUMkTX4IXuurG4LZhXyTjc0adXaRdHcO1J/+f09OCR1MMS6ELNtpfllG
         BgYQr4Gi2vcVnNLPe2jMz2nrGI7MA9GJJDVlamS7APgRspJiAikctqtVh8MTIKYjJdAE
         mC22/cZfV0Y2XNzJj3SVPSmu7CEh0pmdhB2GJ91nh9+4xweXHk/nyLF0ojH+Ixkg7Edt
         d+u2aMc0hsWiFXxQ1JnQbubct7G9pI72F1Mkqd0pWgL9cOpfRIqvLRddcvKHQIJ1hE34
         orIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728389487; x=1728994287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Q7tsc5AFiFd1L+hyqDI7tkY1clM0x3yYY6pzn4xsyE=;
        b=Oen2OhWDYrkiESb3o7o579MZ7AJaTEJgAy7Ns4j0eljUO8AJxJgJcryEeK/Pacyrlk
         IROwYl0FIhpvhJ1E6tkwn8sTP/OwlfDKDpu07MvKHtTEhJVynYYbiU2GV4Gt1F+Co7x1
         VPJe7wTMP4tsIZnsnimsknGkku2c5gbwBXh0kqKQADOhPUOVibma551rioEm0ZPiTtiB
         3sqM8Mr39Mpa1w7wua34KXUKDWF9fjpC0a0FAtOBpHI9a75Ei3B691vCeUPaVR6QScL9
         Mf3Xl9tR1DhHXKSWvQfrV1uizOtqWquhfgaoT/woeHaShfPgMwV3JHS3XxpK+CuznItx
         1IoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXu/ZzBuFJlRh8o74ad1BWbZqrVa5fNtCenO7ARj2VBHjilgdzSs+6Wvghq2rX/ZSrI5B3uu+kh1iL@vger.kernel.org
X-Gm-Message-State: AOJu0YyBkIC1aVermITa+0Q4tsmpTXZ0twx5oyd1MtInex45Oy2XMQw4
	VBSk1N3iZBfa7a8CNFyboECrpcK7LFGQEOwPGFI/pXRIvywWYTejYhbvHKWhmG8spZuVvo6KhLP
	05Ro=
X-Google-Smtp-Source: AGHT+IHTwnTD2IN6p3N+ddlrobE2SkJKnwpl/OlwTinXRVO9nB/H5sJZQKaFeuHb1cLrgWUIpabxSQ==
X-Received: by 2002:a05:651c:150b:b0:2fa:e67d:e436 with SMTP id 38308e7fff4ca-2faf3c66496mr22372681fa.7.1728389486764;
        Tue, 08 Oct 2024 05:11:26 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff1d0e9sm1202257e87.181.2024.10.08.05.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 05:11:26 -0700 (PDT)
Message-ID: <429f933a-e91a-4533-8cf0-3c97d410df5a@linaro.org>
Date: Tue, 8 Oct 2024 15:11:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
 <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
 <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
 <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
 <27f39cda-932c-4b79-84d4-be78d266ebdf@linaro.org>
 <8aa5135b-386a-42bf-923b-6ff999694da8@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <8aa5135b-386a-42bf-923b-6ff999694da8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/8/24 15:01, Krzysztof Kozlowski wrote:
> On 08/10/2024 13:50, Bryan O'Donoghue wrote:
>> On 08/10/2024 12:37, Vladimir Zapolskiy wrote:
>>>
>>> I don't have access to datasheets or hardware of sc8280xp powered board,
>>> someone may either verify, if CAMSS level high type interrupts are
>>> supported/working at all or not (obviously its current presence in dts is
>>> insufficient), or check the SoC datasheet.
>>
>> I've tested both as was submitted and your change.
>>
>> I _always_ test my patches. I'm not sure there's a datasheet which
>> spells this out to be honest.
> 
> Datasheet, HPG, interrupt list in the IP catalog. They all might provide
> some hints, e.g. recommendation.
> 
>>
>> Rising or High can both be justified, its really down to how your
>> interrupt controller latches the state change. However I personally am
>> fine with the change you've provided because I trust it fixes an error
>> for you.
> 
> That's a GIC, right? So most of the GIC interrupts are level high.
> 
> I can easily imagine that 10 years ago one engineer made mistake and
> wrote camss downstream DTS with edge and this kept going, because
> "99.999% it works" and no one will ever hit that 0.001%. And if it is
> hit, we blame something else because debugging is very difficult.

Debugging of what? Again, nobody ever tested high level type of interrupts
of CAMSS IP. Why some irrelevant imaginary "races" are into the discussion,
have you or any other CAMSS user ever seen them? If no, this argument shall
be excluded.

Apparently nobody followerd the link in the cover letter to comprehend
the problem...

> If this entire patchset is based on downstream driver code, not
> datasheets, then it should be clearly explained in commit msg, not just
> "The expected type is...".
> 
> Why? Because "the expected type" means datasheet or some hardware
> engineer says it, not driver.
> 

The driver and only the driver dictates what's been tested so far in
this respect.

--
Best wishes,
Vladimir

