Return-Path: <devicetree+bounces-250216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9F0CE6DFC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:24:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E7CB33000FA1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932113161B7;
	Mon, 29 Dec 2025 13:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Do86hzAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A9D1DE4E0
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767014636; cv=none; b=RIAq4brcryQAMmjkJjvI+0AYYbi/E0nlk88de07/LfXiwJoKCNXVlaCveYWlRWMkQpibZvE3w9c/WQsNGJrfWqKu5ynIlXkVQnpPV3K+jCWO9PnoFYmSCIl19wzLef6ThMwpLVPG1tSn4e8v2HJveZqvfYgNwIjt23YXAq6hBy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767014636; c=relaxed/simple;
	bh=Uk1RfjVJyKQ+tgH4YRtutVqI3YFZB+T0oNkbYL96PII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m+64r/nBI6hjtSOsVwVrd9iJ3Wu1xlnAkqNYkN4EKyCVKvclZyoom+UbcXQUuhSjfNxGOf7PpQnMWb2NTRVMrTcy0N2v570VxmpRSo7lQ5ivLOPmXxHcqO0x7Rn7xInGIGxw4jvFg2IA+F5piF1lObB5U2Vw3hkl9lBcxw4NG88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Do86hzAX; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5942b58ac81so7472145e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767014633; x=1767619433; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JYz2s5u+HJFZpaoUYiP7p4BhV+8iFu1MO193Mzs7/UQ=;
        b=Do86hzAX5ViREeXoHBbfWoTLLFCVfYXJNu0Xu8xY6M3JXpZuP61lRuRcUXd4SV99Px
         3DTPBbYMGLvm4XamCxcAl7gB/Wmv7JpXlSkYNmI1Cl+TfvOpGqlPqIGEEGnEJdbNpr1c
         //lv+eFyoa47kL/iNEcOxIpSUkpkXWMikc4RdxVpTmPSN1DwB/B12dL13+C7fXdEnGsB
         5BNVqiHel0RKYiiEOPrJ267fwgamk205HKMI0c7jLboZkR4Ei3H+FavhZkxcnMeGLS1y
         hXNHVQ6LFANq5qXMJleZyJVv6m/8qh4Iqce76YfqtzBkJHbxt1OZ9u6EtRdOo6d3StH/
         sOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767014633; x=1767619433;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYz2s5u+HJFZpaoUYiP7p4BhV+8iFu1MO193Mzs7/UQ=;
        b=m+qw1cwZGhV71l1xBbkaImyyHmovdbaGJLlW6VEy2H1k4gWN28c/RDFP4p7z1Cm6vD
         qW4/PEgJC9dle0iVc+Wvk0KGtvUCqJ4v14BCJUBvI7Bfxzi+/ihlB/wx9UCX+lD34flY
         QlpcHG5GTVHso+kwrPYn++cszmlStvJ9rlq3JTP4XUrRpWEKHs2LceHOMdr7Rj5hW8c3
         ITb384GqzpzSqfFZ8Y+PGbvqja4DsNbfeStM74nJ2wSVlFSXj2ASmtNmA+7Tptz292NY
         LoKXufZiEmtGFBspmSDGUlHIQODTaB1URyyw3+kMidW4MtRKVwNztiw9uSkduRtVoboD
         dO8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUF5ik0IgU81dhzz0lTwhtlL5jRxNlIzyiJSKFAhql/XxaoHNEkfBuIpzNAEubsREZayDagIhIl7ftP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz29Q6rV8JBwXU7oou2w7qijzJzI5vOoXylnI+ZfDlHLEWUHvGn
	s//a/rrgnUjxdXtOnRDbIkYsSJPQqZh4FT2Wpvvfu1a1ZP+juLLif81x
