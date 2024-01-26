Return-Path: <devicetree+bounces-35524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E26B983DA63
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 13:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 890A129295C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E8814ABC;
	Fri, 26 Jan 2024 12:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oLv31TpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8ECE1B596
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 12:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706273812; cv=none; b=g8ngCi5lr+n8JcvmvUUJmsejfo3thxZGXeAe2WxKzRnZBzy70vTi2ubXs+iT+U5BVxg54whJV7yuyTJQTKzG1fMpExYqtOZ62IhRDURr6iJcC3Y9iff+pEfTiRd3XghJX3VZZZ1L17ob8IdeMlDcJfn/rcSCpKHPGUYXfWjUt10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706273812; c=relaxed/simple;
	bh=vEWPH3mWZOGa0t8ehdq7T5rSGfySqlrXSFtyqHnPu7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xe9paWSjsvvQUJjHbhv92GIxrMiaL71pO4Q6CylwsQRJX8R7Fmr07AlvelA8Cuj2Msll/Wqz8OryQ8fSSPMxS+Hp1B4fA6+x6KtxBS9zBZGMZTJcCZQB+SeJGOMid/3ZoLmNZAOtvvlahdN+vcieID6u/jtN6ZBtpuIPxuD8TCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oLv31TpF; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-339231c062bso411925f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 04:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706273809; x=1706878609; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HNRJ344EIVqzGA3DHVgA976QKie0aE4RlEaXg0aggBQ=;
        b=oLv31TpFgBZL2XklHjzm/7WQAzCPASK+2yulRjoMhy2Etl3OSvZq3bcR0udnaaosgn
         L+EYcWN8p/XT/oQjzVvUHdfNJrpe1M3ohY+VhaOqHSOokv/hJ7APxOFvuQrwNxEaz2Ny
         CVo29n68gcy6gozKBZyCgaH/FcLZUyLeOXNL70uS1cKzQb8pTpsTEWoD+5/yuEVwPrnQ
         xrYpwSBN8FsE85koeKGTHRuA9nbB+7JEZESSLfX/uNDWC4rZXhh38Wq0Kp1gPCuxUEdP
         8uN40QOox+hQQZXVBbU3PLMhX/vAtGPI9pgjeKGvMzhecTi9qs+l498wJ9Af8eM5TOLO
         ScyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706273809; x=1706878609;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HNRJ344EIVqzGA3DHVgA976QKie0aE4RlEaXg0aggBQ=;
        b=IkskMe8Rv5YpimuRvf5r96Uiu2UDXUzLqtfRIGbO0IXFAn8rR6P5Nge5BF0TLc45Va
         c66DflD5RgtO3joFKs4JlgbmmhdlqBJkksOTwwGtxBlwIyKT9/3hxjppM9LybPrCMwx+
         p41O6rDY9c3PP5nJuuUKdLpfCi0TdL7D3iqZupRWKQFj0SnYz9RaCTWtet4rDuTBpnmu
         X6YRQnEQ01i6f8b3jsmKl7A+2ifyC1empQujKvD220nK2jYeGrovz5JK7LzTSjbQ2OFF
         9NcJUtYMZEI6rAZSGjpYQ46mlp/ej4Pv2imigcXEu20hxdmZGpSgVnnTYSapYlP7L9UP
         Lv7g==
X-Gm-Message-State: AOJu0Yxc0kciL+vwNrsHzYCzzqpnQ+cNObC5g2bTyiI2jrOJgcQr/g6+
	vyG4lv8SD29FYFVH6wDMY57VyI4JgYTRwo5q+8szct1qbEOEC8CqAnzgt889BRc=
X-Google-Smtp-Source: AGHT+IFW1on1e3KPvwtZV1QrTNsKMJ6DsqWgEG8INQGsIAXHxAYQSTtJKIOhhIjLHDupP5fMDN8aRQ==
X-Received: by 2002:a05:600c:1e1d:b0:40e:d310:1cac with SMTP id ay29-20020a05600c1e1d00b0040ed3101cacmr882705wmb.133.1706273809134;
        Fri, 26 Jan 2024 04:56:49 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id bg24-20020a05600c3c9800b0040d91fa270fsm1826870wmb.36.2024.01.26.04.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 04:56:48 -0800 (PST)
Message-ID: <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
Date: Fri, 26 Jan 2024 13:56:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
Content-Language: en-US
To: Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com>
 <731aac66-f698-4a1e-b9ee-46a7f24ecae5@linaro.org>
 <ccc004cfae513195351ce0a79e12f6af@manjaro.org>
 <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
 <1f0608831cfb95c80edf16cd751eee76@manjaro.org>
 <CABjd4Yx06igrZQvHA4q-mcr2oSEf7eQyUS+KEATUGbw6qLc2sg@mail.gmail.com>
 <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/01/2024 08:49, Dragan Simic wrote:
> On 2024-01-26 08:30, Alexey Charkov wrote:
>> On Fri, Jan 26, 2024 at 11:05 AM Dragan Simic <dsimic@manjaro.org> wrote:
>>> On 2024-01-26 07:44, Alexey Charkov wrote:
>>> > On Fri, Jan 26, 2024 at 10:32 AM Dragan Simic <dsimic@manjaro.org>
>>> > wrote:
>>> >> On 2024-01-25 10:30, Daniel Lezcano wrote:
>>> >> > On 24/01/2024 21:30, Alexey Charkov wrote:
>>> >> >> By default the CPUs on RK3588 start up in a conservative 
>>> performance
>>> >> >> mode. Add frequency and voltage mappings to the device tree to 
>>> enable

[ ... ]

>> Throttling would also lower the voltage at some point, which cools it
>> down much faster!
> 
> Of course, but the key is not to cool (and slow down) the CPU cores too
> much, but just enough to stay within the available thermal envelope,
> which is where the same-voltage, lower-frequency OPPs should shine.

That implies the resulting power is sustainable which I doubt it is the 
case.

The voltage scaling makes the cooling effect efficient not the frequency.

For example:
	opp5 = opp(2GHz, 1V) => 2 BogoWatt
	opp4 = opp(1.9GHz, 1V) => 1.9 BogoWatt
	opp3 = opp(1.8GHz, 0.9V) => 1.458 BogoWatt
	[ other states but we focus on these 3 ]

opp5->opp4 => -5% compute capacity, -5% power, ratio=1
opp4->opp3 => -5% compute capacity, -23.1% power, ratio=21,6

opp5->opp3 => -10% compute capacity, -27.1% power, ratio=36.9

In burst operation (no thermal throttling), opp4 is pointless we agree 
on that.

IMO the following will happen: in burst operation with thermal 
throttling we hit the trip point and then the step wise governor reduces 
opp5 -> opp4. We have slight power reduction but the temperature does 
not decrease, so at the next iteration, it is throttle at opp3. And at 
the end we have opp4 <-> opp3 back and forth instead of opp5 <-> opp3.

It is probable we end up with an equivalent frequency average (or 
compute capacity avg).

opp4 <-> opp3 (longer duration in states, less transitions)
opp5 <-> opp3 (shorter duration in states, more transitions)

Some platforms had their higher OPPs with the same voltage and they 
failed to cool down the CPU in the long run.

Anyway, there is only one way to check it out :)

Alexey, is it possible to compare the compute duration for 'dhrystone' 
with these voltage OPP and without ? (with a period of cool down between 
the test in order to start at the same thermal condition) ?



> When the CPU load isn't bursty but steady and high, we don't race to
> idle, but run a marathon instead, so to speak. :)

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


