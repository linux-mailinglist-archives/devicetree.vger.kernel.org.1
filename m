Return-Path: <devicetree+bounces-243826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0648FC9D772
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 02:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F1FCE4E1B2F
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 01:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A641F5842;
	Wed,  3 Dec 2025 01:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sy2tdtOk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BB71DE3DC
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 01:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764723989; cv=none; b=DSQjNuO43bqTDlXEoRPXp4b3NyhpnNdn43JOEnrLdJvqq3Y5n5ReJwtHrvbHrX5brkF9rT5zF2HvV1iEGjsoaFJD6HaEJfD5tG2LRDsLz6rDKLPKvT+UjqEvtHJEh0XWsdeEiwz7soUQk0Jz6oBtgWGR6H+vMHSc/+JDvGLINY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764723989; c=relaxed/simple;
	bh=FG+RlL8tN9X45jGXS6psqhAZMOdMPPAxvmrFCOQUgbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WoxACIbWjt+c2v/C+6OoylNgum4tHBL+aCTAHKZV4ttTj+JUmmYfKSuuiZxtVvcjO9pXulgwRTrYbcT7PcTkeU2dclrZfbsgiNdGrfFon/qw4xQ4drimWoyTe7JETVl3xj417ULs0eXDqRNP8U6ohpZ0X0M2ch8jCfG5uUu/Rtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sy2tdtOk; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso4851943b3a.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 17:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764723986; x=1765328786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hVTsO6sKVp5sJhZZt8xlrDTY7Nlr/H6T2hEmxYTZfww=;
        b=Sy2tdtOkVVdC8MS75Q2bwaLbBswnsFdzaHYRRBbJKn6dX0fgWy4WEE5WSDA10bPngm
         /khqjrc7zLExeZ8/cyTCN1VWY2fjGmwKezDnBfrz1qCP0sMjAWr+ZRznhhlHifl1X0fE
         SChUUW8NZcfQRwIbSdbPlDyhK8w/NINwuliCCvplYriBLEPTCih9mz3LUofej5sJupr2
         rA/KdkIdi8bSluQw5ShNYsBrYc9J4+ymy5cNNUP7uu58Hta2p0AYq3+31pIIstszefZo
         GBngPHKjiyXX9qngzNOMPHRQU2KFRACO2ufM6qhLxTqCzNMkJ+chimZKOb4MMVNFdqp1
         sbng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764723986; x=1765328786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVTsO6sKVp5sJhZZt8xlrDTY7Nlr/H6T2hEmxYTZfww=;
        b=E+iPuxuwjD2+ehO0pUQtCQHPa1mzO/SzDPeK7IyDTbltkg1Ve+g9KAsiSoXDPMEWGQ
         k3ilniDU4QGaIo0RTeKHpnv+ODLoFXYDgYYTW5lQIJet8UVQntBGn6xEflVlPJ14P5c7
         6s0VAjoeHqO37ljSTT0B2yW4xrQS1GIMFs181s1np+gqXEHG27kQQ0Fqe8RYr61Cd93V
         neYYwgVb2eWZQI6fR3WVRW2CGUotceNtWYFtMxaDem+JlJOFJEk6ZlNX+nwRvfYBI+ai
         oo1aegNCHg+mN2wJWCoYfC669SD3Q4lkwiYhSqdsE9nHCoXYShHRf7R95tht0aBPYUjl
         p2kQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6iYyVvTB3QxEYNnVqKdK7/t2jPERODHyyrTT2QNNlQQULQZExqK9ooXLDRbB9VbT7WZQhojuPaqxm@vger.kernel.org
X-Gm-Message-State: AOJu0YxktQgqmubvzG8ghB8sLtWEn1VoPii1wSdLOkkOQ+LRT6Z813nK
	2JwhjMIfXrPDxysBtzBLeWR7XwBwSqyyiFnsGIgQVxSDol8l2Ei2ByC9
