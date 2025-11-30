Return-Path: <devicetree+bounces-243185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BE5C94C1C
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 08:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 355023450DB
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 07:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393B3227B94;
	Sun, 30 Nov 2025 07:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DrOjTDcI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEB4537E9
	for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 07:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764488856; cv=none; b=RipuwlX2lsZ7X+nKZiyJt3VMo3SVCNLRmLtnspgd+czVMvphxD5c60QAuVieqvouYe2A7AwTQQkNhQD0j+0qpKy7rHqfjZAmIFP+rt+Ttx0LHhfhTrJFFQ373p5WDWE29QatFrrmxYQM4baaz57+9lsU9Haw+0VIlquaZ2Wsuws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764488856; c=relaxed/simple;
	bh=7NfqnlsC8LSzYdlSIIBV0Oh2CDHtcam76Eu1PJzKCjk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I6dhaktoF393U7zC6vvT8NrCuFidZw37sEuXnCHG7Fb5nhOURNboCBPaOV2BVJWUbe+iJLJnljfcG4RRBu2OyLImuSuipmlRQUMYCyK7xKDtYUI8SRntr67SyIvl+UnRWXxNnox+I44yeQVzf6P2ah7sryS5KEjpNEdBXNV7wU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DrOjTDcI; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2956d816c10so35080455ad.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 23:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764488853; x=1765093653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dMz7/I31vULNcXSLjphmBDw8pJN8azXEYtV3XhWvRkg=;
        b=DrOjTDcICXmt/vEsF2O8aSC+BlysZfjIzHrQefRoW0IPhJJSkQ3bH3EHj72nRxTFgz
         FvZVtQn1pqR6EvbVguq7FXigv2q4j0vMElR/DQioHotp2VOu+tNBWxf2YYkvRQKDpUh5
         G5em3LDWPiibT8oUgJ7GKWGFE9Sh1DeufHcRT1oC+Bb6eFb9CzXpIWBwqzgqjauLYuMK
         MSt1f1SP2pOk3dbAyYghGK4X9NroQ7SLdKwqCdTYzsZIKR95LAa501x1gj7WHRBb915K
         q9iHTaDjgrUCAaAGwexnOAkWfW4gAAFky2OU6308FP/DiTmTeXUkuZCh/pcHnpFa0Bwv
         EG1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764488853; x=1765093653;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dMz7/I31vULNcXSLjphmBDw8pJN8azXEYtV3XhWvRkg=;
        b=cjZTetIPbzrMCrzEGnD6IIVjOnFQnqOZG14S50kTcVcWdrTNMFB2xdoytYg3K/Kboq
         VS/VBTaDxE/t8UOIs/A4VEmU1h22p50adDAKUvI++XDrwZs55KNSa28JS+Y6fVFgMYc6
         eYe/6GKvLMwzXSil77sWTAAlhyBmAXtmFwaBAzgn1BpFHJCIyXSTfW8n/1SS3e3m74s5
         8XkqJaNEH4/6JD2lrjyOoD+tcNKiD6wRCnCyhJfcKWHt/IeOgoYLfLdQ4pNIFIzhV1lX
         GN3UnbITezTby/Zx9UDisfv42Dc444z0yULXb5vUB6O7diwkwpx5JI5BdX3Y7XPf0qjr
         RwYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGSjTyKZeTjMfr96EbvQSfv0fs5v/PttoASMjBcuyFN/AHHwolcBB09MsQrKvln+CvWTKCb3JoOdfx@vger.kernel.org
X-Gm-Message-State: AOJu0YzhG5p8PqczvnRyReapgSL9tUKHtbW6RZCuvhT85l33P8v4XfE6
	ipsv4W8nkH8zOiStcnr/58NVkD+AtqoBk9FeiZtFpSTs0QwYb+fN23/eYFqjTPf2hbQ=
X-Gm-Gg: ASbGncucdGstoswseOjsGpo+U+YH8U8Nt8RRzaFbRG/cOvKaHFQGr52k/HOKacXbkh7
	k5QFAgm4lLa3DhNt4W7+wpqRlUwa8EBjtPp8KPmvNa2/oU/DlgDtnusZPHuublXHdZCltzTT/Us
	svyhonSisN8ey5gDGFzdcSIfKFc5rap8WaE89fCZB3VzersKK0tm9ymar1xkhYKqInkj2kRt98N
	ZvUbE4saxfk4Mq23qGnfMUEGzG4JvGn80SRA5y1ODi+DWXRe8o0IVKcqvwGksCnGH1pgIZQsH5A
	UqFSbHLehv8ZTYDVyC5on9Vduuztoqbxnnx7v035SI6h6XfcL3e/ToAqEX2OT73iO8zGO74kWs0
	G5jkXTClzdnkYbZr5BiO8WTiE4QX+dVEfbbB5VrT0R+rMsVUkbGdT4zikj1WIPt0IUEK0f6ZcpY
	H6NLCW406qkCYG
