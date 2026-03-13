Return-Path: <devicetree+bounces-275067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGNKLkjWs2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:18:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D642280562
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77D2B31A58D0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C3D38C2AD;
	Fri, 13 Mar 2026 09:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="geN7ZrYW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891ED38C2AE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392991; cv=pass; b=dJaMTAkbfPhPEtpEfNAN8sqktYLsGeX4fo6JUEIWC7V148bM9irGUXI1hz339u3NrZ+qr/MgDUlA1D+kN4gcsTEEHTzeMP+8/JfVVXjC40zccOKPFAI7H8tYzZ2fh7uLR9Nd7rvotaaK9i0RL3snKcIcJr/0KQAM8zoQPpwtkUo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392991; c=relaxed/simple;
	bh=A86AK3hMoHmfP2RQlcgHaOOiYceIspwmribQCL3G23w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=piDJwhylPqST9pt0sUdi1yKm1JZWV9wWSTX1JOey0aJaxk9yjDNDZvn9W1itT0Xi5nbEhyI15fTmGEeUWDj873c7I0h9wbStv5QrzJFq7SJZI/TERyxCTT0PQJ6BQ/pf9k8NX0YdMbdfhTf8Ny0VUoI0nBU32anFfSl+rREpF7s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=geN7ZrYW; arc=pass smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7d74c1157a4so2027606a34.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773392988; cv=none;
        d=google.com; s=arc-20240605;
        b=BmARaoE1fCadE1PcqLt2mtRMexPs0BOFDuJe95cxFLniZK8BHtKtuwZvsv3Gh/tt1h
         rqwUzXCdn8lKfDwgcCZhI6eOiOtdd8hLcE4L9i8vweh7d3B3ZIv1G9j6GKBcQM9grco2
         5TuyFMKpMRzXqFP94TkU2HPI00Abmu2Q28t/NMqjvnx7IXL/nmplME7eZxaSXTxdY+Hh
         CrzE7t+dcOg14eIDkIkr0M5QGlxXIsEnqu10YZ/qhdWLlwwAs695L09noxyLXI1AJsh7
         7MtAm/67NgIqPgS2ZzvI+u6K/ZXF0vK25nys1L9zvkjRVDAI+/33e3uVIGSDzmidDj+2
         N1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jD3yFgzucS1yBN+JcINxzltwlVIBO2L/z6C3mDwI3lU=;
        fh=TM7YWm/nlliTS9anyUQ3UQBcyDC+ApUPQuC9Wv67qzs=;
        b=PAR0HS1edcVTKPPRmNEWBR3AEwmhPXm0K97KlcmAmBhrVd4mfaYE3Qw4zFOWgNXh5y
         a9G2VlLRR28060r/FlVm4PBE0neJmjJDZ871FWzNddKcNwmNzD1pWKVtyB7DNoX/vNXO
         YyE6Awuzd7JMYKl+G80GQDZKbVOv5iOSgdHpzfERhUMrRRgBqcvQfghjD90uWqZqLPX5
         BslVekBqsdNhYcmxX2bjMUR9BXJ3FpmxAqkIXo1J+yAOJPaXU6+OJzRcfJ0uMFwubq2Z
         qz+x8Hf9cja+DhOOgMsbvm5oCyLm1tQJSjmE0bmVTTRRbrGiQEN6g1ZPULx5Z1Nk8LRL
         1/mA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1773392988; x=1773997788; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jD3yFgzucS1yBN+JcINxzltwlVIBO2L/z6C3mDwI3lU=;
        b=geN7ZrYWrCH7TdYIYh3wjuNcXqOwIkidLFThc25RpV/eOeKIaW+m1Di000SKUztOoh
         Vh4Uq0onYF6UuxzEfbd07idmc/TlHqrC0MnazUSxyY1m0RYkB92AQPtm+i0uYev2sev1
         Zr4R2asZLF4rG8AHidq9ve8CohYPRETrttftxhrR4pP0AG54IvkF1j+w1r5vW7DhcG+O
         ahoRvWZoCLHPUjvlRTOH0s1ZNO3Ux/fLwFfyrqZQD9NxyroMz2LG9R8SLGh5oidxoqvg
         fHAGw9+jTKVNuSGdX6kHAUAGXKX/UtXH6Enl1wN3YE0T60WXy5qUYTJXaHhAhax6l6iw
         kuTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392988; x=1773997788;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jD3yFgzucS1yBN+JcINxzltwlVIBO2L/z6C3mDwI3lU=;
        b=keOBnoywLUoDuUpAQUaZM8DY78I1xpUrXLla9JRGkovmLxcUaV4ohbI8UZI98cowrq
         4xkg4OVN1z/QoGxGgMbery+DFNcKtY2wPi1wBar8b4pOxGJGp+0YBUNxeU7VffikxLx1
         X5DYKCkjyQtjYXaadd/7ZtEgvZEOGut60C7tcrkXebqam8nZEFDi6F54hc38KTUO1Wdy
         5hcY+ig4JPArmGFmDTZ0e6CSmKnoT+ij2/PDkTIvjmqmQGxtHyEHyFZ88p3CSIBxu5K+
         r5b1iCs5epJupwoMd+cT3bOt7Er3N6ZEjM+kw8QoSnYtlOknahJZ7rZkbcvluY6W4XPZ
         4fRQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9AKZHs6VIscjGS0hjK4+H3MOAeWsT0GZ+vnWawhWIP/cHMJALoSfpa6nhyxhu3cxwTaqlahQmwpJY@vger.kernel.org
