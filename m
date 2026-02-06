Return-Path: <devicetree+bounces-263351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCoWHannhWnCHwQAu9opvQ
	(envelope-from <devicetree+bounces-263351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:07:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F86FDDBA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 608893010523
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D498D39448B;
	Fri,  6 Feb 2026 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="DnzP064X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5778030BB84
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770383270; cv=pass; b=KVw9RXsZ7FYG0pD/Bs8zipErb2tKdBCFMo0GQp87rKsw1WAcb434useUPq9JJrjnDaEmFN4pkL3PXgs46xlmcfVOKanW4xLNonL9nKxEYuTzE++7uhfBIlaXeaw2NxHdGhVArTbC0N7S+QnGXCcAdCo9oDZk+6Uhzuq6JASjp38=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770383270; c=relaxed/simple;
	bh=EpQvoJ39tJBb3tL/bwg36Q+ueM3dc0lbZSnmGijff9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jR0d0K125FzpoF2e/JkHyvr90uEpl2fl011NZUOi6aINtQuS3OUOsk3dEtc0ujli9HGJ9Hk3I4NhvvD+sEm49g17MHVGdr2PihOX30nvrV/qsXsNda960mh1PUKajSEWOMpJqmj2B522XnPeFyRsKLBmpnZ4vKMY+RR6DQlBTZs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=DnzP064X; arc=pass smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-385baa8afaaso19114191fa.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770383268; cv=none;
        d=google.com; s=arc-20240605;
        b=McM+co2phGZoOaAfyjTMAz9gq8xNeuKVx6ZHRra48U3MNZiv2K8h+8ype2f9/iXVPV
         YvRSLaG0hVeMpzYYX7cYBvWnr/1+iPlo65dRHF7r4YDe6SHRF50pk31H53FdnLhBdEBY
         eis1HpnaWIKuCGgyB3jY/kgqpUBLpd21kCRFXveteE5tnLRVRnbjACkFsm4tZnhDz3aa
         JG9K0ddLNHzNlev2ykqPs1KoyOCjR37fLVxGQ2vwCet+KoMW9E5IMK/FYslDpE8M3fyD
         Qc5Ftv/MLC0yd2YLWjXoWPZOCUO5zYH0Zc4KwWqkaz/0pmmDmVQEbE9ZEy3M6LqZ3K93
         4DAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rW59AVtxF9LpVaGBV0fLMiBcHnAXRmvC4vMz14cPPxs=;
        fh=StMklSwzRn3ph8w5fJOL7AmzxNi/+Xiu2KltzzqpEr0=;
        b=VssFSZJLvpF/53YAfZ0EkCvviLbDwW93euF+6cN6EQu1RJOmwl3bZnz+LiXGqMc2FI
         W8GLdmEIq+doZFbbDCPtvQZx373ddUR76Y/YmwnHEzEKLogbRU1x/12KaanW/g6mXrfg
         gF00AmW/nBiVfR05FnjMIQuI1ak+qlmQcbIAlozZzu0uETOmCcGr/jn7MT6TUwXmARih
         /j+xip5UQbBzutLDTZVMmah7TofFtOAdk13z6Q6YoNmTWdEUxmXO6VKKJpK5IieLeQjd
         0fCi5pnwxJ7wrJQ5ZJupffyO1V8504lWBEqOCWqS9YOxLkF9EY6nQ7Gk+XtFfcWWJ4pJ
         qe+w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1770383268; x=1770988068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rW59AVtxF9LpVaGBV0fLMiBcHnAXRmvC4vMz14cPPxs=;
        b=DnzP064XPmDpEB2T35rVUIDo3Uwe340c+2VJeMDSzyTMAVuVTmnAKvuKbzJA3Uynw7
         7naqNJFWn5B3THv4id7xYVnhqZTpynMQ6tz7pVW+1ZFnUl04HJ3JXnNagoPerT/JAXQB
         DZaJuf9n9fu8KuayU4h+ZBPBRrxSENNY7qP/m6kR/qqmZRtzUciD+OpHhBTdM7e9AU/n
         MGcUb/ufNgLDc06gJcwvg4x4qa5EHBSHFyP3KKFVZUkTtJchQlivYLfJKeKQ23hjx0tR
         43OF4rTypuuzl4cEfaXA1JA9m7P+2HwQwEeZvi713uZ+pIdY1+g++C/JGhSL3NRMsJ6p
         J1yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770383268; x=1770988068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rW59AVtxF9LpVaGBV0fLMiBcHnAXRmvC4vMz14cPPxs=;
        b=cZbDwp0z7xRA2fKcqQSY2Fit9KuFN3Vu/y7Pcg/Q5Ns9B5QIJTLyL8hwl1QKI+k9oY
         k48qB5iuvUeAUcwTFoBZSRxR/oCJfSHwTtopcl8sBvHiPS8SZmj79k5aON3z3AbbSoGD
         ZxgYfw9G4QBivyCpIbEaO5XHeNg/auJD9EOAIaSErG29bdAI8Kb5NC06mxgUTBgfRg7E
         9DFk1V8ZTDYfG/HlHYA1vViDyWOWfq3KhZLdsIO/UPTVAVKcm02CrPtw99LxGAdZ7AKv
         CmZyAZwJ3GXxX5r3WPcnntztWEjyDnSMicbKUDSLUVZ4u/Ojqc0PezuozPRtBu46vsVC
         XmlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeQRFTDfnYpzVFmT5flr/dmEDFmyZoW9I+4HPe0uRa2rBO0yMeCp8TrQAsXooobF44nbibke/n3RdJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwtTZxKn//e1gbn9vUSttGu+ujVg7WxWcHjasgK6W2pfqkf8fn0
	McgNobIhIaEqWg7Yy9hVubZIwFpNCw5VF4PAYu00GfT5e9PlUugnJqJqZ8b4g1vwJNHTie3SF8z
	e+gfMGE76ccjef3fzvNyEzye/M2gfrkv6bWi3USlBUw==
X-Gm-Gg: AZuq6aJTR21jkxjAqGsP8lPhTk+LDmPXlGy1G0gzJBN13qbZDfVL8j9eTTIUsD+OqwW
	dGW5HEKgBzwvZtcrNWqzNjK/nEAH6Io5eBsVpXbOtKzwjFYqnskOEC8iCtL9B8nvCG7chQ/Buh2
	9aAuQ+EFAdiipPzqRDsCO9VeDLAagnqnn/jr0f7CYzxbj6nTZjIoTSYu3VZz5cXnKNWh5r74qhI
	onJliGWjdOHAi335w5u0cQWRZhcclPbF632sb9AcsugVTEcYO1MzvNRHvYf73qiGNyaxWswWxL6
	fnLuSuUH
X-Received: by 2002:a2e:a98a:0:b0:37f:c5ca:b734 with SMTP id
 38308e7fff4ca-386b67d76camr8015861fa.9.1770383268363; Fri, 06 Feb 2026
 05:07:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com> <20251101154245.162492-10-apatel@ventanamicro.com>
In-Reply-To: <20251101154245.162492-10-apatel@ventanamicro.com>
From: Eric Lin <eric.lin@sifive.com>
Date: Fri, 6 Feb 2026 21:07:36 +0800
X-Gm-Features: AZwV_Qh8JpAa-KcCWPEvSvDb4wQpHatguVjTw-HUJym0wAKIsfNcifBMqCxWxSE
Message-ID: <CAPqJEFpSvaa9xKQ4Rtork6ma8__mmBLRCMAeZR8e_-kMW324oQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/12] rvtrace: Add perf driver for tracing using perf tool
To: Anup Patel <apatel@ventanamicro.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ian Rogers <irogers@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, 
	Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atish.patra@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Anup Patel <anup@brainfault.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org, 
	Mayuresh Chitale <mchitale@ventanamicro.com>, Ingo Molnar <mingo@redhat.com>, 
	Jiri Olsa <jolsa@kernel.org>, Mayuresh Chitale <mchitale@gmail.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-riscv@lists.infradead.org, 
	Andrew Jones <ajones@ventanamicro.com>, Liang Kan <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-263351-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[kernel.org,sifive.com,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,arm.com,vger.kernel.org,ghiti.fr,linux.dev,infradead.org,brainfault.org,intel.com,ventanamicro.com,redhat.com,gmail.com,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:url,infradead.org:email,ventanamicro.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,sifive.com:dkim,venanamicro.com:email,rvtrace_pmu.read:url]
