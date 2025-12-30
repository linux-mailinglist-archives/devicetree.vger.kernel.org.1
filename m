Return-Path: <devicetree+bounces-250377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A49CE8A05
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 04:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E3E9300EA0B
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9E082E7BD3;
	Tue, 30 Dec 2025 03:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="f23UF8VA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C9622301
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767064485; cv=none; b=JLIVQ4/k+hkou6BhXFMfG9Ulz3ajYHYU/t+S5Ywh9W9z4FpPYHwAlcusTaRcE1g1ukUY2k/QN32fRyWsm0OUGRykU30IBea3ykrrc6cRmC1c5t+OTAKViGuIVUWNR1IgvN1WMc6WvoT6nfdWq2RwNknIPkxSl9xsdLeWssAFxKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767064485; c=relaxed/simple;
	bh=Ky9E0uqkyB5ylKXG3MfYTsh0oCKVJz6++WZSfUJIfss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ATQcv7GqXBC7S5+jIPcu/4bvFopZo9+oIbzCvVkguzB1PR9qhPsUJ3ANCrFJBej7Dkq+m7SVjSzhkZTRqv95/GBiXdEk/icw4rwOLUI42mFT0IEu4OHGD2m9B3s3qDqUnp/BdWCT7oNoMCTe5YtZDJYEkD4OQXdGTecAa5FJ9tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=f23UF8VA; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-8888a1c50e8so129720656d6.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 19:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767064483; x=1767669283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fo+LCIXOkAwoygnwlPI9RcyCWfLGdVzpI0JFy2xEtoo=;
        b=f23UF8VASQzJO+GtEr1DiSMa3HVjeVyxJBPXysNip0WnCPUjKdgKR6DzCqysXgKNUO
         r29uuKciEkNma3BRHkBUyYjwNu5BbFML5SFEpOU2tweLKeKGSY4hwxtgtDm2QbJZNmsR
         uZZN9TyZxlhPb3v8b+q06RgmZcPaGQabRk8jGdoVO16cVvykD34l0kc4UKOz7KUYhKnh
         titnNKs3qVDYjZIxfm128OC0xwv6wwrInVwmCvtGKxQPxfnapyJO7cDr9dfM/YP66TKi
         RMF9kWEyck4g2zY6BcvJNvAdxLmoOhV1yhsQZZrrcCFXIH2VHTvCD8LU8IF1Z6MZaAji
         EI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767064483; x=1767669283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fo+LCIXOkAwoygnwlPI9RcyCWfLGdVzpI0JFy2xEtoo=;
        b=K1f2q861F8crQHLpkOKvkIOD2HCd2RjZtQJGaVxcFglnU83Rj93rAcprf7lF7mynaX
         NzTjlErVXZTnhGU9Cj7nfQX0g84Dxmn71yU0sn3SJJKteNSvY0JmMqCoGDsIxJT986II
         pH5ObPaKeuS43LbWjC4qDUV7D5blVIscSbTfotTgfEVPzLRmZHuSmMI8Uq5rmkxWdHiw
         zXVc5X+wLj+ipm+iRufltrbsGfnqlMdDEcYqOxrUSnnU8cMz7AzPJhWHJ5k3mXNLVpMc
         icIXV/PaeqpgQdPzJ/Tr2TVhu9ce6dKFQbAvQ4uG23MPh6wLZV6YDtYZj83IIaIMtGT5
         Hwwg==
X-Forwarded-Encrypted: i=1; AJvYcCUOEq8g4Sv67oxY1X+Ci7qjmJRg3jrlr4TSkW0uI+q4PzWOpJN8nXSv7MTrD8V8RCSdW2KMTEdSjFEr@vger.kernel.org
X-Gm-Message-State: AOJu0YwntYmEJe0CNPIt5BtU/mc+Yq2TBDUxBLfUt61rj5sO7Mmj0uC5
	HeST4MjIi4qyx4WLH2GyTnzPYE0YzmYgtfmxEdsnWLo41IMS0C82NAc9oTXYWNk6vwA=
X-Gm-Gg: AY/fxX4o2GIwkP7jH1g0ISYsOINDpGtWOoysWVkmiGU0A5nt6jglJySsqzcpqX+9jdH
	XuGvnG2evGi/qGH69mkc3brDUmbz8W8cUgFEWVsDFfCnOEKAVnjSk021v5mB9uEYyshHN4So2Lk
	QOYxtm4qBqgISnuybi7ZjqXGZl6SZ0OEGqWqizBnHVr2KwN55IERmiRyzRcv5Iy9LYaHhkGFfsl
	5fYB7hf+93TqMMzt5fJ6TjBGwu6ZpL9am6u1jk3bCv1zV/Nlw2joOOale5VebIgSvvy9L1HoymV
	U4ajeGd7JYoKhKy0OAmRVS8YqlTqjsGlXZ2H/+feVBPRdIh5hDqpg33GYS8XUQrJlZVZ0nUUgSM
	8ccce95iPIfdhYLRSKgfvVt5HcsYCm94m1qYTP/BxZ4WUHpfHmWKAo4uMrFhN3Oi7KSpj5xQZGP
	hhrzSXN57cwbVOGNK8REBy9aM1t+67HeVUHHfbInoxc9hBUVdHx3w=
