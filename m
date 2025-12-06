Return-Path: <devicetree+bounces-244979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E26CAABB9
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 19:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4DA930281BE
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 18:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D11B2BEFF8;
	Sat,  6 Dec 2025 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="oFH3lQ1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE3F285404
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 18:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765044034; cv=none; b=ggGREXH5p9LvAOCAwxvviawOdnbdBH2hHfz+eG7z9ZhnwphvmDbyUmVH+o7xOizLfeKHezMu9W+0nIArBeWbH52VOYorvAW/kZ371j/IPvmz1SEDztXm5MBE+iZfpHkLAjGYdsW4EYxCUsvD0Qgg7EGdlLjmEAQ8fnb6sjCVVb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765044034; c=relaxed/simple;
	bh=eoveg5fYIiproEaFAmYaL0ert3SLPBHp+JUMwsGsorM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IL590dUVUp+Dp+yrziIPxsHxNEyrxeOyKNlwvcJRi6p4qQCNvziLyDWKrxDXfZ2omg+/T5nv+v9v8QKLWjc9ZuNDLExJKQTe4CivM2quU6P5LSYgt5tm4jN2QelHp2x54ZbO9uFRfpyYF3GDTY5GNlso/HAcgt2xyX15ZML+WXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=oFH3lQ1n; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-640f2c9ccbdso2693419d50.1
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 10:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1765044031; x=1765648831; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TsOI2CJiL6HtHrVA3SzcmU+SdyUuf2kFHdyy8a5WOc8=;
        b=oFH3lQ1n8WOFrAf+++u1uCVSlmkZ8iRMUQ5QynNcuDZpaAp7xYctEHnqwY916JHgh0
         WqUgtqENwkVuanQ8pZVv9g4rNo40Y5UQH/JrndNkjipfkejLhJSey8ssly/pCpgBu8Gx
         1KtztRsw8J6FmgPCPcmxsKGVE4vMD46BL4qD91XpROxrTFsnF9bxeorKSzQXFcuFmGwC
         c7q8OHyrBQsog9fLZlNgBlkijbchWQE6ozvBRfKGoe3tsnbtHsNg2tmeDas3yaGjHK6f
         ACB2mZEv6J3fv73fkNy1YPbsQuk4lU+mYBPo00s74asLd10LxFkf1PX/TtPFxqna/V9g
         GWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765044031; x=1765648831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TsOI2CJiL6HtHrVA3SzcmU+SdyUuf2kFHdyy8a5WOc8=;
        b=JM8XmVrIP5aIkJ/UVUuC7gsuuH9/kka49hHo61ZQAn3H4esSfSZrbRq13NiwCakOTC
         oBVqWuqMJVQF4vnxLFVpXxSzsgttSkWXr/cvpNDBUqAvQB2HOSM5PtDtl7TA+HVtRWDH
         9e60jSMQqbDbXt1JzaIraHODjgOWAkT9tKYoJO6JdjpZXP9fEJ2zxQn8Ee4ccnIM8pJ8
         Ld/VyDFznyTdN43zDtm+hYldwHwJu3RfaurtBjJe9LuW5dOyveytmXmGJ/TqHqXpZmH6
         PI5sWcDti1yw+lxzmlkNOiu9ShYZkRqIC1RsCidmJ5NSMVRD8O1sUSB8pZB8sXernWS+
         UzjA==
X-Forwarded-Encrypted: i=1; AJvYcCW2A6+N3lF0x/A+4rkuQPkBb4Z7UfZfixmlgzW7ScVUb621GXhykU3mg0qyIQXzXi1VGw2qO16OiBIO@vger.kernel.org
X-Gm-Message-State: AOJu0YxKLx/WMocjjSNH71Yt9cgBkdnGjXaBIyx5/FYjmO9hcUkmjzqz
	+OzYlIDxQ3paMWDDG/iKihPrjg2kaVvcrquI1ELOZxvXkQmwWMyDiWu4O/gvekFPvSnivBMIsmw
	SrcXi82HuxY95s52CZKA3i/HT4Fualbv1XULYBnAnrA==
