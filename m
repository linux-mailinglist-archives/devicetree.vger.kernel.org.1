Return-Path: <devicetree+bounces-243699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AB0C9B5A1
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 12:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 041C9344F8A
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 11:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D133D28BAB1;
	Tue,  2 Dec 2025 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="nDOrzWc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83361CD2C
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 11:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764676088; cv=none; b=sW3Q4PB1qVuSFRGcWSXYe9lWxVBTz4V7Ce8wXUw2oI2sXOv8Xo3lzPEgful9h8UXp45VGEDNQPajeq1NOvSNFv/kNhqVPLYbA/uagAh2rRnjrnlIBROp2fqS9vQIeDePYNltZxZb3lnt4cg9dXAER7fxJNK7iLYGQ21eN5MJxV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764676088; c=relaxed/simple;
	bh=xgIcbUe7iRmyC9VWDRwDeMz1KPEGxNgJocdoJJtmQQA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VwRsM2XBJ65BG/K0RCSmFycWfWqa4LGJ3D3v1Irz/z8MS8I3OMWpEBMx56rA4pE4IRPNQt8ET22JieOeTmWcwD1UH/u7H/bUx9VFi2/9aZM6fbE6yMqZbkJgSrc93ZAJV9eWBbW+s10MdVn7YH7fDNVrC36oA4qcnGe6Y1ALNlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=nDOrzWc9; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b553412a19bso4603133a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 03:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1764676086; x=1765280886; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1nSvtdcW42kUTG/wzEhKzXOp4xqTaPJgXnRyGebc+k=;
        b=nDOrzWc9n+8SvjZHVMsZisCvTEdmX3j6ctCHd6YvMRuA4XapzR0ITMfwJUMWMQ3lIm
         zzaVsnoSFxgxVNoD//ErwruEbz9UD9WEM8AO9qHWc5OGj3+vHVB5OgIC6RVCUQJRTFbF
         TXZvXEq3FftYpcVCFFSZ5u+MjuPirxFyrPuavLY8yR7taZvPDmxD6u0HgSLeTIRuJ4sZ
         2uA0ucPpBwqDf7Nq0g4A4y20ykaXwztpngCBT3Ge8Z3Oj8AobQ6aM+wMwcYiMlLJnldp
         iogxSyn7U2TSJDSUV2w6tJ8ZsAHJtsLT9hJ5OEflySdn/tLvYZMD+3PXpshkZ6RdKqDe
         oo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764676086; x=1765280886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r1nSvtdcW42kUTG/wzEhKzXOp4xqTaPJgXnRyGebc+k=;
        b=XMUOR3dPJJOQkCsPWgPq7/4Ejd9HS5eDYu2+VFmBulBHO1GjQw2yqYy5C892nFZRGI
         BVY0JTyTHF8wq4wQetzY0au8f1afI6UXP95ifWURKi+HuD8v522GjNEizr2gHYIEpRS4
         RznMfJDP+FDbpEsqMF6iSDlxsldQlI9W4YCqsW5hiVg+r5wxvdMjgVeRlwrVQz9Oc4YQ
         Y/PmkTEIXD266hqyn0OIiQC/zKRFnXYB16pFN9xuCygY1RwwL8qHy2E2buXvU2xC1dRw
         hYPTCe+jO2LXYK24RV9edLNts256jT+Q/DiL0MVUaLVNChzHqV8/85jdc5p/rySL0g6r
         Oyig==
X-Forwarded-Encrypted: i=1; AJvYcCWahBdrH54psy8gB9BU7ltwW6H9bY7Mt0zyP0VszbheFuTGN/GYIWJG/THokn/fXQ1c4CqDnYJiJVcI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5E2yEozcHnKej6doXWltb1/tJCIGVeU+RYvUyK8pvO2vCdkac
	1aGquAUmeA+dSkm37qXNVB6GPw3IILWnP4fsXP9HdGtdTlLMP1agGz8/6ATp/q5Rco6RUVSourl
	UXDos824pJlSng7mlOBHEtbxQfU5pNvyFc3JUpAh9mg==
