Return-Path: <devicetree+bounces-274843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MdGBgpzs2kQWgAAu9opvQ
	(envelope-from <devicetree+bounces-274843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:14:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B83F27C9A6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:14:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0842930AEF07
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8476433C502;
	Fri, 13 Mar 2026 02:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="COuwhT2q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3C431717F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.161.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773367838; cv=pass; b=lPCa1QMVXi6XBbcqjkYXT2/8SsjKkgzB0dim+Lu2aty1M0uOLsXo+K7rVrTGaf/kqArlcz3uW8bWsNBKrZUsGCrGrV+3jTUvUHPKEoGRpnfjenCz8Bxe6Z7bGh8Jgz6Vp2o0PiTxRXanInABrw38Z8XEqQqMPNIjMl5/jeVhzSE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773367838; c=relaxed/simple;
	bh=mhrTWHuNWFeQV79n7gOI907kIVU2/Ul4rD5PX8XldeM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fEOOBVhKujOTMBnqr96FobOUHvSdE2N3vvKcC8GbLeTKX7iloGdFNc/6cUy63SiqnSkm9AH13c0r7imLbYi4QELTGQvFMHAUW3LFzE1ODCLUZOo3F9T+rnyP/a0oHoDlHtwp2x+9UsCo/7uw6k6w8zvqHAqlUfLpNoioRIVBJYw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=COuwhT2q; arc=pass smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-67bb5e4cf5aso1083971eaf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773367834; cv=none;
        d=google.com; s=arc-20240605;
        b=EfeUqKIFS4BGAye2dT2JnVeeFmvOJFRDQZs1H3ZUvqBAthhf9osvgv+nKquKTZN1it
         /lnsYAlWX8LcvhPLfVf4JvSDKjUvnmpsCmXN1HJVBSTRqcQ3/GlW0SJtRwKPw1ARgnNE
         V4cDw8VQWAkiFWOxxy5S5XN8KGv/Q9Nb+pmR+liNClwEWb+Ud3K85aZS/4dIK8vDFVuK
         6yLjR8NS/7siEvydm6xcXLyDLnmKm7HXXPL4GEZ5EPjbED3D3/cBjEqzhXGJY9xOG8gJ
         TzcT3DnF2WHiyjJf/miAvO5jwCXaG7CjyLN0t+G6op6PfcK0qLLowKMIUrVmydTasyF3
         qeVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YqpPrJrOXJVLRwsPJtnuZ1FSFkjoRpdZi0Afd9z7G/c=;
        fh=GrAULLQTX3R3hwh8ZL1WNwSNODD0TaffO5PAYW18V6s=;
        b=fJl9xZZb7z6vyZg12ufk7kNMAzB0NV6gIybNY+b2iNm0gcTiqQ6qN9Ozq9tXLveP0M
         5DVDKRHvv9MKin9cfs1NvTPqhn3GNimr7kt4gZJU+671SGyCCUhUTm7Lx10MnYXnCTKc
         Yf09ejl8FaHHqhTRCVJ9qqrl/XTGhFi4ye7GwzM/Wp5P0D4dHtHVFfuFH+fYg/+GH8Rn
         LE36nnlBiXSGsIv4iz7cPR4hNL0dKEQ22INV3szCqPyD94o4KdM/kVMDXfIDtVtTe4AU
         sQG7hD/XW7Db9SI0R22Ir4eFbR+DxYYfFbUAlpo9/6rmDbGHTvplLCGKrhnpHKB5bePy
         YNFA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1773367834; x=1773972634; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YqpPrJrOXJVLRwsPJtnuZ1FSFkjoRpdZi0Afd9z7G/c=;
        b=COuwhT2qPrxF22BaZLvOnjCpwSHLnQ3tZFrxR7qS6yqdADWvMb+RJMT5Rc/bTtDq2X
         Anx8xIMoXIGIiQq+hyD4/Jjk2iAHwv3T2EhFcMMUJNQdsJh7qNrZi2Wd+syhAzj2iuW6
         mZdXXuE63bgsgsVK8wSi4gZ95ZxSNuO2U0VK9vtDg/gAS79ouo5L02wpKuKcNlGVrOpm
         CoVHmXDh24lVqrdfbz8+qlfOLLtpsqyWd2tjR8LcQPI8Zfg9iFbttl3jfwIcwnMYdmwN
         0flEqBvBM+G9qMZ+A1pisgSO0tOdXoGci/9bqzHiugmjd3KZZh9hrywAm4piFFpKJdVg
         ehVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773367834; x=1773972634;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YqpPrJrOXJVLRwsPJtnuZ1FSFkjoRpdZi0Afd9z7G/c=;
        b=PfSZNGD9mcl2D7TJYk8KChZBvpgChihF4KtEFPzjjagLdfSwVxgUvEIqqpWOpZ+F2t
         AGpe5mIDCPcDmBXBUJ83FOMnp2KmrCee0Y9NrQWBO5iudQslevwU3hTKmJydWV4lk0uz
         Hf8xWS4wBdU20D1iCu/cRbvjrWdSrvd/qCNWIuw2dBs32NrpG6ow1iZHrj2fh1sR+6UC
         Mf0NfIzC6foG20yShO+ARtzG7x7HXb0eH5FF2fZHZiJB+3B1Z5ytb2Kw4y3rIwWUmHKd
         Kr1D72+0GVmYXQmD+Hf0azaA17iY9uR9UuWO/2W2JMXYRkFEnYWbYd9UA+GWUWz5Xc7A
         02aQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXzo2LkUsN6dvkG3JsY/mBesptsYAbGnCLtzDliSnKWfKmG49oAyLCpkTj+XChsEeGbQaF8rKDZ8EY@vger.kernel.org
X-Gm-Message-State: AOJu0YzHGkvUcTWbtAiYcMz5JjVf2XgTdxsFatOSc5tZNI4ZnPL7UKp4
	rC06MTQoSPy7bPvE6FokYUjFkLY7pcFOk0PKWVkZJH3fg1Sonnv0v5+91krD8sT/akgJ2/JKBWz
	iGNpB/Mgu9irzeyRqIo+EEFPWZfJjAqXBP+kF669Mmw==
X-Gm-Gg: ATEYQzziS77Ft3533TX/FftYd8OG8iFR/bwa7qm019/tgQ+X2q4yvUmFZRHFjmYRdrl
	wrcEOlT86BAuncx0OeSZdM03hu/L8js9YOFpmnCn+7dtyA09PbQ9mVasDqaGxBQH4JD9EQIsEhY
	Ovpie8D2wX9HBg/i0urgIN6QwZJZn4vvRpDaCgxUYPmRW40+EuZY4jlIGTMfaTNWPza/SahmLKP
	qo6khKfNxC748pEvjlJ7qwS+XlLusfysW8CHDJ5u10Jmjmuvr07l/9LDNXXnm3DWL0QyRzqV3sA
	WP01BnK7yA==
X-Received: by 2002:a05:6820:1985:b0:66e:1928:ca46 with SMTP id
 006d021491bc7-67bda98df31mr1030924eaf.8.1773367833869; Thu, 12 Mar 2026
 19:10:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <20251002060732.100213-3-apatel@ventanamicro.com> <CABvJ_xgn__drv_oAFzEYdjwMBFGK1WnPs82Kh-5UtevEedNfeQ@mail.gmail.com>
 <CAAhSdy1SuNrkJGih++V7F9jPb_5hfM9_T29A63kQB-dhMJthjw@mail.gmail.com> <dd4cad42-65c3-4479-bf0b-87f0943f1d9a@gmail.com>
In-Reply-To: <dd4cad42-65c3-4479-bf0b-87f0943f1d9a@gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 13 Mar 2026 10:10:22 +0800
X-Gm-Features: AaiRm537FtqhgWBwQoSxPlFKHQXBHRahqHrxmA8CcGAYVt5DaAPZRZY_B4KVeO0
Message-ID: <CABvJ_xgumHC4WJOXvmV27Y43K_QVzs-ULVV2vCcs-eYfUrwx+w@mail.gmail.com>
Subject: Re: [PATCH 02/11] rvtrace: Initial implementation of driver framework
To: Bo Gan <ganboing@gmail.com>
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <apatel@ventanamicro.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ian Rogers <irogers@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, 
	Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atish.patra@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-kernel@vger.kernel.org, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>, 
	Mayuresh Chitale <mchitale@gmail.com>, Namhyung Kim <namhyung@kernel.org>, 
	linux-riscv@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>, 
	Liang Kan <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-274843-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[brainfault.org,ventanamicro.com,kernel.org,sifive.com,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,arm.com,vger.kernel.org,ghiti.fr,linux.dev,infradead.org,intel.com,redhat.com,gmail.com,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.chen@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3B83F27C9A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Anup and Bo Gan,

First, I apologize for the delayed response. We really appreciate your
openness to including the SiFive (pre-ratified) version in the current
RVtrace infrastructure. My colleagues and I took some time to look
into your feedback, and we agree that the SiFive implementation should
be able to share the same perf PMU interface as RVtrace. My colleague,
Eric Lin, is currently preparing an RFC patch series based on Anup's
latest v3 patch set to demonstrate how we can integrate the
pre-ratified version. We plan to send it out in the coming weeks and
look forward to using it as a basis to discuss the details further.

Thanks, Vincent Chen

On Tue, Jan 27, 2026 at 8:20=E2=80=AFPM Bo Gan <ganboing@gmail.com> wrote:
>
> Hi Anup, Vincent,
>
> I'm an active user of HiFive Premier P550. I've got full system stack tra=
ce
> collection and decoding working with:
>
> https://github.com/ganboing/riscv-trace-umd
> https://github.com/ganboing/libnexus-rv
>
> Hence, I'm fully aware of the situation, and the spec differences between
> the pre-ratified spec (sifive) and the ratified one. I see the following
> path forward:
>
> - Still prioritize the support for ratified spec, and add the funnel comp=
.
>    Once rvtrace for 1.0 is in, then we can start working on supporting th=
e
>    pre-ratified ones. There aren't many people interested in reviewing it=
,
>    except Nutty, Rob and me, and I'm the only one reviewing the riscv tra=
ce
>    related code, so please start reviewing it if you can or get more folk=
s.
>    Latest is v2: https://lore.kernel.org/all/20251101154245.162492-1-apat=
el@ventanamicro.com/
>
> - For pre-ratified trace systems such as the one in p550, I agree with
>    most of the comments from you and Anup. I want to add:
>
> Specifically for the "Sifive PMU" you are talking about, I don't think
> it's needed. I know p550 support ICT (In-Circuit Trace), which I assume
> is the "custom event" you were talking about. But still, they are encoded
> in N-trace format. I think this is closely related to the upcoming event
> trace spec, where you only enable a subset of messages during trace to
> capture events, rather than the whole control flow. Thus, we'll need a
> more generic way of dealing with it. I'd like to propose that we embed
> some crucial trace impl/runtime parameters in the metadata when producing
> perf.data E.g., the trace format (e-trace/n-trace) for sure, so that from
> a perf.data, it can be decoded anywhere without specifying other params.
> I know a typical N-trace may not need any parameters except the length of
> srcID (trTeSrcBits), but clearly E-trace would need more, and regarding
> event trace, we can, say, put the events enabled and some vendor specific
> info there. For trace collection (invoking perf), these vendor specific
> configuration can be passed in some vendor parameters/flags.
>
> I'll closely follow this series, and I'll jump in for the p550 work if my
> time permits. This p550 (EIC7700) is the only silicon with N-trace that I
> can get my hands on, so in fact I'll need it to do a real E2E testing of
> rvtrace. BTW, beware that the p550 (EIC7700) trace does not strictly
> follow RISC-V-Trace-Control-Interface-Proposed-20200612.pdf. Hence, you
> actually need to refer to
> https://github.com/eswincomputing/EIC7700X-SoC-Technical-Reference-Manual=
/releases/download/v1.0.0-20250103/EIC7700X_SoC_Technical_Reference_Manual_=
Part1.pdf
> Chapter 3.4.1.19
>
> Bo
>
> On 1/26/26 05:36, Anup Patel wrote:
> > On Wed, Jan 21, 2026 at 1:21=E2=80=AFPM Vincent Chen <vincent.chen@sifi=
ve.com> wrote:
> >>
> >> Hi Anup,
> >>
> >> Thank you for providing the RVtrace infrastructure in Linux. It is gre=
at
> >> to see support for manipulating RISC-V trace components via the Linux
> >> perf tool.
> >>
> >> SiFive provides a similar instruction trace specification that allows
> >> users to collect processor execution history and other events on SiFiv=
e
> >> platforms. This specification is implemented on the HiFive Premier P55=
0
> >> board. The specification is available here:
> >> https://lists.riscv.org/g/tech-nexus/files/RISC-V-Trace-Control-Interf=
ace-Proposed-20200612.pdf
> >>
> >> The fundamental concepts behind both specifications are aligned:
> >> 1. Both instruction trace systems are composed of Trace Encoders, Trac=
e
> >>     Funnels, and Trace Sinks.
> >>     a. Trace encoder: Each hart has its own trace encoder. It monitors
> >>        the ingress port to record addresses where program flow
> >>        discontinuities occur. It compresses the log using either the
> >>        Efficient Trace for RISC-V or RISC-V N-Trace specification
> >>        (SiFive encoders support Nexus-based trace only) and transmits =
it
> >>        to a downstream Trace Funnel or Sink.
> >>     b. Trace funnel: Functionally identical in both systems, the funne=
l
> >>        aggregates traces from multiple inputs (encoders or other funne=
ls)
> >>        and forwards the combined stream to a designated sink.
> >>     c. Trace sink: Both specifications support SRAM, System Memory, PI=
B,
> >>        and ATB Bridge sinks.
> >>
> >> 2. The control flow for starting and stopping recording is also consis=
tent:
> >>     a. Start tracing: Proceed from the downstream sink up to the trace
> >>        encoder to ensure sinks are ready to capture logs.
> >>     b. Stop tracing: Proceed from the trace encoder down to the sink t=
o
> >>        ensure all logs are flushed.
> >
> > It's good that at high-level the SiFive trace is close to the ratified =
RISC-V
> > trace so we won't have major re-work in the rvtrace framework.
> >
> >>
> >> However, these two specifications have some differences in implementat=
ion,
> >> primarily in:
> >> 1. MMIO Register Definitions: While functionally similar, the register
> >>     layouts for SiFive encoders and funnels differ from the RISC-V
> >>     standard.
> >
> > The rvtrace framework (particularly rvtrace_register_component()) impli=
citly
> > accesses few registers assuming components are RISC-V trace compliant
> > which will break for SiFive trace components. I will try to make the rv=
trace
> > framework a little more generic in the next revision.
> >
> >> 2. Lack of Independent Sink Components: In the SiFive implementation,
> >>     sink configuration registers are embedded within the trace encoder=
 and
> >>     funnel MMIO regions, rather than existing as standalone components=
.
> >
> > This is going to be the case for the self-hosted trace as well so this
> > aspect needs to be addressed anyway in the future.
> >
> >> 3. Trace Path configuration:
> >>     a. RISC-V trace component is allowed to pass down the trace log to=
 a
> >>        single or multiple next-level trace components, depending on th=
e HW
> >>        capabilities and connection. This trace component cannot config=
ure
> >>        the output target via the MMIO register, but the next-level tra=
ce
> >>        component has the ability to disable the inputs from a specific
> >>        trace component.
> >>     b. The SiFive trace component can only output the trace log to a
> >>        designated sink, which is specified in the corresponding MMIO
> >>        register. The designated sink cannot be configured to disable a=
ny
> >>        input.
> >> 4. SiFive customer feature: SiFive platforms include custom event
> >>     collection capabilities that require a dedicated PMU registration =
to
> >>     expose via the Linux perf tool.
> >>
> >> Given the similarities in control flow, we propose integrating the
> >> SiFive trace driver into your RVtrace infrastructure to avoid code
> >> duplication. Below is our proposed integration approach:
> >>
> >> 1. DT File (Device Tree)
> >>     - Inherit the current dt-bindings for RISC-V trace components,
> >>       specifically the in-ports and out-ports descriptions for topolog=
y.
> >>     - Add "sifive,trace-component" to the compatible string of SiFive
> >>       nodes.
> >
> > New compatible string is mandatory because the SiFive trace
> > component is not directly compatible with the RISC-V trace component.
> >
> >>     - Add a new DT property to indicate the specific type of SiFive tr=
ace
> >>       component. This is necessary because the corresponding register =
in
> >>       the SiFive specification does not expose the component's type
> >>       (Encoder/Funnel) to software.
> >
> > Rather than new DT property, I would suggest using
> > separate compatible strings (such as sifive,trace-encoder
> > and sifive,trace-funnel or something similar).
> >
> >> 2. Perf Tool
> >>     - Register a new perf PMU specifically for SiFive trace. This also
> >>       allows us to define custom event configurations for SiFive-speci=
fic
> >>       features.
> >>     - The Perf tool will support both PMUs simultaneously. The final
> >>       selected operating PMU depends on the PMU name in the perf comma=
nd
> >>       and the platform capability.
> >>     - Leverage the callback functions registered to "struct auxtrace_r=
ecord"
> >>       as much as possible.
> >
> > IMO, a separate perf PMU instance for SiFive should be the
> > last option. This certainly needs more brainstorming in the
> > RISE kernel working group.
> >
> >> 3. Linux Device Driver
> >>     - Device Probe:
> >>       - Add "sifive,trace-component" to rvtrace_platform_match[] to
> >>         enable rvtrace_platform_probe() to support SiFive trace
> >>         components.
> >>       - Update rvtrace_register_component() to support registering
> >>         SiFive encoders and funnels to the rvtrace bus.
> >>       - Plan to let the SiFive trace encoder and funnel share the same
> >>         type ID as RISC-V. In this condition, to enable the driver to
> >>         distinguish between SiFive and RISC-V hardware, it would be
> >>         necessary to add a new vendor ID field into
> >>         "struct rvtrace_component_id".
> >>     - Driver Implementations:
> >>       - Like other drivers of RISC-V trace components, the SiFive enco=
der
> >>         and funnel driver will implement the required functions in the
> >>         rvtrace_driver.
> >>     - Trace Delivery Path (Encoder to Sink):
> >>       - This infrastructure can be used in the same way to establish t=
he
> >>         topology of the entire trace system via the DT file.
> >>       - Based on the same topology descriptions, the trace delivery pa=
th
> >>         can use the same logic to create.
> >>       - The primary difference lies in the trace path configuration. T=
o
> >>         address this, we propose delegating the path configuration log=
ic
> >>         to the .start() and .stop() callbacks in "struct rvtrace_drive=
r".
> >>         This allows the routing implementation to be encapsulated with=
in
> >>         the specific driver. To support this, we would need to update =
the
> >>         definition of the .start() and .stop() callbacks to accept the=
 adjacent
> >>         node information as arguments, allowing the driver to perform =
the
> >>         necessary MMIO writes for routing.
> >>
> >>     - Sink Manipulation:
> >>       - Standard RISC-V: Managed through dedicated drivers (init durin=
g
> >>         probe, access via callbacks during dump).
> >>       - SiFive Implementation: Sink regs are embedded in Encoder/Funne=
l
> >>         MMIO.
> >>       - We propose that the SiFive encoder and funnel drivers:
> >>         a. Initialize their supported sinks during the driver probe
> >>            sequence.
> >>         b. Implement and register the appropriate sink access callback=
s,
> >>            ensuring they align with the standard perf log dumping
> >>            workflow.
> >>
> >> Do you think the proposed solution is feasible? I would appreciate you=
r
> >> feedback.
> >
> > Overall, I support the idea of accommodating SiFive trace under
> > the common rvtrace infrastructure because we will be anyway
> > doing the same thing for the upcoming self-hosted trace.
> >
> > At this point, I can only try to ensure the rvtrace framework is
> > generic enough. Dealing with SiFive specific fitment issues
> > should be done incrementally as a separate exercise.
> >
> > Regards,
> > Anup
> >
> >>
> >> Best regards,
> >> Vincent
> >>
> >> On Thu, Oct 2, 2025 at 2:09=E2=80=AFPM Anup Patel <apatel@ventanamicro=
.com> wrote:
> >>>
> >>> The RISC-V Trace Control Interface Specification [1] defines a standa=
rd
> >>> way of implementing RISC-V trace related modular components irrespect=
ive
> >>> to underlying trace format (E-trace or N-trace). These RISC-V trace
> >>> components are organized in a graph-like topology where each RISC-V
> >>> hart has its own RISC-V trace encoder component.
> >>>
> >>> Implement a basic driver framework for RISC-V trace where RISC-V trac=
e
> >>> components are instantiated by a common platform driver and a separat=
e
> >>> RISC-V trace driver for each type of RISC-V trace component.
> >>>
> >>> [1] https://github.com/riscv-non-isa/tg-nexus-trace/releases/download=
/1.0_Ratified/RISC-V-Trace-Control-Interface.pdf
> >>>
> >>> Co-developed-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> >>> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> >>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> >>> ---
> >>>   drivers/Makefile                             |   1 +
> >>>   drivers/hwtracing/Kconfig                    |   2 +
> >>>   drivers/hwtracing/rvtrace/Kconfig            |  16 +
> >>>   drivers/hwtracing/rvtrace/Makefile           |   4 +
> >>>   drivers/hwtracing/rvtrace/rvtrace-core.c     | 484 ++++++++++++++++=
+++
> >>>   drivers/hwtracing/rvtrace/rvtrace-platform.c | 174 +++++++
> >>>   include/linux/rvtrace.h                      | 272 +++++++++++
> >>>   7 files changed, 953 insertions(+)
> >>>   create mode 100644 drivers/hwtracing/rvtrace/Kconfig
> >>>   create mode 100644 drivers/hwtracing/rvtrace/Makefile
> >>>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-core.c
> >>>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-platform.c
> >>>   create mode 100644 include/linux/rvtrace.h
> >>>
> >>> diff --git a/drivers/Makefile b/drivers/Makefile
> >>> index b5749cf67044..466a55580f60 100644
> >>> --- a/drivers/Makefile
> >>> +++ b/drivers/Makefile
> >>> @@ -178,6 +178,7 @@ obj-$(CONFIG_CORESIGHT)             +=3D hwtracin=
g/coresight/
> >>>   obj-y                          +=3D hwtracing/intel_th/
> >>>   obj-$(CONFIG_STM)              +=3D hwtracing/stm/
> >>>   obj-$(CONFIG_HISI_PTT)         +=3D hwtracing/ptt/
> >>> +obj-$(CONFIG_RVTRACE)          +=3D hwtracing/rvtrace/
> >>>   obj-y                          +=3D android/
> >>>   obj-$(CONFIG_NVMEM)            +=3D nvmem/
> >>>   obj-$(CONFIG_FPGA)             +=3D fpga/
> >>> diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
> >>> index 911ee977103c..daeb38fe332d 100644
> >>> --- a/drivers/hwtracing/Kconfig
> >>> +++ b/drivers/hwtracing/Kconfig
> >>> @@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
> >>>
> >>>   source "drivers/hwtracing/ptt/Kconfig"
> >>>
> >>> +source "drivers/hwtracing/rvtrace/Kconfig"
> >>> +
> >>>   endmenu
> >>> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rv=
trace/Kconfig
> >>> new file mode 100644
> >>> index 000000000000..f8f6feea1953
> >>> --- /dev/null
> >>> +++ b/drivers/hwtracing/rvtrace/Kconfig
> >>> @@ -0,0 +1,16 @@
> >>> +# SPDX-License-Identifier: GPL-2.0-only
> >>> +
> >>> +menuconfig RVTRACE
> >>> +       tristate "RISC-V Trace Support"
> >>> +       depends on RISCV
> >>> +       depends on OF
> >>> +       default RISCV
> >>> +       help
> >>> +         This framework provides a kernel interface for the RISC-V t=
race
> >>> +         drivers (including both e-trace and n-trace). It's intended=
 to
> >>> +         build a topological view of the RISC-V trace components and
> >>> +         configure the right series of components when trace is enab=
led
> >>> +         on a CPU.
> >>> +
> >>> +         To compile this driver as a module, choose M here: the modu=
le
> >>> +         will be called rvtrace.
> >>> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/r=
vtrace/Makefile
> >>> new file mode 100644
> >>> index 000000000000..988525a379cf
> >>> --- /dev/null
> >>> +++ b/drivers/hwtracing/rvtrace/Makefile
> >>> @@ -0,0 +1,4 @@
> >>> +# SPDX-License-Identifier: GPL-2.0
> >>> +
> >>> +obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> >>> +rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> >>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtra=
cing/rvtrace/rvtrace-core.c
> >>> new file mode 100644
> >>> index 000000000000..52ea931745fc
> >>> --- /dev/null
> >>> +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
> >>> @@ -0,0 +1,484 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/*
> >>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> >>> + */
> >>> +
> >>> +#include <linux/cpumask.h>
> >>> +#include <linux/delay.h>
> >>> +#include <linux/export.h>
> >>> +#include <linux/idr.h>
> >>> +#include <linux/module.h>
> >>> +#include <linux/mutex.h>
> >>> +#include <linux/percpu.h>
> >>> +#include <linux/rvtrace.h>
> >>> +
> >>> +/* Mutex to serialize component registration/unregistration */
> >>> +static DEFINE_MUTEX(rvtrace_mutex);
> >>> +
> >>> +/* Per-CPU encoder instances */
> >>> +static DEFINE_PER_CPU(struct rvtrace_component *, rvtrace_cpu_encode=
r);
> >>> +
> >>> +/* Component type based id generator */
> >>> +struct rvtrace_type_idx {
> >>> +       /* Lock to protect the type ID generator */
> >>> +       struct mutex lock;
> >>> +       struct idr idr;
> >>> +};
> >>> +
> >>> +/* Array of component type based id generator */
> >>> +static struct rvtrace_type_idx rvtrace_type_idx_array[RVTRACE_COMPON=
ENT_TYPE_MAX];
> >>> +
> >>> +static int rvtrace_alloc_type_idx(struct rvtrace_component *comp)
> >>> +{
> >>> +       struct rvtrace_type_idx *rvidx =3D &rvtrace_type_idx_array[co=
mp->id.type];
> >>> +       int idx;
> >>> +
> >>> +       mutex_lock(&rvidx->lock);
> >>> +       idx =3D idr_alloc(&rvidx->idr, comp, 0, 0, GFP_KERNEL);
> >>> +       mutex_unlock(&rvidx->lock);
> >>> +       if (idx < 0)
> >>> +               return idx;
> >>> +
> >>> +       comp->type_idx =3D idx;
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +static void rvtrace_free_type_idx(struct rvtrace_component *comp)
> >>> +{
> >>> +       struct rvtrace_type_idx *rvidx =3D &rvtrace_type_idx_array[co=
mp->id.type];
> >>> +
> >>> +       mutex_lock(&rvidx->lock);
> >>> +       idr_remove(&rvidx->idr, comp->type_idx);
> >>> +       mutex_unlock(&rvidx->lock);
> >>> +}
> >>> +
> >>> +static void __init rvtrace_init_type_idx(void)
> >>> +{
> >>> +       struct rvtrace_type_idx *rvidx;
> >>> +       int i;
> >>> +
> >>> +       for (i =3D 0; i < RVTRACE_COMPONENT_TYPE_MAX; i++) {
> >>> +               rvidx =3D &rvtrace_type_idx_array[i];
> >>> +               mutex_init(&rvidx->lock);
> >>> +               idr_init(&rvidx->idr);
> >>> +       }
> >>> +}
> >>> +
> >>> +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_c=
omponent *comp,
> >>> +                                                   const struct rvtr=
ace_component_id *ids)
> >>> +{
> >>> +       const struct rvtrace_component_id *id;
> >>> +
> >>> +       for (id =3D ids; id->version && id->type; id++) {
> >>> +               if (comp->id.type =3D=3D id->type &&
> >>> +                   comp->id.version =3D=3D id->version)
> >>> +                       return id;
> >>> +       }
> >>> +
> >>> +       return NULL;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_match_id);
> >>> +
> >>> +static int rvtrace_match_device(struct device *dev, const struct dev=
ice_driver *drv)
> >>> +{
> >>> +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(drv)=
;
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +
> >>> +       return rvtrace_match_id(comp, rtdrv->id_table) ? 1 : 0;
> >>> +}
> >>> +
> >>> +static int rvtrace_probe(struct device *dev)
> >>> +{
> >>> +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(dev-=
>driver);
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +       int ret =3D -ENODEV;
> >>> +
> >>> +       if (!rtdrv->probe)
> >>> +               return ret;
> >>> +
> >>> +       ret =3D rtdrv->probe(comp);
> >>> +       if (!ret)
> >>> +               comp->ready =3D true;
> >>> +
> >>> +       return ret;
> >>> +}
> >>> +
> >>> +static void rvtrace_remove(struct device *dev)
> >>> +{
> >>> +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(dev-=
>driver);
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +
> >>> +       comp->ready =3D false;
> >>> +       if (rtdrv->remove)
> >>> +               rtdrv->remove(comp);
> >>> +}
> >>> +
> >>> +const struct bus_type rvtrace_bustype =3D {
> >>> +       .name   =3D "rvtrace",
> >>> +       .match  =3D rvtrace_match_device,
> >>> +       .probe  =3D rvtrace_probe,
> >>> +       .remove =3D rvtrace_remove,
> >>> +};
> >>> +
> >>> +struct rvtrace_fwnode_match_data {
> >>> +       struct fwnode_handle *fwnode;
> >>> +       struct rvtrace_component *match;
> >>> +};
> >>> +
> >>> +static int rvtrace_match_fwnode(struct device *dev, void *data)
> >>> +{
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +       struct rvtrace_fwnode_match_data *d =3D data;
> >>> +
> >>> +       if (device_match_fwnode(&comp->dev, d->fwnode)) {
> >>> +               d->match =3D comp;
> >>> +               return 1;
> >>> +       }
> >>> +
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handl=
e *fwnode)
> >>> +{
> >>> +       struct rvtrace_fwnode_match_data d =3D { .fwnode =3D fwnode, =
.match =3D NULL };
> >>> +       int ret;
> >>> +
> >>> +       ret =3D bus_for_each_dev(&rvtrace_bustype, NULL, &d, rvtrace_=
match_fwnode);
> >>> +       if (ret < 0)
> >>> +               return ERR_PTR(ret);
> >>> +
> >>> +       return d.match;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_find_by_fwnode);
> >>> +
> >>> +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset=
,
> >>> +                    int bit, int bitval, int timeout)
> >>> +{
> >>> +       int i =3D 10;
> >>> +       u32 val;
> >>> +
> >>> +       while (i--) {
> >>> +               val =3D rvtrace_read32(pdata, offset);
> >>> +               if (((val >> bit) & 0x1) =3D=3D bitval)
> >>> +                       break;
> >>> +               udelay(timeout);
> >>> +       }
> >>> +
> >>> +       return (i < 0) ? -ETIMEDOUT : 0;
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_poll_bit);
> >>> +
> >>> +int rvtrace_enable_component(struct rvtrace_component *comp)
> >>> +{
> >>> +       u32 val;
> >>> +
> >>> +       val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OF=
FSET);
> >>> +       val |=3D BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> >>> +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFS=
ET);
> >>> +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_O=
FFSET,
> >>> +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, =
1,
> >>> +                               comp->pdata->control_poll_timeout_use=
cs);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_enable_component);
> >>> +
> >>> +int rvtrace_disable_component(struct rvtrace_component *comp)
> >>> +{
> >>> +       u32 val;
> >>> +
> >>> +       val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OF=
FSET);
> >>> +       val &=3D ~BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> >>> +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFS=
ET);
> >>> +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_O=
FFSET,
> >>> +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, =
0,
> >>> +                               comp->pdata->control_poll_timeout_use=
cs);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_disable_component);
> >>> +
> >>> +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu)
> >>> +{
> >>> +       if (!cpu_present(cpu))
> >>> +               return NULL;
> >>> +
> >>> +       return per_cpu(rvtrace_cpu_encoder, cpu);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_cpu_source);
> >>> +
> >>> +static int rvtrace_cleanup_inconn(struct device *dev, void *data)
> >>> +{
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> >>> +       struct rvtrace_connection *conn =3D data;
> >>> +       int i;
> >>> +
> >>> +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
> >>> +               for (i =3D 0; i < pdata->nr_inconns; i++) {
> >>> +                       if (pdata->inconns[i] !=3D conn)
> >>> +                               continue;
> >>> +                       pdata->inconns[i] =3D NULL;
> >>> +                       return 1;
> >>> +               }
> >>> +       }
> >>> +
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +static void rvtrace_cleanup_inconns_from_outconns(struct rvtrace_com=
ponent *comp)
> >>> +{
> >>> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> >>> +       struct rvtrace_connection *conn;
> >>> +       int i;
> >>> +
> >>> +       lockdep_assert_held(&rvtrace_mutex);
> >>> +
> >>> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> >>> +               conn =3D pdata->outconns[i];
> >>> +               bus_for_each_dev(&rvtrace_bustype, NULL, conn, rvtrac=
e_cleanup_inconn);
> >>> +       }
> >>> +}
> >>> +
> >>> +static int rvtrace_setup_inconn(struct device *dev, void *data)
> >>> +{
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> >>> +       struct rvtrace_connection *conn =3D data;
> >>> +       int i;
> >>> +
> >>> +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
> >>> +               for (i =3D 0; i < pdata->nr_inconns; i++) {
> >>> +                       if (pdata->inconns[i])
> >>> +                               continue;
> >>> +                       pdata->inconns[i] =3D conn;
> >>> +                       return 1;
> >>> +               }
> >>> +       }
> >>> +
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +static int rvtrace_setup_inconns_from_outconns(struct rvtrace_compon=
ent *comp)
> >>> +{
> >>> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> >>> +       struct rvtrace_connection *conn;
> >>> +       int i, ret;
> >>> +
> >>> +       lockdep_assert_held(&rvtrace_mutex);
> >>> +
> >>> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> >>> +               conn =3D pdata->outconns[i];
> >>> +               ret =3D bus_for_each_dev(&rvtrace_bustype, NULL, conn=
, rvtrace_setup_inconn);
> >>> +               if (ret < 0) {
> >>> +                       rvtrace_cleanup_inconns_from_outconns(comp);
> >>> +                       return ret;
> >>> +               }
> >>> +       }
> >>> +
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +static void rvtrace_component_release(struct device *dev)
> >>> +{
> >>> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> >>> +
> >>> +       fwnode_handle_put(comp->dev.fwnode);
> >>> +       rvtrace_free_type_idx(comp);
> >>> +       kfree(comp);
> >>> +}
> >>> +
> >>> +static int rvtrace_component_reset(struct rvtrace_platform_data *pda=
ta)
> >>> +{
> >>> +       int ret;
> >>> +
> >>> +       rvtrace_write32(pdata, 0, RVTRACE_COMPONENT_CTRL_OFFSET);
> >>> +       ret =3D rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET=
,
> >>> +                              RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 0=
,
> >>> +                              pdata->control_poll_timeout_usecs);
> >>> +       if (ret)
> >>> +               return ret;
> >>> +
> >>> +       rvtrace_write32(pdata, RVTRACE_COMPONENT_CTRL_ACTIVE_MASK,
> >>> +                       RVTRACE_COMPONENT_CTRL_OFFSET);
> >>> +       return rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> >>> +                               RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, =
1,
> >>> +                               pdata->control_poll_timeout_usecs);
> >>> +}
> >>> +
> >>> +struct rvtrace_component *rvtrace_register_component(struct rvtrace_=
platform_data *pdata)
> >>> +{
> >>> +       struct rvtrace_connection *conn;
> >>> +       struct rvtrace_component *comp;
> >>> +       u32 impl, type, major, minor;
> >>> +       int i, ret =3D 0;
> >>> +
> >>> +       if (!pdata || !pdata->dev) {
> >>> +               ret =3D -EINVAL;
> >>> +               goto err_out;
> >>> +       }
> >>> +
> >>> +       for (i =3D 0; i < pdata->nr_inconns; i++) {
> >>> +               if (pdata->inconns[i]) {
> >>> +                       ret =3D -EINVAL;
> >>> +                       goto err_out;
> >>> +               }
> >>> +       }
> >>> +
> >>> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> >>> +               conn =3D pdata->outconns[i];
> >>> +               if (!conn || conn->src_port < 0 || conn->src_comp ||
> >>> +                   !device_match_fwnode(pdata->dev, conn->src_fwnode=
) ||
> >>> +                   conn->dest_port < 0 || !conn->dest_fwnode || !con=
n->dest_comp) {
> >>> +                       ret =3D -EINVAL;
> >>> +                       goto err_out;
> >>> +               }
> >>> +       }
> >>> +
> >>> +       ret =3D rvtrace_component_reset(pdata);
> >>> +       if (ret)
> >>> +               goto err_out;
> >>> +
> >>> +       impl =3D rvtrace_read32(pdata, RVTRACE_COMPONENT_IMPL_OFFSET)=
;
> >>> +       type =3D (impl >> RVTRACE_COMPONENT_IMPL_TYPE_SHIFT) &
> >>> +               RVTRACE_COMPONENT_IMPL_TYPE_MASK;
> >>> +       major =3D (impl >> RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT) &
> >>> +               RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK;
> >>> +       minor =3D (impl >> RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT) &
> >>> +               RVTRACE_COMPONENT_IMPL_VERMINOR_MASK;
> >>> +
> >>> +       if (pdata->bound_cpu >=3D 0 && !cpu_present(pdata->bound_cpu)=
) {
> >>> +               ret =3D -EINVAL;
> >>> +               goto err_out;
> >>> +       }
> >>> +       if (type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER && pdata->boun=
d_cpu < 0) {
> >>> +               ret =3D -EINVAL;
> >>> +               goto err_out;
> >>> +       }
> >>> +
> >>> +       comp =3D kzalloc(sizeof(*comp), GFP_KERNEL);
> >>> +       if (!comp) {
> >>> +               ret =3D -ENOMEM;
> >>> +               goto err_out;
> >>> +       }
> >>> +       comp->pdata =3D pdata;
> >>> +       comp->id.type =3D type;
> >>> +       comp->id.version =3D rvtrace_component_mkversion(major, minor=
);
> >>> +       ret =3D rvtrace_alloc_type_idx(comp);
> >>> +       if (ret) {
> >>> +               kfree(comp);
> >>> +               goto err_out;
> >>> +       }
> >>> +
> >>> +       comp->dev.parent =3D pdata->dev;
> >>> +       comp->dev.coherent_dma_mask =3D pdata->dev->coherent_dma_mask=
;
> >>> +       comp->dev.release =3D rvtrace_component_release;
> >>> +       comp->dev.bus =3D &rvtrace_bustype;
> >>> +       comp->dev.fwnode =3D fwnode_handle_get(dev_fwnode(pdata->dev)=
);
> >>> +       switch (comp->id.type) {
> >>> +       case RVTRACE_COMPONENT_TYPE_ENCODER:
> >>> +               dev_set_name(&comp->dev, "encoder-%d", comp->type_idx=
);
> >>> +               break;
> >>> +       case RVTRACE_COMPONENT_TYPE_FUNNEL:
> >>> +               dev_set_name(&comp->dev, "funnel-%d", comp->type_idx)=
;
> >>> +               break;
> >>> +       case RVTRACE_COMPONENT_TYPE_RAMSINK:
> >>> +               dev_set_name(&comp->dev, "ramsink-%d", comp->type_idx=
);
> >>> +               break;
> >>> +       case RVTRACE_COMPONENT_TYPE_PIBSINK:
> >>> +               dev_set_name(&comp->dev, "pibsink-%d", comp->type_idx=
);
> >>> +               break;
> >>> +       case RVTRACE_COMPONENT_TYPE_ATBBRIDGE:
> >>> +               dev_set_name(&comp->dev, "atbbridge-%d", comp->type_i=
dx);
> >>> +               break;
> >>> +       default:
> >>> +               dev_set_name(&comp->dev, "type%d-%d", comp->id.type, =
comp->type_idx);
> >>> +               break;
> >>> +       }
> >>> +
> >>> +       mutex_lock(&rvtrace_mutex);
> >>> +
> >>> +       ret =3D device_register(&comp->dev);
> >>> +       if (ret) {
> >>> +               put_device(&comp->dev);
> >>> +               goto err_out_unlock;
> >>> +       }
> >>> +
> >>> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> >>> +               conn =3D pdata->outconns[i];
> >>> +               conn->src_comp =3D comp;
> >>> +       }
> >>> +
> >>> +       ret =3D rvtrace_setup_inconns_from_outconns(comp);
> >>> +       if (ret < 0) {
> >>> +               device_unregister(&comp->dev);
> >>> +               goto err_out_unlock;
> >>> +       }
> >>> +
> >>> +       if (comp->id.type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER) {
> >>> +               rvtrace_get_component(comp);
> >>> +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) =
=3D comp;
> >>> +       }
> >>> +
> >>> +       mutex_unlock(&rvtrace_mutex);
> >>> +
> >>> +       return comp;
> >>> +
> >>> +err_out_unlock:
> >>> +       mutex_unlock(&rvtrace_mutex);
> >>> +err_out:
> >>> +       return ERR_PTR(ret);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_register_component);
> >>> +
> >>> +void rvtrace_unregister_component(struct rvtrace_component *comp)
> >>> +{
> >>> +       struct rvtrace_component *c;
> >>> +
> >>> +       mutex_lock(&rvtrace_mutex);
> >>> +
> >>> +       if (comp->id.type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER) {
> >>> +               c =3D per_cpu(rvtrace_cpu_encoder, comp->pdata->bound=
_cpu);
> >>> +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) =
=3D NULL;
> >>> +               rvtrace_put_component(c);
> >>> +       }
> >>> +
> >>> +       rvtrace_cleanup_inconns_from_outconns(comp);
> >>> +       device_unregister(&comp->dev);
> >>> +
> >>> +       mutex_unlock(&rvtrace_mutex);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(rvtrace_unregister_component);
> >>> +
> >>> +int __rvtrace_register_driver(struct module *owner, struct rvtrace_d=
river *rtdrv)
> >>> +{
> >>> +       rtdrv->driver.owner =3D owner;
> >>> +       rtdrv->driver.bus =3D &rvtrace_bustype;
> >>> +
> >>> +       return driver_register(&rtdrv->driver);
> >>> +}
> >>> +EXPORT_SYMBOL_GPL(__rvtrace_register_driver);
> >>> +
> >>> +static int __init rvtrace_init(void)
> >>> +{
> >>> +       int ret;
> >>> +
> >>> +       rvtrace_init_type_idx();
> >>> +
> >>> +       ret =3D bus_register(&rvtrace_bustype);
> >>> +       if (ret)
> >>> +               return ret;
> >>> +
> >>> +       ret =3D platform_driver_register(&rvtrace_platform_driver);
> >>> +       if (ret) {
> >>> +               bus_unregister(&rvtrace_bustype);
> >>> +               return ret;
> >>> +       }
> >>> +
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +static void __exit rvtrace_exit(void)
> >>> +{
> >>> +       platform_driver_unregister(&rvtrace_platform_driver);
> >>> +       bus_unregister(&rvtrace_bustype);
> >>> +}
> >>> +
> >>> +module_init(rvtrace_init);
> >>> +module_exit(rvtrace_exit);
> >>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-platform.c b/drivers/h=
wtracing/rvtrace/rvtrace-platform.c
> >>> new file mode 100644
> >>> index 000000000000..a110ff1f2f08
> >>> --- /dev/null
> >>> +++ b/drivers/hwtracing/rvtrace/rvtrace-platform.c
> >>> @@ -0,0 +1,174 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/*
> >>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> >>> + */
> >>> +
> >>> +#include <linux/device.h>
> >>> +#include <linux/io.h>
> >>> +#include <linux/of.h>
> >>> +#include <linux/of_graph.h>
> >>> +#include <linux/platform_device.h>
> >>> +#include <linux/property.h>
> >>> +#include <linux/rvtrace.h>
> >>> +#include <linux/types.h>
> >>> +
> >>> +static int rvtrace_of_parse_outconns(struct rvtrace_platform_data *p=
data)
> >>> +{
> >>> +       struct device_node *parent, *ep_node, *rep_node, *rdev_node;
> >>> +       struct rvtrace_connection *conn;
> >>> +       struct of_endpoint ep, rep;
> >>> +       int ret =3D 0, i =3D 0;
> >>> +
> >>> +       parent =3D of_get_child_by_name(dev_of_node(pdata->dev), "out=
-ports");
> >>> +       if (!parent)
> >>> +               return 0;
> >>> +
> >>> +       pdata->nr_outconns =3D of_graph_get_endpoint_count(parent);
> >>> +       pdata->outconns =3D devm_kcalloc(pdata->dev, pdata->nr_outcon=
ns,
> >>> +                                      sizeof(*pdata->outconns), GFP_=
KERNEL);
> >>> +       if (!pdata->outconns) {
> >>> +               ret =3D -ENOMEM;
> >>> +               goto done;
> >>> +       }
> >>> +
> >>> +       for_each_endpoint_of_node(parent, ep_node) {
> >>> +               conn =3D devm_kzalloc(pdata->dev, sizeof(*conn), GFP_=
KERNEL);
> >>> +               if (!conn) {
> >>> +                       of_node_put(ep_node);
> >>> +                       ret =3D -ENOMEM;
> >>> +                       break;
> >>> +               }
> >>> +
> >>> +               ret =3D of_graph_parse_endpoint(ep_node, &ep);
> >>> +               if (ret) {
> >>> +                       of_node_put(ep_node);
> >>> +                       break;
> >>> +               }
> >>> +
> >>> +               rep_node =3D of_graph_get_remote_endpoint(ep_node);
> >>> +               if (!rep_node) {
> >>> +                       ret =3D -ENODEV;
> >>> +                       of_node_put(ep_node);
> >>> +                       break;
> >>> +               }
> >>> +               rdev_node =3D of_graph_get_port_parent(rep_node);
> >>> +
> >>> +               ret =3D of_graph_parse_endpoint(rep_node, &rep);
> >>> +               if (ret) {
> >>> +                       of_node_put(ep_node);
> >>> +                       break;
> >>> +               }
> >>> +
> >>> +               conn->src_port =3D ep.port;
> >>> +               conn->src_fwnode =3D dev_fwnode(pdata->dev);
> >>> +               /* The 'src_comp' is set by rvtrace_register_componen=
t() */
> >>> +               conn->src_comp =3D NULL;
> >>> +               conn->dest_port =3D rep.port;
> >>> +               conn->dest_fwnode =3D of_fwnode_handle(rdev_node);
> >>> +               conn->dest_comp =3D rvtrace_find_by_fwnode(conn->dest=
_fwnode);
> >>> +               if (!conn->dest_comp) {
> >>> +                       ret =3D -EPROBE_DEFER;
> >>> +                       of_node_put(ep_node);
> >>> +               }
> >>> +
> >>> +               pdata->outconns[i] =3D conn;
> >>> +               i++;
> >>> +       }
> >>> +
> >>> +done:
> >>> +       of_node_put(parent);
> >>> +       return ret;
> >>> +}
> >>> +
> >>> +static int rvtrace_of_parse_inconns(struct rvtrace_platform_data *pd=
ata)
> >>> +{
> >>> +       struct device_node *parent;
> >>> +       int ret =3D 0;
> >>> +
> >>> +       parent =3D of_get_child_by_name(dev_of_node(pdata->dev), "in-=
ports");
> >>> +       if (!parent)
> >>> +               return 0;
> >>> +
> >>> +       pdata->nr_inconns =3D of_graph_get_endpoint_count(parent);
> >>> +       pdata->inconns =3D devm_kcalloc(pdata->dev, pdata->nr_inconns=
,
> >>> +                                     sizeof(*pdata->inconns), GFP_KE=
RNEL);
> >>> +       if (!pdata->inconns)
> >>> +               ret =3D -ENOMEM;
> >>> +
> >>> +       of_node_put(parent);
> >>> +       return ret;
> >>> +}
> >>> +
> >>> +static int rvtrace_platform_probe(struct platform_device *pdev)
> >>> +{
> >>> +       struct rvtrace_platform_data *pdata;
> >>> +       struct device *dev =3D &pdev->dev;
> >>> +       struct rvtrace_component *comp;
> >>> +       struct device_node *node;
> >>> +       struct resource *res;
> >>> +       int ret;
> >>> +
> >>> +       pdata =3D devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> >>> +       if (!pdata)
> >>> +               return -ENOMEM;
> >>> +       pdata->dev =3D dev;
> >>> +       pdata->impid =3D RVTRACE_COMPONENT_IMPID_UNKNOWN;
> >>> +
> >>> +       res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >>> +       if (!res)
> >>> +               return -EINVAL;
> >>> +
> >>> +       pdata->io_mem =3D true;
> >>> +       pdata->base =3D devm_ioremap(&pdev->dev, res->start, resource=
_size(res));
> >>> +       if (!pdata->base)
> >>> +               return dev_err_probe(dev, -ENOMEM, "failed to ioremap=
 %pR\n", res);
> >>> +
> >>> +       pdata->bound_cpu =3D -1;
> >>> +       node =3D of_parse_phandle(dev_of_node(dev), "cpu", 0);
> >>> +       if (node) {
> >>> +               ret =3D of_cpu_node_to_id(node);
> >>> +               of_node_put(node);
> >>> +               if (ret < 0)
> >>> +                       return dev_err_probe(dev, ret, "failed to get=
 CPU id for %pOF\n", node);
> >>> +               pdata->bound_cpu =3D ret;
> >>> +       }
> >>> +
> >>> +       /* Default control poll timeout */
> >>> +       pdata->control_poll_timeout_usecs =3D 10;
> >>> +
> >>> +       ret =3D rvtrace_of_parse_outconns(pdata);
> >>> +       if (ret)
> >>> +               return dev_err_probe(dev, ret, "failed to parse outpu=
t connections\n");
> >>> +
> >>> +       ret =3D rvtrace_of_parse_inconns(pdata);
> >>> +       if (ret)
> >>> +               return dev_err_probe(dev, ret, "failed to parse input=
 connections\n");
> >>> +
> >>> +       comp =3D rvtrace_register_component(pdata);
> >>> +       if (IS_ERR(comp))
> >>> +               return PTR_ERR(comp);
> >>> +
> >>> +       platform_set_drvdata(pdev, comp);
> >>> +       return 0;
> >>> +}
> >>> +
> >>> +static void rvtrace_platform_remove(struct platform_device *pdev)
> >>> +{
> >>> +       struct rvtrace_component *comp =3D platform_get_drvdata(pdev)=
;
> >>> +
> >>> +       rvtrace_unregister_component(comp);
> >>> +}
> >>> +
> >>> +static const struct of_device_id rvtrace_platform_match[] =3D {
> >>> +       { .compatible =3D "riscv,trace-component" },
> >>> +       {}
> >>> +};
> >>> +
> >>> +struct platform_driver rvtrace_platform_driver =3D {
> >>> +       .driver =3D {
> >>> +               .name           =3D "rvtrace",
> >>> +               .of_match_table =3D rvtrace_platform_match,
> >>> +       },
> >>> +       .probe =3D rvtrace_platform_probe,
> >>> +       .remove =3D rvtrace_platform_remove,
> >>> +};
> >>> diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
> >>> new file mode 100644
> >>> index 000000000000..04eb03e62601
> >>> --- /dev/null
> >>> +++ b/include/linux/rvtrace.h
> >>> @@ -0,0 +1,272 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0-only */
> >>> +/*
> >>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> >>> + */
> >>> +
> >>> +#ifndef __LINUX_RVTRACE_H__
> >>> +#define __LINUX_RVTRACE_H__
> >>> +
> >>> +#include <linux/device.h>
> >>> +#include <linux/io.h>
> >>> +#include <linux/platform_device.h>
> >>> +#include <linux/property.h>
> >>> +#include <linux/types.h>
> >>> +
> >>> +/* Control register common across all RISC-V trace components */
> >>> +#define RVTRACE_COMPONENT_CTRL_OFFSET          0x000
> >>> +#define RVTRACE_COMPONENT_CTRL_ACTIVE_MASK     0x1
> >>> +#define RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT    0
> >>> +#define RVTRACE_COMPONENT_CTRL_ENABLE_MASK     0x1
> >>> +#define RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT    1
> >>> +
> >>> +/* Implementation register common across all RISC-V trace components=
 */
> >>> +#define RVTRACE_COMPONENT_IMPL_OFFSET          0x004
> >>> +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK   0xf
> >>> +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT  0
> >>> +#define RVTRACE_COMPONENT_IMPL_VERMINOR_MASK   0xf
> >>> +#define RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT  4
> >>> +#define RVTRACE_COMPONENT_IMPL_TYPE_MASK       0xf
> >>> +#define RVTRACE_COMPONENT_IMPL_TYPE_SHIFT      8
> >>> +
> >>> +/* Possible component types defined by the RISC-V Trace Control Inte=
rface */
> >>> +enum rvtrace_component_type {
> >>> +       RVTRACE_COMPONENT_TYPE_RESV0,
> >>> +       RVTRACE_COMPONENT_TYPE_ENCODER, /* 0x1 */
> >>> +       RVTRACE_COMPONENT_TYPE_RESV2,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV3,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV4,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV5,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV6,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV7,
> >>> +       RVTRACE_COMPONENT_TYPE_FUNNEL, /* 0x8 */
> >>> +       RVTRACE_COMPONENT_TYPE_RAMSINK, /* 0x9 */
> >>> +       RVTRACE_COMPONENT_TYPE_PIBSINK, /* 0xA */
> >>> +       RVTRACE_COMPONENT_TYPE_RESV11,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV12,
> >>> +       RVTRACE_COMPONENT_TYPE_RESV13,
> >>> +       RVTRACE_COMPONENT_TYPE_ATBBRIDGE, /* 0xE */
> >>> +       RVTRACE_COMPONENT_TYPE_RESV15,
> >>> +       RVTRACE_COMPONENT_TYPE_MAX
> >>> +};
> >>> +
> >>> +/* Encoding/decoding macros for RISC-V trace component version */
> >>> +#define rvtrace_component_version_major(__version)     \
> >>> +       (((__version) >> 16) & 0xffff)
> >>> +#define rvtrace_component_version_minor(__version)     \
> >>> +       ((__version) & 0xffff)
> >>> +#define rvtrace_component_mkversion(__major, __minor)  \
> >>> +       ((((__major) & 0xffff) << 16) | ((__minor) & 0xffff))
> >>> +
> >>> +/*
> >>> + * Possible component implementation IDs discovered from DT or ACPI
> >>> + * shared across the RISC-V trace drivers to infer trace parameters,
> >>> + * quirks, and work-arounds. These component implementation IDs are
> >>> + * internal to Linux and must not be exposed to user-space.
> >>> + *
> >>> + * The component implementation ID should be named as follows:
> >>> + *    RVTRACE_COMPONENT_IMPID_<vendor>_<part>
> >>> + */
> >>> +enum rvtrace_component_impid {
> >>> +       RVTRACE_COMPONENT_IMPID_UNKNOWN,
> >>> +       RVTRACE_COMPONENT_IMPID_MAX
> >>> +};
> >>> +
> >>> +/**
> >>> + * struct rvtrace_connection - Representation of a physical connecti=
on between
> >>> + * two RISC-V trace components.
> >>> + * @src_port:    A connection's source port number.
> >>> + * @src_fwnode:  Source component's fwnode handle..
> >>> + * @src_comp:    Source component's pointer.
> >>> + * @dest_port:   A connection's destination port number.
> >>> + * @dest_fwnode: Destination component's fwnode handle.
> >>> + * @dest_comp:   Destination component's pointer.
> >>> + */
> >>> +struct rvtrace_connection {
> >>> +       int src_port;
> >>> +       struct fwnode_handle *src_fwnode;
> >>> +       int dest_port;
> >>> +       struct fwnode_handle *dest_fwnode;
> >>> +       struct rvtrace_component *src_comp;
> >>> +       struct rvtrace_component *dest_comp;
> >>> +};
> >>> +
> >>> +/**
> >>> + * struct rvtrace_platform_data - Platform-level data for a RISC-V t=
race component
> >>> + * discovered from DT or ACPI.
> >>> + * @dev:         Parent device.
> >>> + * @impid:       Component implementation ID
> >>> + * @io_mem:      Flag showing whether component registers are memory=
 mapped.
> >>> + * @base:        If io_mem =3D=3D true then base address of the memo=
ry mapped registers.
> >>> + * @read:        If io_mem =3D=3D false then read register from the =
given "offset".
> >>> + * @write:       If io_mem =3D=3D false then write register to the g=
iven "offset".
> >>> + * @bound_cpu:   CPU to which the component is bound. This should be=
 -1 if
> >>> + *               the component is not bound to any CPU. For encoder =
component
> >>> + *               type this must not be -1.
> >>> + * @nr_inconns:  Number of input connections.
> >>> + * @inconns:     Array of pointers to input connections.
> >>> + * @nr_outconns: Number of output connections.
> >>> + * @outconns:    Array of pointers to output connections.
> >>> + */
> >>> +struct rvtrace_platform_data {
> >>> +       struct device *dev;
> >>> +
> >>> +       enum rvtrace_component_impid impid;
> >>> +
> >>> +       bool io_mem;
> >>> +       union {
> >>> +               void __iomem *base;
> >>> +               struct {
> >>> +                       u32 (*read)(struct rvtrace_platform_data *pda=
ta,
> >>> +                                   u32 offset, bool relaxed);
> >>> +                       void (*write)(struct rvtrace_platform_data *p=
data,
> >>> +                                     u32 val, u32 offset, bool relax=
ed);
> >>> +               };
> >>> +       };
> >>> +
> >>> +       int bound_cpu;
> >>> +
> >>> +       /* Delay in microseconds when polling control register bits *=
/
> >>> +       int control_poll_timeout_usecs;
> >>> +
> >>> +       /*
> >>> +        * Platform driver must only populate empty pointer array wit=
hout
> >>> +        * any actual input connections.
> >>> +        */
> >>> +       unsigned int nr_inconns;
> >>> +       struct rvtrace_connection **inconns;
> >>> +
> >>> +       /*
> >>> +        * Platform driver must fully populate pointer array with ind=
ividual
> >>> +        * array elements pointing to actual output connections. The =
src_comp
> >>> +        * of each output connection is automatically updated at the =
time of
> >>> +        * registering component.
> >>> +        */
> >>> +       unsigned int nr_outconns;
> >>> +       struct rvtrace_connection **outconns;
> >>> +};
> >>> +
> >>> +static inline u32 rvtrace_read32(struct rvtrace_platform_data *pdata=
, u32 offset)
> >>> +{
> >>> +       if (likely(pdata->io_mem))
> >>> +               return readl(pdata->base + offset);
> >>> +
> >>> +       return pdata->read(pdata, offset, false);
> >>> +}
> >>> +
> >>> +static inline u32 rvtrace_relaxed_read32(struct rvtrace_platform_dat=
a *pdata, u32 offset)
> >>> +{
> >>> +       if (likely(pdata->io_mem))
> >>> +               return readl_relaxed(pdata->base + offset);
> >>> +
> >>> +       return pdata->read(pdata, offset, true);
> >>> +}
> >>> +
> >>> +static inline void rvtrace_write32(struct rvtrace_platform_data *pda=
ta, u32 val, u32 offset)
> >>> +{
> >>> +       if (likely(pdata->io_mem))
> >>> +               writel(val, pdata->base + offset);
> >>> +       else
> >>> +               pdata->write(pdata, val, offset, false);
> >>> +}
> >>> +
> >>> +static inline void rvtrace_relaxed_write32(struct rvtrace_platform_d=
ata *pdata,
> >>> +                                          u32 val, u32 offset)
> >>> +{
> >>> +       if (likely(pdata->io_mem))
> >>> +               writel_relaxed(val, pdata->base + offset);
> >>> +       else
> >>> +               pdata->write(pdata, val, offset, true);
> >>> +}
> >>> +
> >>> +static inline bool rvtrace_is_source(struct rvtrace_platform_data *p=
data)
> >>> +{
> >>> +       return !pdata->nr_inconns ? true : false;
> >>> +}
> >>> +
> >>> +static inline bool rvtrace_is_sink(struct rvtrace_platform_data *pda=
ta)
> >>> +{
> >>> +       return !pdata->nr_outconns ? true : false;
> >>> +}
> >>> +
> >>> +/**
> >>> + * struct rvtrace_component_id - Details to identify or match a RISC=
-V trace component
> >>> + * @type:      Type of the component
> >>> + * @version:   Version of the component
> >>> + * @data:      Data pointer for driver use
> >>> + */
> >>> +struct rvtrace_component_id {
> >>> +       enum rvtrace_component_type type;
> >>> +       u32 version;
> >>> +       void *data;
> >>> +};
> >>> +
> >>> +/**
> >>> + * struct rvtrace_component - Representation of a RISC-V trace compo=
nent
> >>> + * pdata:    Pointer to underlying platform data
> >>> + * id:       Details to match the component
> >>> + * type_idx: Unique number based on component type
> >>> + * dev:      Device instance
> >>> + * ready:    Flag showing whether RISC-V trace driver was probed suc=
cessfully
> >>> + */
> >>> +struct rvtrace_component {
> >>> +       struct rvtrace_platform_data *pdata;
> >>> +       struct rvtrace_component_id id;
> >>> +       u32 type_idx;
> >>> +       struct device dev;
> >>> +       bool ready;
> >>> +};
> >>> +
> >>> +#define to_rvtrace_component(__dev)    container_of_const(__dev, str=
uct rvtrace_component, dev)
> >>> +
> >>> +static inline void rvtrace_get_component(struct rvtrace_component *c=
omp)
> >>> +{
> >>> +       get_device(&comp->dev);
> >>> +}
> >>> +
> >>> +static inline void rvtrace_put_component(struct rvtrace_component *c=
omp)
> >>> +{
> >>> +       put_device(&comp->dev);
> >>> +}
> >>> +
> >>> +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_c=
omponent *comp,
> >>> +                                                   const struct rvtr=
ace_component_id *ids);
> >>> +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handl=
e *fwnode);
> >>> +
> >>> +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset=
,
> >>> +                    int bit, int bitval, int timeout);
> >>> +int rvtrace_enable_component(struct rvtrace_component *comp);
> >>> +int rvtrace_disable_component(struct rvtrace_component *comp);
> >>> +
> >>> +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu);
> >>> +
> >>> +struct rvtrace_component *rvtrace_register_component(struct rvtrace_=
platform_data *pdata);
> >>> +void rvtrace_unregister_component(struct rvtrace_component *comp);
> >>> +
> >>> +/**
> >>> + * struct rvtrace_driver - Representation of a RISC-V trace driver
> >>> + * id_table: Table to match components handled by the driver
> >>> + * probe:    Driver probe() function
> >>> + * remove:   Driver remove() function
> >>> + * driver:   Device driver instance
> >>> + */
> >>> +struct rvtrace_driver {
> >>> +       const struct rvtrace_component_id *id_table;
> >>> +       int                     (*probe)(struct rvtrace_component *co=
mp);
> >>> +       void                    (*remove)(struct rvtrace_component *c=
omp);
> >>> +       struct device_driver    driver;
> >>> +};
> >>> +
> >>> +#define to_rvtrace_driver(__drv)   \
> >>> +       ((__drv) ? container_of_const((__drv), struct rvtrace_driver,=
 driver) : NULL)
> >>> +
> >>> +extern struct platform_driver rvtrace_platform_driver;
> >>> +
> >>> +int __rvtrace_register_driver(struct module *owner, struct rvtrace_d=
river *rtdrv);
> >>> +#define rvtrace_register_driver(driver) __rvtrace_register_driver(TH=
IS_MODULE, driver)
> >>> +static inline void rvtrace_unregister_driver(struct rvtrace_driver *=
rtdrv)
> >>> +{
> >>> +       if (rtdrv)
> >>> +               driver_unregister(&rtdrv->driver);
> >>> +}
> >>> +
> >>> +#endif
> >>> --
> >>> 2.43.0
> >>>
> >>>
> >>> _______________________________________________
> >>> linux-riscv mailing list
> >>> linux-riscv@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/linux-riscv
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>

