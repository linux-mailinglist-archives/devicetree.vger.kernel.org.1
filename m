Return-Path: <devicetree+bounces-250996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56374CEDA18
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 04:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0318D30056FB
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 03:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D097123C50A;
	Fri,  2 Jan 2026 03:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NbGErDeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76D417BB21
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 03:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767325962; cv=none; b=hXJ0T4myvUV/JVBejOLk5Irp/sb9PaTgXzZnrjTUdxvhT8SU8W5FXh4r1u7ngqWtzE2Ngd2+X6zZ6nh8WXSQik0phJl/UR3qnpjsWL10BHr6CO832Zponj/wA+A19Gm2lXIpgpFlevtveW2LJK3QtPFXDee+us1/B5vtufrqMS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767325962; c=relaxed/simple;
	bh=nVlbpVDClDtvuiFbG1gxYsoIznzYvkHGJmQmWYxaAaY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iQdtBC3hw6WQe5cnl6+hqpZsOUbccPzEM6BKYcJJwYz6SnVGlzCjvHjjnUC3YyBnIiGu7hZrV9zh459PIMzIoH1tIvmOrPWllES8gK6sCNTtoY7EReQ7dj2dnQTUUMtM/vj6TQmJBG7y5Vd7U2AwjBNgTIA0a7ttaCZLnb6/WXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=NbGErDeP; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5957c929a5eso16951569e87.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 19:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1767325959; x=1767930759; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zTswhGtmIxFRkyQOPWggZ+dHbCVihZ8PEVf0UQnd15A=;
        b=NbGErDePyPoEANzdIQtzXuYTR/1YQxaPildDEQrhZPBfl4qcWv6N2sk7WGWuS3NoEg
         M05U3m1Hy6K96eF3DRFG3pWlDd6YZBubo3X5Qe7GxWr/tJ79k/pz4JEw9k3X29VyB/OH
         TQEhdk12t71FPO10b6LYQdOW3q616HYzlVxGVbBSCmSLXe/hJlQszp3mb0UAz/D+Sd/5
         jvpUy2PogwnqIqcqhmjnfY/zSjAyYrpXineL7jky7fsxETUQ1M5RbOck4Ek1kuqf+4+D
         RnsqOSuwUmId2Qu/P7+BkpnRKLLeCRvek2sM3fG5R19XHe/q2OKDCuRb0HLlA3uR6CKT
         LWiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767325959; x=1767930759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zTswhGtmIxFRkyQOPWggZ+dHbCVihZ8PEVf0UQnd15A=;
        b=FT5Ag4xse3AyfPL54k0+WEERytmfsllyaPBf9Dd6LW+BImYuGYxbL0N/GlHKa3n6U6
         1lpQixx1DjRqzWaiILVuUoNm+FqvXabS/kvIbzBRMzO+/Nek7ftnvFVGX5DueyANmyWt
         7uIkp/wQV2ZJyWVATgWcY/YStbT1XLEJDurE+v+hlsMH4vdfvGePYc9Z119rah4TuHt3
         nTAFbRqAIU4R9GjDMAD4EXEssOt9F9hFQ4f/aKMphtY746CeyE8tt02AGmkCEsl/0Xh5
         VNJh/OONzI4dl6TRxpj43XvCS55tRWE9DfI3rTdmuVeHVV4MRl+g+nwGW3JuCIgtqN77
         lqmw==
X-Forwarded-Encrypted: i=1; AJvYcCVyr4V2a0LDQCmdFxcTVKuMZiwWWTzk2zlG3/4SYGxHV3X1NnSsBDH+jHTWK3kD7GJZexiiPF4/+aLs@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg8uIRAuW+3DsP7Gmmwn8jIacuT2ym9YKZ+7HWBhD8hkV/tX6n
	G6F0WLgMbkcdEcCex51bPJRBy3lqxw7mvkpwjA6PogW1gL8dPZhdQfuF4FvvKQgoFy4uRLcerr4
	SUU0Yl82Jv5NfzA9B87cr5sR994rOVRNa7dn7YBTWlw==
X-Gm-Gg: AY/fxX6bHS/7LbyeUZ0ncjid17Y+mnnHZ2GGKoY+oXQzFlPG/K+Tq5reO4sN2jLPddw
	SffUldTR0TbnUtR1kZzgSJweuBxLaA7U51h5DcUy5LfK1xPDqVT7NEXvPH6bUW+UxEuTE2lFXy2
	ZUUbffVu4pfxZlIxbJ3yixHgi5O4WDWV+k7jecAc78H3bPT2i6+a2Nr9J0dMdZzI6Fu9oi/e8/F
	RKQlJZWyzreK01CsCOnCqBptguSKUt1I19Ib4rUEEq6oR+w146ohoM/pliiyf1rEJ1GAOqyh+Lj
	C43OXrc0TznB91d98y1dyHTHfFsY