X-Gm-Gg: ASbGncuxfevdZRdolOe5yumLyx9jrrlj5vWSXxZzZm/4sd7vt+9m2kmMeCdzqQC8v1j
	ONwK1GIJZHSPkayDFUussE9TP2QWV4ZQp4UdaGuJk6Toc77xiK9Dw7dv2rFRQICNhfTlnhVnLaj
	kacDe0jQlU4B0zCRZW3cFK/s/AQ2rUh2kiRdqibXc2frZdUAMGkFhYxxdyDSIVdeCXq3EhuDBL0
	IMVkWdgg/bqIYWaZrxannZveO2a0OTzCzoZdvsPBnv/wF44+d16pPxmpeccqeXdI3F+/MnD
X-Google-Smtp-Source: AGHT+IFnVc1t1G14Kt7Zal75rURx0ORTxmHSm4bbbP2tF+nmp38zJ1I10rfoez6FbRsszNw1cFaEwx4d9IsqUXLU55A=
X-Received: by 2002:a05:7300:4793:b0:2a6:d0bd:4a07 with SMTP id
 5a478bee46e88-2a71929771cmr29880591eec.18.1764676085641; Tue, 02 Dec 2025
 03:48:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-8-apatel@ventanamicro.com> <26475221-f852-4d76-80dd-43f04f9e7ec4@gmail.com>
In-Reply-To: <26475221-f852-4d76-80dd-43f04f9e7ec4@gmail.com>
From: Mayuresh Chitale <mchitale@ventanamicro.com>
Date: Tue, 2 Dec 2025 17:17:29 +0530
X-Gm-Features: AWmQ_bmrz0puAsCfEKr58UFIOo7lGm68BJYozYF9PdsfaKrUsAeKySjyxFqbFes
Message-ID: <CAN37VV4BSsy5C6+PT0s+8KQgisF7M60=JPnM2oAdjYYYC-LNrA@mail.gmail.com>
Subject: Re: [PATCH v2 07/12] rvtrace: Add trace ramsink driver
To: Bo Gan <ganboing@gmail.com>, Anup Patel <apatel@ventanamicro.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ian Rogers <irogers@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, 
	Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atish.patra@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Anup Patel <anup@brainfault.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org, 
	Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>, 
	Mayuresh Chitale <mchitale@gmail.com>, Namhyung Kim <namhyung@kernel.org>, 
	linux-riscv@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>, 
	Liang Kan <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bo,

