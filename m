Return-Path: <devicetree+bounces-226047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADAFBD33BA
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7A033AAB20
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9711D306482;
	Mon, 13 Oct 2025 13:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="XIE6eJQk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C30DDAB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760362772; cv=none; b=qMXwsQCPyPOTjMM4GD1835QgfczjyXj8+k5JJN6cz6lDyd+n85uiiZ/ZeYgxifEQ8MEXP/UQmEv8/MNTYGTnNFlM8AP8KxHqIlVU5Vf0/VnhmTXPWnz8QwPF8+hYuiI2ERtQrTKUrSumALM5rWIHm9I8rQEK7jU7ROe4MLY40Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760362772; c=relaxed/simple;
	bh=+yB+enDuPJv20af+tFiH7Rbky+TskctoJ6/ZmNsCgoM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HWMOvU3D0B+uqOSQBJbCVTHmQsCH9KCawIZ5Iw0EjoUV+7nmI+Qwu41Z5vhaE7QW1Ot804rcDyGQNACSyaeuzK+wJG6Te0eTVVP5X9dmxrTk4W7n9JnHLnMKtgufL3bNNDKoiEg3J6kABVCbeuwyps7x5hHlpLZ4G0D1NNMVNFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=XIE6eJQk; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-279e2554b5fso32164885ad.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1760362770; x=1760967570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYwqHSAoqEx6cdcSctyIP5QRyJuyb0wi9zzKj0Pf+Fs=;
        b=XIE6eJQkkzrCLnr5octEHSb3y5auEIMi78NfleZKuTcRRO3Xk4/HA6ffcCGV4IIf0x
         Fq/m2DBLJgjnNljoeyK2kUAIOzYTFQa5gbV2ClU00DGcxKVoKz6n4qdGx3CqruLOax9a
         xSQIsLzfMXQ8NT3n11n2xlSRdW0uB2regxRVHxGgZ72BacJbj4uaSpzpwGVcuebTVH0o
         7ZVapdh6lkhO943hYtueq/f4xVIGhnltVMrpmCrNrwL82Rm3a4BL5dNBJZU0h0mj44MJ
         A74/iF1yC95a6uxUUusoe7KGFQAwfD3rjFiWRRm7otOmUM+StqeufUEKYvzZJ+zL7t63
         IWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760362770; x=1760967570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IYwqHSAoqEx6cdcSctyIP5QRyJuyb0wi9zzKj0Pf+Fs=;
        b=oOn3EC0tLPk4sWLmnlikxmdyt7EXpPVn9qqOxpUVgcB+Rx8cLpu7qg5+0JozyC3OCA
         zV4n0ZSIG/XEsNj18VjwTv8W8+1u5RBsOxJpTC7zXUaAom5jtpLz1avuEXJRDlJOEIjt
         QJJQqKCcuTPbWR+feFzVAahlmB70PvG+TJUTX/MQ0feN9qLe28FsS0yLh9u6UBm2y19v
         kgOAgFjAM3PpxWb81Xh1vx1Kq1RCYLvWp3o/i7zjaI3cCvV8PkStbcBdw+NlQnnqICEx
         Fi+lLbn0TzRMXD8LvLaadmicj6/F8S5pwKDS4Wtzg3/0O36Q13jED1XUbwSGfTriHffa
         YzgA==
X-Forwarded-Encrypted: i=1; AJvYcCWNiG3qo76v9Upjhw4sUznO74MM7yiY05c0Gw0rGF3uGMWT6ZZ1jlEp8OQYeUSJnyfHfO2PagZBNesz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx4Ro5uUCSO2IydNiXUE4LnoRSCv4mvUUmmwczU/fb/tbUkgWx
	79h1uEN1yRhe3Y7SzPEMgjNuqzmBVaRtGYAlW6oNJKCsP2QpHBUY1SAfO2wAVcVLL/Gb33E8As/
	TuWDviadSuL5Sq1i0Cbicl3BPES9ZoG5KmYjaeE+gCQ==
