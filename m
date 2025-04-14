Return-Path: <devicetree+bounces-166821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F34FDA888CC
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 18:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BB5F17B027
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 16:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39942284697;
	Mon, 14 Apr 2025 16:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hX8TYN1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270A419E7D1
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 16:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744648936; cv=none; b=SMC43YtOsfmqhXoKaQe9TDtrxGl9nDqVW6+WIs0W0cNgTNl/pom1IdG63Kikkmg1V8dvqMOtdnAjAJBbiu22/RhrDN8zxMn5KwPcSyE6sXivKK8s4XFiRw6YSJgRHA+HTEJdGjcrrVzkkA9OLHCDctLRpYRcVvFu4u1LuonKgGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744648936; c=relaxed/simple;
	bh=/66OOPt3HW87DIGt0O3zeDKL07onErJWuovRqfFxozI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hsOrAJMWWruxhA2sTnDqQWfssJMLbXenhtencv0UbVI3mKQxiI0yzwxsjTaztUZdEAmxO+d9CPsDhfu+UGt78ubNlthyGueWIR6+G4eDT7MyB6ANFmNroI92RnkKj0SuhCo5TjBRNv5t1TUYkd7siC0vB/N4A7Tv1xZWYhgPYEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=hX8TYN1P; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d589ed2b47so14210135ab.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744648932; x=1745253732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Nkt4V2QTjnSapTTILkS8+oLHV4hk8aXAHawaxgiQGU=;
        b=hX8TYN1PYNy/nmPF/II5MiG+V8PfyrF+NkeYDgiX+Yc+bjR9Q3d74Eso8mtqQ6FHeN
         0c+nulRxKECsUzPCFrSpRfYhBcY/Nf1Ft/8EkFh9EwExgspoplikFdCB5FKGVWbx3Gmr
         mr6BbyX9jm8UUOVDlSPv06fU2CI1G+yvYhfPLNiZnNDv+dqBw24rH1gHyrkPcEqx6ZKF
         odUJG2kHQyRESc08O8EKti8rnQdtwH2+o5Ha+UFJj7Y2ACdaT0IXfnVTJEJtSfmsjm0h
         bKilJZI4/vmxycBxsmDXqudtUVfgQVN07LUXSZXdN/vlQUwksZsehlbK/pLOZIj/T3uO
         tSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744648932; x=1745253732;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Nkt4V2QTjnSapTTILkS8+oLHV4hk8aXAHawaxgiQGU=;
        b=f3fzlsVRj4zk8d1EkOp5bRFjuIPwZt5fLwkquF8qMmr7emC7wN2GrmPTN/8mGV2k3T
         3gM1HWG/NV7H4SFRA9Yu9b/4w64dy2GQckVOtYB7ndsTyX/tRMrRUJlF/ZZihcGQ9D6A
         4YjGREdfqook4w+M9JYl7Fd8VE6rWP/mjk76MLlUiGvQbntU4CD/Jvz37TnyufdTFfji
         Q772gFMX2LI02SBKmQx0cnuNiXYM7VKFY12Uwn8vWH5l2H7N5mJ1KaOcC02rWjFPU6xN
         o6/gG/cWqf8LI7jKXXpCkK94tj9F27D9Dmxw8sHBChxkvAdw8NhJoVeasfNks5UF+CET
         DsLA==
X-Forwarded-Encrypted: i=1; AJvYcCUvRucNFvwpt7zp0BnH7wy8kvvK1xD1v07owbm6Jq+ZEdyKpqYeKhbyuxDrj/jySo5j7VXHJ8eas7xa@vger.kernel.org
X-Gm-Message-State: AOJu0YxqEgIh3d+A7rWbIKnE+dNhDWWDrhoKiL2xfc3hos71lDfhRVPg
	aD6AQqJOWExjQGItv1XCor1wKifnCJ0ReLZUEdHPCcW8B/7ynU6H6m2aLSXZKEg=
X-Gm-Gg: ASbGncsrb9mLh10Z/7mal3W+AUzX8vD8hM+cmqz7x5ztBIwFB5lPiwk5flKq4Awc5+m
	nMQd5jRhqVDbial0u+bGFvSzhGbOL7PsakeJ8wZdccjcnlyNIvtcgUoJoawta3svxI2RjQtPQDx
	WplLxX+2bApqvezp6mcdfxwXdvNrBv0iFBX6f6r6a0bpEVb/pIjyR1YxLqKrNzOY/cuWS3YE8Xu
	S7EbSJWjrB7L8KHWb23kfBYbEIj0pnvNTI6lOC3htiQD956pi2f2vVlFh7BTI++3VqgophjCL/Z
	Fe9bOki3qaYyIeWd0UlNVz8GPHst7WNT4ZzKWktHi7hupwitZFdfKej/og==
X-Google-Smtp-Source: AGHT+IHXcv1gAGtPs5um9SWMJJd18WOJ6IiYOGvEA56wWlYHbTbN9OhrdEHa3Nng5MJO18XCSyHZBw==
X-Received: by 2002:a05:6e02:338b:b0:3d5:bdac:c927 with SMTP id e9e14a558f8ab-3d7ec27c9eemr148288925ab.18.1744648932034;
        Mon, 14 Apr 2025 09:42:12 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.166])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d7dba9bb63sm27527735ab.38.2025.04.14.09.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 09:42:11 -0700 (PDT)
Message-ID: <9a51fbfb-cd06-489d-8deb-4323eca496fe@sifive.com>
Date: Mon, 14 Apr 2025 11:42:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] riscv: dts: spacemit: Add pinctrl configurations for
 PWM0-PWM19
To: Inochi Amaoto <inochiama@gmail.com>, Guodong Xu <guodong@riscstar.com>,
 ukleinek@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org,
 p.zabel@pengutronix.de, drew@pdp7.com, geert+renesas@glider.be,
 heylenay@4d2.org, tglx@linutronix.de, hal.feng@starfivetech.com,
 unicorn_wang@outlook.com, duje.mihanovic@skole.hr
Cc: elder@riscstar.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
References: <20250411131423.3802611-1-guodong@riscstar.com>
 <20250411131423.3802611-7-guodong@riscstar.com>
 <ujkfb3ajvoebrkvoepztgh3afzw5dq7djefvdddiboo5gxu63x@dlflpzwpv26u>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <ujkfb3ajvoebrkvoepztgh3afzw5dq7djefvdddiboo5gxu63x@dlflpzwpv26u>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Inochi,

On 2025-04-11 5:50 PM, Inochi Amaoto wrote:
> On Fri, Apr 11, 2025 at 09:14:20PM +0800, Guodong Xu wrote:
>> Add pinctrl configurations for PWM0 to PWM19 in the SpacemiT K1
>> device tree source file. Each PWM instance is assigned multiple
>> pinmux configurations corresponding to different GPIOs and
>> function modes.
>>
>> Configurations include:
>> - Mapping GPIOs to appropriate pinctrl nodes for PWM functionality
>> - Specifying bias-pull-up and drive-strength attributes
>>
>> These updates ensure proper pin multiplexing and drive strength
>> settings for PWM signals on the SpacemiT K1 SoC when selected.
>>
>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>> ---
>>  arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi | 315 +++++++++++++++++++
>>  1 file changed, 315 insertions(+)
>>
> 
> I think this is too much, I think it is necessary to leave
> already used one.

If your concern is about compiled DTB size, you can use /omit-if-no-ref/ for
each of these nodes, so only the pinmux nodes actually referenced by a
controller are included in the DTB.

Regards,
Samuel