X-Gm-Message-State: AOJu0YzwWhZIfTUnCGuwLqlPgjz7K6yj3e1QLsi01pRhQ31eqvKmWigC
	jX7YWZyDqbF+RPPC96D7hJOHu/Nwjp1TTNRT2Re25bvaGBHujePlSeEMwnr3ZWACQI5EtxJApdF
	1av1gQJrkWyWxOhk2FaCKcuPQCac2K5xT3aEvGHtL6A==
X-Gm-Gg: ATEYQzxpWg9LDAjxa1Jy6CuF4HhwYqozX42yCegAtmTm76nJ4/UX1zioOR/h1u2boW9
	GaXaia4lveAqJnTFFL4LZDGg+L/K9FnEi+CQWxKuEmpTFQCO0XUCU/1szUruZfFznrvkRd83Cni
	Cp+6pQ8GeHbcmK9htzgS7jU4WsWPH4ID9vgELiBIAAr0fi14B/F3VV0IhCh3JT0xalImR9cBaWy
	eDPBiUYEhDBzPYfwUG7dc3ubHPoBkdAY6geChILou0V7DXZLd8ATca4jKGme/KcIz9s6vwvQFVg
	o714iMvbYxXWrmHDlBCC
X-Received: by 2002:a05:6820:4b18:b0:67b:aac1:5054 with SMTP id
 006d021491bc7-67bda9bde9cmr1411972eaf.27.1773392988346; Fri, 13 Mar 2026
 02:09:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CABvJ_xhtx1Ym8qyr6HsLWnkV6_c=V7TpKOYY3L-gKnVDr87rcA@mail.gmail.com>
In-Reply-To: <CABvJ_xhtx1Ym8qyr6HsLWnkV6_c=V7TpKOYY3L-gKnVDr87rcA@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 13 Mar 2026 17:09:36 +0800
X-Gm-Features: AaiRm53Rf3qyp9z5prSBdOPVYkZF3JrpTmA7b0Mkkg8QqNyn4AH2_emy-F9ES1w
Message-ID: <CABvJ_xj+FtKgLN1Ur36ks7OLNWCy9-AotbfhsF6m1H4ycUSznA@mail.gmail.com>
Subject: Re: [PATCH v3 07/12] rvtrace: Add trace ramsink driver
To: Anup Patel <anup.patel@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ian Rogers <irogers@google.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jiri Olsa <jolsa@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Liang Kan <kan.liang@linux.intel.com>, 
	Mayuresh Chitale <mchitale@gmail.com>, Anup Patel <anup@brainfault.org>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <andrew.jones@oss.qualcomm.com>, 
	Sunil V L <sunilvl@oss.qualcomm.com>, linux-riscv <linux-riscv@lists.infradead.org>, 
	devicetree@vger.kernel.org, 
	"linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>, 
	Mayuresh Chitale <mayuresh.chitale@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275067-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,ghiti.fr,infradead.org,redhat.com,arm.com,intel.com,gmail.com,brainfault.org,linux.dev,oss.qualcomm.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.chen@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dst.base:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sifive.com:dkim,qualcomm.com:email,src.base:url]