X-Google-Smtp-Source: AGHT+IFnsg6lvBgHv0uVnuDXa01/Q8nuA7CaFKt7HKnSprbW5Bz97Z1RPpsVroxJIvb/eUosWYvNLg==
X-Received: by 2002:a17:902:da4d:b0:298:2e7a:3c47 with SMTP id d9443c01a7336-29b6bf5c107mr377978425ad.42.1764488853387;
        Sat, 29 Nov 2025 23:47:33 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb40021sm90300855ad.68.2025.11.29.23.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Nov 2025 23:47:32 -0800 (PST)
Message-ID: <26475221-f852-4d76-80dd-43f04f9e7ec4@gmail.com>
Date: Sat, 29 Nov 2025 23:45:39 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] rvtrace: Add trace ramsink driver
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
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-8-apatel@ventanamicro.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20251101154245.162492-8-apatel@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Anup,

My comments below:

On 11/1/25 08:42, Anup Patel wrote:
> From: Mayuresh Chitale <mchitale@ventanamicro.com>
> 
> Add initial implementation of RISC-V trace ramsink driver. The ramsink
> is defined in the RISC-V Trace Control Interface specification.
> 
> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> ---
>   drivers/hwtracing/rvtrace/Kconfig           |   9 +
>   drivers/hwtracing/rvtrace/Makefile          |   1 +
>   drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 262 ++++++++++++++++++++
>   3 files changed, 272 insertions(+)
>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> 
> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
> index ba35c05f3f54..0577f9acb858 100644
> --- a/drivers/hwtracing/rvtrace/Kconfig
> +++ b/drivers/hwtracing/rvtrace/Kconfig
> @@ -21,3 +21,12 @@ config RVTRACE_ENCODER
>   	default y
>   	help
>   	  This driver provides support for RISC-V Trace Encoder component.
> +
> +config RVTRACE_RAMSINK
> +	tristate "RISC-V Trace Ramsink driver"
> +	depends on RVTRACE
> +	select DMA_SHARED_BUFFER
> +	default y
> +	help
> +	  This driver provides support for Risc-V E-Trace Ramsink
> +	  component.
> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
> index f320693a1fc5..122e575da9fb 100644
> --- a/drivers/hwtracing/rvtrace/Makefile
> +++ b/drivers/hwtracing/rvtrace/Makefile
> @@ -3,3 +3,4 @@
>   obj-$(CONFIG_RVTRACE) += rvtrace.o
>   rvtrace-y := rvtrace-core.o rvtrace-platform.o
>   obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
> +obj-$(CONFIG_RVTRACE_RAMSINK) += rvtrace-ramsink.o
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> new file mode 100644
> index 000000000000..676344c9387c
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> @@ -0,0 +1,262 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/rvtrace.h>
> +#include <linux/types.h>
> +#include <linux/sizes.h>
> +
> +#define RVTRACE_RAMSINK_STARTLOW_OFF		0x010
> +#define RVTRACE_RAMSINK_STARTHIGH_OFF		0x014
> +#define RVTRACE_RAMSINK_LIMITLOW_OFF		0x018
> +#define RVTRACE_RAMSINK_LIMITHIGH_OFF		0x01c
> +#define RVTRACE_RAMSINK_WPLOW_OFF		0x020
> +#define   RVTRACE_RAMSINK_WPLOW_WRAP		0x1

nit: wrong spacing

> +#define RVTRACE_RAMSINK_WPHIGH_OFF		0x024
> +#define RVTRACE_RAMSINK_RPLOW_OFF		0x028
> +#define RVTRACE_RAMSINK_RPHIGH_OFF		0x02c
> +
> +struct rvtrace_ramsink_priv {
> +	size_t size;
> +	void *va;
> +	dma_addr_t start;
> +	dma_addr_t end;
> +	/* WP from prev iteration */
> +	dma_addr_t prev_head;
> +};
> +
> +struct trace_buf {
> +	void *base;
> +	size_t size;
> +	long cur;
> +	size_t len;
> +};
> +
> +static int rvtrace_ramsink_stop(struct rvtrace_component *comp)
> +{
> +	return rvtrace_comp_is_empty(comp);
> +}
> +

We should first set trRamEnable to 0, poll it, then poll trRamEmpty. It's
essentially the same as encoder, so perhaps move it to core.c. Here we're
just checking whether it's empty, which is wrong. We're also doing similar
things in encoder.c Should fix that as well.