X-Rspamd-Queue-Id: C5F86FDDBA
X-Rspamd-Action: no action

Hi Anup,

On Sat, Nov 1, 2025 at 11:45=E2=80=AFPM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> From: Mayuresh Chitale <mchitale@ventanamicro.com>
>
> Add perf driver for RISC-V tracing similar to ARM Coresight and Hisilicon
> PTT drivers. The driver adds 'rvtrace' event descriptor which can be used
> by the perf tool to record the RISC-V trace data.
>
> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> ---
>  drivers/hwtracing/rvtrace/Kconfig        |   1 +
>  drivers/hwtracing/rvtrace/Makefile       |   2 +-
>  drivers/hwtracing/rvtrace/rvtrace-core.c |   8 +
>  drivers/hwtracing/rvtrace/rvtrace-perf.c | 343 +++++++++++++++++++++++
>  include/linux/rvtrace.h                  |   3 +
>  5 files changed, 356 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-perf.c
>
> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrac=
e/Kconfig
> index 0577f9acb858..ba11acf1117d 100644
> --- a/drivers/hwtracing/rvtrace/Kconfig
> +++ b/drivers/hwtracing/rvtrace/Kconfig
> @@ -4,6 +4,7 @@ menuconfig RVTRACE
>         tristate "RISC-V Trace Support"
>         depends on RISCV
>         depends on OF
> +       select PERF_EVENTS
>         default RISCV
>         help
>           This framework provides a kernel interface for the RISC-V trace
> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtra=
ce/Makefile
> index 122e575da9fb..07403f4d94e3 100644
> --- a/drivers/hwtracing/rvtrace/Makefile
> +++ b/drivers/hwtracing/rvtrace/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>
>  obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> -rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> +rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o rvtrace-perf.o
>  obj-$(CONFIG_RVTRACE_ENCODER) +=3D rvtrace-encoder.o
>  obj-$(CONFIG_RVTRACE_RAMSINK) +=3D rvtrace-ramsink.o
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtracing=
/rvtrace/rvtrace-core.c
> index b955e5f3b048..bbe39aaf930d 100644
> --- a/drivers/hwtracing/rvtrace/rvtrace-core.c
> +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
> @@ -777,11 +777,19 @@ static int __init rvtrace_init(void)
>                 return ret;
>         }
>
> +       ret =3D rvtrace_perf_init();
> +       if (ret) {
> +               platform_driver_unregister(&rvtrace_platform_driver);
> +               bus_unregister(&rvtrace_bustype);
> +               return ret;
> +       }
> +
>         return 0;
>  }
>
>  static void __exit rvtrace_exit(void)
>  {
> +       rvtrace_perf_exit();
>         platform_driver_unregister(&rvtrace_platform_driver);
>         bus_unregister(&rvtrace_bustype);
>  }
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-perf.c b/drivers/hwtracing=
/rvtrace/rvtrace-perf.c
> new file mode 100644
> index 000000000000..2d3039f8b681
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/rvtrace-perf.c
> @@ -0,0 +1,343 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright(C) 2025 Ventanamicro Limited. All rights reserved.
> + * Author: Mayuresh Chitale <mchitale@venanamicro.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/cpumask.h>
> +#include <linux/device.h>
> +#include <linux/list.h>
> +#include <linux/mm.h>
> +#include <linux/init.h>
> +#include <linux/perf_event.h>
> +#include <linux/vmalloc.h>
> +#include <linux/percpu-defs.h>
> +#include <linux/slab.h>
> +#include <linux/stringhash.h>
> +#include <linux/types.h>
> +#include <linux/workqueue.h>
> +#include <linux/rvtrace.h>
> +
> +#define RVTRACE_PMU_NAME "rvtrace"
> +#define RVTRACE_BUF_LEN (4 * 1024 * 1024)