X-Gm-Gg: ASbGnctF6TBpKNrvEZg1iKUJFq5EOA2VBgeYrJyOqR58n2Hv+1rGFmbhig+zVuxtmZU
	eIh1LyH2LraO21VAXsEo+A3+4fWuY4X51rLy7nuPDpdipyIGNN9OCG3Ci7LDBJqpKoJMxCYrXkR
	pijqFhizh0UusSHg7lFo9FbMfFzxi/OHMoC4Pm7ibdCg+VWCAzXI3P8wDh4o6yw58NyRcedQpYX
	7A9sUlRc+PCQ00ZXWt0O+a1RgHwzgWdaPwPq9rd/KzQ4XPQn5MsJe0uZScBPizHT2K83QRgKQ4X
	kDqmedtteLr10aTfXvk2aLXr
X-Google-Smtp-Source: AGHT+IGusSRMWncw3MkZx19eJtjve91XYk2J+gn+jq8DkPLnLoxqUNcDFHPMCSV41IYf8F87GZ6lbFv9ca8Ay74RMNQ=
X-Received: by 2002:a05:690e:1913:b0:644:53c0:880b with SMTP id
 956f58d0204a3-64453c08943mr565404d50.74.1765044030798; Sat, 06 Dec 2025
 10:00:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-8-apatel@ventanamicro.com> <26475221-f852-4d76-80dd-43f04f9e7ec4@gmail.com>
 <CAN37VV4BSsy5C6+PT0s+8KQgisF7M60=JPnM2oAdjYYYC-LNrA@mail.gmail.com> <73de5da3-5412-4991-8a14-9c60bfd872d7@gmail.com>
In-Reply-To: <73de5da3-5412-4991-8a14-9c60bfd872d7@gmail.com>
From: Mayuresh Chitale <mchitale@ventanamicro.com>
Date: Sat, 6 Dec 2025 23:29:53 +0530
X-Gm-Features: AWmQ_bn6D0OUBDOU0T1Th7QsRaqQZzHjC-Nwny2NWTLaQPZfzu8T7qg8nnOwXbE
Message-ID: <CAN37VV7XuiKZY17vFZWJJ5Qx2AtOHNguq=P88Y2PbbTo0LTkfw@mail.gmail.com>
Subject: Re: [PATCH v2 07/12] rvtrace: Add trace ramsink driver
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


Thanks,
Mayuresh.