X-Rspamd-Queue-Id: 1D642280562
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>
> Add initial implementation of RISC-V trace ramsink driver. The ramsink
> is defined in the RISC-V Trace Control Interface specification.
>
> Co-developed-by: Anup Patel <anup.patel@oss.qualcomm.com>
> Signed-off-by: Anup Patel <anup.patel@oss.qualcomm.com>
> Signed-off-by: Mayuresh Chitale <mayuresh.chitale@oss.qualcomm.com>
> ---
>  drivers/hwtracing/rvtrace/Kconfig           |   9 +
>  drivers/hwtracing/rvtrace/Makefile          |   1 +
>  drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 322 ++++++++++++++++++++
>  3 files changed, 332 insertions(+)
>  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
>
> diff --git a/drivers/hwtracing/rvtrace/Kconfig
> b/drivers/hwtracing/rvtrace/Kconfig
> index ba35c05f3f54..0577f9acb858 100644
> --- a/drivers/hwtracing/rvtrace/Kconfig
> +++ b/drivers/hwtracing/rvtrace/Kconfig
> @@ -21,3 +21,12 @@ config RVTRACE_ENCODER
>   default y
>   help
>    This driver provides support for RISC-V Trace Encoder component.
> +
> +config RVTRACE_RAMSINK
> + tristate "RISC-V Trace Ramsink driver"
> + depends on RVTRACE
> + select DMA_SHARED_BUFFER
> + default y
> + help
> +  This driver provides support for Risc-V E-Trace Ramsink
> +  component.
> diff --git a/drivers/hwtracing/rvtrace/Makefile
> b/drivers/hwtracing/rvtrace/Makefile
> index f320693a1fc5..122e575da9fb 100644
> --- a/drivers/hwtracing/rvtrace/Makefile
> +++ b/drivers/hwtracing/rvtrace/Makefile
> @@ -3,3 +3,4 @@
>  obj-$(CONFIG_RVTRACE) += rvtrace.o
>  rvtrace-y := rvtrace-core.o rvtrace-platform.o
>  obj-$(CONFIG_RVTRACE_ENCODER) += rvtrace-encoder.o
> +obj-$(CONFIG_RVTRACE_RAMSINK) += rvtrace-ramsink.o
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> new file mode 100644
> index 000000000000..5393423c8f28
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> @@ -0,0 +1,322 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2026 Qualcomm Technologies, Inc.
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
> +#define RVTRACE_RAMSINK_STARTLOW_OFF 0x010
> +#define RVTRACE_RAMSINK_STARTHIGH_OFF 0x014
> +#define RVTRACE_RAMSINK_LIMITLOW_OFF 0x018
> +#define RVTRACE_RAMSINK_LIMITHIGH_OFF 0x01c
> +#define RVTRACE_RAMSINK_WPLOW_OFF 0x020
> +#define RVTRACE_RAMSINK_WPHIGH_OFF 0x024
> +#define RVTRACE_RAMSINK_WPLOW_WRAP 0x1
> +#define RVTRACE_RAMSINK_CTRL_MODE_SHIFT 0x4
> +#define RVTRACE_RAMSINK_CTRL_STP_WRAP_SHIFT 0x8
> +
> +enum rvtrace_ramsink_mode {
> + MODE_SRAM,
> + MODE_SMEM
> +};
> +
> +struct rvtrace_ramsink_priv {
> + size_t size;
> + void *va;
> + dma_addr_t start;
> + dma_addr_t end;
> + enum rvtrace_ramsink_mode mode;
> + bool stop_on_wrap;
> + int mem_acc_width;
> +};
> +
> +struct trace_buf {
> + void *base;
> + long cur;
> + size_t len;
> +};
> +
> +static int rvtrace_ramsink_start(struct rvtrace_component *comp)
> +{
> + int ret;
> + u32 val;
> +
> + val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> + val |= BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> + rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
> + ret = rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> +       RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 1,
> +       comp->pdata->control_poll_timeout_usecs);
> + if (ret)
> + dev_err(&comp->dev, "failed to start ramsink.\n");
> +
> + return ret;
> +}
> +
> +static int rvtrace_ramsink_stop(struct rvtrace_component *comp)
> +{
> + int ret;
> + u32 val;
> +
> + val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> + val &= ~BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> + rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
> + ret = rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> +       RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 0,
> +       comp->pdata->control_poll_timeout_usecs);
> + if (ret) {
> + dev_err(&comp->dev, "failed to stop ramsink.\n");
> + return ret;
> + }
> +
> + return rvtrace_comp_poll_empty(comp);
> +}
> +
> +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf
> *dst, size_t size)
> +{
> + int bytes_dst, bytes_src, bytes;
> + void *dst_addr, *src_addr;
> +
> + while (size) {
> + src_addr = src->base + src->cur;
> + dst_addr = dst->base + dst->cur;
> +
> + /* Ensure that there are no OOB memory accesses */
> + if (dst->len - dst->cur < size)
> + bytes_dst = dst->len - dst->cur;
> + else
> + bytes_dst = size;
> +
> + if (src->len - src->cur < size)
> + bytes_src = src->len - src->cur;
> + else
> + bytes_src = size;
> + bytes = bytes_dst < bytes_src ? bytes_dst : bytes_src;
> + memcpy(dst_addr, src_addr, bytes);
> + dst->cur = (dst->cur + bytes) % dst->len;
> + src->cur = (src->cur + bytes) % src->len;
> + size -= bytes;
> + }
> +}
> +
> +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *comp,
> +    struct rvtrace_perf_auxbuf *buf)
> +{
> + struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
> + size_t size_wp_end = 0, size_start_wp = 0;
> + struct trace_buf src, dst;
> + u32 wp_low, wp_high, trram_ctrl;
> + u64 buf_cur_head;
> +
> + dst.base = buf->base;
> + dst.len = buf->length;
> + dst.cur = buf->pos;
> + src.base = priv->va;
> + src.len = priv->size;
> + wp_low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF);
> + wp_high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OFF);
> + buf_cur_head = (u64)(wp_high) << 32 | wp_low;
> + trram_ctrl = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> + if (buf_cur_head & 0x1) {
> + buf_cur_head &= ~RVTRACE_RAMSINK_WPLOW_WRAP;
> + rvtrace_write32(comp->pdata, lower_32_bits(priv->start),
> + RVTRACE_RAMSINK_WPLOW_OFF);
> + rvtrace_write32(comp->pdata, upper_32_bits(priv->start),
> + RVTRACE_RAMSINK_WPHIGH_OFF);
> + src.cur = buf_cur_head - priv->start;
> + size_wp_end = priv->end - buf_cur_head;
> + tbuf_to_pbuf_copy(&src, &dst, size_wp_end);
> + }

