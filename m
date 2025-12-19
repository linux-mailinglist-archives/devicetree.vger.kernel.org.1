Return-Path: <devicetree+bounces-248102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FCBCCEE2F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:08:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1E3C3015169
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E262D46B4;
	Fri, 19 Dec 2025 08:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="lMO9chE9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441B22773C1
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131699; cv=none; b=kxed24EurV+9ZJmSYWIxiN31ageINeuFfkD6/cA5aoSKNKW6L3DgG4+zUl1tjJvEyB+ABByuHQbUqBwv71c8UBx1hmC+9WRzBq+W24L9rSwxdDu1WqPb4AM9u1HJu+5tS6ezP2on4hY+hqXGv99LThJj6FghNYqFk5nJIEXbXP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131699; c=relaxed/simple;
	bh=8udCBDJHixWYZ9BHIHwvKAqzaP5NF/DkqRjG+1eXjBI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dNSvu2vD5ACqNjWL4bBfw62Kgjvgqf2lcr4lqRSHe0IpLdfaBtOAbgakj8JQKj3lVHoYswJKsGmlwrhNW/RHkI3jEW/ivlczIKNLLifvcTtdkdQ/aOAeWuRc+wR8rFfO7luCWrTKq/hNMlcpDK+1AC4RjX1kqjBGHzgHcSIra84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=lMO9chE9; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 67ED93F85B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1766131690;
	bh=EaxKPv8EzMQw4Q+d/tnNq9TX6lEJW/rr1OxXypt8e2A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=lMO9chE9CcnVozxEYLHoj4xFpT1kl3IskAJ3/7366fiBllXxh85PbwM5l0L21nAxi
	 kveo6QHHrBaaNckQ9Bi8YvvjL8P9o+j793sFO3xmBJbT59h86Z+VDZq+ElTmgcJfuz
	 68tR5M1xM5GiUqaXs277UbQkeWZfb1/qJCrkQJXSvGBFJLP7dSqQ/pHx6FJM0j8RP+
	 /+WmTHSF844Wh7jvZxoUDTHq5E43NVLDyHYl/0epFZmfS9bcH+HvQxWPTIa/Bv1kEB
	 ZmPudXl3Of8tNNpQ4DfmeygGGuidzoUl/Gk57i0o62qRxymPATEqaQ7Irgoe3oXziE
	 8MCss7G3kAQ7B5FiinJt62iv+RWAOVmeedSFHfhifI/Vn9eLBgWuRRuaKx7P4v/xf7
	 lveNktI8e0G8AyZJMbU+djvve4d6KXQmeIMEHEuYfDD6fAhqQB1O57JhAgb8h6jsWJ
	 44ZVR2GxTTl0jWh1YakMkXlxgAQDw+iFL3vd0EvBmzNNSfNYD5SfD9o0jll/LgCIR+
	 Ne4ZbQ++AsjXQ05i+ooBqv4i6ENQ9D7o9Ra8nmkCKeffO/IsXmSzKDCpoTXu9mKZhf
	 Aeie9E8yHXg6uBmx69uN2jtnDu1PjhPicgX4OJfE5O5WSeMnkx1lNKtIAKVGMKLy/+
	 sDa+8XYzY1uiRoa5xUabefr4=
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-430f4609e80so682453f8f.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:08:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131690; x=1766736490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EaxKPv8EzMQw4Q+d/tnNq9TX6lEJW/rr1OxXypt8e2A=;
        b=l/QPMkHZwL+16APHdV+i6igwI1VWJRn3bVYZXXJHWcxaHIuEvGe+JwaCP1PxBzj790
         S+3UphkhcPNTJNTO9iFzyr+jTD8K17/O3m7aqTYVS3dlCk79V8IA5tjoomR77tzYQpf8
         tx76Wb8xHJxYk5WN/ydMnFBfVJqs2J11EQ11fy2N6vOD5lcYvqi8mlJixICt8/1BLx7o
         lzp8PDRC/4SZlgdQ2nR4V0XKpYAyzI49HdcTWXhOFzdfpzZRbyrTlqA2F25qO/4hqbJf
         vr77o3Q+WcXAvfwVlzpUVMbnKzwvulK01T5MVC3wrcdZEjISYpKIAmaWFyNBAgwar8DZ
         Z5uA==
X-Forwarded-Encrypted: i=1; AJvYcCVQqS+Ivt8mbkOnedgKgDG2Ll+8bR9wPEnaqyZWlBNWj/wUi2yOf2ETY4bWkFTT67Kc68tAZ66mMeUc@vger.kernel.org
X-Gm-Message-State: AOJu0YzVl+nXNbCl6kEX0/u38tFVPGpM+gYUW+oaBJ6X1hAYvS2ruQfI
	AgWlVs8kAziWPvHaLUTv+coyVxjEQy6CGXmZL6EjnhYZApOtSX0znvBkDxDfdWLx4H9iWnoRqdf
	5JGRtcIs03LOu7bWyoOz85Kmb2hSyXVmMM80OPKJy99TuZ08gM0urXCCJ7Pz0nCJFcIlTCp2YXo
	cHMCw=