On Wed, Dec 3, 2025 at 6:36=E2=80=AFAM Bo Gan <ganboing@gmail.com> wrote:
>
> Hi Mayuresh,
>
> Thanks for your reply. My comments below.
>
> On 12/2/25 03:47, Mayuresh Chitale wrote:
> > Hi Bo,
> >
> > On Sun, Nov 30, 2025 at 1:17=E2=80=AFPM Bo Gan <ganboing@gmail.com> wro=
te:
> >>
> >> Hi Anup,
> >>
> >> My comments below:
> >>
> >> On 11/1/25 08:42, Anup Patel wrote:
> >>> From: Mayuresh Chitale <mchitale@ventanamicro.com>
> >>>
> >>> Add initial implementation of RISC-V trace ramsink driver. The ramsin=
k
> >>> is defined in the RISC-V Trace Control Interface specification.
> >>>
> >>> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> >>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> >>> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> >>> ---
> >>>    drivers/hwtracing/rvtrace/Kconfig           |   9 +
> >>>    drivers/hwtracing/rvtrace/Makefile          |   1 +
> >>>    drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 262 ++++++++++++++++=
++++
> >>>    3 files changed, 272 insertions(+)
> >>>    create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> >>>
> >>> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rv=
trace/Kconfig
> >>> index ba35c05f3f54..0577f9acb858 100644
> >>> --- a/drivers/hwtracing/rvtrace/Kconfig
> >>> +++ b/drivers/hwtracing/rvtrace/Kconfig
> >>> @@ -21,3 +21,12 @@ config RVTRACE_ENCODER
> >>>        default y
> >>>        help
> >>>          This driver provides support for RISC-V Trace Encoder compon=
ent.
> >>> +
> >>> +config RVTRACE_RAMSINK
> >>> +     tristate "RISC-V Trace Ramsink driver"
> >>> +     depends on RVTRACE
> >>> +     select DMA_SHARED_BUFFER
> >>> +     default y
> >>> +     help
> >>> +       This driver provides support for Risc-V E-Trace Ramsink
> >>> +       component.
> >>> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/r=
vtrace/Makefile
> >>> index f320693a1fc5..122e575da9fb 100644
> >>> --- a/drivers/hwtracing/rvtrace/Makefile
> >>> +++ b/drivers/hwtracing/rvtrace/Makefile
> >>> @@ -3,3 +3,4 @@
> >>>    obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> >>>    rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> >>>    obj-$(CONFIG_RVTRACE_ENCODER) +=3D rvtrace-encoder.o
> >>> +obj-$(CONFIG_RVTRACE_RAMSINK) +=3D rvtrace-ramsink.o
> >>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c b/drivers/hw=
tracing/rvtrace/rvtrace-ramsink.c
> >>> new file mode 100644
> >>> index 000000000000..676344c9387c
> >>> --- /dev/null
> >>> +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> >>> @@ -0,0 +1,262 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/*
> >>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> >>> + */
> >>> +
> >>> +#include <linux/device.h>
> >>> +#include <linux/platform_device.h>
> >>> +#include <linux/property.h>
> >>> +#include <linux/dma-mapping.h>
> >>> +#include <linux/rvtrace.h>
> >>> +#include <linux/types.h>
> >>> +#include <linux/sizes.h>
> >>> +
> >>> +#define RVTRACE_RAMSINK_STARTLOW_OFF         0x010
> >>> +#define RVTRACE_RAMSINK_STARTHIGH_OFF                0x014
> >>> +#define RVTRACE_RAMSINK_LIMITLOW_OFF         0x018
> >>> +#define RVTRACE_RAMSINK_LIMITHIGH_OFF                0x01c
> >>> +#define RVTRACE_RAMSINK_WPLOW_OFF            0x020
> >>> +#define   RVTRACE_RAMSINK_WPLOW_WRAP         0x1
> >>
> >> nit: wrong spacing
> >>
> >>> +#define RVTRACE_RAMSINK_WPHIGH_OFF           0x024
> >>> +#define RVTRACE_RAMSINK_RPLOW_OFF            0x028
> >>> +#define RVTRACE_RAMSINK_RPHIGH_OFF           0x02c
> >>> +
> >>> +struct rvtrace_ramsink_priv {
> >>> +     size_t size;
> >>> +     void *va;
> >>> +     dma_addr_t start;
> >>> +     dma_addr_t end;
> >>> +     /* WP from prev iteration */
> >>> +     dma_addr_t prev_head;
> >>> +};
> >>> +
> >>> +struct trace_buf {
> >>> +     void *base;
> >>> +     size_t size;
> >>> +     long cur;
> >>> +     size_t len;
> >>> +};
> >>> +
> >>> +static int rvtrace_ramsink_stop(struct rvtrace_component *comp)
> >>> +{
> >>> +     return rvtrace_comp_is_empty(comp);
> >>> +}
> >>> +
> >>
> >> We should first set trRamEnable to 0, poll it, then poll trRamEmpty. I=
t's
> >> essentially the same as encoder, so perhaps move it to core.c. Here we=
're
> >> just checking whether it's empty, which is wrong. We're also doing sim=
ilar
> >> things in encoder.c Should fix that as well.
> > This code is called to just stop all components in a path which means:
> > - for encoders the driver clears the trTeInstTracing bit and then
> > polls for empty bit to be cleared
> > - for ramsinks the driver just polls for the empty bit to be cleared
> > More on this below.
>
> Can we rename it to something like rvtrace_comp_poll_empty(...) for clari=
ty?
> This name kind of confused me into thinking it's just a check.
Ok.
>
> >>
> >>> +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_bu=
f *dst)
> >>> +{
> >>> +     int bytes_dst, bytes_src, bytes;
> >>> +     void *dst_addr, *src_addr;
> >>> +
> >>> +     while (src->size) {
> >>> +             src_addr =3D src->base + src->cur;
> >>> +             dst_addr =3D dst->base + dst->cur;
> >>> +
> >>> +             if (dst->len - dst->cur < src->size)
> >>> +                     bytes_dst =3D dst->len - dst->cur;
> >>> +             else
> >>> +                     bytes_dst =3D src->size;
> >>> +             if (src->len - src->cur < src->size)
> >>> +                     bytes_src =3D src->len - src->cur;
> >>> +             else
> >>> +                     bytes_src =3D src->size;
> >>> +             bytes =3D bytes_dst < bytes_src ? bytes_dst : bytes_src=
;
> >>> +             memcpy(dst_addr, src_addr, bytes);
> >>> +             dst->cur =3D (dst->cur + bytes) % dst->len;
> >>> +             src->cur =3D (src->cur + bytes) % src->len;
> >>> +             src->size -=3D bytes;
> >>> +     }
> >>> +}
> >>> +
> >>> +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component=
 *comp,