X-Gm-Gg: AY/fxX4JlZiZsQ4/Drz2N9y4ZiId8tgu48nd65wkuZHeY6eurcpBW5L4nDAgZ3rrafz
	SlJnsvpPimVUdqkhYTtCH7yYGedWnRAL1f9LLIjDE8hgxfzNgfMeO8gBOhGeNUZXGvgrTyMGaLm
	fMvIfwPgmEBJkH5QZSkvKVgehlElCbenRYVoahgDrOFL6h6/xkyoaw8upFA0Npe2c43ign1BYcn
	PX7IWtPmf31G6d1eiW3ARyOkT8ogXbEwe4tR42sQ8oH/MAMazGO+G0tseyfCnz+GV3OCatftCV0
	LRuZtWJfQGJjLxtuGX90P/Z6P3H1YpMhFG+xk06DH5xs9U3MBCRjeRWD6I3B2/DB01GWxmYv8lj
	O9OwjCQZBHDcK0gFvdrG4vhAYC7ImAjmjs40BYphQY+K0vBF4/+DDxXpvBPQgTT4cB/qmWFKD5p
	5HGkoJpdfR+bcG1petSqGqhjEPZpkJidUaW+KhxN+OY4Lhnt0NauHG8K768qIhODdEwxBE
X-Google-Smtp-Source: AGHT+IFa0k3Cw2xv5tgyHJPZwAhfk3MPquGhpdE7gPKATpe5MLbPoMdSC+u2Dbj6A6onRGmI43iZrA==
X-Received: by 2002:a05:6512:31ce:b0:592:f27d:75d4 with SMTP id 2adb3069b0e04-59a17df1dfcmr10799023e87.45.1767014632794;
        Mon, 29 Dec 2025 05:23:52 -0800 (PST)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628040sm9192868e87.88.2025.12.29.05.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:23:52 -0800 (PST)
Message-ID: <323d7c6d-3082-4775-b5eb-4bcb3ee9b1ea@gmail.com>
Date: Mon, 29 Dec 2025 15:23:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: add Texas Instruments TLA 2528
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Jonathan Cameron <jic23@kernel.org>, nuno.sa@analog.com,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Eason Yang <j2anfernee@gmail.com>,
 Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 duje@dujemihanovic.xyz, herve.codina@bootlin.com,
 Rodolfo Giometti <giometti@enneenne.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.petazzoni@bootlin.com
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com>
 <20251223155534.220504-2-maxime.chevallier@bootlin.com>
 <56c03c7f-1e5b-4586-beb0-47a1fa3bc86c@baylibre.com>
 <c386a4bd-9c7d-4b4d-b614-fdec424d57a0@gmail.com>
 <CAHp75VfDnuyqRyHpVK40qRR59XB3RHV-aDO72UDNhjLDbJHDPg@mail.gmail.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <CAHp75VfDnuyqRyHpVK40qRR59XB3RHV-aDO72UDNhjLDbJHDPg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29/12/2025 11:31, Andy Shevchenko wrote:
> On Mon, Dec 29, 2025 at 10:04 AM Matti Vaittinen
> <mazziesaccount@gmail.com> wrote:
>> On 23/12/2025 20:26, David Lechner wrote:
>>> On 12/23/25 9:55 AM, Maxime Chevallier wrote:
> 
> ...
> 
>>> It looks like inputs can also be used as GPIOs, so
>>>
>>> gpio-controller: true
>>> #gpio-cells:
>>>     const: 2
>>>
>>> would be appropriate (it doesn't matter if the driver doesn't
>>> implement it, we know what the correct bindings are).
>>>
>>>> +
>>>> +  "#io-channel-cells":
>>>> +    const: 1
>>
>> I didn't check the data-sheet, but if the pins can be set to be GPIOs or
>> ADC inputs, then I would require channels to be specified. It's only 8
>> channels, so always listing channels that are present shouldn't be that
>> big of a problem - and it should avoid one to add extra properties to
>> denote channels used for GPIO if GPIOs need to be supported.
>>
>> Well, I am not insisting this, there are folks that know this stuff
>> better than I :)
> 
> Why would we need an extra property for that? GPIO controller has a
> property for valid_mask, should be enough to handle this case, no?
> 
Ah. You're right. The "valid_mask" should be perfectly usable.

I might still require the channel information to make it explicit - but 
as I said, I leave this for others to decide :)

Yours,
	-- Matti


---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