X-Gm-Gg: AY/fxX72repUtcuUVV5Gu5XlxKcHQt1bxBEzoaoKW2Ptp+t+45E8bOz+V1lcslSvjZ4
	I2AcCA0gqqBVgoNNWge3pL9uh1UDdt2xc02xlKLeD8qY6B02eN5r8lPQTENEmm38JjrNYajU2Qf
	hHkZ4py6j1JxeEa9KsDTzXD3TrurU2Ok74mx5U92MbRfi+ykGmITkmGpH+eEO0GhN1AfsQ+rN+v
	qOe4v5HmW+cqQu32G1fjbM3YpiwLqsCLB180GDxfPHFFnTwSdg1Nyb/w8cwG8NybkNbYTs7rVNS
	UCHzJg8meJsOi86QamxCdJHWzrdvg5n1mJJGsct7yapGL5cXmBxBcxG8GmxS49/ykUiXTSfZL97
	1PbLiHNi2KhVQ5eR4guYqfiPdn1O0EOKEF3RHA9HalOz0AM85/wC8ItzVYzb3HG34ZCyJIc9sJ+
	8GphoNUmk=
X-Received: by 2002:a05:6000:1a8d:b0:430:f6ad:1814 with SMTP id ffacd0b85a97d-4324e7045eemr2091898f8f.58.1766131689902;
        Fri, 19 Dec 2025 00:08:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+g+eItW+D6N0t8wn4CUhhQAlan/FWbDAzi/nwqnnLL5ClhWb3g9EwyncInKQ4MUzOoaMdTA==
X-Received: by 2002:a05:6000:1a8d:b0:430:f6ad:1814 with SMTP id ffacd0b85a97d-4324e7045eemr2091855f8f.58.1766131689463;
        Fri, 19 Dec 2025 00:08:09 -0800 (PST)
Received: from [192.168.123.154] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea2267fsm3416457f8f.12.2025.12.19.00.08.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 00:08:08 -0800 (PST)
Message-ID: <212e6371-245e-4f44-98a0-5e1db47222a1@canonical.com>
Date: Fri, 19 Dec 2025 09:08:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] riscv: dts: spacemit: add initial device tree of
 SpacemiT K3 SoC
To: Guodong Xu <guodong@riscstar.com>, Conor Dooley <conor@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-7-a0d256c9dc92@riscstar.com>
 <60948ca2-ed3d-485b-9b11-15df7ef8791d@canonical.com>
 <CAH1PCMb=+TvB1w+G6a2ANDp05HUwC4r6CFBDHXFwSmoP3Mm8xw@mail.gmail.com>
 <f9b6b5e2-ec9e-4208-8267-77020e0a9411@canonical.com>
 <20251218-basil-quantum-225ce16e4699@spud>
 <CAH1PCMZ3KM9-D3NJ1N2LUHTHFSDVKmGKT5fU8knAL7NnV9E-gw@mail.gmail.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <CAH1PCMZ3KM9-D3NJ1N2LUHTHFSDVKmGKT5fU8knAL7NnV9E-gw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/19/25 03:03, Guodong Xu wrote:
> Hi, Conor and Heinrich
> 
> On Thu, Dec 18, 2025 at 8:56 AM Conor Dooley <conor@kernel.org> wrote:
>>
>> On Wed, Dec 17, 2025 at 09:07:14AM +0100, Heinrich Schuchardt wrote:
>>> On 12/17/25 08:11, Guodong Xu wrote:
>>
>>>> Specifically, I must adhere to
>>>> Documentation/devicetree/bindings/riscv/extensions.yaml (and cpus.yaml for
>>>> properties like 'riscv,sv39' which stands for the extension Sv39). If I
>>>> add extension strings that are not yet defined in these schemas, such as
>>>> supm, running 'make dtbs_check W=3' fails with: 'supm' is not one of
>>>> ['i', 'm', 'a', ...], followed by "Unevaluated properties are not allowed."
>>>
>>> If Documentation/devicetree/bindings/riscv/extensions.yaml is incomplete
>>> with respect to ratified extensions, I guess the right approach is to amend
>>> it and not to curtail the CPU description.
>>
>> Absolutely. If the cpu supports something that is not documented, then
>> please document it rather than omit from the devicetree.
> 
> Thanks for the review. May I clarify one thing? Both of you mentioned
> document them, given the amount of missing extensions, is it acceptable if
> I submit a prerequisite patch that only documents these strings in
> riscv/extensions.yaml plus the necessary hwprobe export? Leaving the actual
> usage of these extensions (named features) to the future patches.

Adding the missing extensions to
Documentation/devicetree/bindings/riscv/extensions.yaml
is what it takes to describe the K100 cores in the device-tree.

Discovering the new extensions as CPU features and exposing them via 
hwprobe is probably best handled in a separate patch series.

Best regards

Heinrich

> 
> To provide some context on why I ask: I've investigated the commits & lkml
> history of RISC-V extensions since v6.5, and I summarized the current status
> regarding the RVA23 profile here:
> [1] status in v6.18 (inc. v6.19-rc1):
> https://docularxu.github.io/rva23/linux-kernel-coverage.html
> [2] support evolution since v6.5:
> https://docularxu.github.io/rva23/rva23-kernel-support-evolution.html
> 
> Strictly describing the SpacemiT X100/K3 (or any core) as RVA23-compliant
> requires adding these extensions that are currently missing from
> the kernel bindings:
> RVA23U64: Ziccif, Ziccamoa, Zicclsm, Za64rs
> RVA23S64: Ss1p13, Ssccptr, Sstvecd, Sstvala, Sscounterenw, Ssu64xl,
>            Sha, Shcounterenw, Shvstvala, Shtvala, Shvstvecd, Shvsatpa, Shgatpa
> Plus 'Supm', 'Zic64b', 'Ssstateen', 'B' where the kernel supports them but
> they are not literally documented in yaml.
> 
> Is this approach acceptable to you? If so, I will proceed with submitting them.
> 
> Thank you very much.
> 
> Best regards,
> Guodong Xu