> >>> +                                         struct rvtrace_perf_auxbuf =
*buf)
> >>> +{
> >>> +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->de=
v);
> >>> +     struct trace_buf src, dst;
> >>> +     u32 wp_low, wp_high;
> >>> +     u64 buf_cur_head;
> >>> +     size_t size;
> >>> +
> >>> +     wp_low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OF=
F);
> >>> +     wp_high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_=
OFF);
> >>> +     buf_cur_head =3D (u64)(wp_high) << 32 | (wp_low & ~RVTRACE_RAMS=
INK_WPLOW_WRAP);
> >>> +
> >>> +     if (buf_cur_head =3D=3D priv->prev_head)
> >>> +             return 0;
> >>
> >> cur_head =3D=3D prev_head could mean that we've wrapped around and sto=
pped at
> >> the exact position. Thus, we need to check for the wrapped around bit.=
 If
> >> set, then this case can be merged into buf_cur_head <=3D priv->prev_he=
ad
> >> below.
> > cur_head is the current value in the wp registers whereas prev_head is
> > the value in wp registers from the previous iteration which is saved
> > explicitly by software. So prev_head can't change dynamically.
> >
> >>
> >> For cur_head > prev_head case, we also need to check for wrap-around. =
If
> >> wrapped-around, we actually filled the entire buffer, not just cur - p=
rev
> >> We also should consider the possibility that the buffer has been wrapp=
ed
> >> around multiple times. In all cases, maintaining a prev_head seems to
> >> complicate things, so why don't we just reset the WP to priv->start ea=
ch
> >> time we start the ramsink component and get rid of prev_head? This way=
,
> >> we'll always have cur >=3D start, and depending on wrapped bit, we eit=
her
> >> get the whole buffer, or cur - start.
> > Currently the software never clears trRamWrap bit because as per the sp=
ec:
> > - It is only set to 0 if trRamWPLow is written
> > - After trace is enabled and active , the trace tool should NOT write
> > any of trRamStart/Limit/WP?? registers.
>
> I think you missed my point. I'm not suggesting that we should change the
> register values when trace is active. I'm saying that there's no need to
> maintain a prev_head. For every trace session, we can just start fresh,
> and reset WP to Start before trace starts. This way we don't need to deal
> with the complex conditions of cur_head > prev_head, because you'll also
> need to deal with wrap around, and the if condition will be complex. The
> trace can wrap around and over-write old traces anyway, so I don't see a
> value of keeping track of prev_head.
>
We can't write the 'Start' value into WP if trRamEnable is set (please
see my previous comment). In any case in v3, I am changing how the
path gets stopped. After that we should be able to reset WP.
> > Let me test this change to disable all the components (instead of just
> > stopping trace) every time we want to copy data to perf buffer. This
> > should let us use the trRamWrap bit as expected. Multiple wraparounds
> > can't be avoided unless StopOnWrap was set. I will update the ramsink
> > driver to set StopOnWrap based on the implementation id.
> >>
> >
> >>> +
> >>> +     dst.base =3D buf->base;
> >>> +     dst.len =3D buf->length;
> >>> +     dst.cur =3D buf->pos;
> >>> +
> >>> +     src.base =3D priv->va;
> >>> +     src.len =3D priv->end - priv->start;
> >>> +     if (buf_cur_head > priv->prev_head) {
> >>> +             src.size =3D buf_cur_head - priv->prev_head;
> >>> +     } else {
> >>> +             src.size =3D priv->end - priv->prev_head;
> >>> +             src.size +=3D buf_cur_head - priv->start;
> >>> +     }
> >>> +
> >>> +     src.cur =3D buf_cur_head - priv->start;
> >>> +     size =3D src.size;
> >>> +     tbuf_to_pbuf_copy(&src, &dst);
> >>> +     buf->pos =3D dst.cur;
> >>> +     priv->prev_head =3D buf_cur_head;
> >>> +
> >>> +     return size;
> >>> +}
> >>> +
> >>> +static int rvtrace_ramsink_setup_buf(struct rvtrace_component *comp)
> >>> +{
> >>> +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->de=
v);
> >>> +     u64 start_min, limit_max, end;
> >>> +     u32 low, high;
> >>> +
> >>> +     /* Probe min and max values for start and limit registers */
> >>> +     rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTLOW_OFF);
> >>> +     rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTHIGH_OFF);
> >>> +     low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTLOW_OF=
F);
> >>> +     high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTHIGH_=
OFF);
> >>> +     start_min =3D (u64)(high) << 32 | low;
> >>> +
> >>> +     rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITL=
OW_OFF);
> >>> +     rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITH=
IGH_OFF);
> >>> +     low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OF=
F);
> >>> +     high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_=
OFF);
> >>> +     limit_max =3D (u64)(high) << 32 | low;
> >>> +
> >>> +     if (priv->end < start_min) {
> >>
> >> Where was priv->end initialized before this check?
> > I will move it before the check.
> >>
> >>> +             dev_err(&comp->dev, "DMA memory not addressable by devi=
ce\n");
> >>> +             return -EINVAL;
> >>> +     }
> >>> +
> >>> +     /* Setup ram sink start addresses */
> >>> +     if (priv->start < start_min) {
> >>
> >> No checks for start_min >=3D priv->end?
> >>
> >>> +             dev_warn(&comp->dev, "Ramsink start address updated fro=
m %llx to %llx\n",
> >>> +                      priv->start, start_min);
> >>> +             priv->va +=3D start_min - priv->start;
> >>> +             priv->start =3D start_min;
> >>> +     }
> >>> +
> >>> +     priv->prev_head =3D priv->start;
> >>> +     priv->end =3D priv->start + priv->size;
> >>> +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRAC=
E_RAMSINK_STARTLOW_OFF);
> >>> +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRAC=
E_RAMSINK_STARTHIGH_OFF);
> >>> +     rvtrace_write32(comp->pdata, lower_32_bits(priv->start), RVTRAC=
E_RAMSINK_WPLOW_OFF);
> >>> +     rvtrace_write32(comp->pdata, upper_32_bits(priv->start), RVTRAC=
E_RAMSINK_WPHIGH_OFF);
> >>> +     /* Setup ram sink limit addresses */
> >>> +     if (priv->end > limit_max) {
> >>> +             dev_warn(&comp->dev, "Ramsink limit address updated fro=
m %llx to %llx\n", priv->end,
> >>> +                      limit_max);
> >>> +             priv->end =3D limit_max;
> >>> +             priv->size =3D priv->end - priv->start;
> >>> +     }
> >>> +
> >>> +     /* Limit address needs to be set to end - 4 to avoid overflow *=
/
> >>> +     end =3D priv->end - 4;
> >>
> >> Should not hard-code 4, instead, do write32(0xfffffff, RamLimit), then
> >> ffs(RamLimit) to probe for the the write width, aka, "A" value in Tabl=
e
> >> 47. Typical Trace RAM Sink Configuration in the Spec.
> > I dont think 'A' can be probed that way because as per section 7.1:
> > "Not every value may be settable in trRamStart/Limit registers. Value
> > written may be trimmed (for example aligned on a particular 2^N
> > boundary)". So writing 0xffffffff to limit register will reveal the
> > boundary alignment but not 'A'. I think 'A' needs to be specified by
> > an implementation with default as 4. I will change it accordingly.
> >
>
> Quoting from spec:
>
> "Value A means alignment which depends on memory access width. If we
>   have memory access width of 32-bits, A=3D4 and value of trRamLimit
>   register should be 0x=E2=80=A6FC. Some implementations may impose bigge=
r
>   alignment of trace data (to allow more efficient transfer rates)
>   for SMEM mode. For SRAM mode A must be 4 as access to trace via
>   trRamData is always 32-bits wide "
>
> the 4 byte of A value is only for SRAM mode, not SMEM mode. My inter-
> pretation of the spec is that this can be detected by writing -1 to
> Limit, and detect M, A as follows.
No. The text above doesn't talk about probing the value of 'A', just
that 'A' is implementation specific.
>
> 0x11110000011111000
>            ^    ^
>            |    |
>        M value  A value
>
> A =3D 1 << (__builtin_ffs(v) - 1)
> M =3D 1 << __builtin_ctz(v + A - 1)
>
> I'll start a thread on the DTPM mailing list to confirm this.
OK.

BTW,
> my P550 N-trace (pre-ratified) ramsink as A=3D8.
You can set it by defining a new id for P550 N-trace in the
rvtrace_component_impid enum. Please refer rvtrace.h for more details.
>
> >>
> >>> +     rvtrace_write32(comp->pdata, lower_32_bits(end), RVTRACE_RAMSIN=
K_LIMITLOW_OFF);
> >>> +     rvtrace_write32(comp->pdata, upper_32_bits(end), RVTRACE_RAMSIN=
K_LIMITHIGH_OFF);
> >>> +     low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OF=
F);
> >>> +     high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_=
OFF);
> >>> +     end =3D (u64)(high) << 32 | low;
> >>> +     if (end !=3D (priv->end - 4)) {
> >>> +             dev_warn(&comp->dev, "Ramsink limit address updated fro=
m %llx to %llx\n", priv->end,
> >>> +                      end);
> >>> +             priv->end =3D end;
> >>> +             priv->size =3D priv->end - priv->start;
> >>
> >> Actually the RamLimit read is not the real limit. It's Limit - "A" (th=
e
> >> write width).
> >>
> >>> +     }
> >>> +
> >>> +     return 0;
> >>> +}
> >>
> >> I think overall we should simplify this setup_buf function. For RamSta=
rt
> >> alone, there're alignment + min_addr requirement, which is very unlike=
ly
> >> that the lowest valid address happens to be within the range that dma-
> >> allocated in the caller (when you need to adjust priv->start). Thus, t=
o
> >> do it properly, we first need to detect the min_addr + alignment *befo=
re*
> >> dma-alloc, and pass such requirements into dma-alloc, then depending o=
n
> >> what dma-alloc returns, detect the "M" value by interrogating RamLimit=
.
> >> I'm not sure if dma-alloc can be passed a hint address that whatever
> >> returned must be higher, and whether it can enforce random alignment, =
so
> >> may be we can just program RamStart/Limit based on what dma-alloc give=
s
> >> and error out if value is not retained. We do however need to probe fo=
r
> >> write width ("A" value). It's usually 4 or 8, but it does vary per-imp=
l,
> >> and remember, the total buffer size is still 1MB, not 1MB - 4 or -8.
> >
> > I think the issue is that the physical memory region returned by
> > dma_alloc* might not be addressable by the hw and so the start / end
> > addresses are already trimmed in the code accordingly but I agree this
> > can be handled differently. For e.g
> > - probe max RamLimit value .
> > - set the dma_mask to the probed value
> > - dma_alloc*
> > - further address checks
> >
> >>
> >>> +
> >>> +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> >>> +{
> >>> +     struct device *pdev =3D comp->pdata->dev;
> >>> +     struct rvtrace_ramsink_priv *priv;
> >>> +
> >>> +     priv =3D devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
> >>> +     if (!priv)
> >>> +             return -ENOMEM;
> >>> +
> >>> +     dev_set_drvdata(&comp->dev, priv);
> >>> +
> >>> +     /* Derive RAM sink memory size based on component implementatio=
n ID */
> >>> +     switch (comp->pdata->impid) {
> >>> +     default:
> >>> +             priv->size =3D SZ_1M;
> >>> +             break;
> >>> +     }
> >>> +
> >>> +     priv->va =3D dma_alloc_coherent(pdev, priv->size, &priv->start,=
 GFP_KERNEL);
