Return-Path: <devicetree+bounces-201256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3529DB17E61
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 10:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10ECD5628B9
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 08:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E53C41FA859;
	Fri,  1 Aug 2025 08:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yN93m34G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12535360
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 08:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754037309; cv=none; b=CsdjB5uaJSfU96eyyGgSdHKIhO8J9PFmvq3GT2MV7HISeIayVFqCGjnTuxFjqZuDos1D+l8hY5NsTCJEW0TRVPj3GFd/9VZbJ2zHedts3B/ESipDnR7vdWOJmbpIFnd6kmF1jIRjNUnqfkISD/dD5ZamJnjp7P4w6qnBdn6hNe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754037309; c=relaxed/simple;
	bh=FqOy+mMo2rR0EN6LQz9aSmLP9UV6EGx2ngQ1VQrZuL4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jQPfkWKsx74Brb8lBt82ps4Z3wsuYSnQZ2qykSdEwZnvXTna2gvnVOFB9tc3mbKX3syJ6wz5916vHb49CA0VKN4lQe3gfDNsbu+f202Q/xG289ZMyPPciA8h8aspFypH4KjEcRkvOlGn2mEoPd+VewNmJdqwEHYOMMIZhn4hpD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yN93m34G; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3b788feab29so809195f8f.2
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 01:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754037306; x=1754642106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jiFqr0OPCqHVXSpWzCqecK/S1S4l0jHxVTGQ1xBrzUE=;
        b=yN93m34G00mdZcGkmDfnWBPdYnktFU30yHCmG8IptjaCrlfoB2/nDC+x3DeWlpX6xI
         acbvszas8Wm6f0f2PPk+KfDwd6lI5pH3mlMMZ3MkLhaCRV7XtDubi2f37RKu60A/v4hL
         SKlAaJEPEghJJzTgiXZlWC6BqhoWq8EIQpijiRSmMjJcauGZf0UEwLEgMgGqz0QtoPIO
         SHjCpTmtHbQauthU1I64v5d1mHDh1jcnyHyHt+gwFyKr7KvVj5tkeARwYEo3n2N+ClUr
         kQ9MJv7XzWP0XOKmZz8wPCVebTseV/RcC5BvqlQNY3TIsAvxI+oWb5sgFv1wssQSWbc4
         R8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754037306; x=1754642106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jiFqr0OPCqHVXSpWzCqecK/S1S4l0jHxVTGQ1xBrzUE=;
        b=v8vu+pvn+1xCrF+sWaR6BXupUHnhP2rKBmSyTHHE5OQDPvtt+lUira0a2DdR04gIBr
         T4AqeKu0JDiDZPNwUjM3hZuLdSsvja53uMoCcoY+mSZjkewNzriHDBtLOzj9QRZAXp0u
         7cVdLdfasnSK1yp5a3Q2BlYhZGXvJ1GmPjHiCUQnKsfDnRW8Zck7ftbqy8k5j+ydbdJu
         cJnAZlpjn+L0ltqxTfI4ggXmrsNqPjtu772LkMVehYI4BRjWo4bhsd14DqlTJvhzFGmv
         xAbWzD7sI9sWW11zVJbAWV1I+Qc6I9aXHMIX8gIciehQ//wL/tcNdYvygZ6ik2ibORdf
         ieYg==
X-Forwarded-Encrypted: i=1; AJvYcCXSVYS5mKCaQemsAVPWRKr8rHiHFXFLEOv2MQN/JCAk4cqCT4XxWYbYNNTW6tZXwK4gZmJXEl0kxjCS@vger.kernel.org
X-Gm-Message-State: AOJu0YyiQRIZH7iR/QgcT9LnMe5eE0SvZF9U9jVzbEnRbfuqEmWX/tjI
	6kusO9cT2iLo+lBBmWZ6Oosr942fpGsq9anosm6hSOgCZptPbdzrhMm8v5nkNbeKGh8=
