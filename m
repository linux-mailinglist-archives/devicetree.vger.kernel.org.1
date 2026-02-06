Return-Path: <devicetree+bounces-263347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPmjFvjkhWnCHwQAu9opvQ
	(envelope-from <devicetree+bounces-263347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:56:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D79DFFDC38
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E6723031AD1
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8824B3A1E76;
	Fri,  6 Feb 2026 12:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="emTlEypS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D58C378D7E
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770382526; cv=pass; b=C1+ohlW1LS139v2GXO/5SZiZMQHSnh5K4Z9nbRc9G1FEy5Z4wIUyWEqfcxXp26gR+KrNyTYkTm0fRyEzKJW27YfGKNEJ4beYA7jiDrPjc7hHpguUSGN5QsqNGPkt6cZTSLAWyGYlY9YHg45xtzLSMBTrE55ukb/MiRc+6bOw/DA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770382526; c=relaxed/simple;
	bh=BDTtWPTizyYtSol/7OgLr7kVP/c+rbaAPZvwv6NI6sw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ca18mt9mXMW0NGrA/7k0PgQG07D1gC6IAp/fcuhCBEzJ21Fvz9U3b9/LDn3O3Jxb6rZLj8tZertEh9aYnk9/1udB0cOh1UCsExcMHmue2cpHiZetQNRsguPsFbn8PyQFeT9jZLND36wJq9ZbA9yF0lnlFBf9JQqf6XFrNY4t7YU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=emTlEypS; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-38316d0c26eso6120111fa.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:55:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770382524; cv=none;
        d=google.com; s=arc-20240605;
        b=ETc7w5iTW2OEgla7dNBxgWxQFZQQyihYxwSwamUhiqfHTG5le60VFoUDQ8bmMPpZZV
         1IluqXu+IdG0vZI+INGRe9HdnIceEXHARPOkqFrox7+NHk/GLZEltet3P1vG5kOhLyLR
         sbGDXHIorO4zudSfhIoNsX2rfB7wd4CQutesqIiFNpBM+kTAkye6KgcrpMphSoVzR0WF
         K8TPCdZT4f+l8p4Akl/WDWxjfUjqmvPigdC+RHGohWXYG/RIbrt2WaTVcl2cieEpk8EE
         fXUTCcPyyLeow6SCC5obHbDEvLuQSeh+7CDd6b6kZ39skeimE8TfI7TM9+plluNNz+bp
         5/fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dWG8MiKgoGDaUL/5SxjX7qejFCIkmY0v5IG2Vfw68JE=;
        fh=Td5Cu6qRcgiZhzDxruycgR1qrw4dqyVUkc/f2FmpC98=;
        b=VIUGCSVfDwOTqKjop6HGN2WnwHJieig4JnHRNkIZOWlGj6bivphZVUDgdgPS3P1kYJ
         diFsoATD8eM7W2YqwZ2SLm7XbsStfYiHOoizTGnuGEManUpXsIGhDxc079XU1ymTpP6R
         P73pcDKNcRB00TQ6gGdGEZeKNzlKmXdN1TDnHPkGrr8xg1UgjmvvTLHUQ8C37jlBD5z4
         UOYqPybxQsd+UD2kyKfCRBoOCQpSPPbyzkjGR3O9WANVdL9O/F+tJ6TCOPsxqpeyHjbX
         K9A7HV3BMhHhEgiMx88P0gkpLROrbm6Zjdly1wn+vKBmN1Ss7BBIgY+LaDg4c8IK7zlx
         3CtA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1770382524; x=1770987324; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dWG8MiKgoGDaUL/5SxjX7qejFCIkmY0v5IG2Vfw68JE=;
        b=emTlEypSOSo/GQIaCG5bPbGKcOLb97ZK8km+UmUY4R/4PXoi6jssdeqqBrZzfo+XwD
         5ixyxfGqMkxCod3sQoZiaBrzvzr4B8atC0b9PwGzOdt27/RUKeOQztW8wt6PCQ0z3SN3
         okBTesp9bqTnuYWP20uI2kcc/fnqJ8gqo+HX45yPnxtA+fMTXDQ7sA6z/dwv1EEwyUGo
         znml4qrXzdxea+YJIrW5GIEOdv7exBw5qNB0sJjtg4qYUmsDzYn6mSm3Y/E0pQ1ci6/K
         bqvLs7t0H5vV6MRoeBtbtGlvIzCy3LLSV9bjL/ePTQHzkasJTF2NbNj4YecvduB8QYyJ
         QZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770382524; x=1770987324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dWG8MiKgoGDaUL/5SxjX7qejFCIkmY0v5IG2Vfw68JE=;
        b=PcX1tho9EtPmL/6LMLQoUHQ13yg45oNIVyBlzF/+Kj8dMgSWIaX//fx8LIxAVULytx
         5I1yWRnL8SLTzesJA4/KcgS6sWeHMem+cWWn2Db2tU4m417TMxPscOVm+pWVTaPxI1w2
         D381/W3Xdh2GcwnHkdvFDpjEhjM42jG4gxEcpqrnfOtEOtqLbH7yHCGfG+MUP0YLhAmp
         cwE3wsstJZ/TpCUL7+/wS+ZCiPPOzZqhqLDDpWvOKVScVBlOr6cwgsCuYUtDKIQlnuND
         kuKFxvItz78n1tyNvIPd2euIL3RMMuGvx4je/N3mBdgA7s8Xkhn8eCDku2yIfLUtZFhv
         moDg==
X-Forwarded-Encrypted: i=1; AJvYcCWPn3ygbg2OL2ozYfT6ASXbofhFmWERWUjhrSX7Jq33GQVVZTCXQm3Z3epQgVYTL8slBYLvvuX4HJtO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa0b0Fb6NRzYLGz5DLvxBfwlgiqjMCBGEvIafs3H0ObGI1tyKD
	Cr5UuYj6MVDBZeYsK5EfCkcpe0OQQHAFT7T6PN7xzQhmk3AYHo1M/Ed5bA0c/lXSJR1cluAUF6e
	WzUkKjzp0R6pi6SRm9yTQU7rlg0jK1CwMXgZ5RzprcQ==
X-Gm-Gg: AZuq6aIYc+/Jx2vQanxABsbgzLZnyndpNuLS71vQ/6VlZf1BafEp0meLN3Gr5Asj42v
	r0BGv1EWyP/65fD08vgt6rWxCeu8CFVfWSfK48SlwgJ+bulKdWdZZwHXqRJT6aDx3iBizv1JOPQ
	ayfYVqoe3CGbOCIjQ9LLE/VC/cENODqh1eVaTZc5X4KnsM5HKAxz8C/y48lbDuGYXeJgXvvKodf
	JaspouHZas2CHY6sJ7di6M4pgNu8dh5XR5rr0GRopN2M0HdcMjwH1ZQTvXqoc4jV5BUh535YA==
X-Received: by 2002:a2e:9a15:0:b0:37f:c5ca:72f0 with SMTP id
 38308e7fff4ca-386b4e7d8d8mr9491481fa.8.1770382524147; Fri, 06 Feb 2026
 04:55:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com> <20251101154245.162492-12-apatel@ventanamicro.com>
In-Reply-To: <20251101154245.162492-12-apatel@ventanamicro.com>
From: Eric Lin <eric.lin@sifive.com>
Date: Fri, 6 Feb 2026 20:55:12 +0800
X-Gm-Features: AZwV_QhI9tzwE3oQcQDzEEcs4kH1Y8KeyrODiC00ZJu2Ksk08hjM7uuYWFodWpE
Message-ID: <CAPqJEFodbAyHcLTL3UCQ6rKvRmbVDNm-zK9D5esg-ek9n4VeUw@mail.gmail.com>
Subject: Re: [PATCH v2 11/12] perf tools: Initial support for RISC-V trace decoder
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263347-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ventanamicro.com:email,infradead.org:url,infradead.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sifive.com:dkim]
X-Rspamd-Queue-Id: D79DFFDC38
X-Rspamd-Action: no action

