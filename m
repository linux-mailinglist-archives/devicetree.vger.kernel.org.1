Return-Path: <devicetree+bounces-275918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHz3KeV2t2nxRQEAu9opvQ
	(envelope-from <devicetree+bounces-275918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:20:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A5A2945C3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7940A3004635
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC4F3191D0;
	Mon, 16 Mar 2026 03:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="cFhtAwcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81875137923
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773631203; cv=pass; b=cs2HvNcNkvhotlQj3W/4EeWPPEieLR36pg6/kWxAa7/3Xr0i3baCYf9kzZCf1Ef+wIaAvkk1caCkr58Rek9xoP8o61TH2KFVSXmzE3M33KGo9CZa5kVY0mQWTCyNSa46pzRgA3OdMURvs9Xl5jMb4aWH/nmxwddl+w/EmG00zsA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773631203; c=relaxed/simple;
	bh=bQnzHuqze66vdellidJlAGPEiKPLthhWXABqz3R62Ds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iWOrveSmScXOMRrPNu2fl5RtvCPx8hK1ORY8yHGK2GtdBloW7HFCA79c9qcD4m7kb0EM5XXvRexMNFH6idA9xoZFWBKONk77n4hQxYDUhncjXn0y1o4U3I79mJUhCCI2M2QBtK7+Ekb+cnzamujVz3q6eDiAs0J10c1kk5jd3Cg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=cFhtAwcu; arc=pass smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-4671cbce32bso807827b6e.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773631200; cv=none;
        d=google.com; s=arc-20240605;
        b=lyk6+ah5JVyinTUv+RfWS7eezkFIsNPTy7BulX96fup1WkkXOtKCO0mCscUqzPUp5e
         yxkNTmu6cjRgQ2qiBXgJnTNBXH057m7izkCkIMxIdFSFbaX7mimvSTfTqmrFsItGZQcu
         4i1ste762mNmSO9a1++dodDTJwuZpUTTUbnx3clSQtBbk8aflsXomw6jH1eR8rfFZDO5
         kqH+EYSmHxont81itQNTYkpjvaCuWmXpUOZ4lS1v5A7VWyCSuQJ6GdoLizv7DlHXh20Y
         6uL4T50N/GJtextVuj6j145gdIw7QQ0mEZsLrO8J0M8X+4NiO+u3yQrP5cP2fs36tJdf
         RfXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ij7BQAoNTRfj4wBY3VfycFZbADxXMcvAxn0Mz8gf5Qs=;
        fh=0eccy4raRd01ZvH22g4x/Nj5Q6SLyFDFPecUSECea+A=;
        b=IPG8KZEE8PVBN+X94urcFvCCwu7xjh8CSQtmM4jC59mFWYR0c/MGKMDm1AJLjKdF4r
         vhSukI+70l/sfIaCSoN8j/4MGDy0IymfQCOjF05i/DStklPHKN4MhKlLc7zj1h+Y1Tc5
         kBG7IJ6lexPvD90KfG4qwWR1AsEAB70+JgFT+YUuwkobH2TgnMTzD4PceyXG7epwQ/Cs
         tatBgcGZzoPpw5rxKxXNaftI97mjlfUmNHF/WioUyjrDx7hkCqC6qKJxReYRsoVkCekb
         Tl3dQoK46wTqLXqkEVUtS/qqA7VIlKJrD41N93TZvwYSw1tQS4QhdQAHh4Q3OwF9m9S4
         0W2Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1773631200; x=1774236000; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ij7BQAoNTRfj4wBY3VfycFZbADxXMcvAxn0Mz8gf5Qs=;
        b=cFhtAwcub5bforK1H4s2CKXly/NVDVWvVDazRTsrWTlVXCSJDW/gU4u9DZK8gc5cuP
         kEy1OBsZ3sn13GhhyQgVFjTb8wsCaPwpoJy6cRTBBkEGLn0U1+unz/gePZg1uoOXJkzV
         Hg048rymaJAMD3s13TSQ+K6ItC/wzWD0UC9zjfl31VW4kB3s2bHZiy6PXaf/EU8g5WBm
         9s4h4ICEv/H0XFkSVuo+FU1P7DLdxCzMGIMgDkEfE3/XvcwgG7BxiJJvA5fsQUS14Wdm
         KzFcSHfsy6Xw8810kfd6UTTLjvDxDVryWu3x+prSCBcHO2agDy/WAObExJij7vgm/Nqz
         dDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773631200; x=1774236000;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ij7BQAoNTRfj4wBY3VfycFZbADxXMcvAxn0Mz8gf5Qs=;
        b=GMwE4YSrTdrIf3BV4vDcGTI+P0nmU7q+CCkoiMl4x4qcbSxHDBdn7BwFCfTM9WqfAB
         Jd+uyh8JnoQAeOzkeww3p28JuFZHwnt+LAQvFWLK9jAaFazT0A4zcmr9/qe5P+t2IUge
         45JR1zad592OY0W5TZsmIQtzb7VRAz7B59vss7ghlaOL8UN2xWQMsqqIW2pJOxY3wwTF
         U66lgU7IwsPRD0AtGMs+OFn5KRFFsNa/SYkevXRnRWTpgfY1HCftzQPtmky1RmCUmbeQ
         aVuC1Kkzm07ayplKqVaXRT/BHhEOih6rbkC7HqxloeGo8s1EKK0xdd0dXC+VYDc8f0AE
         xJJA==
X-Forwarded-Encrypted: i=1; AJvYcCWpswKXM+FLlbldnkMZx3KqmyXcT2oSRR7NNNwL0jlqmTe9YeENZjlVHKzhEcYgu1JIMhN0v0t6VFNl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2CNpRI0mZ68uRfmsusOQVu/vVfeqmbacabr+/V2WH1hocFqvQ
	tCxg+MvznwYBhHSYV8Qd05Aq1IRbMCXWjhI6ARWI/SIWKTZTVit98oZryHXPz9FdsHEq6dfHolL
	adq/s5uU7BBECwO2CtRyUD4Xhb2RirCWv60HlkbqTyw==
X-Gm-Gg: ATEYQzy0m6VUC0wrGsSktHz6JzX5sAeFrFDwVTvI3aqz8hjLq4NSc7485jZexipMcJS
	llXNGMNLPr2vP+g1suH9rZL3xl+gJ8OurFMFtPH4m27Lw4Bc+tBCVMRHPK6Z/Ck2+saFTt1Yw7V
	D9lFiTh4vc7njvZUF7BT7BZOLeWJqqLs42JAgWbAaybqeT4Ljbe451yiVG8re+2sKaplzrECysV
	e0SsnSGD4xl/FnhVSVau2Czwg+vgloklNtHHxu2KaFoqiRsx6YKBVLprnP4y2fJWPeTmQHr9FDL
	WwzKE2tuuA==
X-Received: by 2002:a05:6820:206:b0:67b:a8f8:f68c with SMTP id
 006d021491bc7-67bdaa8b0b2mr7859666eaf.70.1773631199909; Sun, 15 Mar 2026
 20:19:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CABvJ_xhtx1Ym8qyr6HsLWnkV6_c=V7TpKOYY3L-gKnVDr87rcA@mail.gmail.com>
 <CABvJ_xj+FtKgLN1Ur36ks7OLNWCy9-AotbfhsF6m1H4ycUSznA@mail.gmail.com>
In-Reply-To: <CABvJ_xj+FtKgLN1Ur36ks7OLNWCy9-AotbfhsF6m1H4ycUSznA@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 16 Mar 2026 11:19:49 +0800
X-Gm-Features: AaiRm51lmyar5RQv9F7R2YPS8ctgm9N0boo02dIGwcWamad2LKi-tcE3VrR22Pw
Message-ID: <CABvJ_xj6Pa4MBGqF6Y3va1+Ty-8eCUcxbGsRd78HXMnhyQq6=Q@mail.gmail.com>
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
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275918-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 37A5A2945C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 5:09=E2=80=AFPM Vincent Chen <vincent.chen@sifive.c=
om> wrote:
>
> >
> > Add initial implementation of RISC-V trace ramsink driver. The ramsink
> > is defined in the RISC-V Trace Control Interface specification.
> >
> > Co-developed-by: Anup Patel <anup.patel@oss.qualcomm.com>
> > Signed-off-by: Anup Patel <anup.patel@oss.qualcomm.com>
> > Signed-off-by: Mayuresh Chitale <mayuresh.chitale@oss.qualcomm.com>
> > ---
> >  drivers/hwtracing/rvtrace/Kconfig           |   9 +
> >  drivers/hwtracing/rvtrace/Makefile          |   1 +
> >  drivers/hwtracing/rvtrace/rvtrace-ramsink.c | 322 ++++++++++++++++++++
> >  3 files changed, 332 insertions(+)
> >  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> >
> > diff --git a/drivers/hwtracing/rvtrace/Kconfig
> > b/drivers/hwtracing/rvtrace/Kconfig
> > index ba35c05f3f54..0577f9acb858 100644
> > --- a/drivers/hwtracing/rvtrace/Kconfig
> > +++ b/drivers/hwtracing/rvtrace/Kconfig
> > @@ -21,3 +21,12 @@ config RVTRACE_ENCODER
> >   default y
> >   help
> >    This driver provides support for RISC-V Trace Encoder component.
> > +
> > +config RVTRACE_RAMSINK
> > + tristate "RISC-V Trace Ramsink driver"
> > + depends on RVTRACE
> > + select DMA_SHARED_BUFFER
> > + default y
> > + help
> > +  This driver provides support for Risc-V E-Trace Ramsink
> > +  component.
> > diff --git a/drivers/hwtracing/rvtrace/Makefile
> > b/drivers/hwtracing/rvtrace/Makefile
> > index f320693a1fc5..122e575da9fb 100644
> > --- a/drivers/hwtracing/rvtrace/Makefile
> > +++ b/drivers/hwtracing/rvtrace/Makefile
> > @@ -3,3 +3,4 @@
> >  obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> >  rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> >  obj-$(CONFIG_RVTRACE_ENCODER) +=3D rvtrace-encoder.o
> > +obj-$(CONFIG_RVTRACE_RAMSINK) +=3D rvtrace-ramsink.o
> > diff --git a/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> > b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> > new file mode 100644
> > index 000000000000..5393423c8f28
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/rvtrace-ramsink.c
> > @@ -0,0 +1,322 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2026 Qualcomm Technologies, Inc.
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
> > +#define RVTRACE_RAMSINK_STARTLOW_OFF 0x010
> > +#define RVTRACE_RAMSINK_STARTHIGH_OFF 0x014
> > +#define RVTRACE_RAMSINK_LIMITLOW_OFF 0x018
> > +#define RVTRACE_RAMSINK_LIMITHIGH_OFF 0x01c
> > +#define RVTRACE_RAMSINK_WPLOW_OFF 0x020
> > +#define RVTRACE_RAMSINK_WPHIGH_OFF 0x024
> > +#define RVTRACE_RAMSINK_WPLOW_WRAP 0x1
> > +#define RVTRACE_RAMSINK_CTRL_MODE_SHIFT 0x4
> > +#define RVTRACE_RAMSINK_CTRL_STP_WRAP_SHIFT 0x8
> > +
> > +enum rvtrace_ramsink_mode {
> > + MODE_SRAM,
> > + MODE_SMEM
> > +};
> > +
> > +struct rvtrace_ramsink_priv {
> > + size_t size;
> > + void *va;
> > + dma_addr_t start;
> > + dma_addr_t end;
> > + enum rvtrace_ramsink_mode mode;
> > + bool stop_on_wrap;
> > + int mem_acc_width;
> > +};
> > +
> > +struct trace_buf {
> > + void *base;
> > + long cur;
> > + size_t len;
> > +};
> > +
> > +static int rvtrace_ramsink_start(struct rvtrace_component *comp)
> > +{
> > + int ret;
> > + u32 val;
> > +
> > + val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> > + val |=3D BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> > + rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
> > + ret =3D rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> > +       RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 1,
> > +       comp->pdata->control_poll_timeout_usecs);
> > + if (ret)
> > + dev_err(&comp->dev, "failed to start ramsink.\n");
> > +
> > + return ret;
> > +}
> > +
> > +static int rvtrace_ramsink_stop(struct rvtrace_component *comp)
> > +{
> > + int ret;
> > + u32 val;
> > +
> > + val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
> > + val &=3D ~BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> > + rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
> > + ret =3D rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> > +       RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 0,
> > +       comp->pdata->control_poll_timeout_usecs);
> > + if (ret) {
> > + dev_err(&comp->dev, "failed to stop ramsink.\n");
> > + return ret;
> > + }
> > +
> > + return rvtrace_comp_poll_empty(comp);
> > +}
> > +
> > +static void tbuf_to_pbuf_copy(struct trace_buf *src, struct trace_buf
> > *dst, size_t size)
> > +{
> > + int bytes_dst, bytes_src, bytes;
> > + void *dst_addr, *src_addr;
> > +
> > + while (size) {
> > + src_addr =3D src->base + src->cur;
> > + dst_addr =3D dst->base + dst->cur;
> > +
> > + /* Ensure that there are no OOB memory accesses */
> > + if (dst->len - dst->cur < size)
> > + bytes_dst =3D dst->len - dst->cur;
> > + else
> > + bytes_dst =3D size;
> > +
> > + if (src->len - src->cur < size)
> > + bytes_src =3D src->len - src->cur;
> > + else
> > + bytes_src =3D size;
> > + bytes =3D bytes_dst < bytes_src ? bytes_dst : bytes_src;
> > + memcpy(dst_addr, src_addr, bytes);
> > + dst->cur =3D (dst->cur + bytes) % dst->len;
> > + src->cur =3D (src->cur + bytes) % src->len;
> > + size -=3D bytes;
> > + }
> > +}
> > +
> > +static size_t rvtrace_ramsink_copyto_auxbuf(struct rvtrace_component *=
comp,
> > +    struct rvtrace_perf_auxbuf *buf)
> > +{
> > + struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->dev);
> > + size_t size_wp_end =3D 0, size_start_wp =3D 0;
> > + struct trace_buf src, dst;
> > + u32 wp_low, wp_high, trram_ctrl;
> > + u64 buf_cur_head;
> > +
> > + dst.base =3D buf->base;
> > + dst.len =3D buf->length;
> > + dst.cur =3D buf->pos;
> > + src.base =3D priv->va;
> > + src.len =3D priv->size;
> > + wp_low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPLOW_OFF);
> > + wp_high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_WPHIGH_OFF);
> > + buf_cur_head =3D (u64)(wp_high) << 32 | wp_low;
> > + trram_ctrl =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFF=
SET);
> > + if (buf_cur_head & 0x1) {
> > + buf_cur_head &=3D ~RVTRACE_RAMSINK_WPLOW_WRAP;
> > + rvtrace_write32(comp->pdata, lower_32_bits(priv->start),
> > + RVTRACE_RAMSINK_WPLOW_OFF);
> > + rvtrace_write32(comp->pdata, upper_32_bits(priv->start),
> > + RVTRACE_RAMSINK_WPHIGH_OFF);
> > + src.cur =3D buf_cur_head - priv->start;
> > + size_wp_end =3D priv->end - buf_cur_head;
> > + tbuf_to_pbuf_copy(&src, &dst, size_wp_end);
> > + }
>
> Hi Anup,
> I have two questions about the handling of the wrap case.
> 1. If I understand correctly, the perf_aux_event has a flag,
> PERF_AUX_FLAG_TRUNCATED, which is used to indicate whether data loss
> has occurred within a record slice. Users can use perf commands such
> as perf report --stats to determine if the trace log contains the
> complete history. I notice that this driver currently sets
> stop_on_wrap=3Dfalse unconditionally, which means the hardware will wrap
> around and overwrite old data when the buffer is full. However, I
> don't see PERF_AUX_FLAG_TRUNCATED being set when wrap occurs.
> According to other drivers (e.g., ARM CoreSight ETR)
> ERF_AUX_FLAG_TRUNCATED should NOT be set in snapshot mode because:
> a) Data overwrite is expected behavior in snapshot mode,
> b) Setting TRUNCATED prevents the perf core from re-enabling the event
> Is the current implementation assuming that this driver only supports sna=
pshot?
>
> 2. Currently, perf tool snapshot mode requires users to explicitly add
> the "-S" option to perf record. If this driver only supports snapshot
> mode, do we consider either:
> a) Reject non-snapshot mode in rvtrace_setup_aux() with an error
> message like: "RISC-V TCI requires snapshot mode. Please use: perf
> record -S ..."
> or
> b) Emit a warning when snapshot=3Dfalse is detected: "RISC-V TCI:
> non-snapshot mode not supported, forcing snapshot mode"
> This would prevent users from unknowingly losing data when the buffer
> wraps around in non-snapshot mode.
> What do you think?
>
Hi Anup,