> +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf *dst)
> +{
> +	int bytes_dst, bytes_src, bytes;
> +	void *dst_addr, *src_addr;
> +
> +	while (src->size) {
> +		src_addr = src->base + src->cur;
> +		dst_addr = dst->base + dst->cur;
> +
> +		if (dst->len - dst->cur < src->size)
> +			bytes_dst = dst->len - dst->cur;
> +		else
> +			bytes_dst = src->size;
> +		if (src->len - src->cur < src->size)
> +			bytes_src = src->len - src->cur;
> +		else
> +			bytes_src = src->size;
> +		bytes = bytes_dst < bytes_src ? bytes_dst : bytes_src;
> +		memcpy(dst_addr, src_addr, bytes);
> +		dst->cur = (dst->cur + bytes) % dst->len;
> +		src->cur = (src->cur + bytes) % src->len;
> +		src->size -= bytes;
> +	}
> +}
> +
> +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *comp,
> +					    struct rvtrace_perf_auxbuf *buf)
> +{
> +	struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
> +	struct trace_buf src, dst;
> +	u32 wp_low, wp_high;
> +	u64 buf_cur_head;
> +	size_t size;
> +
> +	wp_low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF);
> +	wp_high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OFF);
> +	buf_cur_head = (u64)(wp_high) << 32 | (wp_low & ~RVTRACE_RAMSINK_WPLOW_WRAP);
> +
> +	if (buf_cur_head == priv->prev_head)
> +		return 0;

cur_head == prev_head could mean that we've wrapped around and stopped at
the exact position. Thus, we need to check for the wrapped around bit. If
set, then this case can be merged into buf_cur_head <= priv->prev_head
below.

For cur_head > prev_head case, we also need to check for wrap-around. If
wrapped-around, we actually filled the entire buffer, not just cur - prev
We also should consider the possibility that the buffer has been wrapped
around multiple times. In all cases, maintaining a prev_head seems to
complicate things, so why don't we just reset the WP to priv->start each
time we start the ramsink component and get rid of prev_head? This way,
we'll always have cur >= start, and depending on wrapped bit, we either
get the whole buffer, or cur - start.

> +
> +	dst.base = buf->base;
> +	dst.len = buf->length;
> +	dst.cur = buf->pos;
> +
> +	src.base = priv->va;
> +	src.len = priv->end - priv->start;
> +	if (buf_cur_head > priv->prev_head) {
> +		src.size = buf_cur_head - priv->prev_head;
> +	} else {
> +		src.size = priv->end - priv->prev_head;
> +		src.size += buf_cur_head - priv->start;
> +	}
> +
> +	src.cur = buf_cur_head - priv->start;
> +	size = src.size;
> +	tbuf_to_pbuf_copy(&src, &dst);
> +	buf->pos = dst.cur;
> +	priv->prev_head = buf_cur_head;
> +
> +	return size;
> +}
> +
> +static int rvtrace_ramsink_setup_buf(struct rvtrace_component *comp)
> +{
> +	struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
> +	u64 start_min, limit_max, end;
> +	u32 low, high;
> +
> +	/* Probe min and max values for start and limit registers */
> +	rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTLOW_OFF);
> +	rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTHIGH_OFF);
> +	low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTLOW_OFF);
> +	high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTHIGH_OFF);
> +	start_min = (u64)(high) << 32 | low;
> +
> +	rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITLOW_OFF);
> +	rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> +	low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
> +	high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> +	limit_max = (u64)(high) << 32 | low;
> +
> +	if (priv->end < start_min) {

Where was priv->end initialized before this check?

> +		dev_err(&comp->dev, "DMA memory not addressable by device\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Setup ram sink start addresses */
> +	if (priv->start < start_min) {

No checks for start_min >= priv->end?

> +		dev_warn(&comp->dev, "Ramsink start address updated from %llx to %llx\n",
> +			 priv->start, start_min);
> +		priv->va += start_min - priv->start;
> +		priv->start = start_min;
> +	}
> +
> +	priv->prev_head = priv->start;
> +	priv->end = priv->start + priv->size;
> +	rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_STARTLOW_OFF);
> +	rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_STARTHIGH_OFF);
> +	rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_WPLOW_OFF);
> +	rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_WPHIGH_OFF);
> +	/* Setup ram sink limit addresses */
> +	if (priv->end > limit_max) {
> +		dev_warn(&comp->dev, "Ramsink limit address updated from %llx to %llx\n", priv->end,
> +			 limit_max);
> +		priv->end = limit_max;
> +		priv->size = priv->end - priv->start;
> +	}
> +
> +	/* Limit address needs to be set to end - 4 to avoid overflow */
> +	end = priv->end - 4;

Should not hard-code 4, instead, do write32(0xfffffff, RamLimit), then
ffs(RamLimit) to probe for the the write width, aka, "A" value in Table
47. Typical Trace RAM Sink Configuration in the Spec.

