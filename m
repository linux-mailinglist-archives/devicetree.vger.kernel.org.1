Return-Path: <devicetree+bounces-263979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bhZnKG7biWkGCwAAu9opvQ
	(envelope-from <devicetree+bounces-263979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:04:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1552A10F632
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9278930143D1
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77022372B32;
	Mon,  9 Feb 2026 11:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="l2oUibkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2E8371059
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770637716; cv=pass; b=l4HY9UFGlazfhjTUKglU8HUz9A1vlVX2HMk1+2sQYB3orJX68lzvqFcV3gUPGnNlW85vDRe+3V2ewYoYoR81Ssh4f6KhwjI3Pbf75RVOv6BwTIrnTdAgaHU6P79XAkIUxRBY3aFfoKLXdyJyaEzRCnLpArOb3BpqKqZmb98E4zI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770637716; c=relaxed/simple;
	bh=ep28r/RfcWOQ/lrDJ5+HVAI/ah9QEzHIx0s8WwFXuA8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aCp7VpYnshyUo+IVi8fm0zu9vP3ryaUST9+yy09ISWwFIwOb4iMxyfZOYhhvp2xUC43SYZ5H8RtGEmsm/sY0uBy+9BWmQw8T4rHn5CP6i7MQ1fww5A3SoD2iOwQCIs9ffENtrDw4OBTtU4nVygLiRALnUANmlh1cxUuMZB9TsKc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=l2oUibkH; arc=pass smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-124a635476fso5641689c88.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:48:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770637715; cv=none;
        d=google.com; s=arc-20240605;
        b=BY9P8XJ40hJpBSirhxHN+lM685hKqHf6q9hTtlWYERWffXa+KwS5YJu0qGjKxphgiu
         sBjgGu7G4owggZfU5UyFQOrHxqdysnfBIZ406X1UiPNXMTbb4fSMCxG1bDmz+Vnbxh0L
         S4XoAqOfJX/bHy5xz7ZMF/aLqf2Hy2KOggyjkwHqPqGqUMSymJGc6nB1WRLJh2+ZuLVJ
         2EwaFf/S+O17qM/a6ijnGTskLejFWM/JRX5zY0n6X5YPbOt0Qmai1PyoZ/bcMlunKhhE
         v7ZQrt4oGs/dsX+UORbVCZlTEgjzS4i4YObMIUlAasmJHyxq3eQ3W/r9JsGFxa9yn5vK
         TEfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6kbRpDe+srcEPzZmh6u9NOQDeh6P1J8cpE5rRHKJoCA=;
        fh=ofceSi2FpiApWnO1/p0S2rNN42957BtxGbcXL/Mo4oo=;
        b=chmbEn4J/fOYZmv5ND3/nxmgPprcqduvbEaCa+rh8qyPPWpsX05W6gkq8uzXXk2+8i
         qE/ir7VGvXiPtGdGErY5u3xgJcfOFYj5uGscfqJQXUZQESaonP0X+nhVg/QH74QfdslD
         1WQ9YF1Kl30Ww3eAF+GjlIyXhl/wHTGgcMyDkrJTaRXdADl3KoACb5FX9LPRu77LHQGx
         5QOEvtxakC9koAjQKI61K/be6TtAUI1Sb5KOA7ykVGaZHhB2uHMGpPNG828Jlp7rr631
         GZDqcoKIiRDZ6aSUseiqj7DGI7vgAZYKC6u0ChaHog7X82Xu7xxeN8+6w0lAIqz5Ldd6
         M6mg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1770637715; x=1771242515; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6kbRpDe+srcEPzZmh6u9NOQDeh6P1J8cpE5rRHKJoCA=;
        b=l2oUibkHJZe0yn6atxDGdffiI8moG+Bx5UAmAr/9dyV6ag903ucQa+bjC8kc68Vzev
         7DnO6PHLjgpcfxnnnc+G5cT3bVPNsopdpbdiA6XF5E4qPmgncGvSOt/WAu20W4ZRLqHQ
         o6djUD9pqL0woytfJg8Y4a2ShfYWBFojQ6Yk+sbpwj2x9JZX3LstW6IRyZkwexwxcmVx
         K5tZEokcxJV23t2DyOtYyBEe7spK4WtYbuYGJIciIKLsW5yaAkIAHEc1gr/dsfjRjCnp
         mZmTEkg8XIK8WP0Hb+cPDEDKI/jhm93RT759hYooh4aru4GNA+rDOD0VStxHb5litrTV
         H8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770637715; x=1771242515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6kbRpDe+srcEPzZmh6u9NOQDeh6P1J8cpE5rRHKJoCA=;
        b=kOfoh3DYdNlE9hQwMWtiCbJ6It6VprgrIHjDMaL28AcSAF3AyZ3uK2TufajscFiXkD
         /+ofMQBDDcXzptUBbF9L/JI0oIYIYnaX8/3kUGQZlCyGCMgfEpLIr7G27U9+7MXjiGcl
         OdjkMvznaeJc7s2kfNlEJINlXkAMC+qADTNm0q1ebEn1AqSa4qH7pl4u6ouebBG9HVHx
         1QuENGodvbCv7rX40NruUh+v4zIyBCcgDLSRfv4VlMeiFlccdWG13EJ3wlilS8A+YyXY
         Ma3TobruK9dbefI82FPBfx98Wd+He3qZC4Zs/RykrAdXNybCsQP6wAK8Hb8qocGXsyas
         LmQw==
X-Forwarded-Encrypted: i=1; AJvYcCUaZjtdZfrFOaI+NfxoskwRWS+qW+6L8Gdep12HLoBEh88tzsPE4GOHZsjih+zO8TLPTVmjC9yBsM78@vger.kernel.org
X-Gm-Message-State: AOJu0YzNk7xVCJ+tV5TMq6VV/7Bo8L31IyTX44epy8aFuzKJtcXHDZJ8
	labF0PC7IFbWxT5UdrcVoU+NHJozgSXHD0Y1Iw65gJ3Y5CcTW09l9DA5fLSNs0iBVyJZ1iLuAyS
	R/k51lR8A7ZH9J2Kt/WalsY+8u7DZJTGZAwYfezQApA==
X-Gm-Gg: AZuq6aKw2XdS53hWkIQRQMys63Q4ZjMSv8LKspY3WyjtL0QcZ0xJql9lBeZlM1+KF8e
	ct0/5TizZAzSAL6JfAJv9+SfKNjSKgrkiYXRvqmWtaB/opZ8NayawG60OFtq+Wt1hFKJhV+nfcs
	qAJ829wmgkNKWj3mMedMabyGx/LmR2psj5UgK9bQr9S4VQc9vbjWJ/FCq3qmmD2kZu9prBNA0Gz
	86VMAq3JDcqhV1uhPZECCkWorBtHg9nJr+Rlsy5rtniqOpN2An160fDex3gficEcDV/XRnacHuW
	B6gH3iA56kQW7N9LxtNutuBFMGwPE6moQ+tbIglc
X-Received: by 2002:a05:693c:40d3:b0:2b8:f1b4:ca57 with SMTP id
 5a478bee46e88-2b8f1b4d6c1mr1753805eec.20.1770637715286; Mon, 09 Feb 2026
 03:48:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-11-apatel@ventanamicro.com> <CAPqJEFoTy3B2bc3OPa8WZWphra+2X9-oaQwDkD6UG4gViFy92Q@mail.gmail.com>
In-Reply-To: <CAPqJEFoTy3B2bc3OPa8WZWphra+2X9-oaQwDkD6UG4gViFy92Q@mail.gmail.com>
From: Mayuresh Chitale <mchitale@ventanamicro.com>
Date: Mon, 9 Feb 2026 17:17:59 +0530
X-Gm-Features: AZwV_Qgkq8TcKWOsXNOr_6Lm7MdTrNj8uNdVrl0K4BK07Z-CPHYUw08lk0KKizc
Message-ID: <CAN37VV73ok=g1kXN3npCZ4k49C9PVdDbOYSMH=y3VyeUGBG_7A@mail.gmail.com>
Subject: Re: [PATCH v2 10/12] perf tools: Add RISC-V trace PMU record capabilities
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ventanamicro.com];
	TAGGED_FROM(0.00)[bounces-263979-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,infradead.org:url,infradead.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email,sifive.com:email,ventanamicro.com:email,ventanamicro.com:dkim]