On Sun, Nov 30, 2025 at 1:17=E2=80=AFPM Bo Gan <ganboing@gmail.com> wrote:
>
> Hi Anup,
>
> My comments below:
>
> On 11/1/25 08:42, Anup Patel wrote:
> > From: Mayuresh Chitale <mchitale@ventanamicro.com>
> >
> > Add initial implementation of RISC-V trace ramsink driver. The ramsink
> > is defined in the RISC-V Trace Control Interface specification.
> >
> > Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > ---
> >   drivers/hwtracing/rvtrace/Kconfig           |   9 +
> >   drivers/hwtracing/rvtrace/Makefile          |   1 +
> >   drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 262 +++++++++++++++++++=
+
> >   3 files changed, 272 insertions(+)
> >   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> >
> > diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtr=
ace/Kconfig
> > index ba35c05f3f54..0577f9acb858 100644
> > --- a/drivers/hwtracing/rvtrace/Kconfig
> > +++ b/drivers/hwtracing/rvtrace/Kconfig
> > @@ -21,3 +21,12 @@ config RVTRACE_ENCODER
> >       default y
> >       help
> >         This driver provides support for RISC-V Trace Encoder component=
.
> > +
> > +config RVTRACE_RAMSINK
> > +     tristate "RISC-V Trace Ramsink driver"
> > +     depends on RVTRACE
> > +     select DMA_SHARED_BUFFER
> > +     default y
> > +     help
> > +       This driver provides support for Risc-V E-Trace Ramsink
> > +       component.
> > diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvt=
race/Makefile
> > index f320693a1fc5..122e575da9fb 100644
> > --- a/drivers/hwtracing/rvtrace/Makefile
> > +++ b/drivers/hwtracing/rvtrace/Makefile
> > @@ -3,3 +3,4 @@
> >   obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> >   rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> >   obj-$(CONFIG_RVTRACE_ENCODER) +=3D rvtrace-encoder.o
> > +obj-$(CONFIG_RVTRACE_RAMSINK) +=3D rvtrace-ramsink.o
> > diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers/hwtr=
acing/rvtrace/rvtrace-ramsink.c
> > new file mode 100644
> > index 000000000000..676344c9387c
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> > @@ -0,0 +1,262 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2025 Ventana Micro Systems Inc.
> > + */
> > +
> > +#include <linux/device.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/property.h>
> > +#include <linux/dma-mapping.h>
> > +#include <linux/rvtrace.h>
> > +#include <linux/types.h>
> > +#include <linux/sizes.h>
> > +
> > +#define RVTRACE_RAMSINK_STARTLOW_OFF         0x010
> > +#define RVTRACE_RAMSINK_STARTHIGH_OFF                0x014
> > +#define RVTRACE_RAMSINK_LIMITLOW_OFF         0x018
> > +#define RVTRACE_RAMSINK_LIMITHIGH_OFF                0x01c
> > +#define RVTRACE_RAMSINK_WPLOW_OFF            0x020
> > +#define   RVTRACE_RAMSINK_WPLOW_WRAP         0x1
>
> nit: wrong spacing
>
> > +#define RVTRACE_RAMSINK_WPHIGH_OFF           0x024
> > +#define RVTRACE_RAMSINK_RPLOW_OFF            0x028
> > +#define RVTRACE_RAMSINK_RPHIGH_OFF           0x02c
> > +
> > +struct rvtrace_ramsink_priv {
> > +     size_t size;
> > +     void *va;
> > +     dma_addr_t start;
> > +     dma_addr_t end;
> > +     /* WP from prev iteration */
> > +     dma_addr_t prev_head;
> > +};
> > +
> > +struct trace_buf {
> > +     void *base;
> > +     size_t size;
> > +     long cur;
> > +     size_t len;
> > +};
> > +
> > +static int rvtrace_ramsink_stop(struct rvtrace_component *comp)
> > +{
> > +     return rvtrace_comp_is_empty(comp);
> > +}
> > +
>
> We should first set trRamEnable to 0, poll it, then poll trRamEmpty. It's
> essentially the same as encoder, so perhaps move it to core.c. Here we're
> just checking whether it's empty, which is wrong. We're also doing simila=
r
> things in encoder.c Should fix that as well.
This code is called to just stop all components in a path which means:
- for encoders the driver clears the trTeInstTracing bit and then
polls for empty bit to be cleared
- for ramsinks the driver just polls for the empty bit to be cleared
More on this below.
>
> > +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf =
*dst)
> > +{
> > +     int bytes_dst, bytes_src, bytes;
> > +     void *dst_addr, *src_addr;
> > +
> > +     while (src->size) {
> > +             src_addr =3D src->base + src->cur;
> > +             dst_addr =3D dst->base + dst->cur;
> > +
> > +             if (dst->len - dst->cur < src->size)
> > +                     bytes_dst =3D dst->len - dst->cur;
> > +             else
> > +                     bytes_dst =3D src->size;
> > +             if (src->len - src->cur < src->size)
> > +                     bytes_src =3D src->len - src->cur;
> > +             else
> > +                     bytes_src =3D src->size;
> > +             bytes =3D bytes_dst < bytes_src ? bytes_dst : bytes_src;
> > +             memcpy(dst_addr, src_addr, bytes);
> > +             dst->cur =3D (dst->cur + bytes) % dst->len;
> > +             src->cur =3D (src->cur + bytes) % src->len;
> > +             src->size -=3D bytes;
> > +     }
> > +}
> > +
> > +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *=
comp,
> > +                                         struct rvtrace_perf_auxbuf *b=
uf)
> > +{
> > +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->dev)=
;
> > +     struct trace_buf src, dst;
> > +     u32 wp_low, wp_high;
> > +     u64 buf_cur_head;
> > +     size_t size;
> > +
> > +     wp_low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF)=
;
> > +     wp_high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OF=
F);
> > +     buf_cur_head =3D (u64)(wp_high) << 32 | (wp_low & ~RVTRACE_RAMSIN=
K_WPLOW_WRAP);
> > +
> > +     if (buf_cur_head =3D=3D priv->prev_head)
> > +             return 0;
>
> cur_head =3D=3D prev_head could mean that we've wrapped around and stoppe=
d at
> the exact position. Thus, we need to check for the wrapped around bit. If
> set, then this case can be merged into buf_cur_head <=3D priv->prev_head
> below.
cur_head is the current value in the wp registers whereas prev_head is
the value in wp registers from the previous iteration which is saved
explicitly by software. So prev_head can't change dynamically.

