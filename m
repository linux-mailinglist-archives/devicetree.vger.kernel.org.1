Return-Path: <devicetree+bounces-224055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD646BC084E
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 09:51:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74D851881F17
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 07:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601FE24466B;
	Tue,  7 Oct 2025 07:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hFFMpyxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE7D3B7A8
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 07:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759823462; cv=none; b=uV4mqMFa0Mh9z/dSk/7Uuk2fHAsUcLMIFWoBTP9FjLX7dmFEIQmilEGHLNLbYly8fLXQiP+Ue6tZVT+ksQSLtaZZfjM8/bFBtQKrG4Z2gIrMDJbvgmrJZdQ2WsysEXirpQ7ieOrvaxm1RenDoCWY7E6ypBOvdguMhQ4vQUsCDio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759823462; c=relaxed/simple;
	bh=t9rTZeOl3b0hJSNTstwqkYNyfDQjcs77PoAC8U9PfCY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mlSURjSLifoo4X6Cmbz5tY3ufmUbJDS/FpgnchBV3np+tcCjD/42syOVCmR8/lWfAXOwq2bl7C7CNoH+ugdXd5OCcMc5SMhwQApH4npzJXqOi16oEAJ6sSNij+XXF54cbkiPGKlrj/r5rmH23uQWAVWrD3Z/DYjN/NEs3OGNik8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hFFMpyxN; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-33082aed31dso6741530a91.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 00:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759823460; x=1760428260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dhnA09TQ8hNY3ByOHoJEkbXhSQQgNq2Hl9f2lCZ+3kA=;
        b=hFFMpyxNJ+6lcOZRCHva+CyIExX+3cyfAtAXI9topEHDloH25wGq0GEu+vvB9MZ5BN
         AkRLvUaeIIi6+L5/jHSj0myFEkye8JUS8mRvroNikoJOZ6Jp4wTzCAdMsMW+OxN9PSmL
         KwfL+qhejl8YcSLColDx3SDrZ7UhNFUikAAePQUWjqyfM+qpNB2hfecMa0uNk/P0tGIG
         BmvWgv/Ru3OolF0yknEn6+8pgiOPu0QJ/hzD+d48RtCiuBlq+AnCS4VCKjW+SrHxFey3
         9PQZd5YWmgFXtCVLPED3mQJYoiWwMz0SCTfvCKct2EGvPW6C+q3B33NFZ+v8sFh3PO6O
         99zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759823460; x=1760428260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dhnA09TQ8hNY3ByOHoJEkbXhSQQgNq2Hl9f2lCZ+3kA=;
        b=q8cWbPPmCk9h6tiJG6l6KJxIvEEKfbpAXDsNaOZtvBilz1ti/II72RBg49bjA+DIf/
         hbSQowtD4oya5tXVXylU36i0vJyvjQCbfp/Hzpax4VqOEbqzdIehx91IjzT+f7uexIvn
         qAg9CM68uYWOe3lsU+h1w7ByFnNdVlSzWe0h6t4X6gBiJ/9+xc6QN8jue7gLD2zjqiq+
         C6InaOeHPT8pUvmEwEWhQ3Jx9P9Nu0F1jJVyWuyBV+fLU43Q8FTMKUAvI6Kp8Ysh4/Yt
         EK3O14qnQmxQfvIWSLQMLNz6exTEPu7/XOUKprGsEb6Izs6APh673I3xBA94PPL9wLbB
         I7Og==
X-Forwarded-Encrypted: i=1; AJvYcCUqZsifCUK7rHZYhC2yt4fnqbER1naa12uxLbddLo1boOEqB4m9JS0kZzHK1yWRTuU2o9laQdTS7FRl@vger.kernel.org
X-Gm-Message-State: AOJu0YxBLJhPr/lKRw/h4KuIUKWCVE0IIOVW0SxoUfVAnivSAPMjxNrk
	UMNfsZ3a1MfztFk/HMH4YOBGzpuI05sHjoZmtchVRJvGG+6k+LYytLlc
X-Gm-Gg: ASbGncuVuwzFRqrrOOh/WPaWVLvebjWswW4LQ17gehwms+er//sdOr4yWfeVfDV8jjI
	8tt7VYtsSwZfwhiS69F2InYyHkawFemi7KtPAdQBklhSRaK0F1livtSeoRJBXHWcy5lefW5Z2UE
	/68CzLlZx5iN0d0r6KNdEKQ2x4utSlVdH3EoPC7kXtu6FK8QlC+9IDSR1JxsUTVEEtch6vRawr1
	aaMc3uU+pKNw88l0s8II/Ockaaw/uKflcWnoCRLXCAVDdTMdeBWcPSC/e+xaxM3RAOub9rnppot
	mzv1hDiG3B9E/9Wl84+NJvC7JAZsRgApjNF3+dja69yqptT9CWT5Marqa+cyipBROjoxqvuUJba
	s+QGkXCBxMwlCfIq/LJz5x9q6qLUsHfBIiMdC8cjt7IUK34iU