Hi Anup,
I have two questions about the handling of the wrap case.
1. If I understand correctly, the perf_aux_event has a flag,
PERF_AUX_FLAG_TRUNCATED, which is used to indicate whether data loss
has occurred within a record slice. Users can use perf commands such
as perf report --stats to determine if the trace log contains the
complete history. I notice that this driver currently sets
stop_on_wrap=false unconditionally, which means the hardware will wrap
around and overwrite old data when the buffer is full. However, I
don't see PERF_AUX_FLAG_TRUNCATED being set when wrap occurs.
According to other drivers (e.g., ARM CoreSight ETR)
ERF_AUX_FLAG_TRUNCATED should NOT be set in snapshot mode because:
a) Data overwrite is expected behavior in snapshot mode,
b) Setting TRUNCATED prevents the perf core from re-enabling the event
Is the current implementation assuming that this driver only supports snapshot?

2. Currently, perf tool snapshot mode requires users to explicitly add
the "-S" option to perf record. If this driver only supports snapshot
mode, do we consider either:
a) Reject non-snapshot mode in rvtrace_setup_aux() with an error
message like: "RISC-V TCI requires snapshot mode. Please use: perf
record -S ..."
or
b) Emit a warning when snapshot=false is detected: "RISC-V TCI:
non-snapshot mode not supported, forcing snapshot mode"
This would prevent users from unknowingly losing data when the buffer
wraps around in non-snapshot mode.
What do you think?

