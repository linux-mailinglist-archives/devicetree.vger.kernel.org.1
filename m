Return-Path: <devicetree+bounces-247307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F9CC6B2A
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6DC473004638
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BFF4341042;
	Wed, 17 Dec 2025 09:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B7BlFVrh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CF6340DB1
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962385; cv=none; b=Y/UY/s9PJwzQ8qeX8Nfe370fD0x0Qw5MpPD9EtAxGbuF1v5fOJ5QZVIaDW/IgpIjAeC84vgrtxkceXFAuXIVUKTglceWTHx18S1rDNoJjAM2AlHviw+XjRele3a0eXyleHiD9DNmaSOASRccbbgWyxi/DGXZiAWzmj0Ki1JZK4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962385; c=relaxed/simple;
	bh=Z0lMYo5+NJ79AHAUbnTNntH5jebkTrZggk5FVdEzBq0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yk5vdqJ+UBedVcYevg9eyMJvsFjh+h/iK4fyHjOo9Lzw/A9hRHS3GYh1LIV5m8quMy8VYY5pPW1mVlhF3AXEVat3yszj3qE2wU3fg33tieUiRGaVHQE3k77ALpIsp/wJf6Kk64ulpctjOe+m/tqBSop8QTDCShVp5oX259bQM2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B7BlFVrh; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-34c71f462d2so3278471a91.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765962383; x=1766567183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g1VRWjeuH/kViMmS59iXj3V5sEFdHUh9qPFuC/Iijp4=;
        b=B7BlFVrhMI4D0POPuexZtxAwJHNEmgOYYu7BRI4K5mWSCmUlzdfTMUX7E45DwF+klC
         ptSOONI96qFQesWjKvCU4ripnqrvEPpJ63/bFAe50vn18y+wfnWuGPL3ImtmQJw7jcti
         K+RneF5ogEBuBYOQqxFEOrB7YXsQEAHU3QHTAN109phcn5qDr8nu66IJZomjBQz71Fal
         3MeAyTO+Myvrj2aeePVgSrbiWeqL2MP7Zv/B0ltJALz7a0TEmmq3NpAScmVqtR+xUSMe
         aCZ/FtWKttkzOkUC4nFrF0sLoV0281BJ9lGVtYhpR0ZIAShMu8SO0flS1Gy/wUAcK/L1
         klEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765962383; x=1766567183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g1VRWjeuH/kViMmS59iXj3V5sEFdHUh9qPFuC/Iijp4=;
        b=bogB8ttz678rpUOAy16WmN45l0juubuEYH9yz0lHIQ+TraioOLrIT51z5WA2KR8IDZ
         sybNU8oZxch71y2HVfvebMU4uPc+Vd1zkZSPX9PnP++Z6n2ZGHy07SC6hpUoNVqLnhux
         OqzSID3DQKSH7GJQ2mIpkEmlcneWuTDHi331YmVCB0eQ1ymLvaWqocD9uOoWgBXuzWRR
         iN/6RcDT7mb8g8t10mlH4lIRKd4zW7mCeGfU/s3QviPCu4Z7lYFCNm1tLFQPoXs/9D/m
         b06jp5qFR4Jz32sPiaGSk/yJjQ/VYIJaH2JMjVw8ZC0zoyc0MYlNwKtXIt0hX+9t03AN
         pUVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJ5V6S55DzZLaCYXxV4aLuWJk0Uv6+0cxp7CP2cNkQzuf6CnWvzpT8stwYMGFAP77dM7CNj6/QGqVQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwkYpZL0iotBOSF/zmxCSFOe5pDRvKU+izOqeJQsAmhvF/oM/kS
	HbUu9MgFeeszw1Rh1bEc6pBL+n8dGop43LeN5tTKkHkKn71sqE3Unfpc
X-Gm-Gg: AY/fxX4b/cCg1ay0qLzMLYJ1R4loWYtTU9b7vQ8xZZrxr5wI6clEk5GIRBgkv61QUeX
	TOO1wMhxTR+A7knN6ntL2gDW4+fY58GxKLNoB77V/sjvfIAEYZQF3QmH7yUwvDKlkPNf4Sjn48E
	JYHp0xuXRLfrMCX6JIJPBPas+GN5v4l6cF2TwDwUfzAdLf6v8Mo3JMMN74jdYyai53nljTu2U55
	80ereNI8LKk3ehUcMgKkCttCLxjD7QsCsAEZZCh+PTjNHO+//WQLUho7AUe79A5NDZmCqePC32Y
	VeGGwD9FSjjN2n7nOyFLlU+NV8ieFpRj83OyFUKDM6msBMvjtOUrwhDXfHuuSdkV1rSv7OlKF0R
	UsDzIZgPJKU3UwqnimKbbOM2LwL2m1Cs7o6QZtiaz+x9Ng9a6M+uPWmBZ4PN80I8FDqB4TezRyD
	LqihE90ZJybIPG
