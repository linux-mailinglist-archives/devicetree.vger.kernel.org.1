Return-Path: <devicetree+bounces-166813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 254C8A887EA
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 18:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22FD0179745
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 16:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101CE1993B9;
	Mon, 14 Apr 2025 16:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="B/uoqCdC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABD43FC2
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 16:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744646453; cv=none; b=oeVXe0p2dYVqW9aV3P6MsLZjw89nFwyQHBww+QBu92IttMKv8MjwhacZvXfhHCHWJBEpZlQAEwm23nAIHN/gFNGjKS9IsS267gXGquRm7QCErGqjo4rmKI1xuJfhcMQ3UrpKEGnrvwP3Npx38sygxuvUzHyZsXi/aL2nN+t94fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744646453; c=relaxed/simple;
	bh=CvIYgw+DS4zmr9C/v4ZseWU7rAi0uG5BXIwSagLDIvQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z4u8+38t9AD1GNJzlT1UPNccbam3ikE0enSU+C4mtQOSaej6i5aciAGbnPg2/B4kcbk29HgIMhKatICT1Vh3RRRaCkXiFmD5VKt2a3Lxq+7zgLJ2OHeGtqENUpCERZ1FBm9gepES6Jwi3ZZaoZRnNoPjgDiL4zo4ooMQOSWpVGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=B/uoqCdC; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3d5e68418b5so35889585ab.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744646449; x=1745251249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QYswdOj8OkkGd0hypTI/qCj7jZdQJWmSZe4gJo9OFqU=;
        b=B/uoqCdCpVqhPBu0ldXwLig3F96dan7+pfmwzBf7uVO328vjQy82nQ8XjdQ1Vc/CAu
         el9e6lLqOqjTCNejfv4cm/SV8iZv93sH9Nc/Gw6oBEx82iuetDExetZzP8tW92kAMymy
         +1vieSO92boEdUH8e8dmiQ6RhqTfnIjlVpALeTXu26jgouoXLFIGORCuUv29DK/wR9ii
         hTpY+uTNg5FU2uKRC7SxQT6rZURGO+9RWOAf3vEMIF+zFRvCkkrT6IzVqV9Vk7r3P4YG
         xCgix+S0d2yK6itFevFOFR0YN4zX9VCQJZSVZZy1gAbOdmYK1BXR8+kggx6h9CxslPRx
         ixiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744646449; x=1745251249;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QYswdOj8OkkGd0hypTI/qCj7jZdQJWmSZe4gJo9OFqU=;
        b=kl87QWmqhllOIFR3P2BAKyvSSg1+JbfKF5nJoIcRGyA7CLFNYvwOlx89oFVF2YOsTw
         ih925GXUqZX51SwQFi+mLnCy6NFmIdhi9Gj8k2CIWWYRDQOhrekc0NdauEyT7pqTGyqa
         ls/GlBG/dvvWiUrZ3MPuGrG/6RCwmDT1sQkuW3ZXRvOL84tOU+wnhbRqt7q0s+8NRtWo
         u2d35wEi+6cJhrqBSzHtowrGU35AK90fZ32AvPmzdXHVjMNp0UjPFFU5fHEPf3y+iA78
         IM/DEkhgrZNKMMgJJjfMYB56NKo0QK4I6InM4BQvy25OT6It0Q9kcQVf+81m1zIDfFLv
         8yTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv8QEuOUDybHtjnkk5Ppqusucn1bzPzPWP36ibnJt2507So2zx06g6Yk/TrRxmePbuDUJ4hBkgsiU3@vger.kernel.org
X-Gm-Message-State: AOJu0YxgTSPsIbJrX+JhQcuPPSzDsQsgpRO08Mp+N86QBTY3TqC+i4Oa
	LvMHotPh3OJHxPxJV2IgRQGjvrZSNXLMtxcV6ioGmSTlqjxwbJ0JNBFHH0dhJZE=
X-Gm-Gg: ASbGncv+P81FxwpeOcSc5Ro33eDs5wbOIE36POyg70q9/mmQlDYLjbQbgDc37nqG1yW
	d82/dp8rlDV1SN38cJ3JJjKnPAZRfv68qpZ7fkrKCaIEZnQtBZ3r9BCCr/svH8Q7rdn2vx3ogvD
	4S/7GvGKXgmazFvg0lZjd3c6Vwcv+y/vG0Dpkhjyi65bOeWzBx2P2tO2car47hvOE00syqin2KI
	A95ebpv7n4fhHH7uCFUiMiJAOg8sCpbd5M+B6FzStsrdd82B9DhhTP8nx9ziFJMZIq5ZlcaPNvq
	5d+CicdA5XLRlm99DeqGv3A3rnM82dFyETU4EjL4d2mp40ebk4BIbrkC5g==
X-Google-Smtp-Source: AGHT+IHe3l3IdKEf2EIxEwSF8Xnhn98r0RQtuVLorIVoWb4ht7Iy5IoHWekoLkjH68FO20YrBiRk1g==
X-Received: by 2002:a05:6e02:b2a:b0:3d2:b72d:a502 with SMTP id e9e14a558f8ab-3d7ec27330bmr141379655ab.22.1744646447034;
        Mon, 14 Apr 2025 09:00:47 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.166])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d7dba8536asm27766165ab.28.2025.04.14.09.00.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 09:00:46 -0700 (PDT)
