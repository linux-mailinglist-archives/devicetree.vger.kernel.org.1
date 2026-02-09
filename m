Return-Path: <devicetree+bounces-263977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BkCBgHbiWndCgAAu9opvQ
	(envelope-from <devicetree+bounces-263977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:02:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D024A10F5DC
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E82A030488F4
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F19837105B;
	Mon,  9 Feb 2026 11:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="HnDHsMF1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E58B36F43C
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770637426; cv=pass; b=fPivaAbMU5V9hU6bLChar6NuxMfa3HRl1nbsbo42LvRNjs/WRN4OvU4DjQOG8MCOKO42CCeLNwr7BJV2m1vc9ikvgo6N2NrOT1ZYgmqrK2feRjFAo04C4JwpEBI88zcBEBIWKbFo4WE6kXf4tmX75aKLHKco+r2mwfmY/6V1kGg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770637426; c=relaxed/simple;
	bh=V9LX0b6j/f+QDoUMZUA2VF91oFl7dxRQ+qtjK1kaOfA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bMcU3lEMm2JeatNgN7+VponPboMfMZK/H5rxQ5dakU8Z664jHV5HMB+aGbsm+5FbRZLiWekeDqfbiRuAEZ/2rc8l6gMylccIe1EnOMPb0WS0q5KqVJvVUC0Q3oGla89RGeiAsrspdSjG+OKZ+JIgncdxtR1cMA0ksKcuCbOdkdc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=HnDHsMF1; arc=pass smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b86ce04c5cso511891eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:43:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770637425; cv=none;
        d=google.com; s=arc-20240605;
        b=RNc5kSne8J0qHrfmF+ErnAGs8kKujnEpzur5a9hvyO/AMx7K9a7L5u8CN9PwFYwLh5
         VzSP5HWPfRP0+MubFNyFIMsjblcrUwXN1CtWRNVP32rvfwflOLfe6Ej/AEqmORj4m56D
         uI2L1zR3iaKzbF6iIoJs0Txmr5kCcMSFuSj8VpX0orwi/Iefki6bKN1JNgYi2Rv/jQcY
         sMGbDBpLiRM2LQg2EqMyWDj0fOtuni5BvRB4DoLZOb8BjUDHnh6mSWrAYxSQ3DxuOu9w
         CRqSYMHKLFipD4pjXx/kpCp2p2xpHuJ44ihS5EL/XNp2yGQHUfZyyC1QB8Q9PGeGdhwI
         YfOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mjaQy6toLTtxSQqrGhkZ64BjGRGdySfdhoxIG5YVZKY=;
        fh=tjVoneEbaO2VbNu/5YSLsm67PDEg5Sb0Syudhbw7q5g=;
        b=eWm34Rq8OlEN870SPyB+7USfesE/AQogvlXFt86V3zdoTyrRUCcLfwB186f+cnv0b5
         i0p4bnTbpS+Q7Zp0DnDnWOU7bimDz37uxZbHFVvKJjU7AalV32hiHKGE9CF6EcY+jwmd
         GgjDjUJu8QRyI06AGhqtuxsRbolW78tETH6GuTIWMGH/BETuBD3ZMeQKvOcres47eiDf
         wMtZ/6Hm49/Mvf6KNHiMN76ygehNYSxuxDF3MDfWNk7NNKFC87ypITdDVFPiWzmfAQ2N
         BVxMXeQ7tkoZAeL3+DkxJtpPkqMRXhrOPOBoGaSVNTR1Z2JYRePICFyPc3EQZqo99UPz
         1u0Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1770637425; x=1771242225; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjaQy6toLTtxSQqrGhkZ64BjGRGdySfdhoxIG5YVZKY=;
        b=HnDHsMF1KbU+jmAtRqgVA4fHSDGs9UidrNmk4CHyqklgdiNpU95fKbd5oNydEHrsRX
         kHe0Xw/PEu84bvZUaP8jeH/XTvo2BXopSmgMonyuZq150vnQn7nLjTj8xFV9al2Drzur
         m/IqYhT9DUagvZRLFp7Zjmf2crWbTEuVBW2tmmHzNxagQc5m4ShnDyDIl2zzn1rF1PAs
         RviBnDHM/Z8s5/N7JpVxgiJKeDNmKSGEB/ro9weQWC8NUFPdMUqPgiz2/2MYlqM4+rmN
         EqMT0LB4Tpa32EqvzDSz9Nu78EQWtkc6NR07wBUtOYtNdiVrOSInIxM/vZXtRLYIlQ4G
         UEjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770637425; x=1771242225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mjaQy6toLTtxSQqrGhkZ64BjGRGdySfdhoxIG5YVZKY=;
        b=Wu2NNyhy2lOmgchpY1mzmtTMe6RBOucqut3d6RYjH+Px39M2r2PB1kYtL5N0BeDJFS
         yh09w2MP4CubKwrpPoxwUa7oKdWKbZKYZUJ9Fn3CMsub8dOoiHr7pHaelUDjweF2Wl7f
         7oWPjWeg7wB/ilFnGl6d4lKfcoEDn349egragWJIskIPHx0M9cksvEpznOzMpDGNnrDC
         xYYP5VW4cLWOsa1s7DyPDzFU+ZOV9fvy38ZniVmLCJFj7urA4XpbD1MA3TRVbqyWBBaw
         l2hpTTnQU4UlbgBBUlHbRQiunuCO3ouAY0FRUh0ytUPYmwOp82SlO+RrmgQWMz5wD58b
         sK4w==
X-Forwarded-Encrypted: i=1; AJvYcCVjM/c9GHW+mlrzfhExPIaOsTnTIOHl2zITSFMBBoMgqmcXmL042dJiujhkqWi3zAgGluDu4YAUVaiG@vger.kernel.org
X-Gm-Message-State: AOJu0YxuqB+dmSouLLgVAqU455i9hAsxESmGVvfYzOpoZHFTyU1UCwHA
	fb10vJOPEtyFeYOpHNrjiMfV4VwcjvIPSRnVmcOlJ8g7mZFI7ecIvhR3VQ+az7co4pWqjQ9JBZ2
	H0TNJ0p6QSAicQMciQLQewg47iQ+q29zTZl6fcIQtlg==
X-Gm-Gg: AZuq6aIaBbCuV6loMcfdQnRYxifLz8GMEFqB8LM1xCBL+Gg5u+0JlydvDC53ekB5StN
	eYqzrbdIo27r7moO8tZ1f67BF1wDltCVAuEs2aKhjb/AXqMw14X3Yf1HmIn0qkz8mqbLyQZJNkj
	XVvdaoyxIn1fhPnZYETBf2Rr01N1qh22M93UOuDKlIdUu26j+RbSmn1PXc3WK6XRXG36DfLuc7L
	Tej/m/pbC2PqXv2SKKCjGEL7UNdcdqslyYubANkHGB0mzT/7B+xzHJn3iIYhRxOqA12Izm0pQXd
	rvXoLneqOEHWPqT4wsoHMVdQE051
X-Received: by 2002:a05:7300:6c21:b0:2ba:659f:2002 with SMTP id
 5a478bee46e88-2ba659f21a3mr1746732eec.15.1770637424967; Mon, 09 Feb 2026
 03:43:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-10-apatel@ventanamicro.com> <CAPqJEFpSvaa9xKQ4Rtork6ma8__mmBLRCMAeZR8e_-kMW324oQ@mail.gmail.com>
In-Reply-To: <CAPqJEFpSvaa9xKQ4Rtork6ma8__mmBLRCMAeZR8e_-kMW324oQ@mail.gmail.com>
From: Mayuresh Chitale <mchitale@ventanamicro.com>
Date: Mon, 9 Feb 2026 17:13:08 +0530
X-Gm-Features: AZwV_QiYcCWnL5aqaSv0MvyDzXDDvxBQIV3oaIDrB1WhGIfelBy3hv_LDaRaWHM
Message-ID: <CAN37VV730N1Z=D7tuMj79yHRPS1QETLmg10+huKUvNq8QtndoQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/12] rvtrace: Add perf driver for tracing using perf tool
To: Eric Lin <eric.lin@sifive.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[ventanamicro.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ventanamicro.com];
	TAGGED_FROM(0.00)[bounces-263977-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ventanamicro.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchitale@ventanamicro.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ventanamicro.com,kernel.org,sifive.com,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,arm.com,vger.kernel.org,ghiti.fr,linux.dev,infradead.org,brainfault.org,intel.com,redhat.com,gmail.com,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rvtrace_pmu.read:url,infradead.org:url,infradead.org:email,mail.gmail.com:mid,ventanamicro.com:email,ventanamicro.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sifive.com:email,venanamicro.com:email]