X-Google-Smtp-Source: AGHT+IGulvHbDKKBdi1/x0K6yrO6vDmrz82tyqPBgyVD4mIRWrbJWahBLj1qYkOIU334kMun6v5CIWNvfZPMCp9Nhgg=
X-Received: by 2002:a05:6512:4022:b0:594:54ec:92e7 with SMTP id
 2adb3069b0e04-59a17d43c29mr15918848e87.28.1767325958581; Thu, 01 Jan 2026
 19:52:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-11-apatel@ventanamicro.com> <KUZPR04MB9265EE0AF2054E4A8AB6852EF3D5A@KUZPR04MB9265.apcprd04.prod.outlook.com>
In-Reply-To: <KUZPR04MB9265EE0AF2054E4A8AB6852EF3D5A@KUZPR04MB9265.apcprd04.prod.outlook.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 2 Jan 2026 09:22:26 +0530
X-Gm-Features: AQt7F2rv_IngsrCg9s7IJA2iJpptQXIBVGrs-hz5FesICn9umzFb7q7ot21qnV0
Message-ID: <CAK9=C2UVDEJPb8duKy4BKPGhLBnAqoMigdnNvVRJSLraae4m0Q@mail.gmail.com>
Subject: Re: [PATCH v2 10/12] perf tools: Add RISC-V trace PMU record capabilities
To: "Nutty.Liu" <nutty.liu@hotmail.com>
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

On Fri, Nov 21, 2025 at 1:39=E2=80=AFPM Nutty.Liu <nutty.liu@hotmail.com> w=
rote:
>
> On 11/1/2025 11:42 PM, Anup Patel wrote:
> > From: Mayuresh Chitale <mchitale@ventanamicro.com>
> >
> > Introduce the required auxiliary API functions allowing the perf core
> > to interact with RISC-V trace perf driver.
> >
> > Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > ---
> >   tools/perf/arch/riscv/util/Build      |   1 +
> >   tools/perf/arch/riscv/util/auxtrace.c | 218 +++++++++++++++++++++++++=
+
> >   tools/perf/util/auxtrace.c            |   1 +
> >   tools/perf/util/auxtrace.h            |   1 +
> >   tools/perf/util/rvtrace.h             |  18 +++
> >   5 files changed, 239 insertions(+)
> >   create mode 100644 tools/perf/arch/riscv/util/auxtrace.c
> >   create mode 100644 tools/perf/util/rvtrace.h
> >
> > diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/u=
til/Build
> > index 58a672246024..2ba1fb98a0ad 100644
> > --- a/tools/perf/arch/riscv/util/Build
> > +++ b/tools/perf/arch/riscv/util/Build
> > @@ -3,3 +3,4 @@ perf-util-y +=3D header.o
> >
> >   perf-util-$(CONFIG_LIBTRACEEVENT) +=3D kvm-stat.o
> >   perf-util-$(CONFIG_LIBDW_DWARF_UNWIND) +=3D unwind-libdw.o
> > +perf-util-$(CONFIG_AUXTRACE) +=3D auxtrace.o
> > diff --git a/tools/perf/arch/riscv/util/auxtrace.c b/tools/perf/arch/ri=
scv/util/auxtrace.c
> > new file mode 100644
> > index 000000000000..adc86bd38998
> > --- /dev/null
> > +++ b/tools/perf/arch/riscv/util/auxtrace.c
> > @@ -0,0 +1,218 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Risc-V E-Trace support
> > + */
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/types.h>
> > +#include <linux/bitops.h>
> > +#include <linux/log2.h>
> > +#include <linux/zalloc.h>
> > +#include <time.h>
> > +
> > +#include <internal/lib.h> // page_size
> Seems the above comment 'page_size' is redundant.

Okay, I will update.

