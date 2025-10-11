Return-Path: <devicetree+bounces-225540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A2BBCED33
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 02:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6FEC8189F7B9
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 00:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71665288D0;
	Sat, 11 Oct 2025 00:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mcKyJ8sT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D141F5EA
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 00:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760143109; cv=none; b=eBgZQMTHUumcjcSfEie391LsuypJBNIGJNe7MWuSCXsCyPMwoQ6VgDdossUi2NDXjj6wUPXz0tySCZKJAevDDwcxvU2I+SVMyR9pAbx/WScc1q4PV1kUfiLOEERN77SQHt6TNEDraHILyexwIrPZaW2bCqtC9qFhvswY5kpVLvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760143109; c=relaxed/simple;
	bh=TJ+0ZApQcRULe0z1jIoUsWwUUeSGwaCAiqfk3Feh2ms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bWa/C9Rnnx5P3nCi1BUZnYiX2wiApqIAZfqZSNOsIb1OgmF5W3y5jn0XCNmsZj4eNc3I++AhaVknQWdBjp9fpjPS78GacinoiKZF2Q7tARU5tL2mrj11Dk55KUtyg98YAHFNHnAROlNE1MFxra6x1R9oexP9q5zAzNYzWSEkVVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mcKyJ8sT; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-789fb76b466so2435140b3a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760143107; x=1760747907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0K1RDjmel/8pELzRgb0mY49+gLKJi3pM5u7bDOnAyMg=;
        b=mcKyJ8sTgSTHDt/4+C2akqSmhGo7pY/ExV0n5bAJxTG2X6IsA7W3DQc/9iJ1bqEj2H
         rlh71wWKwRJo7ASChucvJR53WbFuryU4zSfmo6IMcl3hUxiCa4+KS7XBA2nOoFiPrCGl
         phBEz005jx5xmqG8lEpkqO8ORU4a4REqeGlXRil7sOfyqzGdgzi/ORv4s5xD4DUOCJA7
         A79iMC3iMNITeSBpehQHtFdp5SB/xrgr6+jaMbLa3Gm+HRVDttDesu2AwZ2bnXNvl/RG
         jYtBqmnZIy/sM8nGGa+tDWA0m6Wcf8g++wmqtchS2pNPNVA/N4p1M3999+DMiZ8uqVHT
         7B9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760143107; x=1760747907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0K1RDjmel/8pELzRgb0mY49+gLKJi3pM5u7bDOnAyMg=;
        b=qnyNZJ3mxYsPpxQeVUL1fNUjMJ0qwgl0NN4n/jkedZ/tziVy84lHsGN5vFA8PK50PN
         9rZXi4lDHib1G2FUHxPbaQu//k5doK4yFSzVk+bZoYP8VpsGTX9KTON/3GgTo1LHYx9R
         Begpul5S+kIwLlcDUSLu1UzHJBEXHCZTbmLqy5QPZ8DbcjFHpun3ivVr5R4mfJ2vdIuB
         XOqSrT4950KaNRWtEtetmd6q8HQgu73Ez58cU/5H+xZMtPBWHQtMe0xN9JQFTeEtQRVe
         XYG03ku65Mw3Ef8/UgiU3eiLlTiql6XxFqTsHK5U1aTFfADQqIJ+YFCrbibih2ayLNZ7
         BKXg==
X-Forwarded-Encrypted: i=1; AJvYcCU01wkNdY5FteRS0re9Z5EGa13s8xBrXBj06s54kMC+Sl5uH665TtlHmOzFk2Qo1A+rfZdU361O6WQ3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5qJouEWqrYH8c2phYYsCkDzMpM3q7n13oL7k3WJorZUNJV86B
	DeMSuSnvTXDE7A6sFlk6utVet2zbMwuHo/in0QMGg2ANyUPQ0LLRwl5D