> >>> +     if (!priv->va)
> >>> +             return -ENOMEM;
> >>> +
> >>> +     return rvtrace_ramsink_setup_buf(comp);
> >>> +}
> >>> +
> >>> +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
> >>> +{
> >>> +     struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->de=
v);
> >>> +
> >>> +     dma_free_coherent(&comp->dev, priv->size, priv->va, priv->start=
);
> >>> +}
> >>> +
> >>> +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
> >>> +{
> >>> +     int ret;
> >>> +
> >>> +     ret =3D rvtrace_ramsink_setup(comp);
> >>> +     if (ret)
> >>> +             return dev_err_probe(&comp->dev, ret, "failed to setup =
ramsink.\n");
> >>> +
> >>> +     ret =3D rvtrace_enable_component(comp);
> >>> +     if (ret)
> >>> +             return dev_err_probe(&comp->dev, ret, "failed to enable=
 ramsink.\n");
> >>> +
> >>> +     return ret;
> >>> +}
> >>
> >> In probe, we should detect and set it to SMEM mode. The default is SRA=
M
> >> mode.
> > Actually the default is not set but I agree this needs to be handled
> > differently. We can make this an implementation defined parameter and
> > then cross check with trRamImpl register during probe.
>
> You are right. The reset value of trRamMode is Undef. Thus, we do need to
> test and set it to SMEM mode. (It's a WARL field)
>
> >>
> >>> +
> >>> +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
> >>> +{
> >>> +     int ret;
> >>> +
> >>> +     ret =3D rvtrace_disable_component(comp);
> >>> +     if (ret)
> >>> +             dev_err(&comp->dev, "failed to disable ramsink.\n");
> >>> +
> >>> +     rvtrace_ramsink_cleanup(comp);
> >>> +}
> >>> +
> >>> +static struct rvtrace_component_id rvtrace_ramsink_ids[] =3D {
> >>> +     { .type =3D RVTRACE_COMPONENT_TYPE_RAMSINK,
> >>> +       .version =3D rvtrace_component_mkversion(1, 0), },
> >>> +     {},
> >>> +};
> >>> +
> >>> +static struct rvtrace_driver rvtrace_ramsink_driver =3D {
> >>> +     .id_table =3D rvtrace_ramsink_ids,
> >>> +     .copyto_auxbuf =3D rvtrace_ramsink_copyto_auxbuf,
> >>
> >> Should have a .start function like the encoder (setting trRamEnable),
> >> and reset the WP to priv->start, as suggested above.
> > The active and enable bits for all components are handled via generic
> > rvtrace_enable_component/rvtrace_disable_component functions. When all
> > components are disabled before copying data to perf then WP would be
> > reset to priv->start as a part of copy_to_auxbuf callback.
>
> Disagree. You can't rely on enable/disable_component for ramsink. It's
> the same as encoder, you need proper start/stop. If the RamEnable bit
> is not cleared, trace may never gets flushed, and you'll never get
> RamEmpty. Also you can't access WP without clearing RamEnable.
>
> I'd also think it's more appropriate to reset WP in start callback. As
> said earlier, new traces can overwrite already captured ones anyway,
> so why not reset WP on each start.
Please see the comment above.
> Future enhancements we can support
> directly reading out the trace buffer when the encoder/sink is inactive,
> so better just leave the WP where it was after stopping.
>
> Bo
>
> >>
> >>> +     .stop =3D rvtrace_ramsink_stop,
> >>> +     .probe =3D rvtrace_ramsink_probe,
> >>> +     .remove =3D rvtrace_ramsink_remove,
> >>> +     .driver =3D {
> >>> +             .name =3D "rvtrace-ramsink",
> >>> +     },
> >>> +};
> >>> +
> >>> +static int __init rvtrace_ramsink_init(void)
> >>> +{
> >>> +     return rvtrace_register_driver(&rvtrace_ramsink_driver);
> >>> +}
> >>> +
> >>> +static void __exit rvtrace_ramsink_exit(void)
> >>> +{
> >>> +     rvtrace_unregister_driver(&rvtrace_ramsink_driver);
> >>> +}
> >>> +
> >>> +module_init(rvtrace_ramsink_init);
> >>> +module_exit(rvtrace_ramsink_exit);
> >>> +
> >>> +/* Module information */
> >>> +MODULE_AUTHOR("Mayuresh Chitale <mchitale@ventanamicro.com>");
> >>> +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
> >>> +MODULE_LICENSE("GPL");
> >>
> >> Bo
> >>
>