Hi Anup,

On Sat, Nov 1, 2025 at 11:45=E2=80=AFPM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> From: Mayuresh Chitale <mchitale@ventanamicro.com>
>
> Add bare bones support for RISC-V trace decoder so that the data received
> from the hardware by the RISC-V trace perf driver can be written to the
> perf record output file.
>
> Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> ---
>  tools/perf/util/Build             |  1 +
>  tools/perf/util/auxtrace.c        |  3 +
>  tools/perf/util/rvtrace-decoder.c | 91 +++++++++++++++++++++++++++++++
>  tools/perf/util/rvtrace.h         |  2 +
>  4 files changed, 97 insertions(+)
>  create mode 100644 tools/perf/util/rvtrace-decoder.c
>
> diff --git a/tools/perf/util/Build b/tools/perf/util/Build
> index 4be313cd115a..f736cea51fd8 100644
> --- a/tools/perf/util/Build
> +++ b/tools/perf/util/Build
> @@ -145,6 +145,7 @@ perf-util-$(CONFIG_AUXTRACE) +=3D cs-etm.o
>  perf-util-$(CONFIG_AUXTRACE) +=3D cs-etm-decoder/
>  endif
>  perf-util-$(CONFIG_AUXTRACE) +=3D cs-etm-base.o
> +perf-util-$(CONFIG_AUXTRACE) +=3D rvtrace-decoder.o
>
>  perf-util-y +=3D parse-branch-options.o
>  perf-util-y +=3D dump-insn.o
> diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
> index c905563e0d8a..299991d5d305 100644
> --- a/tools/perf/util/auxtrace.c
> +++ b/tools/perf/util/auxtrace.c
> @@ -54,6 +54,7 @@
>  #include "arm-spe.h"
>  #include "hisi-ptt.h"
>  #include "s390-cpumsf.h"
> +#include "rvtrace.h"
>  #include "util/mmap.h"
>  #include "powerpc-vpadtl.h"
>
> @@ -1395,6 +1396,8 @@ int perf_event__process_auxtrace_info(struct perf_s=
ession *session,
>                 err =3D powerpc_vpadtl_process_auxtrace_info(event, sessi=
on);
>                 break;
>         case PERF_AUXTRACE_RISCV_TRACE:
> +               err =3D rvtrace__process_auxtrace_info(event, session);
> +               break;
>         case PERF_AUXTRACE_UNKNOWN:
>         default:
>                 return -EINVAL;
> diff --git a/tools/perf/util/rvtrace-decoder.c b/tools/perf/util/rvtrace-=
decoder.c
> new file mode 100644
> index 000000000000..58db5ca62c1a
> --- /dev/null
> +++ b/tools/perf/util/rvtrace-decoder.c
> @@ -0,0 +1,91 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * RISC-V trace Decoder
> + */
> +
> +#include <errno.h>
> +#include <inttypes.h>
> +#include "evlist.h"
> +#include <internal/lib.h>
> +#include "rvtrace.h"
> +
> +struct rvtrace_decoder {
> +       struct auxtrace auxtrace;
> +       u32 auxtrace_type;
> +       struct perf_session *session;
> +       struct machine *machine;
> +       u32 pmu_type;
> +};
> +
> +static int rvtrace_process_event(struct perf_session *session __maybe_un=
used,
> +                                union perf_event *event __maybe_unused,
> +                                struct perf_sample *sample __maybe_unuse=
d,
> +                                const struct perf_tool *tool __maybe_unu=
sed)
> +{
> +       return 0;
> +}
> +
> +static int rvtrace_process_auxtrace_event(struct perf_session *session _=
_maybe_unused,
> +                                         union perf_event *event __maybe=
_unused,
> +                                         const struct perf_tool *tool __=
maybe_unused)
> +{
> +       return 0;
> +}
> +
> +static int rvtrace_flush(struct perf_session *session __maybe_unused,
> +                        const struct perf_tool *tool __maybe_unused)
> +{
> +       return 0;
> +}
> +
> +static void rvtrace_free_events(struct perf_session *session __maybe_unu=
sed)
> +{
> +}
> +
> +static void rvtrace_free(struct perf_session *session)
> +{
> +       struct rvtrace_decoder *ptr =3D container_of(session->auxtrace, s=
truct rvtrace_decoder,
> +                                           auxtrace);
> +
> +       session->auxtrace =3D NULL;
> +       free(ptr);
> +}
> +
> +static bool rvtrace_evsel_is_auxtrace(struct perf_session *session,
> +                                     struct evsel *evsel)
> +{
> +       struct rvtrace_decoder *ptr =3D container_of(session->auxtrace,
> +                                                  struct rvtrace_decoder=
, auxtrace);
> +
> +       return evsel->core.attr.type =3D=3D ptr->pmu_type;
> +}
> +
> +int rvtrace__process_auxtrace_info(union perf_event *event,
> +                                  struct perf_session *session)
> +{
> +       struct perf_record_auxtrace_info *auxtrace_info =3D &event->auxtr=
ace_info;
> +       struct rvtrace_decoder *ptr;
> +
> +       if (auxtrace_info->header.size < RVTRACE_AUXTRACE_PRIV_SIZE +
> +           sizeof(struct perf_record_auxtrace_info))
> +               return -EINVAL;
> +
> +       ptr =3D zalloc(sizeof(*ptr));
> +       if (!ptr)
> +               return -ENOMEM;
> +
> +       ptr->session =3D session;
> +       ptr->machine =3D &session->machines.host;
> +       ptr->auxtrace_type =3D auxtrace_info->type;
> +       ptr->pmu_type =3D auxtrace_info->priv[0];
> +
> +       ptr->auxtrace.process_event =3D rvtrace_process_event;
> +       ptr->auxtrace.process_auxtrace_event =3D rvtrace_process_auxtrace=
_event;
> +       ptr->auxtrace.flush_events =3D rvtrace_flush;
> +       ptr->auxtrace.free_events =3D rvtrace_free_events;
> +       ptr->auxtrace.free =3D rvtrace_free;
> +       ptr->auxtrace.evsel_is_auxtrace =3D rvtrace_evsel_is_auxtrace;
> +       session->auxtrace =3D &ptr->auxtrace;
> +
> +       return 0;
> +}
> diff --git a/tools/perf/util/rvtrace.h b/tools/perf/util/rvtrace.h
> index 93c041db8660..fdf2e5866c85 100644
> --- a/tools/perf/util/rvtrace.h
> +++ b/tools/perf/util/rvtrace.h
> @@ -15,4 +15,6 @@
>
>  #define RVTRACE_AUXTRACE_PRIV_SIZE     sizeof(u64)
>
> +int rvtrace__process_auxtrace_info(union perf_event *event, struct perf_=
session *session);
> +struct auxtrace_record *rvtrace_record_init(int *err);

It looks like the implementation of `rvtrace_recording_init` in the
auxtrace.c file is static (private), and the arguments don't match
this declaration.
Should we remove "static" from auxtrace.c and update this prototype
to: "struct auxtrace_record *rvtrace_recording_init(int *err, struct
perf_pmu *rvtrace_pmu);"?

Or should we simply remove this declaration from the header? Thanks.

Regards,
Eric Lin,

>  #endif
> --
> 2.43.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