X-Gm-Gg: ASbGncv0U+qhgfgztwgoTuUzeBCqMVa177E6WqQGNdBJfxi7yj7cxYbZIeSU0GkYCeH
	KpFfQP0dyxcD7M5riZWCNiUoUW6zaZMT72IxsEfjgC/0Cl7FP4dr7RqtljpDbz2Fb8X4jUSSCTl
	O/R5CeA90SfqYuB+U/8dpyQ820HKcQlocisevrTYwhfQPXAYvsk2RK092IvpySQYu7Bp1qqQHza
	sQWvsO+rRq/6HQEPkWO8xICqW7XPTUdnRfC9sXAAffu/NodcYIaFH74w5C7iujFwwpIGn6iX9KU
	3j1ooaE77Sw7JnTPuQZ2Qmw41tf7pUxVFg6rx00r2f2KHckA7Zb/JmCiNuHt4Xq4wuOVSa8Cl4Y
	QLfJM8r+kIIVDVhCQidbk+1C+PYVYJ3YLQdhldscKwQGIoj5x4eSj+FLOdKfPGto4vejjMaxwZZ
	vnr/Mp9+TDloE1CaFfRWybXkQFjrgH
X-Google-Smtp-Source: AGHT+IHyAkPvoe5HM9XuZLQV6mCgm7CoEX8TDUk0XszTIJWB9Mo32f78hfFpL5Ceft9HqSZTJzYDVg==
X-Received: by 2002:a05:6a20:e291:b0:2f5:9ae7:b342 with SMTP id adf61e73a8af0-32da8501738mr18339108637.55.1760143106647;
        Fri, 10 Oct 2025 17:38:26 -0700 (PDT)
Received: from [0.0.0.0] (ec2-54-193-105-225.us-west-1.compute.amazonaws.com. [54.193.105.225])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d9992ddsm4207234b3a.80.2025.10.10.17.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 17:38:25 -0700 (PDT)
Message-ID: <3af020da-f61b-4a32-8209-227b8fe58a78@gmail.com>
Date: Fri, 10 Oct 2025 17:41:58 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] rvtrace: Add trace ramsink driver
To: Mayuresh Chitale <mchitale@ventanamicro.com>, Bo Gan <ganboing@gmail.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ian Rogers <irogers@google.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, Alexandre Ghiti <alex@ghiti.fr>,
 Atish Patra <atish.patra@linux.dev>, Peter Zijlstra <peterz@infradead.org>,
 Anup Patel <anup@brainfault.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Jiri Olsa <jolsa@kernel.org>, Mayuresh Chitale <mchitale@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, linux-riscv@lists.infradead.org,
 Andrew Jones <ajones@ventanamicro.com>, Liang Kan <kan.liang@linux.intel.com>
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <20251002060732.100213-8-apatel@ventanamicro.com>
 <9422ba89-a6ba-4168-98a1-6d4275698430@gmail.com>
 <CAN37VV5J2+gzpraR2NhaJBNfQ3dPsr-72Mmg03+ykcLoouZ8_Q@mail.gmail.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <CAN37VV5J2+gzpraR2NhaJBNfQ3dPsr-72Mmg03+ykcLoouZ8_Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/8/25 03:35, Mayuresh Chitale wrote:
> 
> 
> On Tue, Oct 7, 2025 at 1:21 PM Bo Gan <ganboing@gmail.com <mailto:ganboing@gmail.com>> wrote:
>  >
>  > On 10/1/25 23:07, Anup Patel wrote:
>  > > From: Mayuresh Chitale <mchitale@ventanamicro.com <mailto:mchitale@ventanamicro.com>>
>  > >
>  > > Add initial implementation of RISC-V trace ramsink driver. The ramsink
>  > > is defined in the RISC-V Trace Control Interface specification.
>  > >
>  > > Co-developed-by: Anup Patel <apatel@ventanamicro.com <mailto:apatel@ventanamicro.com>>
>  > > Signed-off-by: Anup Patel <apatel@ventanamicro.com <mailto:apatel@ventanamicro.com>>
>  > > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com <mailto:mchitale@ventanamicro.com>>
>  > > ---
>  > >   drivers/hwtracing/rvtrace/Kconfig           |   8 +
>  > >   drivers/hwtracing/rvtrace/Makefile          |   1 +
>  > >   drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 198 ++++++++++++++++++++
>  > >   3 files changed, 207 insertions(+)
>  > >   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>  > >
>  > > diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
>  > > index ba35c05f3f54..aef7e9989165 100644
>  > > --- a/drivers/hwtracing/rvtrace/Kconfig
>  > > +++ b/drivers/hwtracing/rvtrace/Kconfig
>  > > @@ -21,3 +21,11 @@ config RVTRACE_ENCODER
>  > >       default y
>  > >       help
>  > >         This driver provides support for RISC-V Trace Encoder component.
>  > > +
>  > > +config RVTRACE_RAMSINK
>  > > +     tristate "RISC-V Trace Ramsink driver"
>  > > +     depends on RVTRACE
>  > > +     default y
>  > > +     help
>  > > +       This driver provides support for Risc-V E-Trace Ramsink
>  > > +       component.
>  > > diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
>  > > index f320693a1fc5..122e575da9fb 100644
>  > > --- a/drivers/hwtracing/rvtrace/Makefile
>  > > +++ b/drivers/hwtracing/rvtrace/Makefile
>  > > @@ -3,3 +3,4 @@
>  > >   obj-$(CONFIG_RVTRACE) += rvtrace.o
>  > >   rvtrace-y := rvtrace-core.o rvtrace-platform.o
>  > >   obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
>  > > +obj-$(CONFIG_RVTRACE_RAMSINK) += rvtrace-ramsink.o
>  > > diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>  > > new file mode 100644
>  > > index 000000000000..7bd0cf1e4dfd
>  > > --- /dev/null
>  > > +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>  > > @@ -0,0 +1,198 @@
>  > > +// SPDX-License-Identifier: GPL-2.0
>  > > +/*
>  > > + * Copyright (c) 2025 Ventana Micro Systems Inc.
>  > > + */
>  > > +
>  > > +#include <linux/device.h>
>  > > +#include <linux/io.h>
>  > > +#include <linux/of.h>
>  > > +#include <linux/of_graph.h>
>  > > +#include <linux/platform_device.h>
>  > > +#include <linux/property.h>
>  > > +#include <linux/dma-mapping.h>
>  > > +#include <linux/rvtrace.h>
>  > > +#include <linux/types.h>
>  > > +#include <linux/sizes.h>
>  > > +
>  > > +#define RVTRACE_RAMSINK_STARTLOW_OFF         0x010
>  > > +#define RVTRACE_RAMSINK_STARTHIGH_OFF                0x014
>  > > +#define RVTRACE_RAMSINK_LIMITLOW_OFF         0x018
>  > > +#define RVTRACE_RAMSINK_LIMITHIGH_OFF                0x01c
>  > > +#define RVTRACE_RAMSINK_WPLOW_OFF            0x020
>  > > +#define RVTRACE_RAMSINK_WPHIGH_OFF           0x024
>  > > +#define RVTRACE_RAMSINK_RPLOW_OFF            0x028
>  > > +#define RVTRACE_RAMSINK_RPHIGH_OFF           0x02c
>  > > +
>  > > +struct rvtrace_ramsink_priv {
>  > > +     size_t size;
>  > > +     void *va;
>  > > +     dma_addr_t start;
>  > > +     dma_addr_t end;
>  > > +     /* WP from prev iteration */
>  > > +     dma_addr_t prev_head;
>  > > +};
>  > > +
>  > > +struct trace_buf {
>  > > +     void *base;
>  > > +     size_t size;
>  > > +     int cur, len;
>  > > +};
>  > > +
>  > > +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf *dst)
>  > > +{
>  > > +     int bytes_dst, bytes_src, bytes;
>  > > +     void *dst_addr, *src_addr;
>  > > +
>  > > +     while (src->size) {
>  > > +             src_addr = src->base + src->cur;
>  > > +             dst_addr = dst->base + dst->cur;
>  > > +
>  > > +             if (dst->len - dst->cur < src->size)
>  > > +                     bytes_dst = dst->len - dst->cur;
>  > > +             else
>  > > +                     bytes_dst = src->size;
>  > > +             if (src->len - src->cur < src->size)
>  > > +                     bytes_src = src->len - src->cur;
>  > > +             else
>  > > +                     bytes_src = src->size;
>  > > +             bytes = bytes_dst < bytes_src ? bytes_dst : bytes_src;
>  > > +             memcpy(dst_addr, src_addr, bytes);
>  > > +             dst->cur = (dst->cur + bytes) % dst->len;
>  > > +             src->cur = (src->cur + bytes) % src->len;
>  > > +             src->size -= bytes;
>  > > +     }
>  > > +}
>  > > +
>  > > +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *comp,
>  > > +                                         struct rvtrace_perf_auxbuf *buf)
>  > > +{
>  > > +     struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
>  > > +     struct trace_buf src, dst;
>  > > +     u32 wp_low, wp_high;
>  > > +     u64 buf_cur_head;
>  > > +     size_t size;
>  > > +
>  > > +     wp_low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF);
>  > > +     wp_high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OFF);
>  > > +     buf_cur_head = (u64)(wp_high) << 32 | wp_low;
>  > > +
>  > > +     if (buf_cur_head == priv->prev_head)
>  > > +             return 0;
>  > > +
>  > > +     dst.base = buf->base;
>  > > +     dst.len = buf->length;
>  > > +     dst.cur = buf->pos;
>  > > +     dst.size = 0;
>  > > +
>  > > +     src.base = priv->va;
>  > > +     src.len = priv->end - priv->start;
>  > > +     if (buf_cur_head > priv->prev_head) {
>  > > +             src.size = buf_cur_head - priv->prev_head;
>  > > +     } else {
>  > > +             src.size = priv->end - priv->prev_head;
>  > > +             src.size += buf_cur_head - priv->start;
>  > > +     }
>  > > +
>  > > +     src.cur = buf_cur_head - priv->start;
>  > > +     size = src.size;
>  > > +     tbuf_to_pbuf_copy(&src, &dst);
>  > > +     buf->pos = dst.cur;
>  > > +     priv->prev_head = buf_cur_head;
>  > > +
>  > > +     return size;
>  > > +}
>  > > +
>  > > +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
>  > > +{
>  > > +     struct rvtrace_ramsink_priv *priv;
>  > > +
>  > > +     priv = devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
>  > > +     if (!priv)
>  > > +             return -ENOMEM;
>  > > +     dev_set_drvdata(&comp->dev, priv);
>  > > +
>  > > +     priv->size = SZ_4M;
>  > Can we make this size dynamically determined? 4M seems inadequate. This is
>  > exceedingly so if the RAM sink is linked to a funnel, where you can have
>  > many harts dumping traces into this sink.
>  >
>  > > +     priv->va = dma_alloc_coherent(&comp->dev, priv->size, &priv->start, GFP_KERNEL);
>  > > +     if (!priv->va)
>  > > +             return -ENOMEM;
>  > > +     priv->end = priv->start + priv->size;
>  > > +     priv->prev_head = priv->start;
>  > > +
>  > > +     /* Setup ram sink addresses */
>  > > +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_STARTLOW_OFF);
>  > > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_STARTHIGH_OFF);
>  > > +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_WPLOW_OFF);
>  > > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_WPHIGH_OFF);
>  > > +     /* Limit address needs to be set to end - 4 so that HW doesn't cause an overflow. */> + rvtrace_write32(comp->pdata, lower_32_bits(priv->end - 0x4), RVTRACE_RAMSINK_LIMITLOW_OFF);
>  > Should not hardcode 4 as the trace write width. Control Interface Spec
>  > chapter 7.1 has the proper instruction on how to probe for this width:
>  >
>  > "Not every value may be settable in trRamStart/Limit registers. Value
>  >   written may be trimmed (for example aligned on a particular 2^N boundary)
>  >   and a trace tool should verify values being written"
>  >
> Thanks for the comments. I will incorporate those in v2.