X-Rspamd-Queue-Id: 1552A10F632
X-Rspamd-Action: no action

Hi Eric,

On Fri, Feb 6, 2026 at 4:52=E2=80=AFPM Eric Lin <eric.lin@sifive.com> wrote=
:
>
> Hi Anup,
>
> On Sat, Nov 1, 2025 at 11:45=E2=80=AFPM Anup Patel <apatel@ventanamicro.c=
om> wrote:
> >
> > From: Mayuresh Chitale <mchitale@ventanamicro.com>
> >
> > Introduce the required auxiliary API functions allowing the perf core
> > to interact with RISC-V trace perf driver.
> >
> > Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > ---
> >  tools/perf/arch/riscv/util/Build      |   1 +
> >  tools/perf/arch/riscv/util/auxtrace.c | 218 ++++++++++++++++++++++++++
> >  tools/perf/util/auxtrace.c            |   1 +
> >  tools/perf/util/auxtrace.h            |   1 +
> >  tools/perf/util/rvtrace.h             |  18 +++
> >  5 files changed, 239 insertions(+)
> >  create mode 100644 tools/perf/arch/riscv/util/auxtrace.c
> >  create mode 100644 tools/perf/util/rvtrace.h
> >
> > diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/u=
til/Build
> > index 58a672246024..2ba1fb98a0ad 100644
> > --- a/tools/perf/arch/riscv/util/Build
> > +++ b/tools/perf/arch/riscv/util/Build
> > @@ -3,3 +3,4 @@ perf-util-y +=3D header.o
> >
> >  perf-util-$(CONFIG_LIBTRACEEVENT) +=3D kvm-stat.o
> >  perf-util-$(CONFIG_LIBDW_DWARF_UNWIND) +=3D unwind-libdw.o
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
> > +       struct auxtrace_record  itr;
> > +       struct perf_pmu *rvtrace_pmu;
> > +       struct evlist *evlist;
> > +};
> > +
> > +static size_t rvtrace_info_priv_size(struct auxtrace_record *itr __may=
be_unused,
> > +                                    struct evlist *evlist __maybe_unus=
ed)
> > +{
> > +       return RVTRACE_AUXTRACE_PRIV_SIZE;
> > +}
> > +
> > +static int rvtrace_info_fill(struct auxtrace_record *itr, struct perf_=
session *session,
> > +                            struct perf_record_auxtrace_info *auxtrace=
_info, size_t priv_size)
> > +{
> > +       struct rvtrace_recording *ptr =3D container_of(itr, struct rvtr=
ace_recording, itr);
> > +       struct perf_pmu *rvtrace_pmu =3D ptr->rvtrace_pmu;
> > +
> > +       if (priv_size !=3D RVTRACE_AUXTRACE_PRIV_SIZE)
> > +               return -EINVAL;
> > +
> > +       if (!session->evlist->core.nr_mmaps)
> > +               return -EINVAL;
> > +
> > +       auxtrace_info->type =3D PERF_AUXTRACE_RISCV_TRACE;
> > +       auxtrace_info->priv[0] =3D rvtrace_pmu->type;
> > +
> > +       return 0;
> > +}
> > +
> > +static int rvtrace_set_auxtrace_mmap_page(struct record_opts *opts)
> > +{
> > +       bool privileged =3D perf_event_paranoid_check(-1);
> > +
> > +       if (!opts->full_auxtrace)
> > +               return 0;
> > +
> > +       if (opts->full_auxtrace && !opts->auxtrace_mmap_pages) {
> > +               if (privileged) {
> > +                       opts->auxtrace_mmap_pages =3D MiB(16) / page_si=
ze;
> > +               } else {
> > +                       opts->auxtrace_mmap_pages =3D KiB(128) / page_s=
ize;
> > +                       if (opts->mmap_pages =3D=3D UINT_MAX)
> > +                               opts->mmap_pages =3D KiB(256) / page_si=
ze;
> > +               }
> > +       }
> > +
> > +       /* Validate auxtrace_mmap_pages */
> > +       if (opts->auxtrace_mmap_pages) {
> > +               size_t sz =3D opts->auxtrace_mmap_pages * (size_t)page_=
size;
> > +               size_t min_sz =3D KiB(8);
> > +
> > +               if (sz < min_sz || !is_power_of_2(sz)) {
> > +                       pr_err("Invalid mmap size : must be at least %z=
uKiB and a power of 2\n",
> > +                              min_sz / 1024);
> > +                       return -EINVAL;
> > +               }
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int rvtrace_recording_options(struct auxtrace_record *itr, stru=
ct evlist *evlist,
> > +                                    struct record_opts *opts)
> > +{
> > +       struct rvtrace_recording *ptr =3D container_of(itr, struct rvtr=
ace_recording, itr);
> > +       struct perf_pmu *rvtrace_pmu =3D ptr->rvtrace_pmu;
> > +       struct evsel *evsel, *rvtrace_evsel =3D NULL;
> > +       struct evsel *tracking_evsel;
> > +       int err;
> > +
> > +       ptr->evlist =3D evlist;
> > +       evlist__for_each_entry(evlist, evsel) {
> > +               if (evsel->core.attr.type =3D=3D rvtrace_pmu->type) {
> > +                       if (rvtrace_evsel) {
> > +                               pr_err("There may be only one " RVTRACE=
_PMU_NAME "x event\n");
> > +                               return -EINVAL;
> > +                       }
> > +                       evsel->core.attr.freq =3D 0;
> > +                       evsel->core.attr.sample_period =3D 1;
> > +                       evsel->needs_auxtrace_mmap =3D true;
> > +                       rvtrace_evsel =3D evsel;
> > +                       opts->full_auxtrace =3D true;
> > +               }
> > +       }
> > +
> > +       err =3D rvtrace_set_auxtrace_mmap_page(opts);
> > +       if (err)
> > +               return err;
> > +       /*
> > +        * To obtain the auxtrace buffer file descriptor, the auxtrace =
event
> > +        * must come first.
> > +        */
> > +       evlist__to_front(evlist, rvtrace_evsel);
> > +       evsel__set_sample_bit(rvtrace_evsel, TIME);
> > +
> > +       /* Add dummy event to keep tracking */
> > +       err =3D parse_event(evlist, "dummy:u");
> > +       if (err)
> > +               return err;
> > +
> > +       tracking_evsel =3D evlist__last(evlist);
> > +       evlist__set_tracking_event(evlist, tracking_evsel);
> > +
> > +       tracking_evsel->core.attr.freq =3D 0;
> > +       tracking_evsel->core.attr.sample_period =3D 1;
> > +       evsel__set_sample_bit(tracking_evsel, TIME);
> > +
> > +       return 0;
> > +}
> > +
> > +static u64 rvtrace_reference(struct auxtrace_record *itr __maybe_unuse=
d)
> > +{
> > +       return rdtsc();
> > +}
> > +
> > +static void rvtrace_recording_free(struct auxtrace_record *itr)
> > +{
> > +       struct rvtrace_recording *ptr =3D
> > +                       container_of(itr, struct rvtrace_recording, itr=
);
> > +
> > +       free(ptr);
> > +}
> > +
> > +static struct auxtrace_record *rvtrace_recording_init(int *err, struct=
 perf_pmu *rvtrace_pmu)
> > +{
> > +       struct rvtrace_recording *ptr;
> > +
> > +       if (!rvtrace_pmu) {
> > +               *err =3D -ENODEV;
> > +               return NULL;
> > +       }
> > +
> > +       ptr =3D zalloc(sizeof(*ptr));
> > +       if (!ptr) {
> > +               *err =3D -ENOMEM;
> > +               return NULL;
> > +       }
> > +
> > +       ptr->rvtrace_pmu =3D rvtrace_pmu;
> > +       ptr->itr.recording_options =3D rvtrace_recording_options;
> > +       ptr->itr.info_priv_size =3D rvtrace_info_priv_size;
> > +       ptr->itr.info_fill =3D rvtrace_info_fill;
> > +       ptr->itr.free =3D rvtrace_recording_free;
> > +       ptr->itr.reference =3D rvtrace_reference;
> > +       ptr->itr.read_finish =3D auxtrace_record__read_finish;
> > +       ptr->itr.alignment =3D 0;
> > +
> > +       *err =3D 0;
> > +       return &ptr->itr;
> > +}
> > +
> > +static struct perf_pmu *find_pmu_for_event(struct perf_pmu **pmus,
> > +                                          int pmu_nr, struct evsel *ev=
sel)
> > +{
> > +       int i;
> > +
> > +       if (!pmus)
> > +               return NULL;
> > +
> > +       for (i =3D 0; i < pmu_nr; i++) {
> > +               if (evsel->core.attr.type =3D=3D pmus[i]->type)
> > +                       return pmus[i];
> > +       }
> > +
> > +       return NULL;
> > +}
> > +
> > +struct auxtrace_record *auxtrace_record__init(struct evlist *evlist, i=
nt *err)
> > +{
> > +       struct perf_pmu *rvtrace_pmu =3D NULL;
> > +       struct perf_pmu *found_etm =3D NULL;
>                                         ^^^^^^^^^
> Nit: it seems "found_etm" implies ARM CoreSight ETM. Since this is for
> RISC-V, should we rename this to "found_rvtrace" or simply "found_pmu"
> to avoid confusion? Thanks

Yes, this should be renamed as found_pmu.
>
> Regards,
> Eric Lin
>
> > +       struct evsel *evsel;
> > +
> > +       if (!evlist)
> > +               return NULL;
> > +
> > +       rvtrace_pmu =3D perf_pmus__find(RVTRACE_PMU_NAME);
> > +       evlist__for_each_entry(evlist, evsel) {
> > +               if (rvtrace_pmu && !found_etm)
> > +                       found_etm =3D find_pmu_for_event(&rvtrace_pmu, =
1, evsel);
> > +       }
> > +
> > +       if (found_etm)
> > +               return rvtrace_recording_init(err, rvtrace_pmu);
> > +
> > +       *err =3D 0;
> > +       return NULL;
> > +}
> > diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
> > index 1539c1dc823c..c905563e0d8a 100644
> > --- a/tools/perf/util/auxtrace.c
> > +++ b/tools/perf/util/auxtrace.c
> > @@ -1394,6 +1394,7 @@ int perf_event__process_auxtrace_info(struct perf=
_session *session,
> >         case PERF_AUXTRACE_VPA_DTL:
> >                 err =3D powerpc_vpadtl_process_auxtrace_info(event, ses=
sion);
> >                 break;
> > +       case PERF_AUXTRACE_RISCV_TRACE:
> >         case PERF_AUXTRACE_UNKNOWN:
> >         default:
> >                 return -EINVAL;
> > diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
> > index e0a5b39fed12..1c89a281a06c 100644
> > --- a/tools/perf/util/auxtrace.h
> > +++ b/tools/perf/util/auxtrace.h
> > @@ -51,6 +51,7 @@ enum auxtrace_type {
> >         PERF_AUXTRACE_S390_CPUMSF,
> >         PERF_AUXTRACE_HISI_PTT,
> >         PERF_AUXTRACE_VPA_DTL,
> > +       PERF_AUXTRACE_RISCV_TRACE,
> >  };
> >
> >  enum itrace_period_type {
> > diff --git a/tools/perf/util/rvtrace.h b/tools/perf/util/rvtrace.h
> > new file mode 100644
> > index 000000000000..93c041db8660
> > --- /dev/null
> > +++ b/tools/perf/util/rvtrace.h
> > @@ -0,0 +1,18 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright(C) 2015 Linaro Limited. All rights reserved.
> > + * Author: Mathieu Poirier <mathieu.poirier@linaro.org>
> > + */
> > +
> > +#ifndef INCLUDE__UTIL_PERF_RVTRACE_H__
> > +#define INCLUDE__UTIL_PERF_RVTRACE_H__
> > +
> > +#include "debug.h"
> > +#include "auxtrace.h"
> > +#include "util/event.h"
> > +#include "util/session.h"
> > +#include <linux/bits.h>
> > +
> > +#define RVTRACE_AUXTRACE_PRIV_SIZE     sizeof(u64)
> > +
> > +#endif
> > --
> > 2.43.0
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