X-Google-Smtp-Source: AGHT+IFB7LZkmRzeqkhHKLp45e4MyeYxB7bz7JU2i7yTBStrvqCCZV4IuhRIFy1YvcIXrLmRgcwS+A==
X-Received: by 2002:ad4:55e6:0:b0:888:4938:49e7 with SMTP id 6a1803df08f44-88d859bfbb5mr348817656d6.71.1767064482735;
        Mon, 29 Dec 2025 19:14:42 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997aef2esm238379696d6.32.2025.12.29.19.14.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 19:14:42 -0800 (PST)
Message-ID: <80e18a32-543a-48f5-81f2-4fa64cb8bf8c@riscstar.com>
Date: Mon, 29 Dec 2025 21:14:39 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] dt-bindings: riscv: Add Supm extension
 description
To: Rob Herring <robh@kernel.org>
Cc: Guodong Xu <guodong@riscstar.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>, Paul Walmsley <paul.walmsley@sifive.com>,
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-11-3af3f3cd0f8a@riscstar.com>
 <fc719e92-10bc-455f-b402-c93bdbf878cf@riscstar.com>
 <20251230021306.GA3094273-robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251230021306.GA3094273-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/25 8:13 PM, Rob Herring wrote:
> On Fri, Dec 26, 2025 at 03:28:47PM -0600, Alex Elder wrote:
>> On 12/22/25 7:04 AM, Guodong Xu wrote:
>>> Add description for the Supm extension. Supm indicates support for pointer
>>> masking in user mode. Supm is mandatory for RVA23S64.
>>>
>>> The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
>>> state") of riscv-j-extension.
>>>
>>> Supm depends on either Smnpm or Ssnpm, so add a schema check to enforce
>>> this dependency.
>>
>> I have the same general question on this, about whether it's really
>> necessary for the DT binding to enforce these requirements.  The
>> RISC-V specifications are what truly defines their meaning, so I
>> don't really see why the DT framework should need to enforce them.
>> (That said, I'm sure there are other cases where DT enforces things
>> it shouldn't have to.)
> 
> Does the specification have some way to check it? What happens if a DT
> is wrong? Are you going to require a DT update to make things right? Or
> the kernel has to work-around the error? Neither is great. So having
> this as a schema makes sense to prevent either scenario.

I'm really glad you weighed in.  I actually have several questions
related to RISC-V extensions and DT.  But for now I'll focus on
just this...

To answer your first question, I'm not sure how the specification
is "checked", or what "it" is that you're asking about for that
matter.  Also I think we have to be clear about what "wrong" means.

RISC-V is defined by a (large and growing) set of specifications
that are developed through a well-defined process.  When a spec
is *ratified* it is committed, and it won't be changed.  These
specifications are ultimately *the* definition of RISC-V
compliance.

I assumed the "wrong" you're talking about is a DTS/DTB that has
been committed but somehow does not match what a RISC-V spec
says, but I might be mistaken.

Anyway, we can flip that around and have a similar problem:  What
if we define the DT binding in such a way that it doesn't match
the RISC-V spec?  The (ratified) RISC-V spec is right.

My thought was that we should have software do the verification,
and recommend the software (e.g. arch/riscv/kernel/cpufeature.c
in Linux) be updated to verify things before committing to a
DT binding.

To me, C code is more general and more universally understandable
than YAML rules, but I'm biased by how well I work with C versus
YAML schemas.

In any case, a "wrong" binding is a problem no matter what the
reason.  One way or another there are things expressed via DT
that must match the RISC-V specifications.  And yes, we do have
tools and bindings that can verify things related to DT.

>> And now, having looked at these added binding definitions (in patches
>> 07 through 11 in this series), I wonder what exactly is required for
>> them to be accepted.  For the most part these seem to just be defining
>> how the extensions specified for RISC-V are to be expressed in
>> DT files.  It seems to be a fairly straightforward copy from the
>> ratified specification(s) to the YAML format.
>>
>> Who need to sign off on it?  Conor?  Paul?  DT maintainers?
> 
> I generally leave this extension mess to Conor.

Sounds wise.  Should I address my other few questions on this
topic to Conor?  I don't want this particular series to get
held up on unrelated discussions.

					-Alex

> Rob