>
> > +#include "../../../util/auxtrace.h"
> > +#include "../../../util/cpumap.h"
> > +#include "../../../util/debug.h"
> > +#include "../../../util/event.h"
> > +#include "../../../util/evlist.h"
> > +#include "../../../util/evsel.h"
> > +#include "../../../util/rvtrace.h"
> > +#include "../../../util/pmu.h"
> > +#include "../../../util/record.h"
> > +#include "../../../util/session.h"
> > +#include "../../../util/tsc.h"
> > +
> > +#define RVTRACE_PMU_NAME "rvtrace"
> > +#define KiB(x) ((x) * 1024)
> > +#define MiB(x) ((x) * 1024 * 1024)
> > +
> > +struct rvtrace_recording {
> > +     struct auxtrace_record  itr;
> > +     struct perf_pmu *rvtrace_pmu;
> > +     struct evlist *evlist;
> > +};
> > +
> > +static size_t rvtrace_info_priv_size(struct auxtrace_record *itr __may=
be_unused,
> > +                                  struct evlist *evlist __maybe_unused=
)
> > +{
> > +     return RVTRACE_AUXTRACE_PRIV_SIZE;
> > +}
> > +
> > +static int rvtrace_info_fill(struct auxtrace_record *itr, struct perf_=
session *session,
> > +                          struct perf_record_auxtrace_info *auxtrace_i=
nfo, size_t priv_size)
> > +{
> > +     struct rvtrace_recording *ptr =3D container_of(itr, struct rvtrac=
e_recording, itr);
> > +     struct perf_pmu *rvtrace_pmu =3D ptr->rvtrace_pmu;
> > +
> > +     if (priv_size !=3D RVTRACE_AUXTRACE_PRIV_SIZE)
> > +             return -EINVAL;
> > +
> > +     if (!session->evlist->core.nr_mmaps)
> > +             return -EINVAL;
> > +
> > +     auxtrace_info->type =3D PERF_AUXTRACE_RISCV_TRACE;
> > +     auxtrace_info->priv[0] =3D rvtrace_pmu->type;
> > +
> > +     return 0;
> > +}
> > +
> > +static int rvtrace_set_auxtrace_mmap_page(struct record_opts *opts)
> > +{
> > +     bool privileged =3D perf_event_paranoid_check(-1);
> > +
> > +     if (!opts->full_auxtrace)
> > +             return 0;
> > +
> > +     if (opts->full_auxtrace && !opts->auxtrace_mmap_pages) {
> > +             if (privileged) {
> > +                     opts->auxtrace_mmap_pages =3D MiB(16) / page_size=
;
> > +             } else {
> > +                     opts->auxtrace_mmap_pages =3D KiB(128) / page_siz=
e;
> > +                     if (opts->mmap_pages =3D=3D UINT_MAX)
> > +                             opts->mmap_pages =3D KiB(256) / page_size=
;
> > +             }
> > +     }
> > +
> > +     /* Validate auxtrace_mmap_pages */
> > +     if (opts->auxtrace_mmap_pages) {
> > +             size_t sz =3D opts->auxtrace_mmap_pages * (size_t)page_si=
ze;
> > +             size_t min_sz =3D KiB(8);
> > +
> > +             if (sz < min_sz || !is_power_of_2(sz)) {
> > +                     pr_err("Invalid mmap size : must be at least %zuK=
iB and a power of 2\n",
> > +                            min_sz / 1024);
> > +                     return -EINVAL;
> > +             }
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int rvtrace_recording_options(struct auxtrace_record *itr, stru=
ct evlist *evlist,
> > +                                  struct record_opts *opts)
> > +{
> > +     struct rvtrace_recording *ptr =3D container_of(itr, struct rvtrac=
e_recording, itr);
> > +     struct perf_pmu *rvtrace_pmu =3D ptr->rvtrace_pmu;
> > +     struct evsel *evsel, *rvtrace_evsel =3D NULL;
> > +     struct evsel *tracking_evsel;
> > +     int err;
> > +
> > +     ptr->evlist =3D evlist;
> > +     evlist__for_each_entry(evlist, evsel) {
> > +             if (evsel->core.attr.type =3D=3D rvtrace_pmu->type) {
> > +                     if (rvtrace_evsel) {
> > +                             pr_err("There may be only one " RVTRACE_P=
MU_NAME "x event\n");
> > +                             return -EINVAL;
> > +                     }
> > +                     evsel->core.attr.freq =3D 0;
> > +                     evsel->core.attr.sample_period =3D 1;
> > +                     evsel->needs_auxtrace_mmap =3D true;
> > +                     rvtrace_evsel =3D evsel;
> > +                     opts->full_auxtrace =3D true;
> > +             }
> > +     }
> > +
> > +     err =3D rvtrace_set_auxtrace_mmap_page(opts);
> > +     if (err)
> > +             return err;
> > +     /*
> > +      * To obtain the auxtrace buffer file descriptor, the auxtrace ev=
ent
> > +      * must come first.
> > +      */
> > +     evlist__to_front(evlist, rvtrace_evsel);
> > +     evsel__set_sample_bit(rvtrace_evsel, TIME);
> > +
> > +     /* Add dummy event to keep tracking */
> > +     err =3D parse_event(evlist, "dummy:u");
> > +     if (err)
> > +             return err;
> > +
> > +     tracking_evsel =3D evlist__last(evlist);
> > +     evlist__set_tracking_event(evlist, tracking_evsel);
> > +
> > +     tracking_evsel->core.attr.freq =3D 0;
> > +     tracking_evsel->core.attr.sample_period =3D 1;
> > +     evsel__set_sample_bit(tracking_evsel, TIME);
> > +
> > +     return 0;
> > +}
> > +
> > +static u64 rvtrace_reference(struct auxtrace_record *itr __maybe_unuse=
d)
> > +{
> > +     return rdtsc();
> > +}
> > +
> > +static void rvtrace_recording_free(struct auxtrace_record *itr)
> > +{
> > +     struct rvtrace_recording *ptr =3D
> > +                     container_of(itr, struct rvtrace_recording, itr);
> > +
> > +     free(ptr);
> > +}
> > +
> > +static struct auxtrace_record *rvtrace_recording_init(int *err, struct=
 perf_pmu *rvtrace_pmu)
> > +{
> > +     struct rvtrace_recording *ptr;
> > +
> > +     if (!rvtrace_pmu) {
> > +             *err =3D -ENODEV;
> Nit: How about checking if 'err' is NULL since it's passed from other
> module ?

Other archs (ARM and x86) also don't check "err" anywhere so
to be consistent we don't check "err" here.

>
> Otherwise,
> Reviewed-by: Nutty Liu <nutty.liu@hotmail.com>
>
> Thanks,
> Nutty

Regards,
Anup