X-Rspamd-Queue-Id: D024A10F5DC
X-Rspamd-Action: no action

Hi Eric,

On Fri, Feb 6, 2026 at 6:37=E2=80=AFPM Eric Lin <eric.lin@sifive.com> wrote=
:
>
> Hi Anup,
>
> On Sat, Nov 1, 2025 at 11:45=E2=80=AFPM Anup Patel <apatel@ventanamicro.c=
om> wrote:
> >
> > From: Mayuresh Chitale <mchitale@ventanamicro.com>
> >
> > Add perf driver for RISC-V tracing similar to ARM Coresight and Hisilic=
on
> > PTT drivers. The driver adds 'rvtrace' event descriptor which can be us=
ed
> > by the perf tool to record the RISC-V trace data.
> >
> > Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > ---
> >  drivers/hwtracing/rvtrace/Kconfig        |   1 +
> >  drivers/hwtracing/rvtrace/Makefile       |   2 +-
> >  drivers/hwtracing/rvtrace/rvtrace-core.c |   8 +
> >  drivers/hwtracing/rvtrace/rvtrace-perf.c | 343 +++++++++++++++++++++++
> >  include/linux/rvtrace.h                  |   3 +
> >  5 files changed, 356 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-perf.c
> >
> > diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtr=
ace/Kconfig
> > index 0577f9acb858..ba11acf1117d 100644
> > --- a/drivers/hwtracing/rvtrace/Kconfig
> > +++ b/drivers/hwtracing/rvtrace/Kconfig
> > @@ -4,6 +4,7 @@ menuconfig RVTRACE
> >         tristate "RISC-V Trace Support"
> >         depends on RISCV
> >         depends on OF
> > +       select PERF_EVENTS
> >         default RISCV
> >         help
> >           This framework provides a kernel interface for the RISC-V tra=
ce
> > diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvt=
race/Makefile
> > index 122e575da9fb..07403f4d94e3 100644
> > --- a/drivers/hwtracing/rvtrace/Makefile
> > +++ b/drivers/hwtracing/rvtrace/Makefile
> > @@ -1,6 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >
> >  obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> > -rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> > +rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o rvtrace-perf.o
> >  obj-$(CONFIG_RVTRACE_ENCODER) +=3D rvtrace-encoder.o
> >  obj-$(CONFIG_RVTRACE_RAMSINK) +=3D rvtrace-ramsink.o
> > diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtraci=
ng/rvtrace/rvtrace-core.c
> > index b955e5f3b048..bbe39aaf930d 100644
> > --- a/drivers/hwtracing/rvtrace/rvtrace-core.c
> > +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
> > @@ -777,11 +777,19 @@ static int __init rvtrace_init(void)
> >                 return ret;
> >         }
> >
> > +       ret =3D rvtrace_perf_init();
> > +       if (ret) {
> > +               platform_driver_unregister(&rvtrace_platform_driver);
> > +               bus_unregister(&rvtrace_bustype);
> > +               return ret;
> > +       }
> > +
> >         return 0;
> >  }
> >
> >  static void __exit rvtrace_exit(void)
> >  {
> > +       rvtrace_perf_exit();
> >         platform_driver_unregister(&rvtrace_platform_driver);
> >         bus_unregister(&rvtrace_bustype);
> >  }
> > diff --git a/drivers/hwtracing/rvtrace/rvtrace-perf.c b/drivers/hwtraci=
ng/rvtrace/rvtrace-perf.c
> > new file mode 100644
> > index 000000000000..2d3039f8b681
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/rvtrace-perf.c
> > @@ -0,0 +1,343 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright(C) 2025 Ventanamicro Limited. All rights reserved.
> > + * Author: Mayuresh Chitale <mchitale@venanamicro.com>
> > + */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/cpumask.h>
> > +#include <linux/device.h>
> > +#include <linux/list.h>
> > +#include <linux/mm.h>
> > +#include <linux/init.h>
> > +#include <linux/perf_event.h>
> > +#include <linux/vmalloc.h>
> > +#include <linux/percpu-defs.h>
> > +#include <linux/slab.h>
> > +#include <linux/stringhash.h>
> > +#include <linux/types.h>
> > +#include <linux/workqueue.h>
> > +#include <linux/rvtrace.h>
> > +
> > +#define RVTRACE_PMU_NAME "rvtrace"
> > +#define RVTRACE_BUF_LEN (4 * 1024 * 1024)
>
> Currently, it seems "RVTRACE_BUF_LEN" is not used. Should we remove it?
Yes, it can be removed.