X-Google-Smtp-Source: AGHT+IE6PfmxAkj5HlkxzkJmnrwLpLmQDasxQXTlueI2ut1ZFaSRcM/T3o7RF88n/l5r5DOiJzvQyA==
X-Received: by 2002:a17:90b:3f85:b0:330:6d5e:f174 with SMTP id 98e67ed59e1d1-34abd751aa3mr16360133a91.20.1765962382751;
        Wed, 17 Dec 2025 01:06:22 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcbc0be691sm2048570b3a.58.2025.12.17.01.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 01:06:22 -0800 (PST)
Message-ID: <e5d92ecd-6bc1-438d-87ec-96f60d1b8a24@gmail.com>
Date: Wed, 17 Dec 2025 01:04:27 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board
 device tree
To: Guodong Xu <guodong@riscstar.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley
 <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
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
 <20251216-k3-basic-dt-v1-8-a0d256c9dc92@riscstar.com>
 <3c38ce9c-4259-4149-bf2c-a54e74c00a34@canonical.com>
 <CAH1PCMbzv_uggyZ3JLPyWXSwbe2dJAh7jVT64xpM6SLG77VZqQ@mail.gmail.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <CAH1PCMbzv_uggyZ3JLPyWXSwbe2dJAh7jVT64xpM6SLG77VZqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Guodong,

On 12/16/25 23:13, Guodong Xu wrote:
> On Tue, Dec 16, 2025 at 10:33 PM Heinrich Schuchardt
> <heinrich.schuchardt@canonical.com> wrote:
>>
>> On 12/16/25 14:32, Guodong Xu wrote:
>>> K3 Pico-ITX is a 2.5-inch single-board computer equipted with a SpacemiT
>>> K3 SoC.
>>>
>>> This minimal device tree enables booting into a serial console with UART
>>> output.
>>>
>>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>>> ---
>>>    arch/riscv/boot/dts/spacemit/Makefile        |  1 +
>>>    arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 25 +++++++++++++++++++++++++
>>>    2 files changed, 26 insertions(+)
>>>
>>> diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
>>> index 95889e7269d1bae679b28cd053e1b0a23ae6de68..7e2b877025718113a0e31917eadf7562f488d825 100644
>>> --- a/arch/riscv/boot/dts/spacemit/Makefile
>>> +++ b/arch/riscv/boot/dts/spacemit/Makefile
>>> @@ -4,3 +4,4 @@ dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
>>>    dtb-$(CONFIG_ARCH_SPACEMIT) += k1-musepi-pro.dtb
>>>    dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-r2s.dtb
>>>    dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-rv2.dtb
>>> +dtb-$(CONFIG_ARCH_SPACEMIT) += k3-pico-itx.dtb
>>> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
>>> new file mode 100644
>>> index 0000000000000000000000000000000000000000..0f9d04dd352f5331e82599285113b86af5b09ebe
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
>>> @@ -0,0 +1,25 @@
>>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
>>> +/*
>>> + * Copyright (c) 2025 SpacemiT (Hangzhou) Technology Co. Ltd
>>> + * Copyright (c) 2025 Guodong Xu <guodong@riscstar.com>
>>> + */
>>> +
>>> +#include "k3.dtsi"
>>> +
>>> +/ {
>>> +     model = "SpacemiT K3 Pico-ITX";
>>> +     compatible = "spacemit,k3-pico-itx", "spacemit,k3";
>>> +
>>> +     chosen {
>>> +             stdout-path = "serial0";
>>> +     };
>>> +
>>> +     memory@100200000 {
>>> +             device_type = "memory";
>>> +             reg = <0x1 0x00200000 0x3 0xffe00000>;
>>
>> Shouldn't the reserved memory be described as no-map /reserved-memory
>> nodes instead?
> 
> Hi Heinrich,
> 
> Yes, you are right. Using a reserved-memory node with the no-map property is
> the correct approach. I will update this in the next version to explicitly
> reserve the first 2MB.
> 
>>
>> I would assume that 0x1,0000,0000 is the location of OpenSBI.
>> What is at 0x3,ffe0,0000?
> 
> Yes, confirmed, 0x100000000 is the start of OpenSBI. The size 0x3ffe00000 in
> my original patch was the result of manually subtracting the 2MB OpenSBI
> offset from the total 16GB memory.
> 
> I will correct this in v2 to show the actual memory and put the first 2MB in
> reserved-memory {} for opensbi.

I don't think this is the right approach. The Linux kernel shouldn't care
about the size of the underlying SBI implementation. The size of OpenSBI
also depends on the version and features enabled. Thus, you should just
let the OpenSBI or whatever SBI fix up the device-tree for you. OpenSBI
already does that today. It inserts one or more reserved-memory node and
carves out the memory region of its own. If there's some bootloader in
between SBI <-> Linux, such as U-boot, then it's responsible for copying
over those reserved regions from OpenSBI into the device-tree Linux uses
(U-boot already does). Thus, there's no need to manually specify it.

Bo

> 
> Thanks for the review.
> 
> BR,
> Guodong Xu
> 
> 
>>
>> Best regards
>>
>> Heinrich
>>
>>> +     };
>>> +};
>>> +
>>> +&uart0 {
>>> +     status = "okay";
>>> +};
>>>
>>
>