X-Gm-Gg: ASbGnct2Rz08hCctlN9HTVLya8OyKJ5gl4UmP728/q4xTUacNkXm/CHIMAQ7ChKJ+io
	FoqIJrz2aKpkykFe4qJbsVqklm84SIuHG5Fv1ZTLPE5dL6TxJb955UXAy7JCTNehmm6FUmeKMrH
	7+EPCYHbFeT4rMwJvwg8tU9z6MaYliy7KDXFhn8/hRZGEbEK1DI+YXGwD0Xga6hLbz0lXmI+uEM
	lwLWWdgRTrIs7WAa42G3ksc9V5alG5yy1Lo/In800hSt8Md+hzHqqPxPrl2i4kwNVDoHlEU5mFW
	r3VZQ/7KZlnHjMmmDf6pVDiZe18Cp2ILIIFxMqyCDVi5FEKROOafzGHkXhHoksWdZkkkoI1VUiy
	0qyDeppy1fJrMCicit4kogTsrE21vv/Ud5mz1X3PhQkaYsYjYUlPX8VlNMi5/RQ==
X-Google-Smtp-Source: AGHT+IGS+73xkShFl6cO1Qu7hyyuX9oTyEOMrN6GMT2KH3N0L9G6LCMIuM6NsKe0gCwLrUaUqn7Ybg==
X-Received: by 2002:a05:6000:2884:b0:3b7:99cb:16ed with SMTP id ffacd0b85a97d-3b799cb1a28mr6844043f8f.40.1754037306324;
        Fri, 01 Aug 2025 01:35:06 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-458953f8e02sm92820875e9.32.2025.08.01.01.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 01:35:05 -0700 (PDT)
Message-ID: <164402ad-2762-4d6b-aa34-38ff1b506600@linaro.org>
Date: Fri, 1 Aug 2025 10:35:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] arm64: dts: s32g2: Add the STM description
To: Frank Li <Frank.li@nxp.com>
Cc: mbrugger@suse.com, chester62515@gmail.com,
 ghennadi.procopciuc@oss.nxp.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, s32@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Thomas Fossati <thomas.fossati@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
 <20250730195022.449894-2-daniel.lezcano@linaro.org>
 <aIp+XTCSpNGee2qx@lizhi-Precision-Tower-5810>
 <5be6d858-01e1-4c2d-bd5c-0e3385251af7@linaro.org>
 <aIv6L30mf5bzUqup@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aIv6L30mf5bzUqup@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/08/2025 01:20, Frank Li wrote:
> On Wed, Jul 30, 2025 at 11:15:40PM +0200, Daniel Lezcano wrote:

[ ... ]

>>>> +			compatible = "nxp,s32g2-stm";
>>>> +			reg = <0x4011c000 0x3000>;
>>>> +			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>>>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>>>> +			clock-names = "counter", "module", "register";
>>>> +			status = "disabled";
>>>
>>> why not default enable.
>>
>> The S32G2 and S32G3 can have different variants with 2, 4, 8 Cortex-A53 and
>> 3 or 4 Cortex-M7. We enable the same number of CPUs present on the system.
>>
>> AFAIU:
>> 	S32G233A : 2 x Cortex-A53
>> 	S32G274A : 4 x Cortex-A53
>>
>> 	S32G399A : 8 x Cortex-A53
>> 	S32G379A : 4 x Cortex-A53
>>
>> Otherwise we would have to do the opposite, that is disable the unused ones
>> in the s32g274a-rdb2.dts, s32g399a-rdb3.dts and other dts which include the
>> s32g2.dtsi and s32g3.dtsi.
>>
> 
> That's fine by default disabled. but what's impact if it is enable but no
> one use it?

At the first glance I would say we call the probe function for nothing, 
so adding an extra overhead. When repeated into multiple drivers that 
increases the boot time significantly. It is certainly a good practice 
as a rule of thumb to enable only the ones we really need.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

