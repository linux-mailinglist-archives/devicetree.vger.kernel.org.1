Return-Path: <devicetree+bounces-234038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C246C27F0C
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 14:15:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F14E3B7692
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 13:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7039B28A704;
	Sat,  1 Nov 2025 13:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lbOm22VL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7AD2882AA
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 13:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762002900; cv=none; b=qwvMzxDkBsNvztVT9DxbXKYck4lP8J782wWS07NZgFKq9tDHIfuDfKDUDbYDqW/ciwx6VVEkOGL1CK6ra9bUNTz1jB/7i3zYFm4VML7XP5lJNqr2SZnJling66fg4QEgufScrna1hXrCv9xnjX/RshAhB9/6JbwXHRxflXz80FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762002900; c=relaxed/simple;
	bh=Js+kEEeyeM3DThycbuT69MY6EvJwTDpykSD9qWJCnAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=guofhz1sxXcPJ8yFi+5tR5Uet2D4VBklIgqrPTk5sJyecZK1bYc6oWGRThFHe8LwAx2pJ26Xw8JosVtI0RNhyRAFpbIfbqx1AGhVFtLBeHbw49xZ2Pa6danKBxL00LhnTA4j6UEioujBmwxAdO2RBtmFsmikWMoLiuaAhSb/1FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lbOm22VL; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-429b72691b4so2847848f8f.3
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 06:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762002897; x=1762607697; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Upr6LEZod7UihSvIyoqPLtgSmSPBWGzOTDYSELD2Pls=;
        b=lbOm22VLjwm/F+3qgK+jpPZ0AAvvBpSCLGq2pue1mWviZeIhcdhIkEvFxZSAM9my3W
         ci3nq0MKzfIXHS1th0Q3hhhqNh3C5l+lx/XAibMOktb9FjTSJsyjGOBIpLqumBXcHS0Q
         QgMLLu2uokC9Csirvj9wOU4k8ikWi9XpUhSuH8wTQs0MnGg+UURfGZRqLPZ+u0H/tNNJ
         ShClfddLpR3AJPSgFA6jxcS2tZszG71aW0MU0sc/B1frscqk7UymS7wpqtIHiyBT8s4c
         PQCZPlvaCjoq3/nCMTMd+u+FM080p91N4K5nHZDwbDXmXVqvZh9xq1gmQ7sCwTmANb60
         1yAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762002897; x=1762607697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Upr6LEZod7UihSvIyoqPLtgSmSPBWGzOTDYSELD2Pls=;
        b=vrW43HnvL3yHGaVAzoSstJhQ5zNAAhPhw0BN65F30dlA116Q1e3YRWneOu0u5rCVIi
         HvzrxAlbLWkSNgpFQauBqRlmEAfcQU8itxPkaRXXQboMFoiaN7Y1Cb+P4Bt983xmMyGM
         84dLjb7sI624vZs4HTvp9CTAXXuf1Q8TfvW5xm+JyOZJmJEMH+sUYSWm7ipvubyYjI6a
         1gveCMLtopALh13nWQkdkII0o+Dr8AXSuTXry80dD2xeQ3TIUj2rb5RMNPPjCzNXCBrh
         OlfaOHFFwsz6jKi59Uby9MQJ6kyJOjTbu9NewdYjNsYGa0OHom0l5XbsLu48FOASEVmN
         Cu0A==
X-Forwarded-Encrypted: i=1; AJvYcCUw9oq9VEkOcsOoUvTM03dW2pjtRcFsSdPsfZ7pllyv2RTFla9MLQ2F1xzcUOum5OuFZiLyqAK88Qz+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8EkGsv6sPtsDyEnffJSV+qvaHCAVY026gF4oNSkgINMaUtokB
	JZXXM8AwWXXxWETsiAu/S8YuU2G6/iOII//dr4BvzB5+uHfV/BykC2Kq