X-Gm-Gg: ASbGncu6zzCYGLGL0ceJ+mvBj4mvRK6IAZGfuRDNCtuizfG0PHbv/6KiR87cSKxGbW6
	VP1xhW5rE9x+tDSiCXHYpLbtMddGoEIYX9wq6mA6I7VkapEGjfj++gEW/Qh/EG5gw+pBMnTGdk5
	d3ZKXTsNXjjDNo0HjyvXeOkD96ZUDofMDHwW5hhXuT6htGsaogOW7TBWEcajmtJZJLCPiZ4qLHk
	wmX8kXnCKVvWfm8u3ZfNMW4BOAEcpTG7aEOWrPyNQ1c3qkFdG4iiix5zTXdd+ETGgh9kkGYV9eS
	QMtFxGKZv5eQmd4cUoFXUmdBH5nYqXzbZQO70FISzdm6BBN9iEU=
X-Google-Smtp-Source: AGHT+IE+0izChbPFkJdEKC8g0J0WRD2X49UUI9MXqjipJ7IlvbM3pJhg2JowFrzFl3z8G63EB/I+nzDZ2+l4fy3hEk0=
X-Received: by 2002:a17:903:3d10:b0:283:f19a:bffe with SMTP id
 d9443c01a7336-29027e734acmr269368095ad.7.1760362769784; Mon, 13 Oct 2025
 06:39:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <20251002060732.100213-8-apatel@ventanamicro.com> <9422ba89-a6ba-4168-98a1-6d4275698430@gmail.com>
 <CAN37VV5J2+gzpraR2NhaJBNfQ3dPsr-72Mmg03+ykcLoouZ8_Q@mail.gmail.com> <3af020da-f61b-4a32-8209-227b8fe58a78@gmail.com>
In-Reply-To: <3af020da-f61b-4a32-8209-227b8fe58a78@gmail.com>
From: Mayuresh Chitale <mchitale@ventanamicro.com>
Date: Mon, 13 Oct 2025 19:08:52 +0530
X-Gm-Features: AS18NWA6rP0C8etffBvWluM8B9nDXPpHi_fNoivc9yOraZMaSMmgGezdAWP20Mw
Message-ID: <CAN37VV6j3qzsrM5BRu+WvvAW4aMDOgkXZRm5+Fn0VARz_qqApA@mail.gmail.com>
Subject: Re: [PATCH 07/11] rvtrace: Add trace ramsink driver
To: Bo Gan <ganboing@gmail.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Greg KH <gregkh@linuxfoundation.org>, 
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

