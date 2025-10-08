Return-Path: <devicetree+bounces-224451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A01BC3EB2
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1F0BA4E28C9
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 520462F361E;
	Wed,  8 Oct 2025 08:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i1yWU/4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0174A33
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759913378; cv=none; b=Z+7AaMXZ3PN0fuO4/hmE1eoYJrDLeRzjwgHHH0xc4+/OLvwZ3mRn3DpmpBHNBYoA4ObYS4ZP+riOHSAi6b0P1piu9qI8noSZe4CK9exwIMJF4PnZbH6su/1UVLEoEj6d1A/7UmPgmY3tKL5Cd7Md7DQsvfdHFKdM0n1CE1wsVV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759913378; c=relaxed/simple;
	bh=+UDuO6DO/Ym52LDlFXI3rp7SrLJSwX1eI96AAhMosoA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=HYo2lK7A9yEKFv1BKTSVDvjKSvJwDek96+NBzi4vJaDRe505ebq9jiI+EOgzvSWy8mlFoCoUjy44yti5AAOdO1ngVE8IIMP/qaZ4nOdd2hsOHAolQS4m7iiFHxEOiFWQjQhjumyfgIZYyPS3qdhQ9faSyuVFkwcMo+fKurWjrvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i1yWU/4v; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-33082aed31dso8288149a91.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759913376; x=1760518176; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v063PFHSc1gjQVRPTuEMNoZ9lB106FcvcJqBcKcRy2Y=;
        b=i1yWU/4vZolSIXQE6j7KH1P0Q1ZJHZKRG2SOmO6kQO9SqEMNHDihVogaonE7Ejs4Rn
         P0ppCAJSpByfsnbM1eJhm9+SPtjWj1h0PTxJEN8+o6M6ZZn+1jh6D0+iNpaqizUKjDmr
         ZlQvMVdOUhNHaqf9QoGxfonSvBJ1elBxcmGku5D/tODiWhAs0IVN3A8TNLpPHXXLuISq
         i7gRbGmjozAvA18DILj5ZgMpRuZvWfXJHpQWtPCjmBfSnjaDCt3oLVipuW+69UrDvJeb
         c0zkAKfbBVJMKyi00Ayf9/0QaTy8hq4ChlTZ5sGa9n1zVn1Z4/RyLc2WYLzhdZcgnwS3
         j6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759913376; x=1760518176;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v063PFHSc1gjQVRPTuEMNoZ9lB106FcvcJqBcKcRy2Y=;
        b=HJxLlVtJHi2uu5ySpnvTJXX5gDX2BJZhQvMnZLvCGzfPYFGjUCVv1K08m+tH38thvm
         JbFRMvh/fXUkGgYTTUmsV2pWHW7Fbdd6NIF06T9B6WgVZAL34lfBCpj+4rvJdBb99hBP
         wuog0wGPGNskT56V6/J6IkZ94dEZ7oK3RFk2X6ZW1rX9MH0VRdDg6jvCxXSNduekojg1
         8ZBtMpnz33obF+OcT4RbPeXSlIubpcA2HKCstnyeLyjWJV/HBmLiIJvcyKfNSWUSe51X
         6xXHcdTQUmWuIPx5WgLInovs/6BoSy6h2THSCyeav+EqnSTWyQKuM4ULYxSKFa9DJ9aY
         Vabw==
X-Forwarded-Encrypted: i=1; AJvYcCWa92AQrUFImljkDL6Lo009avgkzEISMdZCfxYctLuVlsjINWX2QWAUGEoeuv2c/5HN+3vhvuJCINpa@vger.kernel.org
X-Gm-Message-State: AOJu0YwKpRDaUq4o0mABuMwvjMAgV5ctwpPjtE1plh2FGeJoecFAICvp
	xvoNtZFnEb8b9DmNHEV6YRWWHQASu7ltaey0H2wlCFvfrk4n/HsrTtuz
X-Gm-Gg: ASbGncvVXJ9WRK2lEI6elAz44VE+rTTGhaLNcSgcXNR9Wh81w9PGb0qhSl0EE7jfew5
	35iWrW7Q8A26Qn1tbADuVJtX+p2nanmnzl6zVxoGm67xfCgeepO/asZszOvLIpRvwlXOopCP0sF
	dnr7CzsGXx8JpQqeu4vikjtwpaeSYAmr3NMxABpmbRTsXhq3+BWRSffoS0pBq9+n9hZq/f3GRu1
	TJBxDBTDCPz1+fruDpCEXD6viTo5KuV3exos4HV8WUSfOflq2AAlLLwFJyqjpst83Q0diHGC/Px
	NpIzxGQtQLZQRS5ZXEV3FDey3p1UwCcMK3RBDipKHE8xzcc+Bxt3Kb+Ylt/86rHOiVfEq8j0K6v
	VCUq6FtjCNV5RO86yteikVS+NgDFvOpOgEcNguyjqZdoen5zc