Currently, it seems "RVTRACE_BUF_LEN" is not used. Should we remove it?

Best regards,
Eric Lin

> +
> +static struct pmu rvtrace_pmu;
> +static DEFINE_SPINLOCK(perf_buf_lock);
> +
> +/**
> + * struct rvtrace_event_data - RISC-V trace specific perf event data
> + * @work:              Handle to free allocated memory outside IRQ conte=
xt.
> + * @mask:              Hold the CPU(s) this event was set for.
> + * @aux_hwid_done:     Whether a CPU has emitted the TraceID packet or n=
ot.
> + * @path:              An array of path, each slot for one CPU.
> + * @buf:               Aux buffer / pages allocated by perf framework.
> + */
> +struct rvtrace_event_data {
> +       struct work_struct work;
> +       cpumask_t mask;
> +       cpumask_t aux_hwid_done;
> +       struct rvtrace_path * __percpu *path;
> +       struct rvtrace_perf_auxbuf buf;
> +};
> +
> +struct rvtrace_ctxt {
> +       struct perf_output_handle handle;
> +       struct rvtrace_event_data *event_data;
> +};
> +
> +static DEFINE_PER_CPU(struct rvtrace_ctxt, rvtrace_ctxt);
> +
> +static void *alloc_event_data(int cpu)
> +{
> +       struct rvtrace_event_data *event_data;
> +       cpumask_t *mask;
> +
> +       event_data =3D kzalloc(sizeof(*event_data), GFP_KERNEL);
> +       if (!event_data)
> +               return NULL;
> +
> +       /* Update mask as per selected CPUs */
> +       mask =3D &event_data->mask;
> +       if (cpu !=3D -1)
> +               cpumask_set_cpu(cpu, mask);
> +       else
> +               cpumask_copy(mask, cpu_present_mask);
> +
> +       event_data->path =3D alloc_percpu(struct rvtrace_path *);
> +       return event_data;
> +}
> +
> +static void rvtrace_free_aux(void *data)
> +{
> +       struct rvtrace_event_data *event_data =3D data;
> +
> +       schedule_work(&event_data->work);
> +}
> +
> +static struct rvtrace_path **rvtrace_event_cpu_path_ptr(struct rvtrace_e=
vent_data *data,
> +                                                       int cpu)
> +{
> +       return per_cpu_ptr(data->path, cpu);
> +}
> +
> +static void free_event_data(struct work_struct *work)
> +{
> +       struct rvtrace_event_data *event_data;
> +       struct rvtrace_path *path;
> +       cpumask_t *mask;
> +       int cpu;
> +
> +       event_data =3D container_of(work, struct rvtrace_event_data, work=
);
> +       mask =3D &event_data->mask;
> +       for_each_cpu(cpu, mask) {
> +               path =3D *rvtrace_event_cpu_path_ptr(event_data, cpu);
> +               rvtrace_destroy_path(path);
> +       }
> +       free_percpu(event_data->path);
> +       kfree(event_data);
> +}
> +
> +static void *rvtrace_setup_aux(struct perf_event *event, void **pages,
> +                              int nr_pages, bool overwrite)
> +{
> +       struct rvtrace_event_data *event_data =3D NULL;
> +       struct page **pagelist;
> +       int cpu =3D event->cpu, i;
> +       cpumask_t *mask;
> +
> +       event_data =3D alloc_event_data(cpu);
> +       if (!event_data)
> +               return NULL;
> +
> +       INIT_WORK(&event_data->work, free_event_data);
> +       mask =3D &event_data->mask;
> +       /*
> +        * Create the path for each CPU in the mask. In case of any failu=
re skip the CPU
> +        */
> +       for_each_cpu(cpu, mask) {
> +               struct rvtrace_component *src;
> +               struct rvtrace_path *path;
> +
> +               src =3D rvtrace_cpu_source(cpu);
> +               if (!src)
> +                       continue;
> +
> +               path =3D rvtrace_create_path(src, NULL, RVTRACE_COMPONENT=
_MODE_PERF);
> +               if (!path)
> +                       continue;
> +
> +               *rvtrace_event_cpu_path_ptr(event_data, cpu) =3D path;
> +       }
> +
> +       /* If we don't have any CPUs ready for tracing, abort */
> +       cpu =3D cpumask_first(&event_data->mask);
> +       if (cpu >=3D nr_cpu_ids)
> +               goto err;
> +
> +       pagelist =3D kcalloc(nr_pages, sizeof(*pagelist), GFP_KERNEL);
> +       if (!pagelist)
> +               goto err;
> +
> +       for (i =3D 0; i < nr_pages; i++)
> +               pagelist[i] =3D virt_to_page(pages[i]);
> +
> +       event_data->buf.base =3D vmap(pagelist, nr_pages, VM_MAP, PAGE_KE=
RNEL);
> +       if (!event_data->buf.base) {
> +               kfree(pagelist);
> +               goto err;
> +       }
> +
> +       event_data->buf.nr_pages =3D nr_pages;
> +       event_data->buf.length =3D nr_pages * PAGE_SIZE;
> +       event_data->buf.pos =3D 0;
> +       return event_data;
> +err:
> +       rvtrace_free_aux(event_data);
> +       return NULL;
> +}
> +
> +static void rvtrace_event_read(struct perf_event *event)
> +{
> +}
> +
> +static void rvtrace_event_destroy(struct perf_event *event)
> +{
> +}
> +
> +static int rvtrace_event_init(struct perf_event *event)
> +{
> +       if (event->attr.type !=3D rvtrace_pmu.type)
> +               return -EINVAL;
> +
> +       event->destroy =3D rvtrace_event_destroy;
> +       return 0;
> +}
> +
> +static void rvtrace_event_start(struct perf_event *event, int flags)
> +{
> +       struct rvtrace_ctxt *ctxt =3D this_cpu_ptr(&rvtrace_ctxt);
> +       struct perf_output_handle *handle =3D &ctxt->handle;
> +       struct rvtrace_event_data *event_data;
> +       int cpu =3D smp_processor_id();
> +       struct rvtrace_path *path;
> +
> +       if (WARN_ON(ctxt->event_data))
> +               goto fail;
> +
> +       /*
> +        * Deal with the ring buffer API and get a handle on the
> +        * session's information.
> +        */
> +       event_data =3D perf_aux_output_begin(handle, event);
> +       if (!event_data)
> +               goto fail;
> +
> +       if (!cpumask_test_cpu(cpu, &event_data->mask))
> +               goto out;
> +
> +       event_data->buf.pos =3D handle->head % event_data->buf.length;
> +       path =3D *rvtrace_event_cpu_path_ptr(event_data, cpu);
> +       if (!path) {
> +               pr_err("Error. Path not found\n");
> +               return;
> +       }
> +
> +       if (rvtrace_path_start(path)) {
> +               pr_err("Error. Tracing not started\n");
> +               return;
> +       }
> +
> +       /*
> +        * output cpu / trace ID in perf record, once for the lifetime
> +        * of the event.
> +        */
> +       if (!cpumask_test_cpu(cpu, &event_data->aux_hwid_done)) {
> +               cpumask_set_cpu(cpu, &event_data->aux_hwid_done);
> +               perf_report_aux_output_id(event, cpu);
> +       }
> +
> +out:
> +       /* Tell the perf core the event is alive */
> +       event->hw.state =3D 0;
> +       ctxt->event_data =3D event_data;
> +       return;
> +fail:
> +       event->hw.state =3D PERF_HES_STOPPED;
> +}
> +
> +static void rvtrace_event_stop(struct perf_event *event, int mode)
> +{
> +       struct rvtrace_ctxt *ctxt =3D this_cpu_ptr(&rvtrace_ctxt);
> +       struct perf_output_handle *handle =3D &ctxt->handle;
> +       struct rvtrace_event_data *event_data;
> +       int ret, cpu =3D smp_processor_id();
> +       struct rvtrace_path *path;
> +       size_t size;
> +
> +       if (event->hw.state =3D=3D PERF_HES_STOPPED)
> +               return;
> +
> +       if (handle->event &&
> +           WARN_ON(perf_get_aux(handle) !=3D ctxt->event_data))
> +               return;
> +
> +       event_data =3D ctxt->event_data;
> +       ctxt->event_data =3D NULL;
> +
> +       if (WARN_ON(!event_data))
> +               return;
> +
> +       if (handle->event && (mode & PERF_EF_UPDATE) && !cpumask_test_cpu=
(cpu, &event_data->mask)) {
> +               event->hw.state =3D PERF_HES_STOPPED;
> +               perf_aux_output_end(handle, 0);
> +               return;
> +       }
> +
> +       /* stop tracing */
> +       path =3D *rvtrace_event_cpu_path_ptr(event_data, cpu);
> +       if (!path) {
> +               pr_err("Error. Path not found\n");
> +               return;
> +       }
> +
> +       if (rvtrace_path_stop(path)) {
> +               pr_err("Error. Tracing not stopped\n");
> +               return;
> +       }
> +
> +       event->hw.state =3D PERF_HES_STOPPED;
> +       if (handle->event && (mode & PERF_EF_UPDATE)) {
> +               if (WARN_ON_ONCE(handle->event !=3D event))
> +                       return;
> +               spin_lock(&perf_buf_lock);
> +               ret =3D rvtrace_path_copyto_auxbuf(path, &event_data->buf=
, &size);
> +               spin_unlock(&perf_buf_lock);
> +               WARN_ON_ONCE(ret);
> +               if (READ_ONCE(handle->event))
> +                       perf_aux_output_end(handle, size);
> +               else
> +                       WARN_ON(size);
> +       }
> +}
> +
> +static int rvtrace_event_add(struct perf_event *event, int mode)
> +{
> +       struct hw_perf_event *hwc =3D &event->hw;
> +       int ret =3D 0;
> +
> +       if (mode & PERF_EF_START) {
> +               rvtrace_event_start(event, 0);
> +               if (hwc->state & PERF_HES_STOPPED)
> +                       ret =3D -EINVAL;
> +       } else {
> +               hwc->state =3D PERF_HES_STOPPED;
> +       }
> +
> +       return ret;
> +}
> +
> +static void rvtrace_event_del(struct perf_event *event, int mode)
> +{
> +       rvtrace_event_stop(event, PERF_EF_UPDATE);
> +}
> +
> +PMU_FORMAT_ATTR(event, "config:0-0");
> +
> +static struct attribute *rvtrace_pmu_formats_attr[] =3D {
> +       &format_attr_event.attr,
> +       NULL,
> +};
> +
> +static struct attribute_group rvtrace_pmu_format_group =3D {
> +       .name =3D "format",
> +       .attrs =3D rvtrace_pmu_formats_attr,
> +};
> +
> +static const struct attribute_group *rvtrace_pmu_attr_groups[] =3D {
> +       &rvtrace_pmu_format_group,
> +       NULL,
> +};
> +
> +int __init rvtrace_perf_init(void)
> +{
> +       rvtrace_pmu.capabilities        =3D (PERF_PMU_CAP_EXCLUSIVE | PER=
F_PMU_CAP_ITRACE);
> +       rvtrace_pmu.attr_groups         =3D rvtrace_pmu_attr_groups;
> +       rvtrace_pmu.task_ctx_nr         =3D perf_sw_context;
> +       rvtrace_pmu.read                =3D rvtrace_event_read;
> +       rvtrace_pmu.event_init          =3D rvtrace_event_init;
> +       rvtrace_pmu.setup_aux           =3D rvtrace_setup_aux;
> +       rvtrace_pmu.free_aux            =3D rvtrace_free_aux;
> +       rvtrace_pmu.start               =3D rvtrace_event_start;
> +       rvtrace_pmu.stop                =3D rvtrace_event_stop;
> +       rvtrace_pmu.add                 =3D rvtrace_event_add;
> +       rvtrace_pmu.del                 =3D rvtrace_event_del;
> +       rvtrace_pmu.module              =3D THIS_MODULE;
> +
> +       return perf_pmu_register(&rvtrace_pmu, RVTRACE_PMU_NAME, -1);
> +}
> +
> +void __exit rvtrace_perf_exit(void)
> +{
> +       perf_pmu_unregister(&rvtrace_pmu);
> +}
> diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
> index cecf6c153ca6..d5f782ac132f 100644
> --- a/include/linux/rvtrace.h
> +++ b/include/linux/rvtrace.h
> @@ -343,4 +343,7 @@ static inline int rvtrace_comp_is_empty(struct rvtrac=
e_component *comp)
>                                 comp->pdata->control_poll_timeout_usecs);
>  }
>
> +int rvtrace_perf_init(void);
> +void rvtrace_perf_exit(void);
> +
>  #endif
> --
> 2.43.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

