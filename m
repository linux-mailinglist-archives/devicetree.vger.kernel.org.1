Return-Path: <devicetree+bounces-263980-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AiKJGfUiWklCAAAu9opvQ
	(envelope-from <devicetree+bounces-263980-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:34:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 011CE10EB0C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:34:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7771D3014C7C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B409E372B32;
	Mon,  9 Feb 2026 11:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="N7TBjlMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFC2366578
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770638205; cv=pass; b=jks9dyapSvhDcvthPC212bbHkin2YiAhtzXe8/wwtovIJAYZTpAEUSAnMHbaAdmxS415ce73iG1HK7QpeVYktUlONyo0ZrhtE2+rfIla+yWfnyeWwXNeFfUcaKP9Qrl3L3zt/H1rQhivpddDYefS6tLn2iJdSNqsvXy8AOfgwkU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770638205; c=relaxed/simple;
	bh=6sa6CVMgi45mRmWgpqfSnlQcESy8sgLat8D2XhW+s7o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SMlMdOb0Oczi5xInLjJzCZlCOOnNWZu6nF0mxkG+Bj0g0Isdsd1FnxnJYOWZpS1zCNr8c47gPPzfF+bmpVZQC2dY9BIOa7h5OG1kk7kqYI08qHE3Bhp+lv8e9AkXafZ3SkijJLSkzgHZ/feU9EDyjVPa43K7CQXttkkXLDwJ3Zo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=N7TBjlMd; arc=pass smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2ba64b5a53aso1118054eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:56:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770638204; cv=none;
        d=google.com; s=arc-20240605;
        b=gWEJCvspE8tbS6X8jhFTfE55JmelDobY1wTRnineplALbAdSsHkBX6Ds4ZkzivjJqw
         BIVdPlTeZHWKQJaU+kWC2S4pl1Ed8O/Pex1+k2mBBZKaJjLFReDPjDvVNrKNnrhN97WV
         q6Bn+r40zuvrrWpzbBWFZmx4x/Nbj1H/3gXe/v+2CPUrXGdRu8C53w+Q2L843IPSDaq2
         7+XntNDgQcFaQ5V3bhw4WJYe97IofKRAs4Fb0PSSHQDj6eGI7SAbGY3++WCHrvLV4vVC
         gbcISHvQq7VVngSWS0jyoVS1mq4LINXBTGvlQ/LQHy1AQVNHDd6QDhr5DKuoZ+XvikeL
         954Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UsYcHGylDjeAV44BY1Tm3axsmC/oOGFzSeWdtTEtrb8=;
        fh=AZz3kPIgm2IsZOmRLt4rbaXzo1ioaKNN5df8HxclQ2g=;
        b=diboscxa3HV2M7xv5czKco7nweZMJ8czi0miGiERaqa50WFrqjyXT6lsBFzSeFFNDL
         YNpiRNAVWghNv/bOWoGyNrNur424nTMRtbnj3mBDvwtGTPVTMp7O/6D5EIRB9mBkh+EM
         Mj2JrnyIPk2V6zgAZDmuEtFVpu82yeuJMFDF8/GoBFdFCV9W70rLo8Onh31cKblMVu8D
         AnLrUT7Mtk0zWy/NYJSfJ/uIqamQmA8TcJxf2bCHRkzPBIbnURpEt2c30XFPQs0eyzuI
         DoIWNormH1swvO3QtdT/9TV2cD67Q/Sg91k6e0FD3Xf9NmOPfUML8I4JyEMEHbGJV4kL
         MNzQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1770638204; x=1771243004; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UsYcHGylDjeAV44BY1Tm3axsmC/oOGFzSeWdtTEtrb8=;
        b=N7TBjlMdsH3KeWJxFuyvi3NAt7N1zEs5MWRTUEqefPalSY9TwRRg9ZOgqPGNk3flkG
         eSDN/4U2CVUhQGLHPnkY4EpD+kvWPABY8qC7iUZaZhKfTPLD9lYNJQXm+YVNymqhGR7A
         8WSbjeB7Rzswj9XFQ4y3+JDNuvmAjyqkx9KtjHpW/W+G4q4Re/+madAkEoBGlr6nxDJ2
         9FE8rFgRQAynLYMIEAtZM3eIwxaSOfsK2KltcnvesOIvFTwS6I+5FLJV4ecOSlNQEE6u
         hkgJkHP/H6BkEWz2rQYmhCz24hS3i6nG3ViFQvyGmnIVrUC0+yeBANOIxFgBKQj48GPJ
         OmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770638204; x=1771243004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UsYcHGylDjeAV44BY1Tm3axsmC/oOGFzSeWdtTEtrb8=;
        b=QOcad9RcdnM2EbgJ9j1UdEUdlPRNcpX/w1byvY+x44pRxX3CUr3XbVWe+z/hvvXOhO
         bQuME6Vg0h8fVJ4ljurUi9XolY7AkLfL3PV7XhhR/eLsQGunpftq3uOjMefZQ8lWXlYE
         ERjUiqAw4YXkOVuL7wRyyuPt5u4ufOn0exkXCmgkpa1fOAcZjBM0VW5+64I+YpH6QF4V
         yhHEo5zJg9l9FACaPjQbCxgvYhlV4oTW32btu6BufAEOLuC/YOEzCoNuT9MX/SboCNmA
         4MnwaaZ+foyE6sfzWEQxZ9YmRnWz/J4nSzwK1r2AMHk7h4wfgF/zbqaeXvCjR8iGK5NA
         KKRg==
X-Forwarded-Encrypted: i=1; AJvYcCX4Vbyj7uE0+856dBXcx1ubLXp9icrmYdFsx6DStlWdIYbhGqdz0KH+gK+Ox0qcuC/n/wlQodae3z0I@vger.kernel.org
X-Gm-Message-State: AOJu0YxPw4qW6y8i7KcB3990laqyGKds3eW0CIOoXAbwJYb9Ri0XPDhN
	dAiF9fehVlG5uCi2IungiTv/+JFfAxXBjGCLedy3yLhaFOy24TEO4Ufp30sELy6BREttFcq5u4c
	4zEBsWwbOCi0T8wcyM4diO1l3DuICZmH+y3t2AvNyNg==
X-Gm-Gg: AZuq6aIT7aPMya5y4b2n87ENfwyRr3YHOAsfSCFzj/MF6/M5Kd5FOi6oME3JBk/xDqf
	xRrRdE2fVx9E2s267KSmY21qwzFNmkHfcxj3mMSUw/F/uVHGrc/sdH3zFUwwiw99IF9sjbH15cX
	DCt5MIzShSADmPmyYIGeOgSHKrOaKmA/cKKGUY0Tk5yAGL7BCUaJziaiRSCZyCby1ZSxAXvA1gs
	4R63yAGAbTbvj1zCDRbo9GjuT4xzB8GBxU8FRJ+wby/7ewNRQ2TDwhx9eKacBzKKMis2fUWqzfR
	7zV1/y6RwdTvAWhMed49v3U+u0PL
X-Received: by 2002:a05:7300:e426:b0:2b4:5514:38fd with SMTP id
 5a478bee46e88-2b8567240camr5031587eec.20.1770638203674; Mon, 09 Feb 2026
 03:56:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-12-apatel@ventanamicro.com> <CAPqJEFodbAyHcLTL3UCQ6rKvRmbVDNm-zK9D5esg-ek9n4VeUw@mail.gmail.com>
In-Reply-To: <CAPqJEFodbAyHcLTL3UCQ6rKvRmbVDNm-zK9D5esg-ek9n4VeUw@mail.gmail.com>
From: Mayuresh Chitale <mchitale@ventanamicro.com>
Date: Mon, 9 Feb 2026 17:26:07 +0530
X-Gm-Features: AZwV_QhsxWqf_vsAc2K8pZSMqDE1E14LK7XTmZUxXDF5aJXvVARuJa6W3RIGhXo
Message-ID: <CAN37VV5bn6XiO0ykX8-WJLNE8447r7=zU1hy=KU+Z4RcoYtMOA@mail.gmail.com>
Subject: Re: [PATCH v2 11/12] perf tools: Initial support for RISC-V trace decoder
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ventanamicro.com];
	TAGGED_FROM(0.00)[bounces-263980-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,infradead.org:url,infradead.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ventanamicro.com:email,ventanamicro.com:dkim]