X-Google-Smtp-Source: AGHT+IEn4dr9WPi2dRHtbGX/nSAXQJpfA4KLTasMB6vT0AgR33JypLI3Jn8Z0xOPQzZtBHvu86ojaQ==
X-Received: by 2002:a17:90b:4b04:b0:32e:8c14:5d09 with SMTP id 98e67ed59e1d1-33b51105bbfmr3466478a91.7.1759913375457;
        Wed, 08 Oct 2025 01:49:35 -0700 (PDT)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b510e91d4sm2540549a91.1.2025.10.08.01.49.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 01:49:34 -0700 (PDT)
Message-ID: <6c7dfe6b-8cc0-4cde-945b-c423ef517be8@gmail.com>
Date: Wed, 8 Oct 2025 01:48:20 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] rvtrace: Add trace encoder driver
From: Bo Gan <ganboing@gmail.com>
To: Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ian Rogers <irogers@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atish.patra@linux.dev>,
 Peter Zijlstra <peterz@infradead.org>, Anup Patel <anup@brainfault.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Mayuresh Chitale <mchitale@ventanamicro.com>, Ingo Molnar
 <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Mayuresh Chitale <mchitale@gmail.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>,
 Liang Kan <kan.liang@linux.intel.com>
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <20251002060732.100213-6-apatel@ventanamicro.com>
 <793a00d6-a1ae-4928-a326-3d276a30bdbd@gmail.com>
Content-Language: en-US
In-Reply-To: <793a00d6-a1ae-4928-a326-3d276a30bdbd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/7/25 00:09, Bo Gan wrote:
> On 10/1/25 23:07, Anup Patel wrote:
>> From: Mayuresh Chitale <mchitale@ventanamicro.com>
>>
>> Add initial implementation of RISC-V trace encoder driver. The encoder
>> is defined in the RISC-V Trace Control Interface specification.
>>
>> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
>> ---
>>   drivers/hwtracing/rvtrace/Kconfig           |   7 ++
>>   drivers/hwtracing/rvtrace/Makefile          |   1 +
>>   drivers/hwtracing/rvtrace/rvtrace-encoder.c | 107 ++++++++++++++++++++
>>   3 files changed, 115 insertions(+)
>>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-encoder.c
>>
>> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
>> index f8f6feea1953..ba35c05f3f54 100644
>> --- a/drivers/hwtracing/rvtrace/Kconfig
>> +++ b/drivers/hwtracing/rvtrace/Kconfig
>> @@ -14,3 +14,10 @@ menuconfig RVTRACE
>>         To compile this driver as a module, choose M here: the module
>>         will be called rvtrace.
>> +
>> +config RVTRACE_ENCODER
>> +    tristate "RISC-V Trace Encoder driver"
>> +    depends on RVTRACE
>> +    default y
>> +    help
>> +      This driver provides support for RISC-V Trace Encoder component.
>> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
>> index 988525a379cf..f320693a1fc5 100644
>> --- a/drivers/hwtracing/rvtrace/Makefile
>> +++ b/drivers/hwtracing/rvtrace/Makefile
>> @@ -2,3 +2,4 @@
>>   obj-$(CONFIG_RVTRACE) += rvtrace.o
>>   rvtrace-y := rvtrace-core.o rvtrace-platform.o
>> +obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-encoder.c b/drivers/hwtracing/rvtrace/rvtrace-encoder.c
>> new file mode 100644
>> index 000000000000..45d1c5b12c51
>> --- /dev/null
>> +++ b/drivers/hwtracing/rvtrace/rvtrace-encoder.c
>> @@ -0,0 +1,107 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
>> + */
>> +
>> +#include <linux/device.h>
>> +#include <linux/io.h>
>> +#include <linux/of.h>
>> +#include <linux/of_graph.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/property.h>
>> +#include <linux/rvtrace.h>
>> +#include <linux/types.h>
>> +
>> +#define RVTRACE_COMPONENT_CTRL_ITRACE_MASK    0x1
>> +#define RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT    2
>> +#define RVTRACE_COMPONENT_CTRL_INSTMODE_MASK    0x7
>> +#define RVTRACE_COMPONENT_CTRL_INSTMODE_SHIFT    4
>> +
>> +static int rvtrace_encoder_start(struct rvtrace_component *comp)
>> +{
>> +    u32 val;
>> +
>> +    val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
>> +    val |= BIT(RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT);
>> +    rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
>> +    return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
>> +                RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT, 1,
>> +                comp->pdata->control_poll_timeout_usecs);
>> +}
>> +
>> +static int rvtrace_encoder_stop(struct rvtrace_component *comp)
>> +{
>> +    u32 val;
>> +
>> +    val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
>> +    val &= ~BIT(RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT);
>> +    rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
>> +    return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
>> +                RVTRACE_COMPONENT_CTRL_ITRACE_SHIFT, 0,
>> +                comp->pdata->control_poll_timeout_usecs);
>> +}
>> +
>> +static void rvtrace_encoder_setmode(struct rvtrace_component *comp, u32 mode)
>> +{
>> +    u32 val;
>> +
>> +    val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
>> +    val |= (mode << RVTRACE_COMPONENT_CTRL_INSTMODE_SHIFT);
>> +    rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
>> +}
>> +
>> +static int rvtrace_encoder_probe(struct rvtrace_component *comp)
>> +{
>> +    int ret;
>> +
>> +    rvtrace_encoder_setmode(comp, 0x6);
>> +    ret = rvtrace_enable_component(comp);
>> +    if (ret)
>> +        return dev_err_probe(&comp->dev, ret, "failed to enable encoder.\n");
>> +
>> +    return 0;
>> +}
> Trace components needs proper probing before use. Refer to Control Interface
> Spec: https://github.com/riscv-non-isa/tg-nexus-trace/releases/download/1.0_Ratified/RISC-V-Trace-Control-Interface.pdf
> Chapter 5. This versioning applies to all components, e.g., sinks/funnels...
> The driver should check the HW impl version with what it supports, and
> rejects registering the component(s) if not supported. Chapter 5. has more
> details.
> 
Forgot to mention another thing: you also need to follow Control Interface
Spec Chapter 11.2 Reset and Discovery to toggle tr??Active. Do not access
any other registers or set any other bits in tr??Control before properly
enable tr??Active. My userspace driver does the reset as:
https://github.com/ganboing/riscv-trace-umd/blob/master/rvtrace/device.py#L57

