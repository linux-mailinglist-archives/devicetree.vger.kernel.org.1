Return-Path: <devicetree+bounces-91658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A29394A21B
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 09:56:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2E10285DDC
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 07:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919371C8220;
	Wed,  7 Aug 2024 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GvGNjCaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C021C7B8F
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 07:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723017393; cv=none; b=jLwM7+a2SMYqjiErHRTywC7GYLfUuKCZDh1ygayeBVQLPsZCe8jQf8q/MJP8ynajRmCT4JGV5D9NXYAX6S4W7+ovfpxpdfcatcbS+n3fTUUT0unCIXctWGHyg0kT9XyiuZ36/YkNLGrGA3FkxGbGrZvFwp1oPj0/zi/W/k3hfEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723017393; c=relaxed/simple;
	bh=IAZMes1qZEhf4/i8wwZhwnmT1ZqHqAuTI4RLTexGsj8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=M/MxkiMkWUxPIc9/gepQqaGbo2sQ24WhC3abuO6CE/fexzRY4HNx1iR3avbZBIR5KQee5HRt2jNT6K4wNLKXwmb5Rk6vnO2BR3Rjd5i8LrPLdoz2GnNrcUc34A8qGcqsjo4Oj6lQkx74vxlvzuEASj9qEsUYdl04/7LHdWWuce0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GvGNjCaW; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42803bbf842so14136075e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 00:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723017389; x=1723622189; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7ktBsuVntx5CKBaIkvERUELLULJMhvpoXFdOfuPtWMM=;
        b=GvGNjCaWLX2LzyX0N+x4mkQNfDgeAS6iji4/ewTh4c3j1Nu+6sT3Ak8fjyNXYiFtZ5
         gxVdAD+oQESj6dsowEJMYYIUWAmB7i/daBbK7BjKnaM/VT1d2beU3eso7SdPJHnnFc14
         r7+JdTan4jxb//VMqrGQZ4LfCn510W5H2fhqlP9U3SSOwIjHwwkdWY0znDFrjqIMLVta
         tBL+bAk1T2R7bJbX106Lblmezq0gtQuMZ4pv8NRVFPG4djypA8HxVGVKxs9hFoXiSkW5
         vU2Fu2Azuz2Kkf8O1/yO6/ps0sVMGYwn8ar0Vpf5N4fGW03YIS6SdwoQbDls6eQCvtpK
         zLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723017389; x=1723622189;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ktBsuVntx5CKBaIkvERUELLULJMhvpoXFdOfuPtWMM=;
        b=qX+Ho983GkeVyBJok44tIv1OQ1cSaQeLXRd6vKZbgjIXoshSysrYQ8VmpdYW6kGMeU
         qLJ1P+cWYO0O5ZnfkGEOu+UPzcY7XOzTfBtHIQEzeVofhUCFHMyMlSylfOPUqiPvT0FN
         qUIc0KgS7fOj8+0a7FpPY9XDAYXpuOHxFZQk/vAAF5HZzSDgl8JBqDKcvN8DoMDWnIyG
         rBsJsvbDe8XKZMibyqNqFMVCeVXstKsi9T4DrRBX3X5k8gekdN4HkadCNDrEuDsPJ/LZ
         WXRP/AX/+lnyIp1iFmKAWk4SnzfnefMbEe8oglrLXI6hq1i0X9bDLzjmI7qkhLkTo5gt
         C/NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa9ML40howaaSEMoEZJf+Rjb54bK0JAcO+/rCngHoIhCd7qB/jTcks76eXdpG7GG3OBOtWSQVawSGKx4ZctaO9T+NaavJe6mL3nQ==
X-Gm-Message-State: AOJu0YxC0cJXffrOzMvX4+zlfUzS/5XPZ25+HClccoyJwUpf8Pamo8Qc
	gSHHUQYmtFZsuVQbPQIVYwKyHUA3089QTuKN6TgKzcQVlUXlnX0tljwOBqwXw+w=