>
> For cur_head > prev_head case, we also need to check for wrap-around. If
> wrapped-around, we actually filled the entire buffer, not just cur - prev
> We also should consider the possibility that the buffer has been wrapped
> around multiple times. In all cases, maintaining a prev_head seems to
> complicate things, so why don't we just reset the WP to priv->start each
> time we start the ramsink component and get rid of prev_head? This way,
> we'll always have cur >=3D start, and depending on wrapped bit, we either
> get the whole buffer, or cur - start.
Currently the software never clears trRamWrap bit because as per the spec:
- It is only set to 0 if trRamWPLow is written
- After trace is enabled and active , the trace tool should NOT write
any of trRamStart/Limit/WP?? registers.
Let me test this change to disable all the components (instead of just
stopping trace) every time we want to copy data to perf buffer. This
should let us use the trRamWrap bit as expected. Multiple wraparounds
can't be avoided unless StopOnWrap was set. I will update the ramsink
driver to set StopOnWrap based on the implementation id.
>

> > +
> > +     dst.base =3D buf->base;
> > +     dst.len =3D buf->length;
> > +     dst.cur =3D buf->pos;
> > +
> > +     src.base =3D priv->va;
> > +     src.len =3D priv->end - priv->start;
> > +     if (buf_cur_head > priv->prev_head) {
> > +             src.size =3D buf_cur_head - priv->prev_head;
> > +     } else {
> > +             src.size =3D priv->end - priv->prev_head;
> > +             src.size +=3D buf_cur_head - priv->start;
> > +     }
> > +
> > +     src.cur =3D buf_cur_head - priv->start;
> > +     size =3D src.size;
> > +     tbuf_to_pbuf_copy(&src, &dst);
> > +     buf->pos =3D dst.cur;
> > +     priv->prev_head =3D buf_cur_head;
> > +
> > +     return size;
> > +}
> > +
> > +static int rvtrace_ramsink_setup_buf(struct rvtrace_component *comp)
> > +{
> > +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->dev)=
;
> > +     u64 start_min, limit_max, end;
> > +     u32 low, high;
> > +
> > +     /* Probe min and max values for start and limit registers */
> > +     rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTLOW_OFF);
> > +     rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTHIGH_OFF);
> > +     low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTLOW_OFF)=
;
> > +     high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTHIGH_OF=
F);
> > +     start_min =3D (u64)(high) << 32 | low;
> > +
> > +     rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITLOW=
_OFF);
> > +     rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITHIG=
H_OFF);
> > +     low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF)=
;
> > +     high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OF=
F);
> > +     limit_max =3D (u64)(high) << 32 | low;
> > +
> > +     if (priv->end < start_min) {
>
> Where was priv->end initialized before this check?
I will move it before the check.
>
> > +             dev_err(&comp->dev, "DMA memory not addressable by device=
\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     /* Setup ram sink start addresses */
> > +     if (priv->start < start_min) {
>
> No checks for start_min >=3D priv->end?
>
> > +             dev_warn(&comp->dev, "Ramsink start address updated from =
%llx to %llx\n",
> > +                      priv->start, start_min);
> > +             priv->va +=3D start_min - priv->start;
> > +             priv->start =3D start_min;
> > +     }
> > +
> > +     priv->prev_head =3D priv->start;
> > +     priv->end =3D priv->start + priv->size;
> > +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_=
RAMSINK_STARTLOW_OFF);
> > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_=
RAMSINK_STARTHIGH_OFF);
> > +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRACE_=
RAMSINK_WPLOW_OFF);
> > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRACE_=
RAMSINK_WPHIGH_OFF);
> > +     /* Setup ram sink limit addresses */
> > +     if (priv->end > limit_max) {
> > +             dev_warn(&comp->dev, "Ramsink limit address updated from =
%llx to %llx\n", priv->end,
> > +                      limit_max);
> > +             priv->end =3D limit_max;
> > +             priv->size =3D priv->end - priv->start;
> > +     }
> > +
> > +     /* Limit address needs to be set to end - 4 to avoid overflow */
> > +     end =3D priv->end - 4;
>
> Should not hard-code 4, instead, do write32(0xfffffff, RamLimit), then
> ffs(RamLimit) to probe for the the write width, aka, "A" value in Table
> 47. Typical Trace RAM Sink Configuration in the Spec.
I dont think 'A' can be probed that way because as per section 7.1:
"Not every value may be settable in trRamStart/Limit registers. Value
written may be trimmed (for example aligned on a particular 2^N
boundary)". So writing 0xffffffff to limit register will reveal the
boundary alignment but not 'A'. I think 'A' needs to be specified by
an implementation with default as 4. I will change it accordingly.