Message-ID: <0dc3bb03-3708-4134-96bf-d5f95187e8bb@sifive.com>
Date: Mon, 14 Apr 2025 11:00:44 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/10] riscv: dts: eswin: add HiFive Premier P550 board
 device tree
To: Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
 Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Min Lin <linmin@eswincomputing.com>,
 Pritesh Patel <pritesh.patel@einfochips.com>, Yangyu Chen
 <cyy@cyyself.name>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Yu Chien Peter Lin <peterlin@andestech.com>,
 Charlie Jenkins <charlie@rivosinc.com>,
 Kanak Shilledar <kanakshilledar@gmail.com>,
 Darshan Prajapati <darshan.prajapati@einfochips.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Aradhya Bhatia <a-bhatia1@ti.com>, rafal@milecki.pl,
 Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250410152519.1358964-1-pinkesh.vaghela@einfochips.com>
 <20250410152519.1358964-11-pinkesh.vaghela@einfochips.com>
 <956d76b0-4f82-4f95-8f70-70896d488bd3@collabora.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <956d76b0-4f82-4f95-8f70-70896d488bd3@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Ariel,

On 2025-04-14 7:55 AM, Ariel D'Alessandro wrote:
> Hi Pinkesh,
> 
> On 4/10/25 12:25 PM, Pinkesh Vaghela wrote:
>> From: Min Lin <linmin@eswincomputing.com>
>>
>> Add initial board data for HiFive Premier P550 Development board
>>
>> Currently the data populated in this DT file describes the board
>> DRAM configuration, UART and GPIO.
>>
>> Signed-off-by: Min Lin <linmin@eswincomputing.com>
>> Co-developed-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
>> Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
>> Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
>> Tested-by: Samuel Holland <samuel.holland@sifive.com>
>> ---
>>   arch/riscv/boot/dts/Makefile                  |  1 +
>>   arch/riscv/boot/dts/eswin/Makefile            |  2 ++
>>   .../dts/eswin/eic7700-hifive-premier-p550.dts | 29 +++++++++++++++++++
>>   3 files changed, 32 insertions(+)
>>   create mode 100644 arch/riscv/boot/dts/eswin/Makefile
>>   create mode 100644 arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
>>
>> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
>> index 64a898da9aee..29a97a663ea2 100644
>> --- a/arch/riscv/boot/dts/Makefile
>> +++ b/arch/riscv/boot/dts/Makefile
>> @@ -1,6 +1,7 @@
>>   # SPDX-License-Identifier: GPL-2.0
>>   subdir-y += allwinner
>>   subdir-y += canaan
>> +subdir-y += eswin
>>   subdir-y += microchip
>>   subdir-y += renesas
>>   subdir-y += sifive
>> diff --git a/arch/riscv/boot/dts/eswin/Makefile b/arch/riscv/boot/dts/eswin/
>> Makefile
>> new file mode 100644
>> index 000000000000..224101ae471e
>> --- /dev/null
>> +++ b/arch/riscv/boot/dts/eswin/Makefile
>> @@ -0,0 +1,2 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +dtb-$(CONFIG_ARCH_ESWIN) += eic7700-hifive-premier-p550.dtb
>> diff --git a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts b/arch/
>> riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
>> new file mode 100644
>> index 000000000000..131ed1fc6b2e
>> --- /dev/null
>> +++ b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
>> @@ -0,0 +1,29 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
>> +/*
>> + * Copyright (c) 2024, Beijing ESWIN Computing Technology Co., Ltd.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "eic7700.dtsi"
>> +
>> +/ {
>> +    compatible = "sifive,hifive-premier-p550", "eswin,eic7700";
>> +    model = "SiFive HiFive Premier P550";
>> +
>> +    aliases {
>> +        serial0 = &uart0;
>> +    };
>> +
>> +    chosen {
>> +        stdout-path = "serial0:115200n8";
>> +    };
>> +};
>> +
>> +&uart0 {
>> +    status = "okay";
>> +};
>> +
>> +&uart2 {
>> +    status = "okay";
>> +};
> 
> Although commit log says that this includes DRAM configuration, looks like it's
> missing? In order to test this patchset, had to add this following memory
> definition (picked from vendor kernel repository):
> 
>     L50: memory@80000000 {
>             compatible = "sifive,axi4-mem-port", "sifive,axi4-port",
> "sifive,mem-port";
>             device_type = "memory";
>             reg = <0x0 0x80000000 0x7f 0x80000000>;
>             sifive,port-width-bytes = <32>;
>     };

That is a misstatement in the commit message. The memory node is not included in
the static devicetree because the amount of RAM installed on the board is
variable. It is the responsibility of firmware to provide the memory map, either
through EFI or by patching the memory node into the DT at runtime. I believe the
current BSP U-Boot does the former but not the latter.

Regards,
Samuel