X-Rspamd-Queue-Id: 011CE10EB0C
X-Rspamd-Action: no action

Hi Eric,

On Fri, Feb 6, 2026 at 6:25=E2=80=AFPM Eric Lin <eric.lin@sifive.com> wrote=
:
>
> Hi Anup,
>
> On Sat, Nov 1, 2025 at 11:45=E2=80=AFPM Anup Patel <apatel@ventanamicro.c=
om> wrote:
> >
> > From: Mayuresh Chitale <mchitale@ventanamicro.com>
> >
> > Add bare bones support for RISC-V trace decoder so that the data receiv=
ed
> > from the hardware by the RISC-V trace perf driver can be written to the
> > perf record output file.
> >
> > Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > ---
> >  tools/perf/util/Build             |  1 +
> >  tools/perf/util/auxtrace.c        |  3 +
> >  tools/perf/util/rvtrace-decoder.c | 91 +++++++++++++++++++++++++++++++
> >  tools/perf/util/rvtrace.h         |  2 +
> >  4 files changed, 97 insertions(+)
> >  create mode 100644 tools/perf/util/rvtrace-decoder.c
> >
> > diff --git a/tools/perf/util/Build b/tools/perf/util/Build
> > index 4be313cd115a..f736cea51fd8 100644
> > --- a/tools/perf/util/Build
> > +++ b/tools/perf/util/Build
> > @@ -145,6 +145,7 @@ perf-util-$(CONFIG_AUXTRACE) +=3D cs-etm.o
> >  perf-util-$(CONFIG_AUXTRACE) +=3D cs-etm-decoder/
> >  endif
> >  perf-util-$(CONFIG_AUXTRACE) +=3D cs-etm-base.o
> > +perf-util-$(CONFIG_AUXTRACE) +=3D rvtrace-decoder.o
> >
> >  perf-util-y +=3D parse-branch-options.o
> >  perf-util-y +=3D dump-insn.o
> > diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
> > index c905563e0d8a..299991d5d305 100644
> > --- a/tools/perf/util/auxtrace.c
> > +++ b/tools/perf/util/auxtrace.c
> > @@ -54,6 +54,7 @@
> >  #include "arm-spe.h"
> >  #include "hisi-ptt.h"
> >  #include "s390-cpumsf.h"
> > +#include "rvtrace.h"
> >  #include "util/mmap.h"
> >  #include "powerpc-vpadtl.h"
> >
> > @@ -1395,6 +1396,8 @@ int perf_event__process_auxtrace_info(struct perf=
_session *session,
> >                 err =3D powerpc_vpadtl_process_auxtrace_info(event, ses=
sion);
> >                 break;
> >         case PERF_AUXTRACE_RISCV_TRACE:
> > +               err =3D rvtrace__process_auxtrace_info(event, session);
> > +               break;
> >         case PERF_AUXTRACE_UNKNOWN:
> >         default:
> >                 return -EINVAL;
> > diff --git a/tools/perf/util/rvtrace-decoder.c b/tools/perf/util/rvtrac=
e-decoder.c
> > new file mode 100644
> > index 000000000000..58db5ca62c1a
> > --- /dev/null
> > +++ b/tools/perf/util/rvtrace-decoder.c
> > @@ -0,0 +1,91 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * RISC-V trace Decoder
> > + */
> > +
> > +#include <errno.h>
> > +#include <inttypes.h>
> > +#include "evlist.h"
> > +#include <internal/lib.h>
> > +#include "rvtrace.h"
> > +
> > +struct rvtrace_decoder {
> > +       struct auxtrace auxtrace;
> > +       u32 auxtrace_type;
> > +       struct perf_session *session;
> > +       struct machine *machine;
> > +       u32 pmu_type;
> > +};
> > +
> > +static int rvtrace_process_event(struct perf_session *session __maybe_=
unused,
> > +                                union perf_event *event __maybe_unused=
,
> > +                                struct perf_sample *sample __maybe_unu=
sed,
> > +                                const struct perf_tool *tool __maybe_u=
nused)
> > +{
> > +       return 0;
> > +}
> > +
> > +static int rvtrace_process_auxtrace_event(struct perf_session *session=
 __maybe_unused,
> > +                                         union perf_event *event __may=
be_unused,
> > +                                         const struct perf_tool *tool =
__maybe_unused)
> > +{
> > +       return 0;
> > +}
> > +
> > +static int rvtrace_flush(struct perf_session *session __maybe_unused,
> > +                        const struct perf_tool *tool __maybe_unused)
> > +{
> > +       return 0;
> > +}
> > +
> > +static void rvtrace_free_events(struct perf_session *session __maybe_u=
nused)
> > +{
> > +}
> > +
> > +static void rvtrace_free(struct perf_session *session)
> > +{
> > +       struct rvtrace_decoder *ptr =3D container_of(session->auxtrace,=
 struct rvtrace_decoder,
> > +                                           auxtrace);
> > +
> > +       session->auxtrace =3D NULL;
> > +       free(ptr);
> > +}
> > +
> > +static bool rvtrace_evsel_is_auxtrace(struct perf_session *session,
> > +                                     struct evsel *evsel)
> > +{
> > +       struct rvtrace_decoder *ptr =3D container_of(session->auxtrace,
> > +                                                  struct rvtrace_decod=
er, auxtrace);
> > +
> > +       return evsel->core.attr.type =3D=3D ptr->pmu_type;
> > +}
> > +
> > +int rvtrace__process_auxtrace_info(union perf_event *event,
> > +                                  struct perf_session *session)
> > +{
> > +       struct perf_record_auxtrace_info *auxtrace_info =3D &event->aux=
trace_info;
> > +       struct rvtrace_decoder *ptr;
> > +
> > +       if (auxtrace_info->header.size < RVTRACE_AUXTRACE_PRIV_SIZE +
> > +           sizeof(struct perf_record_auxtrace_info))
> > +               return -EINVAL;
> > +
> > +       ptr =3D zalloc(sizeof(*ptr));
> > +       if (!ptr)
> > +               return -ENOMEM;
> > +
> > +       ptr->session =3D session;
> > +       ptr->machine =3D &session->machines.host;
> > +       ptr->auxtrace_type =3D auxtrace_info->type;
> > +       ptr->pmu_type =3D auxtrace_info->priv[0];
> > +
> > +       ptr->auxtrace.process_event =3D rvtrace_process_event;
> > +       ptr->auxtrace.process_auxtrace_event =3D rvtrace_process_auxtra=
ce_event;
> > +       ptr->auxtrace.flush_events =3D rvtrace_flush;
> > +       ptr->auxtrace.free_events =3D rvtrace_free_events;
> > +       ptr->auxtrace.free =3D rvtrace_free;
> > +       ptr->auxtrace.evsel_is_auxtrace =3D rvtrace_evsel_is_auxtrace;
> > +       session->auxtrace =3D &ptr->auxtrace;
> > +
> > +       return 0;
> > +}
> > diff --git a/tools/perf/util/rvtrace.h b/tools/perf/util/rvtrace.h
> > index 93c041db8660..fdf2e5866c85 100644
> > --- a/tools/perf/util/rvtrace.h
> > +++ b/tools/perf/util/rvtrace.h
> > @@ -15,4 +15,6 @@
> >
> >  #define RVTRACE_AUXTRACE_PRIV_SIZE     sizeof(u64)
> >
> > +int rvtrace__process_auxtrace_info(union perf_event *event, struct per=
f_session *session);
> > +struct auxtrace_record *rvtrace_record_init(int *err);
>
> It looks like the implementation of `rvtrace_recording_init` in the
> auxtrace.c file is static (private), and the arguments don't match
> this declaration.
> Should we remove "static" from auxtrace.c and update this prototype
> to: "struct auxtrace_record *rvtrace_recording_init(int *err, struct
> perf_pmu *rvtrace_pmu);"?
>
> Or should we simply remove this declaration from the header? Thanks.
The declaration should be removed from the header.

>
> Regards,
> Eric Lin,
>
> >  #endif
> > --
> > 2.43.0
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