> +	rvtrace_write32(comp->pdata, lower_32_bits(end), RVTRACE_RAMSINK_LIMITLOW_OFF);
> +	rvtrace_write32(comp->pdata, upper_32_bits(end), RVTRACE_RAMSINK_LIMITHIGH_OFF);
> +	low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
> +	high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> +	end = (u64)(high) << 32 | low;
> +	if (end != (priv->end - 4)) {
> +		dev_warn(&comp->dev, "Ramsink limit address updated from %llx to %llx\n", priv->end,
> +			 end);
> +		priv->end = end;
> +		priv->size = priv->end - priv->start;

Actually the RamLimit read is not the real limit. It's Limit - "A" (the
write width).

> +	}
> +
> +	return 0;
> +}

I think overall we should simplify this setup_buf function. For RamStart
alone, there're alignment + min_addr requirement, which is very unlikely
that the lowest valid address happens to be within the range that dma-
allocated in the caller (when you need to adjust priv->start). Thus, to
do it properly, we first need to detect the min_addr + alignment *before*
dma-alloc, and pass such requirements into dma-alloc, then depending on
what dma-alloc returns, detect the "M" value by interrogating RamLimit.
I'm not sure if dma-alloc can be passed a hint address that whatever
returned must be higher, and whether it can enforce random alignment, so
may be we can just program RamStart/Limit based on what dma-alloc gives
and error out if value is not retained. We do however need to probe for
write width ("A" value). It's usually 4 or 8, but it does vary per-impl,
and remember, the total buffer size is still 1MB, not 1MB - 4 or -8.

> +
> +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> +{
> +	struct device *pdev = comp->pdata->dev;
> +	struct rvtrace_ramsink_priv *priv;
> +
> +	priv = devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	dev_set_drvdata(&comp->dev, priv);
> +
> +	/* Derive RAM sink memory size based on component implementation ID */
> +	switch (comp->pdata->impid) {
> +	default:
> +		priv->size = SZ_1M;
> +		break;
> +	}
> +
> +	priv->va = dma_alloc_coherent(pdev, priv->size, &priv->start, GFP_KERNEL);
> +	if (!priv->va)
> +		return -ENOMEM;
> +
> +	return rvtrace_ramsink_setup_buf(comp);
> +}
> +
> +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
> +{
> +	struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
> +
> +	dma_free_coherent(&comp->dev, priv->size, priv->va, priv->start);
> +}
> +
> +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
> +{
> +	int ret;
> +
> +	ret = rvtrace_ramsink_setup(comp);
> +	if (ret)
> +		return dev_err_probe(&comp->dev, ret, "failed to setup ramsink.\n");
> +
> +	ret = rvtrace_enable_component(comp);
> +	if (ret)
> +		return dev_err_probe(&comp->dev, ret, "failed to enable ramsink.\n");
> +
> +	return ret;
> +}

In probe, we should detect and set it to SMEM mode. The default is SRAM
mode.

> +
> +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
> +{
> +	int ret;
> +
> +	ret = rvtrace_disable_component(comp);
> +	if (ret)
> +		dev_err(&comp->dev, "failed to disable ramsink.\n");
> +
> +	rvtrace_ramsink_cleanup(comp);
> +}
> +
> +static struct rvtrace_component_id rvtrace_ramsink_ids[] = {
> +	{ .type = RVTRACE_COMPONENT_TYPE_RAMSINK,
> +	  .version = rvtrace_component_mkversion(1, 0), },
> +	{},
> +};
> +
> +static struct rvtrace_driver rvtrace_ramsink_driver = {
> +	.id_table = rvtrace_ramsink_ids,
> +	.copyto_auxbuf = rvtrace_ramsink_copyto_auxbuf,

Should have a .start function like the encoder (setting trRamEnable),
and reset the WP to priv->start, as suggested above.

> +	.stop = rvtrace_ramsink_stop,
> +	.probe = rvtrace_ramsink_probe,
> +	.remove = rvtrace_ramsink_remove,
> +	.driver = {
> +		.name = "rvtrace-ramsink",
> +	},
> +};
> +
> +static int __init rvtrace_ramsink_init(void)
> +{
> +	return rvtrace_register_driver(&rvtrace_ramsink_driver);
> +}
> +
> +static void __exit rvtrace_ramsink_exit(void)
> +{
> +	rvtrace_unregister_driver(&rvtrace_ramsink_driver);
> +}
> +
> +module_init(rvtrace_ramsink_init);
> +module_exit(rvtrace_ramsink_exit);
> +
> +/* Module information */
> +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
> +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
> +MODULE_LICENSE("GPL");

Bo


