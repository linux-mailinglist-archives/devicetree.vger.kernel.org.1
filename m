Return-Path: <devicetree+bounces-263327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDgNFQfQhWlBGwQAu9opvQ
	(envelope-from <devicetree+bounces-263327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:27:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24AFD3AA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76C2B3004F7E
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 11:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8080392827;
	Fri,  6 Feb 2026 11:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gIchxnMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB313644BA
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 11:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770376934; cv=pass; b=dXPz04AD07BLC70hmCV+IbTNAsyBFW0cIHQi7I0xw+wsRsSOPzZVgKWx6nKGH+rP4HETBQY1vPbJhy9QRDRPamnVyMMG8XVSRSafDyU9OTq28qQrGfVN+SYW5/lJlJ0nPA5Hvy2iq6Tkx6YBINewrmHhUF+kJ5ds9XYWIjrRmiI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770376934; c=relaxed/simple;
	bh=//ssSvMB1fMBil3LNF9BkNNQTSosV2kYswV1pgObMN0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fmtS9/JHX3TCCUJAQlP+FS6JWYshRjvRM20ABo8wM2wJ+etEGoUv++aqE3X0RIt+m4E27bLx4PoGo1YgovCopfUY0u4g9RZ7i/6Aso+ES2pU27jjFHfzDFykCBhJl+8xgmFiZ7z+EHepkmDEdBqbW4DaPR6YOJLjjpNvgA+AgbI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=gIchxnMQ; arc=pass smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-38305d006faso16944181fa.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 03:22:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770376932; cv=none;
        d=google.com; s=arc-20240605;
        b=cja9+3ltcXroE9Oa7fv4q4yAv+80tMGiN5pmM5Z1Oi9kRlnHWtdtcTpnG8XVp3SIld
         PXA2VMTZy6RsBNW7wDnuMN8MS8Yk37VuKydmWBoZwfVs1SDzAzjigUxwTRJqa4WcOupS
         CjX2OAux1NdxT60bdoindpS8at0NY/iSvUUVUW25aiQDDS9bo3ye+nR5tQ/1aDsG9uEL
         BMjqz6MFVHSBaGvRxrdru39ySA7GREvX8IYHeFgie3kjFUrIbOfAywnUPkRB6Q7ZCeh1
         xjZet7BgjsHPju2I2opgmWG34tkBijhJFcJ32md0vGmobFC5yNX9SgbeKG6gPfU/gCo3
         30/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=msQ2z6n36YFB2QR7IXnt3ya5PTwKoPOBlhcgAWO3l+Y=;
        fh=WYmwR+mQaI23i0ALNhUvE2kT15VJzbxqctdz3R4tHLs=;
        b=BMJ0ggOkugzSwDbMmNsuUX8jSG0yb2zxBDx0NnNqFXxLQvkptP/PrI2CRJKhO/Vamo
         sLb7PNL/prvI7BM5jtkJdxHAgzHElSxngtlm+kYQ7jIqSufvZFZKNRHgL7T9seqbJPHy
         abGx8YKvCzw22f02OqM7z5uR3RFTb6/DOIp1+sbSeL1VHcBj99H6O+YC7Mhfsj+qLQnJ
         hS2+NS1RmWuIK0Cq74bMOVSxB06MO9F3lIeQF+Y2EtOOL7E/dd3Q8PRFZMYNceo8bYGZ
         6s0DhTNKZxYrODhXaCeUJaw/NPEsJg2yXetaBGFQN0/NTRQzZl5jcppqPMb3Xa3XZeJp
         gETw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1770376932; x=1770981732; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=msQ2z6n36YFB2QR7IXnt3ya5PTwKoPOBlhcgAWO3l+Y=;
        b=gIchxnMQfWjUFCmD1NCNj73ggp344VW7YhfynLsPHvshKKWkZOAG7m8X1ZkixXLxah
         Fe08yk29iGH9Cnzq0mcLazLD1yXoYy+9TWmcl2AX4rh+Gy+80/Q8dR6vUDItNllSSY2h
         kpYQk+x4YHSRqSoj7vHxdSTf+gVJL4XILmh6J2aSsPBZEk414hR3+f3FhpXa2/FjlxGD
         2ExFydhg9Dr4D+xao8ABEhSjMh2US8owr5ptEA0yKaLZrsbRYiShz1YQrUUVTz3vjgMW
         boetRJJSUMW69SxPo3bdFA3jIzBpAyonzhjoPLTjaH5QZmXZpZv4HZSoNZQg99wWQkT1
         Fnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770376932; x=1770981732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=msQ2z6n36YFB2QR7IXnt3ya5PTwKoPOBlhcgAWO3l+Y=;
        b=A5RhCP2Vdy/ddDRgXGvejIdQ4thxiZPRoSSSBf6zLSV8ZLNJedVNRBhipbr8W2X18K
         DsulUSvMphbUpQ1EtR5Tn5Ir4WKBXoLtlgaTiuM06+d+KjTWgXBCHvjTh+yZ2PMmIGUz
         254FNcsucsgAq0EOd4SXpLy99ED6SrrFteqBvxwmd3nzjZ29AgeO2r0xJugQ0vjI8B9b
         vDSIvWzP+nUyLHjNNpE1LjV3O6RbcQlzIEpQzOaqsIeXlsJ2oXwtQoJk02GXLkcx4tkS
         CYZp8iAVo9KFWW7gHjgVuuBR2lHsWcBildhe73niqncPl5E9irkwIUXr0TWUR8JQQErX
         cnsA==
X-Forwarded-Encrypted: i=1; AJvYcCV0s8RqaPUjZBMuF9Jx1npnsmHP/i4ujt5HsJdtlxrK9qKOr8+fJ+ggUZtcb38lHbWz0I7GZDUJvF0m@vger.kernel.org
X-Gm-Message-State: AOJu0YzRsw3wQuReBsV8UOElJB7KAgxH5MyBMljl2IEZ0FdTz+dxThe1
	r5FdY9xBTE4Jb3Cf7b5+JYBR2pbTMTeVn+r/L6wp8Jh0UWLAJcBpw13Qw95Mk4lGiOFIp0lGZjE
	aiQ7qLl3oi6wVoipX86xE+tUws4qVtAbfVmjhOzwi0w==
X-Gm-Gg: AZuq6aIRRteEDW3HBprVtP5XeaeulX+N5+57vl7b5U9UNi3tAgxnnPVGTXQAqLEm/OZ
	APakB0Rkfc1+xfDIpSkoxR8RfBp5fYOkHDw/roy6wlAzKT1Sav4VihLNSSOYH9S64HKhr+0z22N
	L0laXKijis3b3tItlfsHaqSLXyDHTP9K0rFSMGkPVFKYdDW6oYRCA1e9coibrZIWVehISuIeGyz
	Zm8DKi1JXD2CHOOQupeZgth2oCPLnWHik3ThLsoMYg8QvWuJwm6xzrvWqshIsqgLxe1eoKyfg==
X-Received: by 2002:a05:651c:31cd:b0:383:1fb6:60a1 with SMTP id
 38308e7fff4ca-386b512c7c6mr8698561fa.20.1770376932328; Fri, 06 Feb 2026
 03:22:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com> <20251101154245.162492-11-apatel@ventanamicro.com>
In-Reply-To: <20251101154245.162492-11-apatel@ventanamicro.com>
From: Eric Lin <eric.lin@sifive.com>
Date: Fri, 6 Feb 2026 19:22:00 +0800
X-Gm-Features: AZwV_QgHa5jjZVZL58EJWa7eZFG_lBeK-cwsLeclz43TYOfAI4E8ysrBtW84Yg8
Message-ID: <CAPqJEFoTy3B2bc3OPa8WZWphra+2X9-oaQwDkD6UG4gViFy92Q@mail.gmail.com>
Subject: Re: [PATCH v2 10/12] perf tools: Add RISC-V trace PMU record capabilities
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263327-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:url,infradead.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: BB24AFD3AA
X-Rspamd-Action: no action

Hi Anup,

On Sat, Nov 1, 2025 at 11:45=E2=80=AFPM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> From: Mayuresh Chitale <mchitale@ventanamicro.com>
>
> Introduce the required auxiliary API functions allowing the perf core
> to interact with RISC-V trace perf driver.
>
> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> ---
>  tools/perf/arch/riscv/util/Build      |   1 +
>  tools/perf/arch/riscv/util/auxtrace.c | 218 ++++++++++++++++++++++++++
>  tools/perf/util/auxtrace.c            |   1 +
>  tools/perf/util/auxtrace.h            |   1 +
>  tools/perf/util/rvtrace.h             |  18 +++
>  5 files changed, 239 insertions(+)
>  create mode 100644 tools/perf/arch/riscv/util/auxtrace.c
>  create mode 100644 tools/perf/util/rvtrace.h
>
> diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/uti=
l/Build
> index 58a672246024..2ba1fb98a0ad 100644
> --- a/tools/perf/arch/riscv/util/Build
> +++ b/tools/perf/arch/riscv/util/Build
> @@ -3,3 +3,4 @@ perf-util-y +=3D header.o
>
>  perf-util-$(CONFIG_LIBTRACEEVENT) +=3D kvm-stat.o
>  perf-util-$(CONFIG_LIBDW_DWARF_UNWIND) +=3D unwind-libdw.o
> +perf-util-$(CONFIG_AUXTRACE) +=3D auxtrace.o
> diff --git a/tools/perf/arch/riscv/util/auxtrace.c b/tools/perf/arch/risc=
v/util/auxtrace.c
> new file mode 100644
> index 000000000000..adc86bd38998
> --- /dev/null
> +++ b/tools/perf/arch/riscv/util/auxtrace.c
> @@ -0,0 +1,218 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Risc-V E-Trace support
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/types.h>
> +#include <linux/bitops.h>
> +#include <linux/log2.h>
> +#include <linux/zalloc.h>
> +#include <time.h>
> +
> +#include <internal/lib.h> // page_size
> +#include "../../../util/auxtrace.h"
> +#include "../../../util/cpumap.h"
> +#include "../../../util/debug.h"
> +#include "../../../util/event.h"
> +#include "../../../util/evlist.h"
> +#include "../../../util/evsel.h"
> +#include "../../../util/rvtrace.h"
> +#include "../../../util/pmu.h"
> +#include "../../../util/record.h"
> +#include "../../../util/session.h"
> +#include "../../../util/tsc.h"
> +
> +#define RVTRACE_PMU_NAME "rvtrace"
> +#define KiB(x) ((x) * 1024)
> +#define MiB(x) ((x) * 1024 * 1024)
> +
> +struct rvtrace_recording {
> +       struct auxtrace_record  itr;
> +       struct perf_pmu *rvtrace_pmu;
> +       struct evlist *evlist;
> +};
> +
> +static size_t rvtrace_info_priv_size(struct auxtrace_record *itr __maybe=
_unused,
> +                                    struct evlist *evlist __maybe_unused=
)
> +{
> +       return RVTRACE_AUXTRACE_PRIV_SIZE;
> +}
> +
> +static int rvtrace_info_fill(struct auxtrace_record *itr, struct perf_se=
ssion *session,
> +                            struct perf_record_auxtrace_info *auxtrace_i=
nfo, size_t priv_size)
> +{
> +       struct rvtrace_recording *ptr =3D container_of(itr, struct rvtrac=
e_recording, itr);
> +       struct perf_pmu *rvtrace_pmu =3D ptr->rvtrace_pmu;
> +
> +       if (priv_size !=3D RVTRACE_AUXTRACE_PRIV_SIZE)
> +               return -EINVAL;
> +
> +       if (!session->evlist->core.nr_mmaps)
> +               return -EINVAL;
> +
> +       auxtrace_info->type =3D PERF_AUXTRACE_RISCV_TRACE;
> +       auxtrace_info->priv[0] =3D rvtrace_pmu->type;
> +
> +       return 0;
> +}
> +
> +static int rvtrace_set_auxtrace_mmap_page(struct record_opts *opts)
> +{
> +       bool privileged =3D perf_event_paranoid_check(-1);
> +
> +       if (!opts->full_auxtrace)
> +               return 0;
> +
> +       if (opts->full_auxtrace && !opts->auxtrace_mmap_pages) {
> +               if (privileged) {
> +                       opts->auxtrace_mmap_pages =3D MiB(16) / page_size=
;
> +               } else {
> +                       opts->auxtrace_mmap_pages =3D KiB(128) / page_siz=
e;
> +                       if (opts->mmap_pages =3D=3D UINT_MAX)
> +                               opts->mmap_pages =3D KiB(256) / page_size=
;
> +               }
> +       }
> +
> +       /* Validate auxtrace_mmap_pages */
> +       if (opts->auxtrace_mmap_pages) {
> +               size_t sz =3D opts->auxtrace_mmap_pages * (size_t)page_si=
ze;
> +               size_t min_sz =3D KiB(8);
> +
> +               if (sz < min_sz || !is_power_of_2(sz)) {
> +                       pr_err("Invalid mmap size : must be at least %zuK=
iB and a power of 2\n",
> +                              min_sz / 1024);
> +                       return -EINVAL;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
> +static int rvtrace_recording_options(struct auxtrace_record *itr, struct=
 evlist *evlist,
> +                                    struct record_opts *opts)
> +{
> +       struct rvtrace_recording *ptr =3D container_of(itr, struct rvtrac=
e_recording, itr);
> +       struct perf_pmu *rvtrace_pmu =3D ptr->rvtrace_pmu;
> +       struct evsel *evsel, *rvtrace_evsel =3D NULL;
> +       struct evsel *tracking_evsel;
> +       int err;
> +
> +       ptr->evlist =3D evlist;
> +       evlist__for_each_entry(evlist, evsel) {
> +               if (evsel->core.attr.type =3D=3D rvtrace_pmu->type) {
> +                       if (rvtrace_evsel) {
> +                               pr_err("There may be only one " RVTRACE_P=
MU_NAME "x event\n");
> +                               return -EINVAL;
> +                       }
> +                       evsel->core.attr.freq =3D 0;
> +                       evsel->core.attr.sample_period =3D 1;
> +                       evsel->needs_auxtrace_mmap =3D true;
> +                       rvtrace_evsel =3D evsel;
> +                       opts->full_auxtrace =3D true;
> +               }
> +       }
> +
> +       err =3D rvtrace_set_auxtrace_mmap_page(opts);
> +       if (err)
> +               return err;
> +       /*
> +        * To obtain the auxtrace buffer file descriptor, the auxtrace ev=
ent
> +        * must come first.
> +        */
> +       evlist__to_front(evlist, rvtrace_evsel);
> +       evsel__set_sample_bit(rvtrace_evsel, TIME);
> +
> +       /* Add dummy event to keep tracking */
> +       err =3D parse_event(evlist, "dummy:u");
> +       if (err)
> +               return err;
> +
> +       tracking_evsel =3D evlist__last(evlist);
> +       evlist__set_tracking_event(evlist, tracking_evsel);
> +
> +       tracking_evsel->core.attr.freq =3D 0;
> +       tracking_evsel->core.attr.sample_period =3D 1;
> +       evsel__set_sample_bit(tracking_evsel, TIME);
> +
> +       return 0;
> +}
> +
> +static u64 rvtrace_reference(struct auxtrace_record *itr __maybe_unused)
> +{
> +       return rdtsc();
> +}
> +
> +static void rvtrace_recording_free(struct auxtrace_record *itr)
> +{
> +       struct rvtrace_recording *ptr =3D
> +                       container_of(itr, struct rvtrace_recording, itr);
> +
> +       free(ptr);
> +}
> +
> +static struct auxtrace_record *rvtrace_recording_init(int *err, struct p=
erf_pmu *rvtrace_pmu)
> +{
> +       struct rvtrace_recording *ptr;
> +
> +       if (!rvtrace_pmu) {
> +               *err =3D -ENODEV;
> +               return NULL;
> +       }
> +
> +       ptr =3D zalloc(sizeof(*ptr));
> +       if (!ptr) {
> +               *err =3D -ENOMEM;
> +               return NULL;
> +       }
> +
> +       ptr->rvtrace_pmu =3D rvtrace_pmu;
> +       ptr->itr.recording_options =3D rvtrace_recording_options;
> +       ptr->itr.info_priv_size =3D rvtrace_info_priv_size;
> +       ptr->itr.info_fill =3D rvtrace_info_fill;
> +       ptr->itr.free =3D rvtrace_recording_free;
> +       ptr->itr.reference =3D rvtrace_reference;
> +       ptr->itr.read_finish =3D auxtrace_record__read_finish;
> +       ptr->itr.alignment =3D 0;
> +
> +       *err =3D 0;
> +       return &ptr->itr;
> +}
> +
> +static struct perf_pmu *find_pmu_for_event(struct perf_pmu **pmus,
> +                                          int pmu_nr, struct evsel *evse=
l)
> +{
> +       int i;
> +
> +       if (!pmus)
> +               return NULL;
> +
> +       for (i =3D 0; i < pmu_nr; i++) {
> +               if (evsel->core.attr.type =3D=3D pmus[i]->type)
> +                       return pmus[i];
> +       }
> +
> +       return NULL;
> +}
> +
> +struct auxtrace_record *auxtrace_record__init(struct evlist *evlist, int=
 *err)
> +{
> +       struct perf_pmu *rvtrace_pmu =3D NULL;
> +       struct perf_pmu *found_etm =3D NULL;
                                        ^^^^^^^^^
Nit: it seems "found_etm" implies ARM CoreSight ETM. Since this is for
RISC-V, should we rename this to "found_rvtrace" or simply "found_pmu"
to avoid confusion? Thanks

Regards,
Eric Lin

> +       struct evsel *evsel;
> +
> +       if (!evlist)
> +               return NULL;
> +
> +       rvtrace_pmu =3D perf_pmus__find(RVTRACE_PMU_NAME);
> +       evlist__for_each_entry(evlist, evsel) {
> +               if (rvtrace_pmu && !found_etm)
> +                       found_etm =3D find_pmu_for_event(&rvtrace_pmu, 1,=
 evsel);
> +       }
> +
> +       if (found_etm)
> +               return rvtrace_recording_init(err, rvtrace_pmu);
> +
> +       *err =3D 0;
> +       return NULL;
> +}
> diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
> index 1539c1dc823c..c905563e0d8a 100644
> --- a/tools/perf/util/auxtrace.c
> +++ b/tools/perf/util/auxtrace.c
> @@ -1394,6 +1394,7 @@ int perf_event__process_auxtrace_info(struct perf_s=
ession *session,
>         case PERF_AUXTRACE_VPA_DTL:
>                 err =3D powerpc_vpadtl_process_auxtrace_info(event, sessi=
on);
>                 break;
> +       case PERF_AUXTRACE_RISCV_TRACE:
>         case PERF_AUXTRACE_UNKNOWN:
>         default:
>                 return -EINVAL;
> diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
> index e0a5b39fed12..1c89a281a06c 100644
> --- a/tools/perf/util/auxtrace.h
> +++ b/tools/perf/util/auxtrace.h
> @@ -51,6 +51,7 @@ enum auxtrace_type {
>         PERF_AUXTRACE_S390_CPUMSF,
>         PERF_AUXTRACE_HISI_PTT,
>         PERF_AUXTRACE_VPA_DTL,
> +       PERF_AUXTRACE_RISCV_TRACE,
>  };
>
>  enum itrace_period_type {
> diff --git a/tools/perf/util/rvtrace.h b/tools/perf/util/rvtrace.h
> new file mode 100644
> index 000000000000..93c041db8660
> --- /dev/null
> +++ b/tools/perf/util/rvtrace.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright(C) 2015 Linaro Limited. All rights reserved.
> + * Author: Mathieu Poirier <mathieu.poirier@linaro.org>
> + */
> +
> +#ifndef INCLUDE__UTIL_PERF_RVTRACE_H__
> +#define INCLUDE__UTIL_PERF_RVTRACE_H__
> +
> +#include "debug.h"
> +#include "auxtrace.h"
> +#include "util/event.h"
> +#include "util/session.h"
> +#include <linux/bits.h>
> +
> +#define RVTRACE_AUXTRACE_PRIV_SIZE     sizeof(u64)
> +
> +#endif
> --
> 2.43.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