X-Gm-Gg: ASbGncuYOP/XgmJAFVq+xzN3WvECY0kzNwFFnWRx1Dn+k0D+Ue2nC/kvixOYNr2AK6V
	TP8o4uqKCltV+5NHFRJ4FuZ0vZrL9HrQ1v0AiQCIkFynjcvJoMsShk/W7L33F3DIBYNKKH4D9rY
	1Z9zGkNS8UmzNNrF0SUXqZxYL4mXv9w5WnfDwKWdqqXT0DJx1qFh0vT9+FxmZ1iKwoZ96lUXnfc
	uqQa4/feGOJGaYJHnkoIsL9Vm8mCXIKnCbllSisq49xXTPIChFmGVAk2NcH3ThG1LFpAC89ByeM
	1RqBRXCTk00JO3xCJ+4DVMKpkDl3EE84ZXAN/tnpD+CjYxIz7/SyTGm6bHE8Tw9giIMMAP4crdc
	Gn3BVY3vyonyVMake6uuKYG/lE85afx2lHdMWv+6q2zKzF+kGWklXEPWZU7gofPbC/zHqsq3MVL
	Y5srXH1Q/QY1GZZVxsbyUQMO5HbTiK6kA9XHg=
X-Google-Smtp-Source: AGHT+IEoDJ4eqn6WFaRMMb636vIDOv1pEsvAjUxvyCy/YOdewWejqt9BXLzOM5WyDlKV9qSJKrRqtw==
X-Received: by 2002:a05:6a20:12d5:b0:35d:8c8:8acb with SMTP id adf61e73a8af0-363f5d669d5mr776850637.26.1764723985360;
        Tue, 02 Dec 2025 17:06:25 -0800 (PST)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d1516f6621sm18086961b3a.16.2025.12.02.17.06.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 17:06:24 -0800 (PST)
Message-ID: <73de5da3-5412-4991-8a14-9c60bfd872d7@gmail.com>
Date: Tue, 2 Dec 2025 17:10:34 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] rvtrace: Add trace ramsink driver
To: Mayuresh Chitale <mchitale@ventanamicro.com>, Bo Gan
 <ganboing@gmail.com>, Anup Patel <apatel@ventanamicro.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ian Rogers <irogers@google.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, Alexandre Ghiti <alex@ghiti.fr>,
 Atish Patra <atish.patra@linux.dev>, Peter Zijlstra <peterz@infradead.org>,
 Anup Patel <anup@brainfault.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Jiri Olsa <jolsa@kernel.org>, Mayuresh Chitale <mchitale@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, linux-riscv@lists.infradead.org,
 Andrew Jones <ajones@ventanamicro.com>, Liang Kan <kan.liang@linux.intel.com>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-8-apatel@ventanamicro.com>
 <26475221-f852-4d76-80dd-43f04f9e7ec4@gmail.com>
 <CAN37VV4BSsy5C6+PT0s+8KQgisF7M60=JPnM2oAdjYYYC-LNrA@mail.gmail.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <CAN37VV4BSsy5C6+PT0s+8KQgisF7M60=JPnM2oAdjYYYC-LNrA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Mayuresh,

Thanks for your reply. My comments below.