On Sat, Oct 11, 2025 at 6:08=E2=80=AFAM Bo Gan <ganboing@gmail.com> wrote:
>
> On 10/8/25 03:35, Mayuresh Chitale wrote:
> >
> >
> > On Tue, Oct 7, 2025 at 1:21=E2=80=AFPM Bo Gan <ganboing@gmail.com <mail=
to:ganboing@gmail.com>> wrote:
> >  >
> >  > On 10/1/25 23:07, Anup Patel wrote:
> >  > > From: Mayuresh Chitale <mchitale@ventanamicro.com <mailto:mchitale=
@ventanamicro.com>>
> >  > >
> >  > > Add initial implementation of RISC-V trace ramsink driver. The ram=
sink
> >  > > is defined in the RISC-V Trace Control Interface specification.
> >  > >
> >  > > Co-developed-by: Anup Patel <apatel@ventanamicro.com <mailto:apate=
l@ventanamicro.com>>
> >  > > Signed-off-by: Anup Patel <apatel@ventanamicro.com <mailto:apatel@=
ventanamicro.com>>
> >  > > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com <mailto=
:mchitale@ventanamicro.com>>
> >  > > ---
> >  > >   drivers/hwtracing/rvtrace/Kconfig           |   8 +
> >  > >   drivers/hwtracing/rvtrace/Makefile          |   1 +
> >  > >   drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 198 ++++++++++++++=
++++++
> >  > >   3 files changed, 207 insertions(+)
> >  > >   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> >  > >
> >  > > diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing=
/rvtrace/Kconfig
> >  > > index ba35c05f3f54..aef7e9989165 100644
> >  > > --- a/drivers/hwtracing/rvtrace/Kconfig
> >  > > +++ b/drivers/hwtracing/rvtrace/Kconfig
> >  > > @@ -21,3 +21,11 @@ config RVTRACE_ENCODER
> >  > >       default y
> >  > >       help
> >  > >         This driver provides support for RISC-V Trace Encoder comp=
onent.
> >  > > +
> >  > > +config RVTRACE_RAMSINK
> >  > > +     tristate "RISC-V Trace Ramsink driver"
> >  > > +     depends on RVTRACE
> >  > > +     default y
> >  > > +     help
> >  > > +       This driver provides support for Risc-V E-Trace Ramsink
> >  > > +       component.
> >  > > diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracin=
g/rvtrace/Makefile
> >  > > index f320693a1fc5..122e575da9fb 100644
> >  > > --- a/drivers/hwtracing/rvtrace/Makefile
> >  > > +++ b/drivers/hwtracing/rvtrace/Makefile
> >  > > @@ -3,3 +3,4 @@
> >  > >   obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> >  > >   rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> >  > >   obj-$(CONFIG_RVTRACE_ENCODER) +=3D rvtrace-encoder.o
> >  > > +obj-$(CONFIG_RVTRACE_RAMSINK) +=3D rvtrace-ramsink.o
> >  > > diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers=
/hwtracing/rvtrace/rvtrace-ramsink.c
> >  > > new file mode 100644
> >  > > index 000000000000..7bd0cf1e4dfd
> >  > > --- /dev/null
> >  > > +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> >  > > @@ -0,0 +1,198 @@
> >  > > +// SPDX-License-Identifier: GPL-2.0
> >  > > +/*
> >  > > + * Copyright (c) 2025 Ventana Micro Systems Inc.
> >  > > + */
> >  > > +
> >  > > +#include <linux/device.h>
> >  > > +#include <linux/io.h>
> >  > > +#include <linux/of.h>
> >  > > +#include <linux/of_graph.h>
> >  > > +#include <linux/platform_device.h>
> >  > > +#include <linux/property.h>
> >  > > +#include <linux/dma-mapping.h>
> >  > > +#include <linux/rvtrace.h>
> >  > > +#include <linux/types.h>
> >  > > +#include <linux/sizes.h>
> >  > > +
> >  > > +#define RVTRACE_RAMSINK_STARTLOW_OFF         0x010
> >  > > +#define RVTRACE_RAMSINK_STARTHIGH_OFF                0x014
> >  > > +#define RVTRACE_RAMSINK_LIMITLOW_OFF         0x018
> >  > > +#define RVTRACE_RAMSINK_LIMITHIGH_OFF                0x01c
> >  > > +#define RVTRACE_RAMSINK_WPLOW_OFF            0x020
> >  > > +#define RVTRACE_RAMSINK_WPHIGH_OFF           0x024
> >  > > +#define RVTRACE_RAMSINK_RPLOW_OFF            0x028
> >  > > +#define RVTRACE_RAMSINK_RPHIGH_OFF           0x02c
> >  > > +
> >  > > +struct rvtrace_ramsink_priv {
> >  > > +     size_t size;
> >  > > +     void *va;
> >  > > +     dma_addr_t start;
> >  > > +     dma_addr_t end;
> >  > > +     /* WP from prev iteration */
> >  > > +     dma_addr_t prev_head;
> >  > > +};
> >  > > +
> >  > > +struct trace_buf {
> >  > > +     void *base;
> >  > > +     size_t size;
> >  > > +     int cur, len;
> >  > > +};
> >  > > +
> >  > > +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace=
_buf *dst)
> >  > > +{
> >  > > +     int bytes_dst, bytes_src, bytes;
> >  > > +     void *dst_addr, *src_addr;
> >  > > +
> >  > > +     while (src->size) {
> >  > > +             src_addr =3D src->base + src->cur;
> >  > > +             dst_addr =3D dst->base + dst->cur;
> >  > > +
> >  > > +             if (dst->len - dst->cur < src->size)
> >  > > +                     bytes_dst =3D dst->len - dst->cur;
> >  > > +             else
> >  > > +                     bytes_dst =3D src->size;
> >  > > +             if (src->len - src->cur < src->size)
> >  > > +                     bytes_src =3D src->len - src->cur;
> >  > > +             else
> >  > > +                     bytes_src =3D src->size;
> >  > > +             bytes =3D bytes_dst < bytes_src ? bytes_dst : bytes_=
src;
> >  > > +             memcpy(dst_addr, src_addr, bytes);
> >  > > +             dst->cur =3D (dst->cur + bytes) % dst->len;
> >  > > +             src->cur =3D (src->cur + bytes) % src->len;
> >  > > +             src->size -=3D bytes;
> >  > > +     }
> >  > > +}
> >  > > +
> >  > > +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_compon=
ent *comp,
> >  > > +                                         struct rvtrace_perf_auxb=
uf *buf)
> >  > > +{
> >  > > +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp-=
>dev);
> >  > > +     struct trace_buf src, dst;
> >  > > +     u32 wp_low, wp_high;
> >  > > +     u64 buf_cur_head;
> >  > > +     size_t size;
> >  > > +
> >  > > +     wp_low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW=
_OFF);
> >  > > +     wp_high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHI=
GH_OFF);
> >  > > +     buf_cur_head =3D (u64)(wp_high) << 32 | wp_low;
> >  > > +
> >  > > +     if (buf_cur_head =3D=3D priv->prev_head)
> >  > > +             return 0;
> >  > > +
> >  > > +     dst.base =3D buf->base;
> >  > > +     dst.len =3D buf->length;
> >  > > +     dst.cur =3D buf->pos;
> >  > > +     dst.size =3D 0;
> >  > > +
> >  > > +     src.base =3D priv->va;
> >  > > +     src.len =3D priv->end - priv->start;
> >  > > +     if (buf_cur_head > priv->prev_head) {
> >  > > +             src.size =3D buf_cur_head - priv->prev_head;
> >  > > +     } else {
> >  > > +             src.size =3D priv->end - priv->prev_head;
> >  > > +             src.size +=3D buf_cur_head - priv->start;
> >  > > +     }
> >  > > +
> >  > > +     src.cur =3D buf_cur_head - priv->start;
> >  > > +     size =3D src.size;
> >  > > +     tbuf_to_pbuf_copy(&src, &dst);
> >  > > +     buf->pos =3D dst.cur;
> >  > > +     priv->prev_head =3D buf_cur_head;
> >  > > +
> >  > > +     return size;
> >  > > +}
> >  > > +
> >  > > +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> >  > > +{
> >  > > +     struct rvtrace_ramsink_priv *priv;
> >  > > +
> >  > > +     priv =3D devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL)=
;
> >  > > +     if (!priv)
> >  > > +             return -ENOMEM;
> >  > > +     dev_set_drvdata(&comp->dev, priv);
> >  > > +
> >  > > +     priv->size =3D SZ_4M;
> >  > Can we make this size dynamically determined? 4M seems inadequate. T=
his is
> >  > exceedingly so if the RAM sink is linked to a funnel, where you can =
have
> >  > many harts dumping traces into this sink.
> >  >
> >  > > +     priv->va =3D dma_alloc_coherent(&comp->dev, priv->size, &pri=
v->start, GFP_KERNEL);
> >  > > +     if (!priv->va)
> >  > > +             return -ENOMEM;
> >  > > +     priv->end =3D priv->start + priv->size;
> >  > > +     priv->prev_head =3D priv->start;
> >  > > +
> >  > > +     /* Setup ram sink addresses */
> >  > > +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVT=
RACE_RAMSINK_STARTLOW_OFF);
> >  > > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVT=
RACE_RAMSINK_STARTHIGH_OFF);
> >  > > +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVT=
RACE_RAMSINK_WPLOW_OFF);
> >  > > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVT=
RACE_RAMSINK_WPHIGH_OFF);
> >  > > +     /* Limit address needs to be set to end - 4 so that HW doesn=
't cause an overflow. */> + rvtrace_write32(comp->pdata, lower_32_bits(priv=
->end - 0x4), RVTRACE_RAMSINK_LIMITLOW_OFF);
> >  > Should not hardcode 4 as the trace write width. Control Interface Sp=
ec
> >  > chapter 7.1 has the proper instruction on how to probe for this widt=
h:
> >  >
> >  > "Not every value may be settable in trRamStart/Limit registers. Valu=
e
> >  >   written may be trimmed (for example aligned on a particular 2^N bo=
undary)
> >  >   and a trace tool should verify values being written"
> >  >
> > Thanks for the comments. I will incorporate those in v2.
>
> @Mayuresh, I went over the spec again. I don't see the handling off wrap.
> You need to detect if the buffer has wrapped around by testing bit 0 of
> trRamWPLow. So:
>
>   a. trRamWPLow needs masking bit 0 before being used as address to read
>      trace data.
The trRamWPLow isn't used directly and the size is calculated based on
current head(wpLow) and previous head values but I agree that
trRamWrap needs to be masked.
>   b. If wrapped, then the trace buffer is actually scattered in two parts=
:
>      [WP, Limit + width) and [Start, WP). During copying, you need to use
>      the right portion of the trace buffer.
This is done using the buf_cur_head and priv->head variables.
>
> ref: https://github.com/ganboing/riscv-trace-umd/blob/master/rvtrace/funn=
el.py#L260
>
> BTW, again your mail wasn't delivered to the mailing-list for some reason
> Please check: I couldn't find your name on
>
> https://lists.infradead.org/pipermail/linux-riscv/2025-October/thread.htm=
l
> https://lore.kernel.org/all/20251002060732.100213-1-apatel@ventanamicro.c=
om/
In a previous reply the mode wasn't set to 'plain text'. I hope this
email gets delivered.
>
> >
> >  > > +     rvtrace_write32(comp->pdata, upper_32_bits(priv->end), RVTRA=
CE_RAMSINK_LIMITHIGH_OFF);
> >  > > +
> >  > > +     return 0;
> >  > > +}
> >  > > +
> >  > > +static void rvtrace_ramsink_cleanup(struct rvtrace_component *com=
p)
> >  > > +{
> >  > > +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp-=
>dev);
> >  > > +
> >  > > +     dma_free_coherent(&comp->dev, priv->size, priv->va, priv->st=
art);
> >  > > +}
> >  > > +
> >  > > +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
> >  > > +{
> >  > > +     int ret;
> >  > > +
> >  > > +     ret =3D rvtrace_ramsink_setup(comp);
> >  > > +     if (ret)
> >  > > +             return dev_err_probe(&comp->dev, ret, "failed to set=
up ramsink.\n");
> >  > > +
> >  > > +     ret =3D rvtrace_enable_component(comp);
> >  > > +     if (ret)
> >  > > +             return dev_err_probe(&comp->dev, ret, "failed to ena=
ble ramsink.\n");
> >  > > +
> >  > > +     return ret;
> >  > > +}
> >  > > +
> >  > > +static void rvtrace_ramsink_remove(struct rvtrace_component *comp=
)
> >  > > +{
> >  > > +     int ret;
> >  > > +
> >  > > +     ret =3D rvtrace_disable_component(comp);
> >  > > +     if (ret)
> >  > > +             dev_err(&comp->dev, "failed to disable ramsink.\n");
> >  > > +
> >  > > +     rvtrace_ramsink_cleanup(comp);
> >  > > +}
> >  > > +
> >  > > +static struct rvtrace_component_id rvtrace_ramsink_ids[] =3D {
> >  > > +     { .type =3D RVTRACE_COMPONENT_TYPE_RAMSINK,
> >  > > +       .version =3D rvtrace_component_mkversion(1, 0), },
> >  > > +     {},
> >  > > +};
> >  > > +
> >  > > +static struct rvtrace_driver rvtrace_ramsink_driver =3D {
> >  > > +     .id_table =3D rvtrace_ramsink_ids,
> >  > > +     .copyto_auxbuf =3D rvtrace_ramsink_copyto_auxbuf,
> >  > > +     .probe =3D rvtrace_ramsink_probe,
> >  > > +     .remove =3D rvtrace_ramsink_remove,
> >  > > +     .driver =3D {
> >  > > +             .name =3D "rvtrace-ramsink",
> >  > > +     },
> >  > > +};
> >  > > +
> >  > > +static int __init rvtrace_ramsink_init(void)
> >  > > +{
> >  > > +     return rvtrace_register_driver(&rvtrace_ramsink_driver);
> >  > > +}
> >  > > +
> >  > > +static void __exit rvtrace_ramsink_exit(void)
> >  > > +{
> >  > > +     rvtrace_unregister_driver(&rvtrace_ramsink_driver);
> >  > > +}
> >  > > +
> >  > > +module_init(rvtrace_ramsink_init);
> >  > > +module_exit(rvtrace_ramsink_exit);
> >  > > +
> >  > > +/* Module information */
> >  > > +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com <mailt=
o:mchitale@ventanamicro.com>>");
> >  > > +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
> >  > > +MODULE_LICENSE("GPL");
> >  >
> >  > Bo
>
> Bo