X-Gm-Gg: ASbGnctK/zWyVA+DYq0RhEh1lCWj6SkOAD2puwVIr4uhrno21OL8Ol+RpAsr6ysS+uv
	+wLaNaoIZF8qRGZMZmUq+sZ6WI/LBPbB7YnZFpWR7NNqLaSJ6tIH+Jm5r6eXmKefxrZ+DMpMTVx
	W32WrmF4hj18dWrBDTIPH8gmrETFRRJB+YibSXjHJ+pf0Dc4NtGtAG9ogERaqeChxaYfTBH3gBG
	oxpXpNpEFisIccxbuueyz813uS7tGWOSvhzNqNK2HL1wkn9VRHgA/U8MO6uofLIkQ/dNXgsY5J1
	JlEU0kYbeVi+Pp/eytpnG4fW5gfTJD5FCIpP/D4fq9epQT5iAB95niHOedQKkl6BjKg5UsngDqP
	blhx5RwXizm8t+3zYOQXgkfx7tpfd7A4X0Ztuoj09rcF3r9phuBPqD+mocq0ypcny3iP7OUZoE/
	p6BCsppjhKKgKgmybzNtVmAIJm4nHAmDpkXMY87AHT1uJ27J8egWntpgoYoOba/ckdhXhpDgs=
X-Google-Smtp-Source: AGHT+IG9TQlb1uL0biiWsjyFRLeVv/rKy56YQ2LqQbB7TDvmJ+cIF0BHCesuavP4Wddkzt7LbjMbtQ==
X-Received: by 2002:a5d:584b:0:b0:3ec:2529:b4e5 with SMTP id ffacd0b85a97d-429bd6aa4e9mr7024993f8f.38.1762002896422;
        Sat, 01 Nov 2025 06:14:56 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:4eb:d8a2:c0a2:24db? ([2a02:8010:6606:0:4eb:d8a2:c0a2:24db])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13e03d0sm9259512f8f.26.2025.11.01.06.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 06:14:55 -0700 (PDT)
Message-ID: <1a66cbba-41c3-425f-b830-efe4b83280f3@gmail.com>
Date: Sat, 1 Nov 2025 13:14:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Heiko Stuebner <heiko@sntech.de>, Alexey Charkov <alchark@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
References: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com>
 <CABjd4Yzfx-4xBHVB=W_r6nEdbwNJKdpHYB6bN3Xsk8dZOegJWw@mail.gmail.com>
 <2cfeeb0c-f7e0-b101-62c4-3b6eae40a30b@manjaro.org> <2246326.irdbgypaU6@phil>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <2246326.irdbgypaU6@phil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 01/11/2025 11:44, Heiko Stuebner wrote:
> Am Montag, 27. Oktober 2025, 22:15:05 Mitteleuropäische Normalzeit schrieb Dragan Simic:
>> Hello Alexey,
>>
>> On Monday, October 27, 2025 21:56 CET, Alexey Charkov <alchark@gmail.com> wrote:
>>> On Tue, Oct 28, 2025 at 12:02 AM Dragan Simic <dsimic@manjaro.org> wrote:
>>>> On Mon, Oct 27, 2025 at 7:08 PM Hugh Cole-Baker <sigmaris@gmail.com> wrote:
>>>>> On 27/10/2025 09:14, Alexey Charkov wrote:
>>>>>
>>>>>> Is there any downside to enabling this unconditionally in the board
>>>>>> .dts?
>>>>>
>>>>> Only that it goes against the principle that the DT should describe the
>>>>> hardware; the board .dts would describe a cooling device that doesn't
>>>>> actually exist on the base board.
>>>>
>>>> Having a separate DT overlay is perfectly fine if we want to
>>>> describe a board absolutely correctly: if the fan actually isn't
>>>> present, the operating system shouldn't be made to think it is
>>>> there, especially if there's no fan RPM feedback, which is the
>>>> case on almost all Rockchip boards that support a fan.
>>>>
>>>> Preventing the kernel from managing a non-existent fan might even
>>>> save some CPU cycles, ending up producing a bit less heat, which
>>>> can only help in passively cooled setups.
>>>
>>> Sounds like an overcomplication without real benefit. It's one thing
>>> with overlays for functionality that can be software-incompatible
>>> depending on whether an external attachment is connected or depending
>>> on the type of attachment connected. Here we are looking at a plain
>>> 2-pin fan which cannot be software incompatible to anything really
>>> (it's not like one could repurpose the fan connector for anything
>>> meaningful if a fan is not in use, and noone gets hurt if a PWM output
>>> is left running without load).
>>>
>>> The CPU cycles spent parsing a slightly larger DTB at boot are likely
>>> comparable to those spent activating a PWM output needlessly upon
>>> hitting the active cooling trip point, and both are negligible for any
>>> practical purpose.
>>
>> Hmm, right, I forgot for a moment that the PWM output is generated
>> by dedicated hardware, so not many CPU cycles would be wasted.
>>
>> BTW, with a fan PWM signal generated by a soft-GPIO output, much
>> more CPU cycles would've been saved by omitting the fan definition
>> if it isn't present, but that isn't the case here.
>>
>>>> However, the practice so far has been to describe the fans in the
>>>> main board dts files, if the board provides fan support, regardless
>>>> of the fan being present in a particular board setup or not.
>>>>
>>>>> I guess then in theory, an OS might allow the SoC to reach undesirably high
>>>>> temperatures if it's relying on the nonexistent fan to cool it down. But I
>>>>> don't think this would be an issue on Linux, at least, in practice.
>>>>
>>>> We're safe, a thermal runaway isn't going to happen when the fan is
>>>> defined in a board DT but actually isn't present.  Thermal CPU and
>>>> GPU throttling will prevent the overheating from happening.
>>>>
>>>>>> Overlays require more user configuration, and not all
>>>>>> bootloaders support them directly (e.g. systemd-boot users would
>>>>>> struggle). Compiling with overlays enabled also makes .dtb's a lot
>>>>>> larger due to added symbols information.
>>>>>
>>>>> Nowadays (on Debian at least) using overlays is pretty easy, I'm using the
>>>>> u-boot-menu package in Debian, I just copy the overlay(s) to /boot/dtbo/ and
>>>>> it detects them automatically and adds them to extlinux.conf for u-boot to
>>>>> apply.
>>>>>
>>>>> Couldn't systemd-boot users just use rk3588-nanopc-t6-(lts-)with-fan.dtb as
>>>>> their single DT to load, if it doesn't support applying overlays and they
>>>>> want to use the fan addon?
>>>
>>> Sure, but it's a manual configuration step, where otherwise the kernel
>>> would just default to the correct dtb for the board that the firmware
>>> told it about. The fan is not discoverable, so the firmware won't ever
>>> offer the "-with-fan" variant, meaning users would need to supply it
>>> manually in every instance.
>>
>> FWIW, the most user-friendly SBC family in the world, Raspberry
>> Pi, :) requires manual enabling of the fan on Raspberry Pi 4.
>> I haven't researched what's the background for that, perhaps the
>> need to keep the GPIO expansion header completely unoccupied by
>> default, because the fan attaches to the GPIO header, instead of
>> to some dedicated fan connector.
>>
>>>> Yes, that's an option.  However, that in general doesn't resolve
>>>> the issues arising from systemd-boot users wanting to apply more
>>>> than a single DT overlay.
>>>>
>>>>> FWIW, I haven't noticed any problems with having a larger .dtb (using mainline
>>>>> U-Boot to load it) and several other RK3588 boards are also compiled with
>>>>> symbols enabled already, and I haven't seen any issues reported with them.
>>>>
>>>> After thinking a bit about it, I'd support the extraction of fan
>>>> definitions into separate DT overlays.  As I wrote above already,
>>>> not managing the non-existent fan might actually help a bit with
>>>> passively cooled board setups, which is a good enough reason for
>>>> me to support separate DT overlays.
>>>
>>> Practical benefits sound far fetched here, while forcing users to
>>> manually configure something that would have otherwise just worked.
>>> Let's see what Heiko thinks.
> 
> Personally, I'm more on the less complication side.
> 
> I.e. if there is an actual fan-connector on the board we should describe
> it as such.
> 
> Overlays I see for things where you attach hats to generic pin headers
> to create specific functionality on top of a generic interface.
> 
> But if the board itself has an actual fan header, it should be described
> as such. Because that then _is_ the standard use of that.

The board does have a fan connector, just no fan by default. But anyway,
since it sounds like the preferred approach I'll send a v2 which puts the
fan into the base board .dts.

Dragan, you mentioned there's no need for more than 2 trip points - if
I remove the trip points between "SoC is warm, start fan at slow speed"
and "SoC is v. hot, run fan at full speed" is the OS/kernel expected to
interpolate between those 2 trip points (if you have a link to docs or
code about this it'd be interesting, I couldn't find anything in the
dt-bindings)?

Best regards, Hugh