On 12/2/25 03:47, Mayuresh Chitale wrote:
> Hi Bo,
> 
> On Sun, Nov 30, 2025 at 1:17 PM Bo Gan <ganboing@gmail.com> wrote:
>>
>> Hi Anup,
>>
>> My comments below:
>>
>> On 11/1/25 08:42, Anup Patel wrote:
>>> From: Mayuresh Chitale <mchitale@ventanamicro.com>
>>>
>>> Add initial implementation of RISC-V trace ramsink driver. The ramsink
>>> is defined in the RISC-V Trace Control Interface specification.
>>>
>>> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
>>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>>> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
>>> ---
>>>    drivers/hwtracing/rvtrace/Kconfig           |   9 +
>>>    drivers/hwtracing/rvtrace/Makefile          |   1 +
>>>    drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 262 ++++++++++++++++++++
>>>    3 files changed, 272 insertions(+)
>>>    create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>>>
>>> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
>>> index ba35c05f3f54..0577f9acb858 100644
>>> --- a/drivers/hwtracing/rvtrace/Kconfig
>>> +++ b/drivers/hwtracing/rvtrace/Kconfig
>>> @@ -21,3 +21,12 @@ config RVTRACE_ENCODER
>>>        default y
>>>        help
>>>          This driver provides support for RISC-V Trace Encoder component.
>>> +
>>> +config RVTRACE_RAMSINK
>>> +     tristate "RISC-V Trace Ramsink driver"
>>> +     depends on RVTRACE
>>> +     select DMA_SHARED_BUFFER
>>> +     default y
>>> +     help
>>> +       This driver provides support for Risc-V E-Trace Ramsink
>>> +       component.
>>> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
>>> index f320693a1fc5..122e575da9fb 100644
>>> --- a/drivers/hwtracing/rvtrace/Makefile
>>> +++ b/drivers/hwtracing/rvtrace/Makefile
>>> @@ -3,3 +3,4 @@
>>>    obj-$(CONFIG_RVTRACE) += rvtrace.o
>>>    rvtrace-y := rvtrace-core.o rvtrace-platform.o
>>>    obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
>>> +obj-$(CONFIG_RVTRACE_RAMSINK) += rvtrace-ramsink.o
>>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>>> new file mode 100644
>>> index 000000000000..676344c9387c
>>> --- /dev/null
>>> +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>>> @@ -0,0 +1,262 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
>>> + */
>>> +
>>> +#include <linux/device.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/property.h>
>>> +#include <linux/dma-mapping.h>
>>> +#include <linux/rvtrace.h>
>>> +#include <linux/types.h>
>>> +#include <linux/sizes.h>
>>> +
>>> +#define RVTRACE_RAMSINK_STARTLOW_OFF         0x010
>>> +#define RVTRACE_RAMSINK_STARTHIGH_OFF                0x014
>>> +#define RVTRACE_RAMSINK_LIMITLOW_OFF         0x018
>>> +#define RVTRACE_RAMSINK_LIMITHIGH_OFF                0x01c
>>> +#define RVTRACE_RAMSINK_WPLOW_OFF            0x020
>>> +#define   RVTRACE_RAMSINK_WPLOW_WRAP         0x1
>>
>> nit: wrong spacing
>>
>>> +#define RVTRACE_RAMSINK_WPHIGH_OFF           0x024
>>> +#define RVTRACE_RAMSINK_RPLOW_OFF            0x028
>>> +#define RVTRACE_RAMSINK_RPHIGH_OFF           0x02c
>>> +
>>> +struct rvtrace_ramsink_priv {
>>> +     size_t size;
>>> +     void *va;
>>> +     dma_addr_t start;
>>> +     dma_addr_t end;
>>> +     /* WP from prev iteration */
>>> +     dma_addr_t prev_head;
>>> +};
>>> +
>>> +struct trace_buf {
>>> +     void *base;
>>> +     size_t size;
>>> +     long cur;
>>> +     size_t len;
>>> +};
>>> +
>>> +static int rvtrace_ramsink_stop(struct rvtrace_component *comp)
>>> +{
>>> +     return rvtrace_comp_is_empty(comp);
>>> +}
>>> +
>>
>> We should first set trRamEnable to 0, poll it, then poll trRamEmpty. It's
>> essentially the same as encoder, so perhaps move it to core.c. Here we're
>> just checking whether it's empty, which is wrong. We're also doing similar
>> things in encoder.c Should fix that as well.
> This code is called to just stop all components in a path which means:
> - for encoders the driver clears the trTeInstTracing bit and then
> polls for empty bit to be cleared
> - for ramsinks the driver just polls for the empty bit to be cleared
> More on this below.

Can we rename it to something like rvtrace_comp_poll_empty(...) for clarity?
This name kind of confused me into thinking it's just a check.

>>
>>> +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf *dst)
>>> +{
>>> +     int bytes_dst, bytes_src, bytes;
>>> +     void *dst_addr, *src_addr;
>>> +
>>> +     while (src->size) {
>>> +             src_addr = src->base + src->cur;
>>> +             dst_addr = dst->base + dst->cur;
>>> +
>>> +             if (dst->len - dst->cur < src->size)
>>> +                     bytes_dst = dst->len - dst->cur;
>>> +             else
>>> +                     bytes_dst = src->size;
>>> +             if (src->len - src->cur < src->size)
>>> +                     bytes_src = src->len - src->cur;
>>> +             else
>>> +                     bytes_src = src->size;
>>> +             bytes = bytes_dst < bytes_src ? bytes_dst : bytes_src;
>>> +             memcpy(dst_addr, src_addr, bytes);
>>> +             dst->cur = (dst->cur + bytes) % dst->len;
>>> +             src->cur = (src->cur + bytes) % src->len;
>>> +             src->size -= bytes;
>>> +     }
>>> +}
>>> +
>>> +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *comp,
>>> +                                         struct rvtrace_perf_auxbuf *buf)
>>> +{
>>> +     struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
>>> +     struct trace_buf src, dst;
>>> +     u32 wp_low, wp_high;
>>> +     u64 buf_cur_head;
>>> +     size_t size;
>>> +
>>> +     wp_low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF);
>>> +     wp_high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OFF);
>>> +     buf_cur_head = (u64)(wp_high) << 32 | (wp_low & ~RVTRACE_RAMSINK_WPLOW_WRAP);
>>> +
>>> +     if (buf_cur_head == priv->prev_head)
>>> +             return 0;
>>
>> cur_head == prev_head could mean that we've wrapped around and stopped at
>> the exact position. Thus, we need to check for the wrapped around bit. If
>> set, then this case can be merged into buf_cur_head <= priv->prev_head
>> below.
> cur_head is the current value in the wp registers whereas prev_head is
> the value in wp registers from the previous iteration which is saved
> explicitly by software. So prev_head can't change dynamically.
> 
>>
>> For cur_head > prev_head case, we also need to check for wrap-around. If
>> wrapped-around, we actually filled the entire buffer, not just cur - prev
>> We also should consider the possibility that the buffer has been wrapped
>> around multiple times. In all cases, maintaining a prev_head seems to
>> complicate things, so why don't we just reset the WP to priv->start each
>> time we start the ramsink component and get rid of prev_head? This way,
>> we'll always have cur >= start, and depending on wrapped bit, we either
>> get the whole buffer, or cur - start.
> Currently the software never clears trRamWrap bit because as per the spec:
> - It is only set to 0 if trRamWPLow is written
> - After trace is enabled and active , the trace tool should NOT write
> any of trRamStart/Limit/WP?? registers.