>
> > +     rvtrace_write32(comp->pdata, lower_32_bits(end), RVTRACE_RAMSINK_=
LIMITLOW_OFF);
> > +     rvtrace_write32(comp->pdata, upper_32_bits(end), RVTRACE_RAMSINK_=
LIMITHIGH_OFF);
> > +     low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF)=
;
> > +     high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OF=
F);
> > +     end =3D (u64)(high) << 32 | low;
> > +     if (end !=3D (priv->end - 4)) {
> > +             dev_warn(&comp->dev, "Ramsink limit address updated from =
%llx to %llx\n", priv->end,
> > +                      end);
> > +             priv->end =3D end;
> > +             priv->size =3D priv->end - priv->start;
>
> Actually the RamLimit read is not the real limit. It's Limit - "A" (the
> write width).
>
> > +     }
> > +
> > +     return 0;
> > +}
>
> I think overall we should simplify this setup_buf function. For RamStart
> alone, there're alignment + min_addr requirement, which is very unlikely
> that the lowest valid address happens to be within the range that dma-
> allocated in the caller (when you need to adjust priv->start). Thus, to
> do it properly, we first need to detect the min_addr + alignment *before*
> dma-alloc, and pass such requirements into dma-alloc, then depending on
> what dma-alloc returns, detect the "M" value by interrogating RamLimit.
> I'm not sure if dma-alloc can be passed a hint address that whatever
> returned must be higher, and whether it can enforce random alignment, so
> may be we can just program RamStart/Limit based on what dma-alloc gives
> and error out if value is not retained. We do however need to probe for
> write width ("A" value). It's usually 4 or 8, but it does vary per-impl,
> and remember, the total buffer size is still 1MB, not 1MB - 4 or -8.

I think the issue is that the physical memory region returned by
dma_alloc* might not be addressable by the hw and so the start / end
addresses are already trimmed in the code accordingly but I agree this
can be handled differently. For e.g
- probe max RamLimit value .
- set the dma_mask to the probed value
- dma_alloc*
- further address checks