@Mayuresh, I went over the spec again. I don't see the handling off wrap.
You need to detect if the buffer has wrapped around by testing bit 0 of
trRamWPLow. So:

  a. trRamWPLow needs masking bit 0 before being used as address to read
     trace data.
  b. If wrapped, then the trace buffer is actually scattered in two parts:
     [WP, Limit + width) and [Start, WP). During copying, you need to use
     the right portion of the trace buffer.

ref: https://github.com/ganboing/riscv-trace-umd/blob/master/rvtrace/funnel.py#L260

BTW, again your mail wasn't delivered to the mailing-list for some reason
Please check: I couldn't find your name on

https://lists.infradead.org/pipermail/linux-riscv/2025-October/thread.html
https://lore.kernel.org/all/20251002060732.100213-1-apatel@ventanamicro.com/

> 
>  > > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->end), RVTRACE_RAMSINK_LIMITHIGH_OFF);
>  > > +
>  > > +     return 0;
>  > > +}
>  > > +
>  > > +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
>  > > +{
>  > > +     struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
>  > > +
>  > > +     dma_free_coherent(&comp->dev, priv->size, priv->va, priv->start);
>  > > +}
>  > > +
>  > > +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
>  > > +{
>  > > +     int ret;
>  > > +
>  > > +     ret = rvtrace_ramsink_setup(comp);
>  > > +     if (ret)
>  > > +             return dev_err_probe(&comp->dev, ret, "failed to setup ramsink.\n");
>  > > +
>  > > +     ret = rvtrace_enable_component(comp);
>  > > +     if (ret)
>  > > +             return dev_err_probe(&comp->dev, ret, "failed to enable ramsink.\n");
>  > > +
>  > > +     return ret;
>  > > +}
>  > > +
>  > > +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
>  > > +{
>  > > +     int ret;
>  > > +
>  > > +     ret = rvtrace_disable_component(comp);
>  > > +     if (ret)
>  > > +             dev_err(&comp->dev, "failed to disable ramsink.\n");
>  > > +
>  > > +     rvtrace_ramsink_cleanup(comp);
>  > > +}
>  > > +
>  > > +static struct rvtrace_component_id rvtrace_ramsink_ids[] = {
>  > > +     { .type = RVTRACE_COMPONENT_TYPE_RAMSINK,
>  > > +       .version = rvtrace_component_mkversion(1, 0), },
>  > > +     {},
>  > > +};
>  > > +
>  > > +static struct rvtrace_driver rvtrace_ramsink_driver = {
>  > > +     .id_table = rvtrace_ramsink_ids,
>  > > +     .copyto_auxbuf = rvtrace_ramsink_copyto_auxbuf,
>  > > +     .probe = rvtrace_ramsink_probe,
>  > > +     .remove = rvtrace_ramsink_remove,
>  > > +     .driver = {
>  > > +             .name = "rvtrace-ramsink",
>  > > +     },
>  > > +};
>  > > +
>  > > +static int __init rvtrace_ramsink_init(void)
>  > > +{
>  > > +     return rvtrace_register_driver(&rvtrace_ramsink_driver);
>  > > +}
>  > > +
>  > > +static void __exit rvtrace_ramsink_exit(void)
>  > > +{
>  > > +     rvtrace_unregister_driver(&rvtrace_ramsink_driver);
>  > > +}
>  > > +
>  > > +module_init(rvtrace_ramsink_init);
>  > > +module_exit(rvtrace_ramsink_exit);
>  > > +
>  > > +/* Module information */
>  > > +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com <mailto:mchitale@ventanamicro.com>>");
>  > > +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
>  > > +MODULE_LICENSE("GPL");
>  >
>  > Bo

Bo