I think you missed my point. I'm not suggesting that we should change the
register values when trace is active. I'm saying that there's no need to
maintain a prev_head. For every trace session, we can just start fresh,
and reset WP to Start before trace starts. This way we don't need to deal
with the complex conditions of cur_head > prev_head, because you'll also
need to deal with wrap around, and the if condition will be complex. The
trace can wrap around and over-write old traces anyway, so I don't see a
value of keeping track of prev_head.

> Let me test this change to disable all the components (instead of just
> stopping trace) every time we want to copy data to perf buffer. This
> should let us use the trRamWrap bit as expected. Multiple wraparounds
> can't be avoided unless StopOnWrap was set. I will update the ramsink
> driver to set StopOnWrap based on the implementation id.
>>
> 
>>> +
>>> +     dst.base = buf->base;
>>> +     dst.len = buf->length;
>>> +     dst.cur = buf->pos;
>>> +
>>> +     src.base = priv->va;
>>> +     src.len = priv->end - priv->start;
>>> +     if (buf_cur_head > priv->prev_head) {
>>> +             src.size = buf_cur_head - priv->prev_head;
>>> +     } else {
>>> +             src.size = priv->end - priv->prev_head;
>>> +             src.size += buf_cur_head - priv->start;
>>> +     }
>>> +
>>> +     src.cur = buf_cur_head - priv->start;
>>> +     size = src.size;
>>> +     tbuf_to_pbuf_copy(&src, &dst);
>>> +     buf->pos = dst.cur;
>>> +     priv->prev_head = buf_cur_head;
>>> +
>>> +     return size;
>>> +}
>>> +
>>> +static int rvtrace_ramsink_setup_buf(struct rvtrace_component *comp)
>>> +{
>>> +     struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
>>> +     u64 start_min, limit_max, end;
>>> +     u32 low, high;
>>> +
>>> +     /* Probe min and max values for start and limit registers */
>>> +     rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTLOW_OFF);
>>> +     rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTHIGH_OFF);
>>> +     low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTLOW_OFF);
>>> +     high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTHIGH_OFF);
>>> +     start_min = (u64)(high) << 32 | low;
>>> +
>>> +     rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITLOW_OFF);
>>> +     rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITHIGH_OFF);
>>> +     low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
>>> +     high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
>>> +     limit_max = (u64)(high) << 32 | low;
>>> +
>>> +     if (priv->end < start_min) {
>>
>> Where was priv->end initialized before this check?
> I will move it before the check.
>>
>>> +             dev_err(&comp->dev, "DMA memory not addressable by device\n");
>>> +             return -EINVAL;
>>> +     }
>>> +
>>> +     /* Setup ram sink start addresses */
>>> +     if (priv->start < start_min) {
>>
>> No checks for start_min >= priv->end?
>>
>>> +             dev_warn(&comp->dev, "Ramsink start address updated from %llx to %llx\n",
>>> +                      priv->start, start_min);
>>> +             priv->va += start_min - priv->start;
>>> +             priv->start = start_min;
>>> +     }
>>> +
>>> +     priv->prev_head = priv->start;
>>> +     priv->end = priv->start + priv->size;
>>> +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_STARTLOW_OFF);
>>> +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_STARTHIGH_OFF);
>>> +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_WPLOW_OFF);
>>> +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_WPHIGH_OFF);
>>> +     /* Setup ram sink limit addresses */
>>> +     if (priv->end > limit_max) {
>>> +             dev_warn(&comp->dev, "Ramsink limit address updated from %llx to %llx\n", priv->end,
>>> +                      limit_max);
>>> +             priv->end = limit_max;
>>> +             priv->size = priv->end - priv->start;
>>> +     }
>>> +
>>> +     /* Limit address needs to be set to end - 4 to avoid overflow */
>>> +     end = priv->end - 4;
>>
>> Should not hard-code 4, instead, do write32(0xfffffff, RamLimit), then
>> ffs(RamLimit) to probe for the the write width, aka, "A" value in Table
>> 47. Typical Trace RAM Sink Configuration in the Spec.
> I dont think 'A' can be probed that way because as per section 7.1:
> "Not every value may be settable in trRamStart/Limit registers. Value
> written may be trimmed (for example aligned on a particular 2^N
> boundary)". So writing 0xffffffff to limit register will reveal the
> boundary alignment but not 'A'. I think 'A' needs to be specified by
> an implementation with default as 4. I will change it accordingly.
> 