>
> > +
> > +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> > +{
> > +     struct device *pdev =3D comp->pdata->dev;
> > +     struct rvtrace_ramsink_priv *priv;
> > +
> > +     priv =3D devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
> > +     if (!priv)
> > +             return -ENOMEM;
> > +
> > +     dev_set_drvdata(&comp->dev, priv);
> > +
> > +     /* Derive RAM sink memory size based on component implementation =
ID */
> > +     switch (comp->pdata->impid) {
> > +     default:
> > +             priv->size =3D SZ_1M;
> > +             break;
> > +     }
> > +
> > +     priv->va =3D dma_alloc_coherent(pdev, priv->size, &priv->start, G=
FP_KERNEL);
> > +     if (!priv->va)
> > +             return -ENOMEM;
> > +
> > +     return rvtrace_ramsink_setup_buf(comp);
> > +}
> > +
> > +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
> > +{
> > +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->dev)=
;
> > +
> > +     dma_free_coherent(&comp->dev, priv->size, priv->va, priv->start);
> > +}
> > +
> > +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
> > +{
> > +     int ret;
> > +
> > +     ret =3D rvtrace_ramsink_setup(comp);
> > +     if (ret)
> > +             return dev_err_probe(&comp->dev, ret, "failed to setup ra=
msink.\n");
> > +
> > +     ret =3D rvtrace_enable_component(comp);
> > +     if (ret)
> > +             return dev_err_probe(&comp->dev, ret, "failed to enable r=
amsink.\n");
> > +
> > +     return ret;
> > +}
>
> In probe, we should detect and set it to SMEM mode. The default is SRAM
> mode.
Actually the default is not set but I agree this needs to be handled
differently. We can make this an implementation defined parameter and
then cross check with trRamImpl register during probe.
>
> > +
> > +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
> > +{
> > +     int ret;
> > +
> > +     ret =3D rvtrace_disable_component(comp);
> > +     if (ret)
> > +             dev_err(&comp->dev, "failed to disable ramsink.\n");
> > +
> > +     rvtrace_ramsink_cleanup(comp);
> > +}
> > +
> > +static struct rvtrace_component_id rvtrace_ramsink_ids[] =3D {
> > +     { .type =3D RVTRACE_COMPONENT_TYPE_RAMSINK,
> > +       .version =3D rvtrace_component_mkversion(1, 0), },
> > +     {},
> > +};
> > +
> > +static struct rvtrace_driver rvtrace_ramsink_driver =3D {
> > +     .id_table =3D rvtrace_ramsink_ids,
> > +     .copyto_auxbuf =3D rvtrace_ramsink_copyto_auxbuf,
>
> Should have a .start function like the encoder (setting trRamEnable),
> and reset the WP to priv->start, as suggested above.
The active and enable bits for all components are handled via generic
rvtrace_enable_component/rvtrace_disable_component functions. When all
components are disabled before copying data to perf then WP would be
reset to priv->start as a part of copy_to_auxbuf callback.
>
> > +     .stop =3D rvtrace_ramsink_stop,
> > +     .probe =3D rvtrace_ramsink_probe,
> > +     .remove =3D rvtrace_ramsink_remove,
> > +     .driver =3D {
> > +             .name =3D "rvtrace-ramsink",
> > +     },
> > +};
> > +
> > +static int __init rvtrace_ramsink_init(void)
> > +{
> > +     return rvtrace_register_driver(&rvtrace_ramsink_driver);
> > +}
> > +
> > +static void __exit rvtrace_ramsink_exit(void)
> > +{
> > +     rvtrace_unregister_driver(&rvtrace_ramsink_driver);
> > +}
> > +
> > +module_init(rvtrace_ramsink_init);
> > +module_exit(rvtrace_ramsink_exit);
> > +
> > +/* Module information */
> > +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
> > +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
> > +MODULE_LICENSE("GPL");
>
> Bo
>