Thanks,
Vincent Chen
> +
> + src.cur = 0;
> + size_start_wp = buf_cur_head - priv->start;
> + tbuf_to_pbuf_copy(&src, &dst, size_start_wp);
> + dev_dbg(&comp->dev, "Copied %zu bytes\n", size_wp_end + size_start_wp);
> + return (size_wp_end + size_start_wp);
> +}
> +
> +static int rvtrace_ramsink_setup_buf(struct rvtrace_component *comp,
> +     struct rvtrace_ramsink_priv *priv)
> +{
> + struct device *pdev = comp->pdata->dev;
> + u64 start_min, limit_max, end;
> + u32 low, high;
> + int ret;
> +
> + /* Probe min and max values for start and limit registers */
> + rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTLOW_OFF);
> + rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTHIGH_OFF);
> + low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTLOW_OFF);
> + high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTHIGH_OFF);
> + start_min = (u64)(high) << 32 | low;
> +
> + rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITLOW_OFF);
> + rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> + low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
> + high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> + limit_max = (u64)(high) << 32 | low;
> +
> + /* Set DMA mask based on the maximum allowed limit address */
> + ret = dma_set_mask_and_coherent(pdev, DMA_BIT_MASK(fls64(limit_max)));
> + if (ret)
> + return ret;
> +
> + priv->va = dma_alloc_coherent(pdev, priv->size, &priv->start, GFP_KERNEL);
> + if (!priv->va)
> + return -ENOMEM;
> +
> + priv->end = priv->start + priv->size;
> + if (priv->end <= start_min || priv->start >= limit_max) {
> + dma_free_coherent(pdev, priv->size, priv->va, priv->start);
> + dev_err(&comp->dev, "DMA memory not addressable by device\n");
> + return -EINVAL;
> + }
> +
> + /* Setup ram sink start addresses */
> + if (priv->start < start_min) {
> + dev_warn(&comp->dev, "Ramsink start address updated from %pad to %pad\n",
> + &priv->start, &start_min);
> + priv->va += start_min - priv->start;
> + priv->start = start_min;
> + }
> +
> + rvtrace_write32(comp->pdata, lower_32_bits(priv->start),
> RVTRACE_RAMSINK_STARTLOW_OFF);
> + rvtrace_write32(comp->pdata, upper_32_bits(priv->start),
> RVTRACE_RAMSINK_STARTHIGH_OFF);
> + rvtrace_write32(comp->pdata, lower_32_bits(priv->start),
> RVTRACE_RAMSINK_WPLOW_OFF);
> + rvtrace_write32(comp->pdata, upper_32_bits(priv->start),
> RVTRACE_RAMSINK_WPHIGH_OFF);
> + /* Setup ram sink limit addresses */
> + if (priv->end > limit_max) {
> + dev_warn(&comp->dev, "Ramsink limit address updated from %pad to %pad\n",
> + &priv->end, &limit_max);
> + priv->end = limit_max;
> + priv->size = priv->end - priv->start;
> + }
> +
> + /* Limit address needs to be set to end - mem_access_width to avoid
> overflow */
> + end = priv->end - priv->mem_acc_width;
> + rvtrace_write32(comp->pdata, lower_32_bits(end),
> RVTRACE_RAMSINK_LIMITLOW_OFF);
> + rvtrace_write32(comp->pdata, upper_32_bits(end),
> RVTRACE_RAMSINK_LIMITHIGH_OFF);
> + low = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
> + high = rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> + end = (u64)(high) << 32 | low;
> + if (end != (priv->end - 4)) {
> + dev_warn(&comp->dev, "Ramsink limit address updated from %pad to %pad\n",
> + &priv->end, &end);
> + priv->end = end;
> + priv->size = priv->end - priv->start;
> + }
> +
> + return 0;
> +}
> +
> +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> +{
> + struct rvtrace_ramsink_priv *priv;
> + u32 trram_ctrl;
> + int ret;
> +
> + priv = devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
> + if (!priv)
> + return -ENOMEM;
> +
> + /* Derive RAM sink memory size based on component implementation ID */
> + switch (comp->pdata->impid) {
> + default:
> + priv->size = SZ_1M;
> + priv->mode = MODE_SMEM;
> + priv->stop_on_wrap = false;
> + priv->mem_acc_width = 4;
> + break;
> + }
> +
> + trram_ctrl = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> + trram_ctrl |= priv->mode << RVTRACE_RAMSINK_CTRL_MODE_SHIFT;
> + rvtrace_write32(comp->pdata, trram_ctrl, RVTRACE_COMPONENT_CTRL_OFFSET);
> + trram_ctrl = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> + dev_dbg(&comp->dev, "mode: %s\n", (trram_ctrl >>
> RVTRACE_RAMSINK_CTRL_MODE_SHIFT) & 0x1 ?
> + "SMEM" : "SRAM");
> +
> + trram_ctrl |= priv->stop_on_wrap << RVTRACE_RAMSINK_CTRL_STP_WRAP_SHIFT;
> + rvtrace_write32(comp->pdata, trram_ctrl, RVTRACE_COMPONENT_CTRL_OFFSET);
> +
> + ret = rvtrace_ramsink_setup_buf(comp, priv);
> + if (!ret)
> + dev_set_drvdata(&comp->dev, priv);
> +
> + return ret;
> +}
> +
> +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
> +{
> + struct rvtrace_ramsink_priv *priv = dev_get_drvdata(&comp->dev);
> +
> + dma_free_coherent(comp->pdata->dev, priv->size, priv->va, priv->start);
> +}
> +
> +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
> +{
> + int ret;
> +
> + ret = rvtrace_ramsink_setup(comp);
> + if (ret)
> + return dev_err_probe(&comp->dev, ret, "failed to setup ramsink.\n");
> +
> + ret = rvtrace_enable_component(comp->pdata);
> + if (ret)
> + return dev_err_probe(&comp->dev, ret, "failed to enable ramsink.\n");
> +
> + return ret;
> +}
> +
> +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
> +{
> + int ret;
> +
> + ret = rvtrace_disable_component(comp->pdata);
> + if (ret)
> + dev_err(&comp->dev, "failed to disable ramsink.\n");
> +
> + rvtrace_ramsink_cleanup(comp);
> +}
> +
> +static struct rvtrace_component_id rvtrace_ramsink_ids[] = {
> + { .type = RVTRACE_COMPONENT_TYPE_RAMSINK,
> +  .version = rvtrace_component_mkversion(1, 0), },
> + {},
> +};
> +
> +static struct rvtrace_driver rvtrace_ramsink_driver = {
> + .id_table = rvtrace_ramsink_ids,
> + .copyto_auxbuf = rvtrace_ramsink_copyto_auxbuf,
> + .stop = rvtrace_ramsink_stop,
> + .start = rvtrace_ramsink_start,
> + .probe = rvtrace_ramsink_probe,
> + .remove = rvtrace_ramsink_remove,
> + .driver = {
> + .name = "rvtrace-ramsink",
> + },
> +};
> +
> +static int __init rvtrace_ramsink_init(void)
> +{
> + return rvtrace_register_driver(&rvtrace_ramsink_driver);
> +}
> +
> +static void __exit rvtrace_ramsink_exit(void)
> +{
> + rvtrace_unregister_driver(&rvtrace_ramsink_driver);
> +}
> +
> +module_init(rvtrace_ramsink_init);
> +module_exit(rvtrace_ramsink_exit);
> +
> +/* Module information */
> +MODULE_AUTHOR("Mayuresh Chitale");
> +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
> +MODULE_LICENSE("GPL");