Quoting from spec:

"Value A means alignment which depends on memory access width. If we
  have memory access width of 32-bits, A=4 and value of trRamLimit
  register should be 0x…FC. Some implementations may impose bigger
  alignment of trace data (to allow more efficient transfer rates)
  for SMEM mode. For SRAM mode A must be 4 as access to trace via
  trRamData is always 32-bits wide "

the 4 byte of A value is only for SRAM mode, not SMEM mode. My inter-
pretation of the spec is that this can be detected by writing -1 to
Limit, and detect M, A as follows.

0x11110000011111000
           ^    ^
           |    |
       M value  A value

A = 1 << (__builtin_ffs(v) - 1)
M = 1 << __builtin_ctz(v + A - 1)

I'll start a thread on the DTPM mailing list to confirm this. BTW,
my P550 N-trace (pre-ratified) ramsink as A=8.

>>
>>> +     rvtrace_write32(comp->pdata, lower_32_bits(end), RVTRACE_RAMSINK_LIMITLOW_OFF);
>>> +     rvtrace_write32(comp->pdata, upper_32_bits(end), RVTRACE_RAMSINK_LIMITHIGH_OFF);
>>> +     low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
>>> +     high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
>>> +     end = (u64)(high) << 32 | low;
>>> +     if (end != (priv->end - 4)) {
>>> +             dev_warn(&comp->dev, "Ramsink limit address updated from %llx to %llx\n", priv->end,
>>> +                      end);
>>> +             priv->end = end;
>>> +             priv->size = priv->end - priv->start;
>>
>> Actually the RamLimit read is not the real limit. It's Limit - "A" (the
>> write width).
>>
>>> +     }
>>> +
>>> +     return 0;
>>> +}
>>
>> I think overall we should simplify this setup_buf function. For RamStart
>> alone, there're alignment + min_addr requirement, which is very unlikely
>> that the lowest valid address happens to be within the range that dma-
>> allocated in the caller (when you need to adjust priv->start). Thus, to
>> do it properly, we first need to detect the min_addr + alignment *before*
>> dma-alloc, and pass such requirements into dma-alloc, then depending on
>> what dma-alloc returns, detect the "M" value by interrogating RamLimit.
>> I'm not sure if dma-alloc can be passed a hint address that whatever
>> returned must be higher, and whether it can enforce random alignment, so
>> may be we can just program RamStart/Limit based on what dma-alloc gives
>> and error out if value is not retained. We do however need to probe for
>> write width ("A" value). It's usually 4 or 8, but it does vary per-impl,
>> and remember, the total buffer size is still 1MB, not 1MB - 4 or -8.
> 
> I think the issue is that the physical memory region returned by
> dma_alloc* might not be addressable by the hw and so the start / end
> addresses are already trimmed in the code accordingly but I agree this
> can be handled differently. For e.g
> - probe max RamLimit value .
> - set the dma_mask to the probed value
> - dma_alloc*
> - further address checks
> 
>>
>>> +
>>> +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
>>> +{
>>> +     struct device *pdev = comp->pdata->dev;
>>> +     struct rvtrace_ramsink_priv *priv;
>>> +
>>> +     priv = devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
>>> +     if (!priv)
>>> +             return -ENOMEM;
>>> +
>>> +     dev_set_drvdata(&comp->dev, priv);
>>> +
>>> +     /* Derive RAM sink memory size based on component implementation ID */
>>> +     switch (comp->pdata->impid) {
>>> +     default:
>>> +             priv->size = SZ_1M;
>>> +             break;
>>> +     }
>>> +
>>> +     priv->va = dma_alloc_coherent(pdev, priv->size, &priv->start, GFP_KERNEL);
>>> +     if (!priv->va)
>>> +             return -ENOMEM;
>>> +
>>> +     return rvtrace_ramsink_setup_buf(comp);
>>> +}
>>> +
>>> +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
>>> +{
>>> +     struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
>>> +
>>> +     dma_free_coherent(&comp->dev, priv->size, priv->va, priv->start);
>>> +}
>>> +
>>> +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
>>> +{
>>> +     int ret;
>>> +
>>> +     ret = rvtrace_ramsink_setup(comp);
>>> +     if (ret)
>>> +             return dev_err_probe(&comp->dev, ret, "failed to setup ramsink.\n");
>>> +
>>> +     ret = rvtrace_enable_component(comp);
>>> +     if (ret)
>>> +             return dev_err_probe(&comp->dev, ret, "failed to enable ramsink.\n");
>>> +
>>> +     return ret;
>>> +}
>>
>> In probe, we should detect and set it to SMEM mode. The default is SRAM
>> mode.
> Actually the default is not set but I agree this needs to be handled
> differently. We can make this an implementation defined parameter and
> then cross check with trRamImpl register during probe.