Sorry, I noticed that I had some misunderstanding about snapshot mode,
so I asked a confusing question in my previous email. At this moment,
we don't need to support snapshot mode, so we don't need to consider
PERF_AUX_FLAG_TRUNCATED handling for snapshot mode.

Therefore, my question becomes:
Do we need to set PERF_AUX_FLAG_TRUNCATED here to notify users that
some data has been lost when the buffer overflows?

Thanks,
Vincent Chen

> Thanks,
> Vincent Chen
> > +
> > + src.cur =3D 0;
> > + size_start_wp =3D buf_cur_head - priv->start;
> > + tbuf_to_pbuf_copy(&src, &dst, size_start_wp);
> > + dev_dbg(&comp->dev, "Copied %zu bytes\n", size_wp_end + size_start_wp=
);
> > + return (size_wp_end + size_start_wp);
> > +}
> > +
> > +static int rvtrace_ramsink_setup_buf(struct rvtrace_component *comp,
> > +     struct rvtrace_ramsink_priv *priv)
> > +{
> > + struct device *pdev =3D comp->pdata->dev;
> > + u64 start_min, limit_max, end;
> > + u32 low, high;
> > + int ret;
> > +
> > + /* Probe min and max values for start and limit registers */
> > + rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTLOW_OFF);
> > + rvtrace_write32(comp->pdata, 0, RVTRACE_RAMSINK_STARTHIGH_OFF);
> > + low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTLOW_OFF);
> > + high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_STARTHIGH_OFF);
> > + start_min =3D (u64)(high) << 32 | low;
> > +
> > + rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITLOW_OFF=
);
> > + rvtrace_write32(comp->pdata, 0xffffffff, RVTRACE_RAMSINK_LIMITHIGH_OF=
F);
> > + low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
> > + high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> > + limit_max =3D (u64)(high) << 32 | low;
> > +
> > + /* Set DMA mask based on the maximum allowed limit address */
> > + ret =3D dma_set_mask_and_coherent(pdev, DMA_BIT_MASK(fls64(limit_max)=
));
> > + if (ret)
> > + return ret;
> > +
> > + priv->va =3D dma_alloc_coherent(pdev, priv->size, &priv->start, GFP_K=
ERNEL);
> > + if (!priv->va)
> > + return -ENOMEM;
> > +
> > + priv->end =3D priv->start + priv->size;
> > + if (priv->end <=3D start_min || priv->start >=3D limit_max) {
> > + dma_free_coherent(pdev, priv->size, priv->va, priv->start);
> > + dev_err(&comp->dev, "DMA memory not addressable by device\n");
> > + return -EINVAL;
> > + }
> > +
> > + /* Setup ram sink start addresses */
> > + if (priv->start < start_min) {
> > + dev_warn(&comp->dev, "Ramsink start address updated from %pad to %pad=
\n",
> > + &priv->start, &start_min);
> > + priv->va +=3D start_min - priv->start;
> > + priv->start =3D start_min;
> > + }
> > +
> > + rvtrace_write32(comp->pdata, lower_32_bits(priv->start),
> > RVTRACE_RAMSINK_STARTLOW_OFF);
> > + rvtrace_write32(comp->pdata, upper_32_bits(priv->start),
> > RVTRACE_RAMSINK_STARTHIGH_OFF);
> > + rvtrace_write32(comp->pdata, lower_32_bits(priv->start),
> > RVTRACE_RAMSINK_WPLOW_OFF);
> > + rvtrace_write32(comp->pdata, upper_32_bits(priv->start),
> > RVTRACE_RAMSINK_WPHIGH_OFF);
> > + /* Setup ram sink limit addresses */
> > + if (priv->end > limit_max) {
> > + dev_warn(&comp->dev, "Ramsink limit address updated from %pad to %pad=
\n",
> > + &priv->end, &limit_max);
> > + priv->end =3D limit_max;
> > + priv->size =3D priv->end - priv->start;
> > + }
> > +
> > + /* Limit address needs to be set to end - mem_access_width to avoid
> > overflow */
> > + end =3D priv->end - priv->mem_acc_width;
> > + rvtrace_write32(comp->pdata, lower_32_bits(end),
> > RVTRACE_RAMSINK_LIMITLOW_OFF);
> > + rvtrace_write32(comp->pdata, upper_32_bits(end),
> > RVTRACE_RAMSINK_LIMITHIGH_OFF);
> > + low =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITLOW_OFF);
> > + high =3D rvtrace_read32(comp->pdata, RVTRACE_RAMSINK_LIMITHIGH_OFF);
> > + end =3D (u64)(high) << 32 | low;
> > + if (end !=3D (priv->end - 4)) {
> > + dev_warn(&comp->dev, "Ramsink limit address updated from %pad to %pad=
\n",
> > + &priv->end, &end);
> > + priv->end =3D end;
> > + priv->size =3D priv->end - priv->start;
> > + }
> > +
> > + return 0;
> > +}
> > +
> > +static int rvtrace_ramsink_setup(struct rvtrace_component *comp)
> > +{
> > + struct rvtrace_ramsink_priv *priv;
> > + u32 trram_ctrl;
> > + int ret;
> > +
> > + priv =3D devm_kzalloc(&comp->dev, sizeof(*priv), GFP_KERNEL);
> > + if (!priv)
> > + return -ENOMEM;
> > +
> > + /* Derive RAM sink memory size based on component implementation ID *=
/
> > + switch (comp->pdata->impid) {
> > + default:
> > + priv->size =3D SZ_1M;
> > + priv->mode =3D MODE_SMEM;
> > + priv->stop_on_wrap =3D false;
> > + priv->mem_acc_width =3D 4;
> > + break;
> > + }
> > +
> > + trram_ctrl =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFF=
SET);
> > + trram_ctrl |=3D priv->mode << RVTRACE_RAMSINK_CTRL_MODE_SHIFT;
> > + rvtrace_write32(comp->pdata, trram_ctrl, RVTRACE_COMPONENT_CTRL_OFFSE=
T);
> > + trram_ctrl =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFF=
SET);
> > + dev_dbg(&comp->dev, "mode: %s\n", (trram_ctrl >>
> > RVTRACE_RAMSINK_CTRL_MODE_SHIFT) & 0x1 ?
> > + "SMEM" : "SRAM");
> > +
> > + trram_ctrl |=3D priv->stop_on_wrap << RVTRACE_RAMSINK_CTRL_STP_WRAP_S=
HIFT;
> > + rvtrace_write32(comp->pdata, trram_ctrl, RVTRACE_COMPONENT_CTRL_OFFSE=
T);
> > +
> > + ret =3D rvtrace_ramsink_setup_buf(comp, priv);
> > + if (!ret)
> > + dev_set_drvdata(&comp->dev, priv);
> > +
> > + return ret;
> > +}
> > +
> > +static void rvtrace_ramsink_cleanup(struct rvtrace_component *comp)
> > +{
> > + struct rvtrace_ramsink_priv *priv =3D dev_get_drvdata(&comp->dev);
> > +
> > + dma_free_coherent(comp->pdata->dev, priv->size, priv->va, priv->start=
);
> > +}
> > +
> > +static int rvtrace_ramsink_probe(struct rvtrace_component *comp)
> > +{
> > + int ret;
> > +
> > + ret =3D rvtrace_ramsink_setup(comp);
> > + if (ret)
> > + return dev_err_probe(&comp->dev, ret, "failed to setup ramsink.\n");
> > +
> > + ret =3D rvtrace_enable_component(comp->pdata);
> > + if (ret)
> > + return dev_err_probe(&comp->dev, ret, "failed to enable ramsink.\n");
> > +
> > + return ret;
> > +}
> > +
> > +static void rvtrace_ramsink_remove(struct rvtrace_component *comp)
> > +{
> > + int ret;
> > +
> > + ret =3D rvtrace_disable_component(comp->pdata);
> > + if (ret)
> > + dev_err(&comp->dev, "failed to disable ramsink.\n");
> > +
> > + rvtrace_ramsink_cleanup(comp);
> > +}
> > +
> > +static struct rvtrace_component_id rvtrace_ramsink_ids[] =3D {
> > + { .type =3D RVTRACE_COMPONENT_TYPE_RAMSINK,
> > +  .version =3D rvtrace_component_mkversion(1, 0), },
> > + {},
> > +};
> > +
> > +static struct rvtrace_driver rvtrace_ramsink_driver =3D {
> > + .id_table =3D rvtrace_ramsink_ids,
> > + .copyto_auxbuf =3D rvtrace_ramsink_copyto_auxbuf,
> > + .stop =3D rvtrace_ramsink_stop,
> > + .start =3D rvtrace_ramsink_start,
> > + .probe =3D rvtrace_ramsink_probe,
> > + .remove =3D rvtrace_ramsink_remove,
> > + .driver =3D {
> > + .name =3D "rvtrace-ramsink",
> > + },
> > +};
> > +
> > +static int __init rvtrace_ramsink_init(void)
> > +{
> > + return rvtrace_register_driver(&rvtrace_ramsink_driver);
> > +}
> > +
> > +static void __exit rvtrace_ramsink_exit(void)
> > +{
> > + rvtrace_unregister_driver(&rvtrace_ramsink_driver);
> > +}
> > +
> > +module_init(rvtrace_ramsink_init);
> > +module_exit(rvtrace_ramsink_exit);
> > +
> > +/* Module information */
> > +MODULE_AUTHOR("Mayuresh Chitale");
> > +MODULE_DESCRIPTION("RISC-V Trace Ramsink Driver");
> > +MODULE_LICENSE("GPL");