X-Google-Smtp-Source: AGHT+IGskVKryQc7c2Sq7ODREtI2rDRljGWb2FWdDD6mhqLi5bMAsqY/qQptHY9YdskM5dh8W7Fw0A==
X-Received: by 2002:a05:600c:4713:b0:426:593c:9359 with SMTP id 5b1f17b1804b1-428e6b954cfmr178276335e9.32.1723017388917;
        Wed, 07 Aug 2024 00:56:28 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:90f1:3c4c:261c:b0f5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42905991434sm16305765e9.30.2024.08.07.00.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 00:56:28 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Xianwei Zhao <xianwei.zhao@amlogic.com>,  Krzysztof Kozlowski
 <krzk@kernel.org>,  Neil Armstrong <neil.armstrong@linaro.org>,  Michael
 Turquette <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Chuan Liu <chuan.liu@amlogic.com>,
  Kevin Hilman <khilman@baylibre.com>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  linux-amlogic@lists.infradead.org,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: clock: fix C3 PLL input parameter
In-Reply-To: <2da06dac-7a1a-461c-956d-13b74320723e@linaro.org> (Krzysztof
	Kozlowski's message of "Wed, 7 Aug 2024 07:44:18 +0200")
References: <20240806-c3_add_node-v1-0-c0de41341632@amlogic.com>
	<20240806-c3_add_node-v1-1-c0de41341632@amlogic.com>
	<b63fe216-ee29-489e-a175-e1525ac12722@kernel.org>
	<86b01ecb-6ca8-496e-b3a8-0b21bb951a60@amlogic.com>
	<2da06dac-7a1a-461c-956d-13b74320723e@linaro.org>
Date: Wed, 07 Aug 2024 09:56:27 +0200
Message-ID: <1jikwczrys.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed 07 Aug 2024 at 07:44, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 07/08/2024 03:55, Xianwei Zhao wrote:
>> Hi Krzysztof,
>>      Thanks for your review.
>> 
>> On 2024/8/6 21:10, Krzysztof Kozlowski wrote:
>>> [ EXTERNAL EMAIL ]
>>>
>>> On 06/08/2024 12:27, Xianwei Zhao via B4 Relay wrote:
>>>> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>>
>>>> Add C3 PLL controller input clock parameters "fix".
>>>
>>> What is "parameters" here? Why you are adding it? Is it missing?
>>> Something is not working?
>>>
>> Yes. The previous submission was lost.
>
> What submission is lost?
>

He means it was just forgotten in the submission and noboby picked up on
it at the time. He is not not trying to sneak anything new. That input
is used everywhere in the driver and nothing would work without it.

It is just an honest mistake that he is trying to correct

Indeed the description could certainly detail this a bit more

>> 
>>>>
>>>> Fixes: 0e6be855a96d ("dt-bindings: clock: add Amlogic C3 PLL clock controller")
>>>
>>> Why? What bug are you fixing?
>> 
>> The input clock of PLL clock controller need the clock whose fw_name is 
>> called "fix".
>
> Then explain this in commit msg.
>
>>>
>>>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>> ---
>>>>   Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml | 7 +++++--
>>>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
>>>> index 43de3c6fc1cf..700865cc9792 100644
>>>> --- a/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
>>>> +++ b/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
>>>> @@ -24,11 +24,13 @@ properties:
>>>>       items:
>>>>         - description: input top pll
>>>>         - description: input mclk pll
>>>> +      - description: input fix pll
>>>>
>>>>     clock-names:
>>>>       items:
>>>>         - const: top
>>>>         - const: mclk
>>>> +      - const: fix
>>>
>>> and that's not an ABI break because?
>> This is "fixed" clock.
>> I will modify "fix" to "fixed",in next version.

No keep the original name. No reason to change it and make more of a mess.

>
> With "fixed" it is still ABI break, right?

It is an ABI break but on a new and immature platform.
Noboby could really use that platform at this stage, so nothing is going
to break on anyone really.

>
> Best regards,
> Krzysztof

-- 
Jerome

