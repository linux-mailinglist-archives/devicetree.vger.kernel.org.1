Return-Path: <devicetree+bounces-94853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A891956F13
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 17:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E09D1C222C3
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 15:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6037FBD1;
	Mon, 19 Aug 2024 15:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EX8TYa52"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168E585628
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724082180; cv=none; b=A7qgxPYg81N5M9qQp6JmLGuuVxCNNmwPpvJfXnAKVpz/cfULBCsG9pjJFfKABW3iYwZ0oz9ZQcQiia3UzRzQ7kcCwXXdFSi0jDlOXK/ebPiBdNbwFvCaeeXex9Oh/anERnfKI6GFHKR2lxkOy528Zr/kXipvyaVb1ad8oNLp1to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724082180; c=relaxed/simple;
	bh=zmzsNl1CKRvbAP7kq0XYWihvHYmcMTKkau+kfl0mG5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lyz/N9saZg2/JqdLxUJRwzMFvUotzCeEigeO8DltwPcmtPXhZOGL12imB77lHk8kKxlndB4EGunN/Jq3rA/f1JO+EgmS+eqGOCvQb4N/HA7vQqIGepR9jecmjAM+KEt+5Cqb2zn/7kKYPTzLQ8zLm5PMo5/X1Pcxhza3vGU9w9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EX8TYa52; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-371b098e699so1683158f8f.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 08:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724082177; x=1724686977; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gO69uPrFX7SxSwhRAEbHMbAStn61hT4Mqe62DPelLVo=;
        b=EX8TYa52jmJivmQBGjeQwlyA/P4GR0kQ8+Fkh7UJKs5/8tx831VU7KEM15ChDrZRqe
         q8zoBbN63WlbOGe8pmm1jyIXuoIG6sx02Oalwbkv+rYgsQWJLGjKzzsadvt0vJV/qR29
         0t3ldlXRdMrMhYZSfDpAk6a/r/P/S2plNy4mEHjDQw0fEfSzcbYzeCRhxH+JG2BPW8Ry
         bF4woPS6+zKo6PYD6rXbeVeJ6LzhEt+JR8eMw+QUR6vMaAJh5nPHI1Nlj61VT/0uTjQD
         GOY7vme931+Qh1o9uyxtufVJcY2MIjkReY+OCeUQ+tgByiU/+IJWQzHBas7PT3CJ1XSL
         Nx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724082177; x=1724686977;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gO69uPrFX7SxSwhRAEbHMbAStn61hT4Mqe62DPelLVo=;
        b=pE4Wsxuvy9LHOzaNEA8XsESYlsyrWDosXIJ0RBTgl8DVYgsQD8OhIq6EC9Pr0PXUgl
         aeYc0Rz1w+JKpdNFNdf8iMggTR4DrGqzJdvb+03VKS+3fUNc4Wqc4lvqhnW+Kz4zjiZ8
         HUV6rIHRZxhyxcDH2PZmT5bQojyAAlVPCRZe91CpS+OJ9QrE37RxzASSXpFRKGNJxsrz
         vRE/m5uKWrvyTsnphftK4nV4df1+rUa2MUUeRlMECYRg89yrMeDn6WJJ0ejSQGS0uC5k
         n6z5EGD2Dtwjnep1uvn/GYutxSmkreupYzpjElxcxLMtcpVLC1uOiz9iDm4lktazP6D+
         Rmng==
X-Forwarded-Encrypted: i=1; AJvYcCXFlw7VUAm6Cp4jqISmDtyjK47/IoSCxODIXL0hCVLBN1kgnrT+7Whvve7TJo0KEJ6NH/zRYVKr4b73+nARUDbVR9vxyNFnf4jX5A==
X-Gm-Message-State: AOJu0YyFBKKpc4xy3gzoNgt4BoMlIk+1vfPE099c7WnVsQYTpkO3I8FV
	iHk2hpsWSpHvKZm8oCuesPptfT3fD3bVmIsVpfhrQtfQoUgw2Vv2cdhMHC9dVrY=