X-Google-Smtp-Source: AGHT+IG905MGBQ32Ub4ShnX9AGf28crwYHhnuKiGoa/Yd7ia0xUTqXMWebVlHOFKhP/du1dc9C6gAw==
X-Received: by 2002:a17:90b:1f89:b0:32e:96b1:fb70 with SMTP id 98e67ed59e1d1-339c2720c9fmr21575430a91.12.1759823459801;
        Tue, 07 Oct 2025 00:50:59 -0700 (PDT)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339c4a68deasm13196357a91.25.2025.10.07.00.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 00:50:59 -0700 (PDT)
Message-ID: <9422ba89-a6ba-4168-98a1-6d4275698430@gmail.com>
Date: Tue, 7 Oct 2025 00:49:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] rvtrace: Add trace ramsink driver
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
 <20251002060732.100213-8-apatel@ventanamicro.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20251002060732.100213-8-apatel@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/1/25 23:07, Anup Patel wrote:
> From: Mayuresh Chitale <mchitale@ventanamicro.com>
> 
> Add initial implementation of RISC-V trace ramsink driver. The ramsink
> is defined in the RISC-V Trace Control Interface specification.
> 
> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> ---
>   drivers/hwtracing/rvtrace/Kconfig           |   8 +
>   drivers/hwtracing/rvtrace/Makefile          |   1 +
>   drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 198 ++++++++++++++++++++
>   3 files changed, 207 insertions(+)
>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> 
> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
> index ba35c05f3f54..aef7e9989165 100644
> --- a/drivers/hwtracing/rvtrace/Kconfig
> +++ b/drivers/hwtracing/rvtrace/Kconfig
> @@ -21,3 +21,11 @@ config RVTRACE_ENCODER
>   	default y
>   	help
>   	  This driver provides support for RISC-V Trace Encoder component.
> +
> +config RVTRACE_RAMSINK
> +	tristate "RISC-V Trace Ramsink driver"
> +	depends on RVTRACE
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
> index 000000000000..7bd0cf1e4dfd
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> @@ -0,0 +1,198 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/of.h>
> +#include <linux/of_graph.h>
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
> +	int cur, len;
> +};
> +
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
> +	buf_cur_head = (u64)(wp_high) << 32 | wp_low;
> +
> +	if (buf_cur_head == priv->prev_head)
> +		return 0;
> +
> +	dst.base = buf->base;
> +	dst.len = buf->length;
> +	dst.cur = buf->pos;
> +	dst.size = 0;
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
> +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> +{
> +	struct rvtrace_ramsink_priv *priv;
> +
> +	priv = devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +	dev_set_drvdata(&comp->dev, priv);
> +
> +	priv->size = SZ_4M;
Can we make this size dynamically determined? 4M seems inadequate. This is
exceedingly so if the RAM sink is linked to a funnel, where you can have
many harts dumping traces into this sink.

> +	priv->va = dma_alloc_coherent(&comp->dev, priv->size, &priv->start, GFP_KERNEL);
> +	if (!priv->va)
> +		return -ENOMEM;
> +	priv->end = priv->start + priv->size;
> +	priv->prev_head = priv->start;
> +
> +	/* Setup ram sink addresses */
> +	rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_STARTLOW_OFF);
> +	rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_STARTHIGH_OFF);
> +	rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_RAMSINK_WPLOW_OFF);
> +	rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_RAMSINK_WPHIGH_OFF);
> +	/* Limit address needs to be set to end - 4 so that HW doesn't cause an overflow. */> +	rvtrace_write32(comp->pdata, lower_32_bits(priv->end - 0x4), RVTRACE_RAMSINK_LIMITLOW_OFF);
Should not hardcode 4 as the trace write width. Control Interface Spec
chapter 7.1 has the proper instruction on how to probe for this width:

"Not every value may be settable in trRamStart/Limit registers. Value
  written may be trimmed (for example aligned on a particular 2^N boundary)
  and a trace tool should verify values being written"

> +	rvtrace_write32(comp->pdata, upper_32_bits(priv->end), RVTRACE_RAMSINK_LIMITHIGH_OFF);
> +
> +	return 0;
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