> Best regards,
> Eric Lin
>
> > +
> > +static struct pmu rvtrace_pmu;
> > +static DEFINE_SPINLOCK(perf_buf_lock);
> > +
> > +/**
> > + * struct rvtrace_event_data - RISC-V trace specific perf event data
> > + * @work:              Handle to free allocated memory outside IRQ con=
text.
> > + * @mask:              Hold the CPU(s) this event was set for.
> > + * @aux_hwid_done:     Whether a CPU has emitted the TraceID packet or=
 not.
> > + * @path:              An array of path, each slot for one CPU.
> > + * @buf:               Aux buffer / pages allocated by perf framework.
> > + */
> > +struct rvtrace_event_data {
> > +       struct work_struct work;
> > +       cpumask_t mask;
> > +       cpumask_t aux_hwid_done;
> > +       struct rvtrace_path * __percpu *path;
> > +       struct rvtrace_perf_auxbuf buf;
> > +};
> > +
> > +struct rvtrace_ctxt {
> > +       struct perf_output_handle handle;
> > +       struct rvtrace_event_data *event_data;
> > +};
> > +
> > +static DEFINE_PER_CPU(struct rvtrace_ctxt, rvtrace_ctxt);
> > +
> > +static void *alloc_event_data(int cpu)
> > +{
> > +       struct rvtrace_event_data *event_data;
> > +       cpumask_t *mask;
> > +
> > +       event_data =3D kzalloc(sizeof(*event_data), GFP_KERNEL);
> > +       if (!event_data)
> > +               return NULL;
> > +
> > +       /* Update mask as per selected CPUs */
> > +       mask =3D &event_data->mask;
> > +       if (cpu !=3D -1)
> > +               cpumask_set_cpu(cpu, mask);
> > +       else
> > +               cpumask_copy(mask, cpu_present_mask);
> > +
> > +       event_data->path =3D alloc_percpu(struct rvtrace_path *);
> > +       return event_data;
> > +}
> > +
> > +static void rvtrace_free_aux(void *data)
> > +{
> > +       struct rvtrace_event_data *event_data =3D data;
> > +
> > +       schedule_work(&event_data->work);
> > +}
> > +
> > +static struct rvtrace_path **rvtrace_event_cpu_path_ptr(struct rvtrace=
_event_data *data,
> > +                                                       int cpu)
> > +{
> > +       return per_cpu_ptr(data->path, cpu);
> > +}
> > +
> > +static void free_event_data(struct work_struct *work)
> > +{
> > +       struct rvtrace_event_data *event_data;
> > +       struct rvtrace_path *path;
> > +       cpumask_t *mask;
> > +       int cpu;
> > +
> > +       event_data =3D container_of(work, struct rvtrace_event_data, wo=
rk);
> > +       mask =3D &event_data->mask;
> > +       for_each_cpu(cpu, mask) {
> > +               path =3D *rvtrace_event_cpu_path_ptr(event_data, cpu);
> > +               rvtrace_destroy_path(path);
> > +       }
> > +       free_percpu(event_data->path);
> > +       kfree(event_data);
> > +}
> > +
> > +static void *rvtrace_setup_aux(struct perf_event *event, void **pages,
> > +                              int nr_pages, bool overwrite)
> > +{
> > +       struct rvtrace_event_data *event_data =3D NULL;
> > +       struct page **pagelist;
> > +       int cpu =3D event->cpu, i;
> > +       cpumask_t *mask;
> > +
> > +       event_data =3D alloc_event_data(cpu);
> > +       if (!event_data)
> > +               return NULL;
> > +
> > +       INIT_WORK(&event_data->work, free_event_data);
> > +       mask =3D &event_data->mask;
> > +       /*
> > +        * Create the path for each CPU in the mask. In case of any fai=
lure skip the CPU
> > +        */
> > +       for_each_cpu(cpu, mask) {
> > +               struct rvtrace_component *src;
> > +               struct rvtrace_path *path;
> > +
> > +               src =3D rvtrace_cpu_source(cpu);
> > +               if (!src)
> > +                       continue;
> > +
> > +               path =3D rvtrace_create_path(src, NULL, RVTRACE_COMPONE=
NT_MODE_PERF);
> > +               if (!path)
> > +                       continue;
> > +
> > +               *rvtrace_event_cpu_path_ptr(event_data, cpu) =3D path;
> > +       }
> > +
> > +       /* If we don't have any CPUs ready for tracing, abort */
> > +       cpu =3D cpumask_first(&event_data->mask);
> > +       if (cpu >=3D nr_cpu_ids)
> > +               goto err;
> > +
> > +       pagelist =3D kcalloc(nr_pages, sizeof(*pagelist), GFP_KERNEL);
> > +       if (!pagelist)
> > +               goto err;
> > +
> > +       for (i =3D 0; i < nr_pages; i++)
> > +               pagelist[i] =3D virt_to_page(pages[i]);
> > +
> > +       event_data->buf.base =3D vmap(pagelist, nr_pages, VM_MAP, PAGE_=
KERNEL);
> > +       if (!event_data->buf.base) {
> > +               kfree(pagelist);
> > +               goto err;
> > +       }
> > +
> > +       event_data->buf.nr_pages =3D nr_pages;
> > +       event_data->buf.length =3D nr_pages * PAGE_SIZE;
> > +       event_data->buf.pos =3D 0;
> > +       return event_data;
> > +err:
> > +       rvtrace_free_aux(event_data);
> > +       return NULL;
> > +}
> > +
> > +static void rvtrace_event_read(struct perf_event *event)
> > +{
> > +}
> > +
> > +static void rvtrace_event_destroy(struct perf_event *event)
> > +{
> > +}
> > +
> > +static int rvtrace_event_init(struct perf_event *event)
> > +{
> > +       if (event->attr.type !=3D rvtrace_pmu.type)
> > +               return -EINVAL;
> > +
> > +       event->destroy =3D rvtrace_event_destroy;
> > +       return 0;
> > +}
> > +
> > +static void rvtrace_event_start(struct perf_event *event, int flags)
> > +{
> > +       struct rvtrace_ctxt *ctxt =3D this_cpu_ptr(&rvtrace_ctxt);
> > +       struct perf_output_handle *handle =3D &ctxt->handle;
> > +       struct rvtrace_event_data *event_data;
> > +       int cpu =3D smp_processor_id();
> > +       struct rvtrace_path *path;
> > +
> > +       if (WARN_ON(ctxt->event_data))
> > +               goto fail;
> > +
> > +       /*
> > +        * Deal with the ring buffer API and get a handle on the
> > +        * session's information.
> > +        */
> > +       event_data =3D perf_aux_output_begin(handle, event);
> > +       if (!event_data)
> > +               goto fail;
> > +
> > +       if (!cpumask_test_cpu(cpu, &event_data->mask))
> > +               goto out;
> > +
> > +       event_data->buf.pos =3D handle->head % event_data->buf.length;
> > +       path =3D *rvtrace_event_cpu_path_ptr(event_data, cpu);
> > +       if (!path) {
> > +               pr_err("Error. Path not found\n");
> > +               return;
> > +       }
> > +
> > +       if (rvtrace_path_start(path)) {
> > +               pr_err("Error. Tracing not started\n");
> > +               return;
> > +       }
> > +
> > +       /*
> > +        * output cpu / trace ID in perf record, once for the lifetime
> > +        * of the event.
> > +        */
> > +       if (!cpumask_test_cpu(cpu, &event_data->aux_hwid_done)) {
> > +               cpumask_set_cpu(cpu, &event_data->aux_hwid_done);
> > +               perf_report_aux_output_id(event, cpu);
> > +       }
> > +
> > +out:
> > +       /* Tell the perf core the event is alive */
> > +       event->hw.state =3D 0;
> > +       ctxt->event_data =3D event_data;
> > +       return;
> > +fail:
> > +       event->hw.state =3D PERF_HES_STOPPED;
> > +}
> > +
> > +static void rvtrace_event_stop(struct perf_event *event, int mode)
> > +{
> > +       struct rvtrace_ctxt *ctxt =3D this_cpu_ptr(&rvtrace_ctxt);
> > +       struct perf_output_handle *handle =3D &ctxt->handle;
> > +       struct rvtrace_event_data *event_data;
> > +       int ret, cpu =3D smp_processor_id();
> > +       struct rvtrace_path *path;
> > +       size_t size;
> > +
> > +       if (event->hw.state =3D=3D PERF_HES_STOPPED)
> > +               return;
> > +
> > +       if (handle->event &&
> > +           WARN_ON(perf_get_aux(handle) !=3D ctxt->event_data))
> > +               return;
> > +
> > +       event_data =3D ctxt->event_data;
> > +       ctxt->event_data =3D NULL;
> > +
> > +       if (WARN_ON(!event_data))
> > +               return;
> > +
> > +       if (handle->event && (mode & PERF_EF_UPDATE) && !cpumask_test_c=
pu(cpu, &event_data->mask)) {
> > +               event->hw.state =3D PERF_HES_STOPPED;
> > +               perf_aux_output_end(handle, 0);
> > +               return;
> > +       }
> > +
> > +       /* stop tracing */
> > +       path =3D *rvtrace_event_cpu_path_ptr(event_data, cpu);
> > +       if (!path) {
> > +               pr_err("Error. Path not found\n");
> > +               return;
> > +       }
> > +
> > +       if (rvtrace_path_stop(path)) {
> > +               pr_err("Error. Tracing not stopped\n");
> > +               return;
> > +       }
> > +
> > +       event->hw.state =3D PERF_HES_STOPPED;
> > +       if (handle->event && (mode & PERF_EF_UPDATE)) {
> > +               if (WARN_ON_ONCE(handle->event !=3D event))
> > +                       return;
> > +               spin_lock(&perf_buf_lock);
> > +               ret =3D rvtrace_path_copyto_auxbuf(path, &event_data->b=
uf, &size);
> > +               spin_unlock(&perf_buf_lock);
> > +               WARN_ON_ONCE(ret);
> > +               if (READ_ONCE(handle->event))
> > +                       perf_aux_output_end(handle, size);
> > +               else
> > +                       WARN_ON(size);
> > +       }
> > +}
> > +
> > +static int rvtrace_event_add(struct perf_event *event, int mode)
> > +{
> > +       struct hw_perf_event *hwc =3D &event->hw;
> > +       int ret =3D 0;
> > +
> > +       if (mode & PERF_EF_START) {
> > +               rvtrace_event_start(event, 0);
> > +               if (hwc->state & PERF_HES_STOPPED)
> > +                       ret =3D -EINVAL;
> > +       } else {
> > +               hwc->state =3D PERF_HES_STOPPED;
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> > +static void rvtrace_event_del(struct perf_event *event, int mode)
> > +{
> > +       rvtrace_event_stop(event, PERF_EF_UPDATE);
> > +}
> > +
> > +PMU_FORMAT_ATTR(event, "config:0-0");
> > +
> > +static struct attribute *rvtrace_pmu_formats_attr[] =3D {
> > +       &format_attr_event.attr,
> > +       NULL,
> > +};
> > +
> > +static struct attribute_group rvtrace_pmu_format_group =3D {
> > +       .name =3D "format",
> > +       .attrs =3D rvtrace_pmu_formats_attr,
> > +};
> > +
> > +static const struct attribute_group *rvtrace_pmu_attr_groups[] =3D {
> > +       &rvtrace_pmu_format_group,
> > +       NULL,
> > +};
> > +
> > +int __init rvtrace_perf_init(void)
> > +{
> > +       rvtrace_pmu.capabilities        =3D (PERF_PMU_CAP_EXCLUSIVE | P=
ERF_PMU_CAP_ITRACE);
> > +       rvtrace_pmu.attr_groups         =3D rvtrace_pmu_attr_groups;
> > +       rvtrace_pmu.task_ctx_nr         =3D perf_sw_context;
> > +       rvtrace_pmu.read                =3D rvtrace_event_read;
> > +       rvtrace_pmu.event_init          =3D rvtrace_event_init;
> > +       rvtrace_pmu.setup_aux           =3D rvtrace_setup_aux;
> > +       rvtrace_pmu.free_aux            =3D rvtrace_free_aux;
> > +       rvtrace_pmu.start               =3D rvtrace_event_start;
> > +       rvtrace_pmu.stop                =3D rvtrace_event_stop;
> > +       rvtrace_pmu.add                 =3D rvtrace_event_add;
> > +       rvtrace_pmu.del                 =3D rvtrace_event_del;
> > +       rvtrace_pmu.module              =3D THIS_MODULE;
> > +
> > +       return perf_pmu_register(&rvtrace_pmu, RVTRACE_PMU_NAME, -1);
> > +}
> > +
> > +void __exit rvtrace_perf_exit(void)
> > +{
> > +       perf_pmu_unregister(&rvtrace_pmu);
> > +}
> > diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
> > index cecf6c153ca6..d5f782ac132f 100644
> > --- a/include/linux/rvtrace.h
> > +++ b/include/linux/rvtrace.h
> > @@ -343,4 +343,7 @@ static inline int rvtrace_comp_is_empty(struct rvtr=
ace_component *comp)
> >                                 comp->pdata->control_poll_timeout_usecs=
);
> >  }
> >
> > +int rvtrace_perf_init(void);
> > +void rvtrace_perf_exit(void);
> > +
> >  #endif
> > --
> > 2.43.0
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