X-Google-Smtp-Source: AGHT+IEt5AicZKRyLAB3JYF/tkWJFFBfEZZOOF9ZnXbr92VtaB3C33L0aJ5vcoHGWMaodq2HvRfXVg==
X-Received: by 2002:a5d:44ce:0:b0:371:93d1:428b with SMTP id ffacd0b85a97d-371946af1famr7769524f8f.58.1724082176897;
        Mon, 19 Aug 2024 08:42:56 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-37189896c50sm10828491f8f.85.2024.08.19.08.42.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 08:42:56 -0700 (PDT)
Message-ID: <d8584ac7-5576-4f26-8bc8-1ecbb4bd4611@linaro.org>
Date: Mon, 19 Aug 2024 17:42:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: allwinner: Add GPU thermal trips to the SoC
 dtsi for A64
To: Dragan Simic <dsimic@manjaro.org>, Icenowy Zheng <uwu@icenowy.me>
Cc: linux-sunxi@lists.linux.dev, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, wenst@chromium.org,
 broonie@kernel.org
References: <a17e0df64c5b976b47f19c5a29c02759cd9e5b8c.1723427375.git.dsimic@manjaro.org>
 <24406e36f6facd93e798113303e22925b0a2dcc1.camel@icenowy.me>
 <25b65e9ef1cae59a8366532cc8db576b@manjaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <25b65e9ef1cae59a8366532cc8db576b@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/08/2024 04:46, Dragan Simic wrote:
> Hello Icenowy,
> 
> On 2024-08-12 04:40, Icenowy Zheng wrote:
>> 在 2024-08-12星期一的 04:00 +0200，Dragan Simic写道：
>>> Add thermal trips for the two GPU thermal sensors found in the
>>> Allwinner A64.
>>> There's only one GPU OPP defined since the commit 1428f0c19f9c
>>> ("arm64: dts:
>>> allwinner: a64: Run GPU at 432 MHz"), so defining only the critical
>>> thermal
>>> trips makes sense for the A64's two GPU thermal zones.
>>>
>>> Having these critical thermal trips defined ensures that no hot spots
>>> develop
>>> inside the SoC die that exceed the maximum junction temperature.
>>> That might
>>> have been possible before, although quite unlikely, because the CPU
>>> and GPU
>>> portions of the SoC are packed closely inside the SoC, so the
>>> overheating GPU
>>> would inevitably result in the heat soaking into the CPU portion of
>>> the SoC,
>>> causing the CPU thermal sensor to return high readings and trigger
>>> the CPU
>>> critical thermal trips.  However, it's better not to rely on the heat
>>> soak
>>> and have the critical GPU thermal trips properly defined instead.
>>>
>>> While there, remove a few spotted comments that are rather redundant,
>>> because
>>> it's pretty much obvious what units are used in those places.
>>
>> This should be another individual patch, I think.
> 
> Perhaps, which I already thought about, but it might also be best
> to simply drop the removal of those redundant comments entirely.
> Let's also see what will other people say.
> 
>>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>>> ---
>>>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 22 ++++++++++++++---
>>> -- 
>>>  1 file changed, 16 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>> b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>> index e868ca5ae753..bc5d3a2e6c98 100644
>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>> @@ -212,7 +212,6 @@ timer {
>>>
>>>         thermal-zones {
>>>                 cpu_thermal: cpu0-thermal {
>>> -                       /* milliseconds */
>>
>> The unit of a 0 isn't not so obvious I think, so I suggest to keep
>> this.
> 
> Quite frankly, I think it should be obvious to anyone tackling
> the thermal zones and trips.

You can remove also polling-delay-passive and  polling-passive when they 
are equal to zero. If they are absent they will be set to zero by default.

That said, I take the opportunity to spot some inconsistency in this DT 
not related to this change.

1. There is a passive trip point and one cooling device mapped to it. 
With a polling-delay-passive=0, the mitigation will fail

2. There is a second mapping for the hot trip point. That does not make 
sense, it is not possible because there is no mitigation for 'hot' and 
'critical' trip points.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