You are right. The reset value of trRamMode is Undef. Thus, we do need to
test and set it to SMEM mode. (It's a WARL field)

>>
>>> +
>>> +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
>>> +{
>>> +     int ret;
>>> +
>>> +     ret = rvtrace_disable_component(comp);
>>> +     if (ret)
>>> +             dev_err(&comp->dev, "failed to disable ramsink.\n");
>>> +
>>> +     rvtrace_ramsink_cleanup(comp);
>>> +}
>>> +
>>> +static struct rvtrace_component_id rvtrace_ramsink_ids[] = {
>>> +     { .type = RVTRACE_COMPONENT_TYPE_RAMSINK,
>>> +       .version = rvtrace_component_mkversion(1, 0), },
>>> +     {},
>>> +};
>>> +
>>> +static struct rvtrace_driver rvtrace_ramsink_driver = {
>>> +     .id_table = rvtrace_ramsink_ids,
>>> +     .copyto_auxbuf = rvtrace_ramsink_copyto_auxbuf,
>>
>> Should have a .start function like the encoder (setting trRamEnable),
>> and reset the WP to priv->start, as suggested above.
> The active and enable bits for all components are handled via generic
> rvtrace_enable_component/rvtrace_disable_component functions. When all
> components are disabled before copying data to perf then WP would be
> reset to priv->start as a part of copy_to_auxbuf callback.

Disagree. You can't rely on enable/disable_component for ramsink. It's
the same as encoder, you need proper start/stop. If the RamEnable bit
is not cleared, trace may never gets flushed, and you'll never get
RamEmpty. Also you can't access WP without clearing RamEnable.

I'd also think it's more appropriate to reset WP in start callback. As
said earlier, new traces can overwrite already captured ones anyway,
so why not reset WP on each start. Future enhancements we can support
directly reading out the trace buffer when the encoder/sink is inactive,
so better just leave the WP where it was after stopping.

Bo

>>
>>> +     .stop = rvtrace_ramsink_stop,
>>> +     .probe = rvtrace_ramsink_probe,
>>> +     .remove = rvtrace_ramsink_remove,
>>> +     .driver = {
>>> +             .name = "rvtrace-ramsink",
>>> +     },
>>> +};
>>> +
>>> +static int __init rvtrace_ramsink_init(void)
>>> +{
>>> +     return rvtrace_register_driver(&rvtrace_ramsink_driver);
>>> +}
>>> +
>>> +static void __exit rvtrace_ramsink_exit(void)
>>> +{
>>> +     rvtrace_unregister_driver(&rvtrace_ramsink_driver);
>>> +}
>>> +
>>> +module_init(rvtrace_ramsink_init);
>>> +module_exit(rvtrace_ramsink_exit);
>>> +
>>> +/* Module information */
>>> +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
>>> +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
>>> +MODULE_LICENSE("GPL");
>>
>> Bo
>>


