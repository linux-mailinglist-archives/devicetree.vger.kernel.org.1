Return-Path: <devicetree+bounces-65175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D62248BCECC
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 15:18:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 136F01C23B04
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 13:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 338F277658;
	Mon,  6 May 2024 13:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="qsX4lcGr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4F715A5
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 13:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715001515; cv=none; b=hwufNHiYnwlUErRf7xaeZJTeuEJqQJDxoIYpxvSHIq+h9FBKJTiUB8i6OmT5jOtjDYdgqD4ShAsaujwjdOPbZGw0Q0w3nXPnFTiIWq7Fn0NJMeGOCI7662tBB5PdxTTGcl2LZ61xq0UKKC0zC++bTCD2DZC0o1gzqpEEAMHXsMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715001515; c=relaxed/simple;
	bh=+gcC3XrKopVY7+x8hM7REzI5z8k8UA1xsaVjo+OXoGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rq5U/j2BW0cl4tWd4sePNT5ESWxBrZgr6GxRjG/Khxzf0f/ss3r0oNxakkELzH89xwmF9p4U76RSfE0p3B0IHEIJT90OvCXdpx3I4JnZ1g6/bvFFUMM5J9XeJRLE/pNMXu+K7FJRXqneKL4eru4SiIFI2R69fvZiSGRK6ws/oao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=qsX4lcGr; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41b79450f78so12870965e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 06:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715001510; x=1715606310; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fbLk4eEqBAfYnW+4L9hnO8Mh3W5E5jUNZYMwae+Me8Y=;
        b=qsX4lcGrVT40pGHhQj0Q+TQvqvSkgrGAZec6GuMLBU7KYXkBheYv3csM3Ybx7Wr0Tk
         CEAvxGKNFXIeOKt4epirAgYPv4k2t+KliYKCTLLbwGAeOKxY1c3zCOcnwEOoJoVPYWCu
         ln3Audqq47lIGuwoDkxACTwKQ4THPcGgsZsyY6ozwYcII+uwwcJp4N+94J9HebzAq+QH
         vgcOg1c8eh5XAnGHec4xT8glsqHhzs1nS8aHMzBCMjlbEWGVY1pFkDV4D5PTyG6CU8nU
         Foo0M95qb+aOpQmOVjlPfmssWrZQBhRatpLS0btpQUG685q9OLa2h0wte4Eg2Cqau21U
         WpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715001510; x=1715606310;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fbLk4eEqBAfYnW+4L9hnO8Mh3W5E5jUNZYMwae+Me8Y=;
        b=C5rCHqEhA4d4RCjYEUJUn5SoTbv8c2z8Luo2IbxDdIFIFh0oMn1vMwPU0aM+HUaJDb
         0JjhMGVBMPFTts+4oi4NrQ7OdPnRueCu/1NyzX7LO5+aA4Vyc+2UTqrgsWWgLSIQOv35
         ynTfxCgWHopB8DtOfnBczsmFnumNLkBnIY+XNeDUXfgbeuYevb4aqBvur1f0VOqsZvGP
         LRojKFSUNiZHrRKByRuFf9yE6m1evBByAmxB/PHwZhCQeHng0wZT23On4lTNNf75or3A
         NxyDE9CL35OV52ZG4kBmkUFIQA7hObotZz9UgBO4mU4DU+Urjwy95ZncHfn0VTlwliUd
         5m+g==
X-Forwarded-Encrypted: i=1; AJvYcCXbcwIG47/525t2EVTIqix3+KzGF47YiY7RAoG1ouq/FtcR93z75xVOnOYMJl4VE87H8+VKtovdYnHfcGcewqlPHvCPeGtrWZSUfA==
X-Gm-Message-State: AOJu0YxIimbTHydlSXfbwxul96DNcK4lQvS89Zxq9J9j92MSITU9gIZp
	n785NkINz4j1q4WW6ZmUIrgfv0c0TkWTxjA9v/ZFbKKMEkHYldsnxzIba9UyXgY=
X-Google-Smtp-Source: AGHT+IF9uX0HTONjn1phL8nh3FDI+1fDGp0+XKmvEbXbtamhRXsgMUoOLg5bXZ/FwnnWgFEIL4Tc/A==
X-Received: by 2002:a05:600c:35c4:b0:41b:e201:eedb with SMTP id r4-20020a05600c35c400b0041be201eedbmr7959795wmq.41.1715001510138;
        Mon, 06 May 2024 06:18:30 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id i14-20020a05600c354e00b004169836bf9asm19831169wmq.23.2024.05.06.06.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 06:18:29 -0700 (PDT)
Message-ID: <c9418e9f-711f-42e4-8032-480d0f32dfe9@freebox.fr>
Date: Mon, 6 May 2024 15:18:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] media: venus: add msm8998 support
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Jeffrey Hugo
 <quic_jhugo@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <ff646f97-68e3-4fef-9b56-2bd98f0cbe7d@freebox.fr>
 <9844c940-21b1-42af-9448-62a2d5ffadb7@freebox.fr>
 <3e522515-f7ba-461f-1af2-2e22b143981b@quicinc.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <3e522515-f7ba-461f-1af2-2e22b143981b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/05/2024 14:19, Vikash Garodia wrote:

> On 4/30/2024 9:04 PM, Marc Gonzalez wrote:
> 
>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>
>> Add the missing bits for msm8998 support.
>>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>  drivers/media/platform/qcom/venus/core.c | 42 ++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 42 insertions(+)
>>
>> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
>> index ce206b7097541..42e0c580e093d 100644
>> --- a/drivers/media/platform/qcom/venus/core.c
>> +++ b/drivers/media/platform/qcom/venus/core.c
>> @@ -587,6 +587,47 @@ static const struct venus_resources msm8996_res = {
>>  	.fwname = "qcom/venus-4.2/venus.mbn",
>>  };
>>  
>> +static const struct freq_tbl msm8998_freq_table[] = {
>> +	{ 1944000, 520000000 },	/* 4k UHD @ 60 (decode only) */
>> +	{  972000, 520000000 },	/* 4k UHD @ 30 */
>> +	{  489600, 346666667 },	/* 1080p @ 60 */
>> +	{  244800, 150000000 },	/* 1080p @ 30 */
>> +	{  108000,  75000000 },	/* 720p @ 30 */
>> +};
>
> Can we reuse the table from 8996 since they are exactly same ?

Now that I have squinted closer at the downstream code,
I see that the tables should actually be different...
Will spin a v3.

Regards