Your HW IP might ignore tr??Active bit and the trace components are always
clocked, and that's probably why you don't see any issue without proper
resetting. However, on my p550 (EIC7700), I adopted your code to a v6.6
tree, boot, and load it as module. The core immediately hangs, very likely
due to it tries to set tr??Control bits without proper resetting. You
should expect other IPs that implement clock gating and strictly follow
the Spec. Thanks.

>> +
>> +static void rvtrace_encoder_remove(struct rvtrace_component *comp)
>> +{
>> +    int ret;
>> +
>> +    ret = rvtrace_disable_component(comp);
>> +    if (ret)
>> +        dev_err(&comp->dev, "failed to disable encoder.\n");
>> +}
>> +
>> +static struct rvtrace_component_id rvtrace_encoder_ids[] = {
>> +    { .type = RVTRACE_COMPONENT_TYPE_ENCODER,
>> +      .version = rvtrace_component_mkversion(1, 0), },
>> +    {},
>> +};
>> +
>> +static struct rvtrace_driver rvtrace_encoder_driver = {
>> +    .id_table = rvtrace_encoder_ids,
>> +    .start = rvtrace_encoder_start,
>> +    .stop = rvtrace_encoder_stop,
>> +    .probe = rvtrace_encoder_probe,
>> +    .remove = rvtrace_encoder_remove,
>> +    .driver = {
>> +        .name = "rvtrace-encoder",
>> +    },
>> +};
>> +
>> +static int __init rvtrace_encoder_init(void)
>> +{
>> +    return rvtrace_register_driver(&rvtrace_encoder_driver);
>> +}
>> +
>> +static void __exit rvtrace_encoder_exit(void)
>> +{
>> +    rvtrace_unregister_driver(&rvtrace_encoder_driver);
>> +}
>> +
>> +module_init(rvtrace_encoder_init);
>> +module_exit(rvtrace_encoder_exit);
>> +
>> +/* Module information */
>> +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
>> +MODULE_DESCRIPTION("RISC-V Trace Encoder Driver");
>> +MODULE_LICENSE("GPL");
> 
> Bo

Bo

