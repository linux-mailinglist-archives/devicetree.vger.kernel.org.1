Return-Path: <devicetree+bounces-259503-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHcfMmlvd2m8gAEAu9opvQ
	(envelope-from <devicetree+bounces-259503-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:43:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB9B8905F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0696F3093EAE
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 158F133A6E8;
	Mon, 26 Jan 2026 13:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="xh7cm0Jv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB48A33B6D3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.161.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769434623; cv=pass; b=j8mY1cm+YTEDfSDkGMZfSOKmsrjowN02aBrdrZAIQHcatKCVihgJxkzBF3pk8FJI+qjzbxjFy4hLUwPhJkbd5WJtb7mJF3mtlFqXG/hp+wskatu46MYb4UHcjhmbK7gUCinYED+B8dZ/UMUvnAJuuiVG/EaDc/sXHiCmbB4U0aE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769434623; c=relaxed/simple;
	bh=5E71WKC+BLlhEJ65jbPAkAkUX+5ovDA9GUM9NE4IvjQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pgU90oHIaNl4Dajsw7LnCVZ8aibabHTbr/X43HzwAodPbxy3rD6kM8Kw8JBMZzK9yy2lhsGzTdRg7gU+WTb2pr3N7S4AXid2exUEElP0XDlovqfj3FbnrBPREUyTQcYhSwimGcjRRNSaUj91XXXeHZRapgY6OcddKNZgZZoUoeY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=xh7cm0Jv; arc=pass smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-6610f045c1eso2049589eaf.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:37:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769434620; cv=none;
        d=google.com; s=arc-20240605;
        b=YlXi1NgiBDoZDEqFawyty67Nu99DaIf2+b7OE5CjJd2TRwkMRW8wnRZ0VBpsELG4bl
         vGPwg2XBwxoHnRSIVVnd1y0TQ+msuOn1D9helRMssbrJJrZmyhyjxKBuL5iWG1r9AY2x
         3JBsLYReO2DYkWFWB6jsDaAOTm5ptuUn+2m3kdODbsVPqGx+DVZzIR1Z3PBdpCn6YMcy
         WdUWdWwKMY1RJ8q1Sbo7kxaAxMCUxUE5Pk4q2JHuVXjyjUv/p7mWFFnXqkYVH57QC3pm
         NM0EofcDMqpJYTcT5huwUOIUUqkjrS+pFPQeFDSRXNzJbjB5JmiqDfkSFR8IL9oaROLZ
         8hug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ek6KkE7BANLPR+GlkGibtD2oJHQFApwtWNUpTK7IlkY=;
        fh=Q8xaI1006O5M9nFomOYHiuoyjYyN8Bwpat5Sn6dar9s=;
        b=NWA7lTtdIEfwJTWiNv0pVfL8oAd5FeiFkFIVZwOKVAlSAXnxAd/N94aAOSRZo3C1ht
         I73VHXx56NEkaHmNRy4g/96WoeHDM3ACkb5P4ovlJCXCS5uzkQ+9IRzsbTIOQOifEwkl
         vfcbxDSsQYLHrtYbSkYs8cebGSj5aAwpLZSnWOx0qGCVwIQ+dqE/WsM1/SHkt3AsxKE/
         Uhg8/admgh422bNrkfAWNJGZe9Ln0O02xvMLxceED90tE0j6ynllT4JxCCPQYnf2zyKa
         wZMtHjW4zTMzCGdzkrqxnKlKHjYpV0NPYeM85nXltJ9D0yawfhKI7SumjSA/HBYYn0WV
         eROg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1769434620; x=1770039420; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ek6KkE7BANLPR+GlkGibtD2oJHQFApwtWNUpTK7IlkY=;
        b=xh7cm0JvYh3muEEz16tRpK5WPH63REYLWmzxS22MMyTv6MUosGw1lQdnX3pBrmh77B
         aS4KYtYQdipbCHiRJfeD8x59uLl9iA1GbXo3pWkGWLvbRBMuHmFW7OPBY/8RB3pvSTag
         EaXJ7L1C9LquxDCa2kc2KrHoPt89tHe7MyvqrINuX7Soup9fjuCqBgCSqfYanqmB4zoj
         winYoIGsmBZ9vvFuggLsbBBFVmB7BKVUFjLVpQ7yf03mGdbJoZEqkh4ejnpD1hIwJA1V
         SozbKYb26OhxU9lHAsnqLAnAtnfrMJHasClmH86Oafp9uiSypcbes7Ru6Z/+UKWtIkv/
         RtXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769434620; x=1770039420;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ek6KkE7BANLPR+GlkGibtD2oJHQFApwtWNUpTK7IlkY=;
        b=M28Bf/Exz5a1Ux2kNiPr5YewwYOmjNwilQdnCICoHGgCcasDTCHMcRXQiV2eMPB5nL
         91BMxMWeCyhFX8L3nO+RgSvxU4L0pnTiEvjqXMvDYBbjvx+D6DFU2F9DzYbZ4m/iUpXH
         T6b+vAFesKINUABdFAAUQT2qpQqALM6TstCHZBnAZrh0PbXzMElhGVPUFGisA/fj1m/s
         lHmbQDJ1lvfqYmQDVHbysBxmzo3rNADwaYefGkuAlaCMll63Iv3rHod3K3kvCz34qg83
         bb15M8Xjw4UEA1+F4D9fs+xNQTk5Evu/WB7Ewq9KYr7zmFBhVfYN2y8Apx75GQsrJii5
         iKwA==
X-Forwarded-Encrypted: i=1; AJvYcCW9hoKezOWFutiSa9EVTsqdgv1xLijCNfg5vkbr220nappGKLmzqWPIH+TAuqruRTdVvumpL1nXE99k@vger.kernel.org
X-Gm-Message-State: AOJu0YzqbdCtH/5qkXGh2cb3Zc9Cvpm77oKuRgZe48hmarHdVUTft+70
	mLWruyPjhuFgEuY6Y3/hirOP7UfE6ECDY9/FUOuc9zJHX6o9kiOUMFodQl1hPkgWOhBIEuwvzfT
	pDpL1SacsZ9wDCFB79/qHpw4rKei0oX//2wYMNkpkTg==
X-Gm-Gg: AZuq6aJ+VRgP+b+eBpRN40GDC1lHOSyQt45MXrz6SgMl+2WHGAQ+KOqDhtJPTmYrX9j
	SvxYOdcEQBYHuJGYVsyP0NRaXxag2PUc9/seYCFy6zGU/epdx2NLLgJFzhLBRg6uO/RoG/A76ZR
	IuqsI/vsofQXSJdXcgWL6VjGQUebzxk/8pPWoiMMqUwxszHDPZqbqPjxWB7NkUnLxWyjWpnk9dl
	XpAarWw36Zh2MzscnoO2zhP8nObbRh6W2W6+UtcuHmm1JiKK5tIUsCKAvJq+lCG5Nh6or+4tsGZ
	Y34OiKXWTxj8aYP2Byy+qN7fRR7MBYg2szu9Xqpgtqyi+Xkot/uwxQVkVN/9oMmOyex8
X-Received: by 2002:a05:6820:3102:b0:662:b92e:650c with SMTP id
 006d021491bc7-662e046d60emr2055361eaf.40.1769434619346; Mon, 26 Jan 2026
 05:36:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <20251002060732.100213-3-apatel@ventanamicro.com> <CABvJ_xgn__drv_oAFzEYdjwMBFGK1WnPs82Kh-5UtevEedNfeQ@mail.gmail.com>
In-Reply-To: <CABvJ_xgn__drv_oAFzEYdjwMBFGK1WnPs82Kh-5UtevEedNfeQ@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 26 Jan 2026 19:06:46 +0530
X-Gm-Features: AZwV_Qg1nH5tyXaOXAapc-tJO4LqQZ0QREQ5MfeFVykRNdndtMVl39JEYH1r3Dc
Message-ID: <CAAhSdy1SuNrkJGih++V7F9jPb_5hfM9_T29A63kQB-dhMJthjw@mail.gmail.com>
Subject: Re: [PATCH 02/11] rvtrace: Initial implementation of driver framework
To: Vincent Chen <vincent.chen@sifive.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[brainfault-org.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[brainfault.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259503-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[brainfault-org.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anup@brainfault.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ventanamicro.com,kernel.org,sifive.com,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,arm.com,vger.kernel.org,ghiti.fr,linux.dev,infradead.org,intel.com,redhat.com,gmail.com,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[brainfault-org.20230601.gappssmtp.com:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:url,infradead.org:email,riscv.org:url,sifive.com:email]
X-Rspamd-Queue-Id: DFB9B8905F
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 1:21=E2=80=AFPM Vincent Chen <vincent.chen@sifive.c=
om> wrote:
>
> Hi Anup,
>
> Thank you for providing the RVtrace infrastructure in Linux. It is great
> to see support for manipulating RISC-V trace components via the Linux
> perf tool.
>
> SiFive provides a similar instruction trace specification that allows
> users to collect processor execution history and other events on SiFive
> platforms. This specification is implemented on the HiFive Premier P550
> board. The specification is available here:
> https://lists.riscv.org/g/tech-nexus/files/RISC-V-Trace-Control-Interface=
-Proposed-20200612.pdf
>
> The fundamental concepts behind both specifications are aligned:
> 1. Both instruction trace systems are composed of Trace Encoders, Trace
>    Funnels, and Trace Sinks.
>    a. Trace encoder: Each hart has its own trace encoder. It monitors
>       the ingress port to record addresses where program flow
>       discontinuities occur. It compresses the log using either the
>       Efficient Trace for RISC-V or RISC-V N-Trace specification
>       (SiFive encoders support Nexus-based trace only) and transmits it
>       to a downstream Trace Funnel or Sink.
>    b. Trace funnel: Functionally identical in both systems, the funnel
>       aggregates traces from multiple inputs (encoders or other funnels)
>       and forwards the combined stream to a designated sink.
>    c. Trace sink: Both specifications support SRAM, System Memory, PIB,
>       and ATB Bridge sinks.
>
> 2. The control flow for starting and stopping recording is also consisten=
t:
>    a. Start tracing: Proceed from the downstream sink up to the trace
>       encoder to ensure sinks are ready to capture logs.
>    b. Stop tracing: Proceed from the trace encoder down to the sink to
>       ensure all logs are flushed.

It's good that at high-level the SiFive trace is close to the ratified RISC=
-V
trace so we won't have major re-work in the rvtrace framework.

>
> However, these two specifications have some differences in implementation=
,
> primarily in:
> 1. MMIO Register Definitions: While functionally similar, the register
>    layouts for SiFive encoders and funnels differ from the RISC-V
>    standard.

The rvtrace framework (particularly rvtrace_register_component()) implicitl=
y
accesses few registers assuming components are RISC-V trace compliant
which will break for SiFive trace components. I will try to make the rvtrac=
e
framework a little more generic in the next revision.

> 2. Lack of Independent Sink Components: In the SiFive implementation,
>    sink configuration registers are embedded within the trace encoder and
>    funnel MMIO regions, rather than existing as standalone components.

This is going to be the case for the self-hosted trace as well so this
aspect needs to be addressed anyway in the future.

> 3. Trace Path configuration:
>    a. RISC-V trace component is allowed to pass down the trace log to a
>       single or multiple next-level trace components, depending on the HW
>       capabilities and connection. This trace component cannot configure
>       the output target via the MMIO register, but the next-level trace
>       component has the ability to disable the inputs from a specific
>       trace component.
>    b. The SiFive trace component can only output the trace log to a
>       designated sink, which is specified in the corresponding MMIO
>       register. The designated sink cannot be configured to disable any
>       input.
> 4. SiFive customer feature: SiFive platforms include custom event
>    collection capabilities that require a dedicated PMU registration to
>    expose via the Linux perf tool.
>
> Given the similarities in control flow, we propose integrating the
> SiFive trace driver into your RVtrace infrastructure to avoid code
> duplication. Below is our proposed integration approach:
>
> 1. DT File (Device Tree)
>    - Inherit the current dt-bindings for RISC-V trace components,
>      specifically the in-ports and out-ports descriptions for topology.
>    - Add "sifive,trace-component" to the compatible string of SiFive
>      nodes.

New compatible string is mandatory because the SiFive trace
component is not directly compatible with the RISC-V trace component.

>    - Add a new DT property to indicate the specific type of SiFive trace
>      component. This is necessary because the corresponding register in
>      the SiFive specification does not expose the component's type
>      (Encoder/Funnel) to software.

Rather than new DT property, I would suggest using
separate compatible strings (such as sifive,trace-encoder
and sifive,trace-funnel or something similar).

> 2. Perf Tool
>    - Register a new perf PMU specifically for SiFive trace. This also
>      allows us to define custom event configurations for SiFive-specific
>      features.
>    - The Perf tool will support both PMUs simultaneously. The final
>      selected operating PMU depends on the PMU name in the perf command
>      and the platform capability.
>    - Leverage the callback functions registered to "struct auxtrace_recor=
d"
>      as much as possible.

IMO, a separate perf PMU instance for SiFive should be the
last option. This certainly needs more brainstorming in the
RISE kernel working group.

> 3. Linux Device Driver
>    - Device Probe:
>      - Add "sifive,trace-component" to rvtrace_platform_match[] to
>        enable rvtrace_platform_probe() to support SiFive trace
>        components.
>      - Update rvtrace_register_component() to support registering
>        SiFive encoders and funnels to the rvtrace bus.
>      - Plan to let the SiFive trace encoder and funnel share the same
>        type ID as RISC-V. In this condition, to enable the driver to
>        distinguish between SiFive and RISC-V hardware, it would be
>        necessary to add a new vendor ID field into
>        "struct rvtrace_component_id".
>    - Driver Implementations:
>      - Like other drivers of RISC-V trace components, the SiFive encoder
>        and funnel driver will implement the required functions in the
>        rvtrace_driver.
>    - Trace Delivery Path (Encoder to Sink):
>      - This infrastructure can be used in the same way to establish the
>        topology of the entire trace system via the DT file.
>      - Based on the same topology descriptions, the trace delivery path
>        can use the same logic to create.
>      - The primary difference lies in the trace path configuration. To
>        address this, we propose delegating the path configuration logic
>        to the .start() and .stop() callbacks in "struct rvtrace_driver".
>        This allows the routing implementation to be encapsulated within
>        the specific driver. To support this, we would need to update the
>        definition of the .start() and .stop() callbacks to accept the adj=
acent
>        node information as arguments, allowing the driver to perform the
>        necessary MMIO writes for routing.
>
>    - Sink Manipulation:
>      - Standard RISC-V: Managed through dedicated drivers (init during
>        probe, access via callbacks during dump).
>      - SiFive Implementation: Sink regs are embedded in Encoder/Funnel
>        MMIO.
>      - We propose that the SiFive encoder and funnel drivers:
>        a. Initialize their supported sinks during the driver probe
>           sequence.
>        b. Implement and register the appropriate sink access callbacks,
>           ensuring they align with the standard perf log dumping
>           workflow.
>
> Do you think the proposed solution is feasible? I would appreciate your
> feedback.

Overall, I support the idea of accommodating SiFive trace under
the common rvtrace infrastructure because we will be anyway
doing the same thing for the upcoming self-hosted trace.

At this point, I can only try to ensure the rvtrace framework is
generic enough. Dealing with SiFive specific fitment issues
should be done incrementally as a separate exercise.

Regards,
Anup

>
> Best regards,
> Vincent
>
> On Thu, Oct 2, 2025 at 2:09=E2=80=AFPM Anup Patel <apatel@ventanamicro.co=
m> wrote:
> >
> > The RISC-V Trace Control Interface Specification [1] defines a standard
> > way of implementing RISC-V trace related modular components irrespectiv=
e
> > to underlying trace format (E-trace or N-trace). These RISC-V trace
> > components are organized in a graph-like topology where each RISC-V
> > hart has its own RISC-V trace encoder component.
> >
> > Implement a basic driver framework for RISC-V trace where RISC-V trace
> > components are instantiated by a common platform driver and a separate
> > RISC-V trace driver for each type of RISC-V trace component.
> >
> > [1] https://github.com/riscv-non-isa/tg-nexus-trace/releases/download/1=
.0_Ratified/RISC-V-Trace-Control-Interface.pdf
> >
> > Co-developed-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/Makefile                             |   1 +
> >  drivers/hwtracing/Kconfig                    |   2 +
> >  drivers/hwtracing/rvtrace/Kconfig            |  16 +
> >  drivers/hwtracing/rvtrace/Makefile           |   4 +
> >  drivers/hwtracing/rvtrace/rvtrace-core.c     | 484 +++++++++++++++++++
> >  drivers/hwtracing/rvtrace/rvtrace-platform.c | 174 +++++++
> >  include/linux/rvtrace.h                      | 272 +++++++++++
> >  7 files changed, 953 insertions(+)
> >  create mode 100644 drivers/hwtracing/rvtrace/Kconfig
> >  create mode 100644 drivers/hwtracing/rvtrace/Makefile
> >  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-core.c
> >  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-platform.c
> >  create mode 100644 include/linux/rvtrace.h
> >
> > diff --git a/drivers/Makefile b/drivers/Makefile
> > index b5749cf67044..466a55580f60 100644
> > --- a/drivers/Makefile
> > +++ b/drivers/Makefile
> > @@ -178,6 +178,7 @@ obj-$(CONFIG_CORESIGHT)             +=3D hwtracing/=
coresight/
> >  obj-y                          +=3D hwtracing/intel_th/
> >  obj-$(CONFIG_STM)              +=3D hwtracing/stm/
> >  obj-$(CONFIG_HISI_PTT)         +=3D hwtracing/ptt/
> > +obj-$(CONFIG_RVTRACE)          +=3D hwtracing/rvtrace/
> >  obj-y                          +=3D android/
> >  obj-$(CONFIG_NVMEM)            +=3D nvmem/
> >  obj-$(CONFIG_FPGA)             +=3D fpga/
> > diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
> > index 911ee977103c..daeb38fe332d 100644
> > --- a/drivers/hwtracing/Kconfig
> > +++ b/drivers/hwtracing/Kconfig
> > @@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
> >
> >  source "drivers/hwtracing/ptt/Kconfig"
> >
> > +source "drivers/hwtracing/rvtrace/Kconfig"
> > +
> >  endmenu
> > diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtr=
ace/Kconfig
> > new file mode 100644
> > index 000000000000..f8f6feea1953
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/Kconfig
> > @@ -0,0 +1,16 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +menuconfig RVTRACE
> > +       tristate "RISC-V Trace Support"
> > +       depends on RISCV
> > +       depends on OF
> > +       default RISCV
> > +       help
> > +         This framework provides a kernel interface for the RISC-V tra=
ce
> > +         drivers (including both e-trace and n-trace). It's intended t=
o
> > +         build a topological view of the RISC-V trace components and
> > +         configure the right series of components when trace is enable=
d
> > +         on a CPU.
> > +
> > +         To compile this driver as a module, choose M here: the module
> > +         will be called rvtrace.
> > diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvt=
race/Makefile
> > new file mode 100644
> > index 000000000000..988525a379cf
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> > +rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> > diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtraci=
ng/rvtrace/rvtrace-core.c
> > new file mode 100644
> > index 000000000000..52ea931745fc
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
> > @@ -0,0 +1,484 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2025 Ventana Micro Systems Inc.
> > + */
> > +
> > +#include <linux/cpumask.h>
> > +#include <linux/delay.h>
> > +#include <linux/export.h>
> > +#include <linux/idr.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/percpu.h>
> > +#include <linux/rvtrace.h>
> > +
> > +/* Mutex to serialize component registration/unregistration */
> > +static DEFINE_MUTEX(rvtrace_mutex);
> > +
> > +/* Per-CPU encoder instances */
> > +static DEFINE_PER_CPU(struct rvtrace_component *, rvtrace_cpu_encoder)=
;
> > +
> > +/* Component type based id generator */
> > +struct rvtrace_type_idx {
> > +       /* Lock to protect the type ID generator */
> > +       struct mutex lock;
> > +       struct idr idr;
> > +};
> > +
> > +/* Array of component type based id generator */
> > +static struct rvtrace_type_idx rvtrace_type_idx_array[RVTRACE_COMPONEN=
T_TYPE_MAX];
> > +
> > +static int rvtrace_alloc_type_idx(struct rvtrace_component *comp)
> > +{
> > +       struct rvtrace_type_idx *rvidx =3D &rvtrace_type_idx_array[comp=
->id.type];
> > +       int idx;
> > +
> > +       mutex_lock(&rvidx->lock);
> > +       idx =3D idr_alloc(&rvidx->idr, comp, 0, 0, GFP_KERNEL);
> > +       mutex_unlock(&rvidx->lock);
> > +       if (idx < 0)
> > +               return idx;
> > +
> > +       comp->type_idx =3D idx;
> > +       return 0;
> > +}
> > +
> > +static void rvtrace_free_type_idx(struct rvtrace_component *comp)
> > +{
> > +       struct rvtrace_type_idx *rvidx =3D &rvtrace_type_idx_array[comp=
->id.type];
> > +
> > +       mutex_lock(&rvidx->lock);
> > +       idr_remove(&rvidx->idr, comp->type_idx);
> > +       mutex_unlock(&rvidx->lock);
> > +}
> > +
> > +static void __init rvtrace_init_type_idx(void)
> > +{
> > +       struct rvtrace_type_idx *rvidx;
> > +       int i;
> > +
> > +       for (i =3D 0; i < RVTRACE_COMPONENT_TYPE_MAX; i++) {
> > +               rvidx =3D &rvtrace_type_idx_array[i];
> > +               mutex_init(&rvidx->lock);
> > +               idr_init(&rvidx->idr);
> > +       }
> > +}
> > +
> > +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_com=
ponent *comp,
> > +                                                   const struct rvtrac=
e_component_id *ids)
> > +{
> > +       const struct rvtrace_component_id *id;
> > +
> > +       for (id =3D ids; id->version && id->type; id++) {
> > +               if (comp->id.type =3D=3D id->type &&
> > +                   comp->id.version =3D=3D id->version)
> > +                       return id;
> > +       }
> > +
> > +       return NULL;
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_match_id);
> > +
> > +static int rvtrace_match_device(struct device *dev, const struct devic=
e_driver *drv)
> > +{
> > +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(drv);
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +
> > +       return rvtrace_match_id(comp, rtdrv->id_table) ? 1 : 0;
> > +}
> > +
> > +static int rvtrace_probe(struct device *dev)
> > +{
> > +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(dev->d=
river);
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +       int ret =3D -ENODEV;
> > +
> > +       if (!rtdrv->probe)
> > +               return ret;
> > +
> > +       ret =3D rtdrv->probe(comp);
> > +       if (!ret)
> > +               comp->ready =3D true;
> > +
> > +       return ret;
> > +}
> > +
> > +static void rvtrace_remove(struct device *dev)
> > +{
> > +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(dev->d=
river);
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +
> > +       comp->ready =3D false;
> > +       if (rtdrv->remove)
> > +               rtdrv->remove(comp);
> > +}
> > +
> > +const struct bus_type rvtrace_bustype =3D {
> > +       .name   =3D "rvtrace",
> > +       .match  =3D rvtrace_match_device,
> > +       .probe  =3D rvtrace_probe,
> > +       .remove =3D rvtrace_remove,
> > +};
> > +
> > +struct rvtrace_fwnode_match_data {
> > +       struct fwnode_handle *fwnode;
> > +       struct rvtrace_component *match;
> > +};
> > +
> > +static int rvtrace_match_fwnode(struct device *dev, void *data)
> > +{
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +       struct rvtrace_fwnode_match_data *d =3D data;
> > +
> > +       if (device_match_fwnode(&comp->dev, d->fwnode)) {
> > +               d->match =3D comp;
> > +               return 1;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handle =
*fwnode)
> > +{
> > +       struct rvtrace_fwnode_match_data d =3D { .fwnode =3D fwnode, .m=
atch =3D NULL };
> > +       int ret;
> > +
> > +       ret =3D bus_for_each_dev(&rvtrace_bustype, NULL, &d, rvtrace_ma=
tch_fwnode);
> > +       if (ret < 0)
> > +               return ERR_PTR(ret);
> > +
> > +       return d.match;
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_find_by_fwnode);
> > +
> > +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset,
> > +                    int bit, int bitval, int timeout)
> > +{
> > +       int i =3D 10;
> > +       u32 val;
> > +
> > +       while (i--) {
> > +               val =3D rvtrace_read32(pdata, offset);
> > +               if (((val >> bit) & 0x1) =3D=3D bitval)
> > +                       break;
> > +               udelay(timeout);
> > +       }
> > +
> > +       return (i < 0) ? -ETIMEDOUT : 0;
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_poll_bit);
> > +
> > +int rvtrace_enable_component(struct rvtrace_component *comp)
> > +{
> > +       u32 val;
> > +
> > +       val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFS=
ET);
> > +       val |=3D BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> > +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET=
);
> > +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFF=
SET,
> > +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 1,
> > +                               comp->pdata->control_poll_timeout_usecs=
);
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_enable_component);
> > +
> > +int rvtrace_disable_component(struct rvtrace_component *comp)
> > +{
> > +       u32 val;
> > +
> > +       val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFS=
ET);
> > +       val &=3D ~BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> > +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET=
);
> > +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFF=
SET,
> > +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 0,
> > +                               comp->pdata->control_poll_timeout_usecs=
);
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_disable_component);
> > +
> > +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu)
> > +{
> > +       if (!cpu_present(cpu))
> > +               return NULL;
> > +
> > +       return per_cpu(rvtrace_cpu_encoder, cpu);
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_cpu_source);
> > +
> > +static int rvtrace_cleanup_inconn(struct device *dev, void *data)
> > +{
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> > +       struct rvtrace_connection *conn =3D data;
> > +       int i;
> > +
> > +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
> > +               for (i =3D 0; i < pdata->nr_inconns; i++) {
> > +                       if (pdata->inconns[i] !=3D conn)
> > +                               continue;
> > +                       pdata->inconns[i] =3D NULL;
> > +                       return 1;
> > +               }
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static void rvtrace_cleanup_inconns_from_outconns(struct rvtrace_compo=
nent *comp)
> > +{
> > +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> > +       struct rvtrace_connection *conn;
> > +       int i;
> > +
> > +       lockdep_assert_held(&rvtrace_mutex);
> > +
> > +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> > +               conn =3D pdata->outconns[i];
> > +               bus_for_each_dev(&rvtrace_bustype, NULL, conn, rvtrace_=
cleanup_inconn);
> > +       }
> > +}
> > +
> > +static int rvtrace_setup_inconn(struct device *dev, void *data)
> > +{
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> > +       struct rvtrace_connection *conn =3D data;
> > +       int i;
> > +
> > +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
> > +               for (i =3D 0; i < pdata->nr_inconns; i++) {
> > +                       if (pdata->inconns[i])
> > +                               continue;
> > +                       pdata->inconns[i] =3D conn;
> > +                       return 1;
> > +               }
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int rvtrace_setup_inconns_from_outconns(struct rvtrace_componen=
t *comp)
> > +{
> > +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> > +       struct rvtrace_connection *conn;
> > +       int i, ret;
> > +
> > +       lockdep_assert_held(&rvtrace_mutex);
> > +
> > +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> > +               conn =3D pdata->outconns[i];
> > +               ret =3D bus_for_each_dev(&rvtrace_bustype, NULL, conn, =
rvtrace_setup_inconn);
> > +               if (ret < 0) {
> > +                       rvtrace_cleanup_inconns_from_outconns(comp);
> > +                       return ret;
> > +               }
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static void rvtrace_component_release(struct device *dev)
> > +{
> > +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> > +
> > +       fwnode_handle_put(comp->dev.fwnode);
> > +       rvtrace_free_type_idx(comp);
> > +       kfree(comp);
> > +}
> > +
> > +static int rvtrace_component_reset(struct rvtrace_platform_data *pdata=
)
> > +{
> > +       int ret;
> > +
> > +       rvtrace_write32(pdata, 0, RVTRACE_COMPONENT_CTRL_OFFSET);
> > +       ret =3D rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> > +                              RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 0,
> > +                              pdata->control_poll_timeout_usecs);
> > +       if (ret)
> > +               return ret;
> > +
> > +       rvtrace_write32(pdata, RVTRACE_COMPONENT_CTRL_ACTIVE_MASK,
> > +                       RVTRACE_COMPONENT_CTRL_OFFSET);
> > +       return rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> > +                               RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 1,
> > +                               pdata->control_poll_timeout_usecs);
> > +}
> > +
> > +struct rvtrace_component *rvtrace_register_component(struct rvtrace_pl=
atform_data *pdata)
> > +{
> > +       struct rvtrace_connection *conn;
> > +       struct rvtrace_component *comp;
> > +       u32 impl, type, major, minor;
> > +       int i, ret =3D 0;
> > +
> > +       if (!pdata || !pdata->dev) {
> > +               ret =3D -EINVAL;
> > +               goto err_out;
> > +       }
> > +
> > +       for (i =3D 0; i < pdata->nr_inconns; i++) {
> > +               if (pdata->inconns[i]) {
> > +                       ret =3D -EINVAL;
> > +                       goto err_out;
> > +               }
> > +       }
> > +
> > +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> > +               conn =3D pdata->outconns[i];
> > +               if (!conn || conn->src_port < 0 || conn->src_comp ||
> > +                   !device_match_fwnode(pdata->dev, conn->src_fwnode) =
||
> > +                   conn->dest_port < 0 || !conn->dest_fwnode || !conn-=
>dest_comp) {
> > +                       ret =3D -EINVAL;
> > +                       goto err_out;
> > +               }
> > +       }
> > +
> > +       ret =3D rvtrace_component_reset(pdata);
> > +       if (ret)
> > +               goto err_out;
> > +
> > +       impl =3D rvtrace_read32(pdata, RVTRACE_COMPONENT_IMPL_OFFSET);
> > +       type =3D (impl >> RVTRACE_COMPONENT_IMPL_TYPE_SHIFT) &
> > +               RVTRACE_COMPONENT_IMPL_TYPE_MASK;
> > +       major =3D (impl >> RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT) &
> > +               RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK;
> > +       minor =3D (impl >> RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT) &
> > +               RVTRACE_COMPONENT_IMPL_VERMINOR_MASK;
> > +
> > +       if (pdata->bound_cpu >=3D 0 && !cpu_present(pdata->bound_cpu)) =
{
> > +               ret =3D -EINVAL;
> > +               goto err_out;
> > +       }
> > +       if (type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER && pdata->bound_=
cpu < 0) {
> > +               ret =3D -EINVAL;
> > +               goto err_out;
> > +       }
> > +
> > +       comp =3D kzalloc(sizeof(*comp), GFP_KERNEL);
> > +       if (!comp) {
> > +               ret =3D -ENOMEM;
> > +               goto err_out;
> > +       }
> > +       comp->pdata =3D pdata;
> > +       comp->id.type =3D type;
> > +       comp->id.version =3D rvtrace_component_mkversion(major, minor);
> > +       ret =3D rvtrace_alloc_type_idx(comp);
> > +       if (ret) {
> > +               kfree(comp);
> > +               goto err_out;
> > +       }
> > +
> > +       comp->dev.parent =3D pdata->dev;
> > +       comp->dev.coherent_dma_mask =3D pdata->dev->coherent_dma_mask;
> > +       comp->dev.release =3D rvtrace_component_release;
> > +       comp->dev.bus =3D &rvtrace_bustype;
> > +       comp->dev.fwnode =3D fwnode_handle_get(dev_fwnode(pdata->dev));
> > +       switch (comp->id.type) {
> > +       case RVTRACE_COMPONENT_TYPE_ENCODER:
> > +               dev_set_name(&comp->dev, "encoder-%d", comp->type_idx);
> > +               break;
> > +       case RVTRACE_COMPONENT_TYPE_FUNNEL:
> > +               dev_set_name(&comp->dev, "funnel-%d", comp->type_idx);
> > +               break;
> > +       case RVTRACE_COMPONENT_TYPE_RAMSINK:
> > +               dev_set_name(&comp->dev, "ramsink-%d", comp->type_idx);
> > +               break;
> > +       case RVTRACE_COMPONENT_TYPE_PIBSINK:
> > +               dev_set_name(&comp->dev, "pibsink-%d", comp->type_idx);
> > +               break;
> > +       case RVTRACE_COMPONENT_TYPE_ATBBRIDGE:
> > +               dev_set_name(&comp->dev, "atbbridge-%d", comp->type_idx=
);
> > +               break;
> > +       default:
> > +               dev_set_name(&comp->dev, "type%d-%d", comp->id.type, co=
mp->type_idx);
> > +               break;
> > +       }
> > +
> > +       mutex_lock(&rvtrace_mutex);
> > +
> > +       ret =3D device_register(&comp->dev);
> > +       if (ret) {
> > +               put_device(&comp->dev);
> > +               goto err_out_unlock;
> > +       }
> > +
> > +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> > +               conn =3D pdata->outconns[i];
> > +               conn->src_comp =3D comp;
> > +       }
> > +
> > +       ret =3D rvtrace_setup_inconns_from_outconns(comp);
> > +       if (ret < 0) {
> > +               device_unregister(&comp->dev);
> > +               goto err_out_unlock;
> > +       }
> > +
> > +       if (comp->id.type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER) {
> > +               rvtrace_get_component(comp);
> > +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) =
=3D comp;
> > +       }
> > +
> > +       mutex_unlock(&rvtrace_mutex);
> > +
> > +       return comp;
> > +
> > +err_out_unlock:
> > +       mutex_unlock(&rvtrace_mutex);
> > +err_out:
> > +       return ERR_PTR(ret);
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_register_component);
> > +
> > +void rvtrace_unregister_component(struct rvtrace_component *comp)
> > +{
> > +       struct rvtrace_component *c;
> > +
> > +       mutex_lock(&rvtrace_mutex);
> > +
> > +       if (comp->id.type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER) {
> > +               c =3D per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_c=
pu);
> > +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) =
=3D NULL;
> > +               rvtrace_put_component(c);
> > +       }
> > +
> > +       rvtrace_cleanup_inconns_from_outconns(comp);
> > +       device_unregister(&comp->dev);
> > +
> > +       mutex_unlock(&rvtrace_mutex);
> > +}
> > +EXPORT_SYMBOL_GPL(rvtrace_unregister_component);
> > +
> > +int __rvtrace_register_driver(struct module *owner, struct rvtrace_dri=
ver *rtdrv)
> > +{
> > +       rtdrv->driver.owner =3D owner;
> > +       rtdrv->driver.bus =3D &rvtrace_bustype;
> > +
> > +       return driver_register(&rtdrv->driver);
> > +}
> > +EXPORT_SYMBOL_GPL(__rvtrace_register_driver);
> > +
> > +static int __init rvtrace_init(void)
> > +{
> > +       int ret;
> > +
> > +       rvtrace_init_type_idx();
> > +
> > +       ret =3D bus_register(&rvtrace_bustype);
> > +       if (ret)
> > +               return ret;
> > +
> > +       ret =3D platform_driver_register(&rvtrace_platform_driver);
> > +       if (ret) {
> > +               bus_unregister(&rvtrace_bustype);
> > +               return ret;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static void __exit rvtrace_exit(void)
> > +{
> > +       platform_driver_unregister(&rvtrace_platform_driver);
> > +       bus_unregister(&rvtrace_bustype);
> > +}
> > +
> > +module_init(rvtrace_init);
> > +module_exit(rvtrace_exit);
> > diff --git a/drivers/hwtracing/rvtrace/rvtrace-platform.c b/drivers/hwt=
racing/rvtrace/rvtrace-platform.c
> > new file mode 100644
> > index 000000000000..a110ff1f2f08
> > --- /dev/null
> > +++ b/drivers/hwtracing/rvtrace/rvtrace-platform.c
> > @@ -0,0 +1,174 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2025 Ventana Micro Systems Inc.
> > + */
> > +
> > +#include <linux/device.h>
> > +#include <linux/io.h>
> > +#include <linux/of.h>
> > +#include <linux/of_graph.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/property.h>
> > +#include <linux/rvtrace.h>
> > +#include <linux/types.h>
> > +
> > +static int rvtrace_of_parse_outconns(struct rvtrace_platform_data *pda=
ta)
> > +{
> > +       struct device_node *parent, *ep_node, *rep_node, *rdev_node;
> > +       struct rvtrace_connection *conn;
> > +       struct of_endpoint ep, rep;
> > +       int ret =3D 0, i =3D 0;
> > +
> > +       parent =3D of_get_child_by_name(dev_of_node(pdata->dev), "out-p=
orts");
> > +       if (!parent)
> > +               return 0;
> > +
> > +       pdata->nr_outconns =3D of_graph_get_endpoint_count(parent);
> > +       pdata->outconns =3D devm_kcalloc(pdata->dev, pdata->nr_outconns=
,
> > +                                      sizeof(*pdata->outconns), GFP_KE=
RNEL);
> > +       if (!pdata->outconns) {
> > +               ret =3D -ENOMEM;
> > +               goto done;
> > +       }
> > +
> > +       for_each_endpoint_of_node(parent, ep_node) {
> > +               conn =3D devm_kzalloc(pdata->dev, sizeof(*conn), GFP_KE=
RNEL);
> > +               if (!conn) {
> > +                       of_node_put(ep_node);
> > +                       ret =3D -ENOMEM;
> > +                       break;
> > +               }
> > +
> > +               ret =3D of_graph_parse_endpoint(ep_node, &ep);
> > +               if (ret) {
> > +                       of_node_put(ep_node);
> > +                       break;
> > +               }
> > +
> > +               rep_node =3D of_graph_get_remote_endpoint(ep_node);
> > +               if (!rep_node) {
> > +                       ret =3D -ENODEV;
> > +                       of_node_put(ep_node);
> > +                       break;
> > +               }
> > +               rdev_node =3D of_graph_get_port_parent(rep_node);
> > +
> > +               ret =3D of_graph_parse_endpoint(rep_node, &rep);
> > +               if (ret) {
> > +                       of_node_put(ep_node);
> > +                       break;
> > +               }
> > +
> > +               conn->src_port =3D ep.port;
> > +               conn->src_fwnode =3D dev_fwnode(pdata->dev);
> > +               /* The 'src_comp' is set by rvtrace_register_component(=
) */
> > +               conn->src_comp =3D NULL;
> > +               conn->dest_port =3D rep.port;
> > +               conn->dest_fwnode =3D of_fwnode_handle(rdev_node);
> > +               conn->dest_comp =3D rvtrace_find_by_fwnode(conn->dest_f=
wnode);
> > +               if (!conn->dest_comp) {
> > +                       ret =3D -EPROBE_DEFER;
> > +                       of_node_put(ep_node);
> > +               }
> > +
> > +               pdata->outconns[i] =3D conn;
> > +               i++;
> > +       }
> > +
> > +done:
> > +       of_node_put(parent);
> > +       return ret;
> > +}
> > +
> > +static int rvtrace_of_parse_inconns(struct rvtrace_platform_data *pdat=
a)
> > +{
> > +       struct device_node *parent;
> > +       int ret =3D 0;
> > +
> > +       parent =3D of_get_child_by_name(dev_of_node(pdata->dev), "in-po=
rts");
> > +       if (!parent)
> > +               return 0;
> > +
> > +       pdata->nr_inconns =3D of_graph_get_endpoint_count(parent);
> > +       pdata->inconns =3D devm_kcalloc(pdata->dev, pdata->nr_inconns,
> > +                                     sizeof(*pdata->inconns), GFP_KERN=
EL);
> > +       if (!pdata->inconns)
> > +               ret =3D -ENOMEM;
> > +
> > +       of_node_put(parent);
> > +       return ret;
> > +}
> > +
> > +static int rvtrace_platform_probe(struct platform_device *pdev)
> > +{
> > +       struct rvtrace_platform_data *pdata;
> > +       struct device *dev =3D &pdev->dev;
> > +       struct rvtrace_component *comp;
> > +       struct device_node *node;
> > +       struct resource *res;
> > +       int ret;
> > +
> > +       pdata =3D devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> > +       if (!pdata)
> > +               return -ENOMEM;
> > +       pdata->dev =3D dev;
> > +       pdata->impid =3D RVTRACE_COMPONENT_IMPID_UNKNOWN;
> > +
> > +       res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       if (!res)
> > +               return -EINVAL;
> > +
> > +       pdata->io_mem =3D true;
> > +       pdata->base =3D devm_ioremap(&pdev->dev, res->start, resource_s=
ize(res));
> > +       if (!pdata->base)
> > +               return dev_err_probe(dev, -ENOMEM, "failed to ioremap %=
pR\n", res);
> > +
> > +       pdata->bound_cpu =3D -1;
> > +       node =3D of_parse_phandle(dev_of_node(dev), "cpu", 0);
> > +       if (node) {
> > +               ret =3D of_cpu_node_to_id(node);
> > +               of_node_put(node);
> > +               if (ret < 0)
> > +                       return dev_err_probe(dev, ret, "failed to get C=
PU id for %pOF\n", node);
> > +               pdata->bound_cpu =3D ret;
> > +       }
> > +
> > +       /* Default control poll timeout */
> > +       pdata->control_poll_timeout_usecs =3D 10;
> > +
> > +       ret =3D rvtrace_of_parse_outconns(pdata);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret, "failed to parse output =
connections\n");
> > +
> > +       ret =3D rvtrace_of_parse_inconns(pdata);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret, "failed to parse input c=
onnections\n");
> > +
> > +       comp =3D rvtrace_register_component(pdata);
> > +       if (IS_ERR(comp))
> > +               return PTR_ERR(comp);
> > +
> > +       platform_set_drvdata(pdev, comp);
> > +       return 0;
> > +}
> > +
> > +static void rvtrace_platform_remove(struct platform_device *pdev)
> > +{
> > +       struct rvtrace_component *comp =3D platform_get_drvdata(pdev);
> > +
> > +       rvtrace_unregister_component(comp);
> > +}
> > +
> > +static const struct of_device_id rvtrace_platform_match[] =3D {
> > +       { .compatible =3D "riscv,trace-component" },
> > +       {}
> > +};
> > +
> > +struct platform_driver rvtrace_platform_driver =3D {
> > +       .driver =3D {
> > +               .name           =3D "rvtrace",
> > +               .of_match_table =3D rvtrace_platform_match,
> > +       },
> > +       .probe =3D rvtrace_platform_probe,
> > +       .remove =3D rvtrace_platform_remove,
> > +};
> > diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
> > new file mode 100644
> > index 000000000000..04eb03e62601
> > --- /dev/null
> > +++ b/include/linux/rvtrace.h
> > @@ -0,0 +1,272 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (c) 2025 Ventana Micro Systems Inc.
> > + */
> > +
> > +#ifndef __LINUX_RVTRACE_H__
> > +#define __LINUX_RVTRACE_H__
> > +
> > +#include <linux/device.h>
> > +#include <linux/io.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/property.h>
> > +#include <linux/types.h>
> > +
> > +/* Control register common across all RISC-V trace components */
> > +#define RVTRACE_COMPONENT_CTRL_OFFSET          0x000
> > +#define RVTRACE_COMPONENT_CTRL_ACTIVE_MASK     0x1
> > +#define RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT    0
> > +#define RVTRACE_COMPONENT_CTRL_ENABLE_MASK     0x1
> > +#define RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT    1
> > +
> > +/* Implementation register common across all RISC-V trace components *=
/
> > +#define RVTRACE_COMPONENT_IMPL_OFFSET          0x004
> > +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK   0xf
> > +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT  0
> > +#define RVTRACE_COMPONENT_IMPL_VERMINOR_MASK   0xf
> > +#define RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT  4
> > +#define RVTRACE_COMPONENT_IMPL_TYPE_MASK       0xf
> > +#define RVTRACE_COMPONENT_IMPL_TYPE_SHIFT      8
> > +
> > +/* Possible component types defined by the RISC-V Trace Control Interf=
ace */
> > +enum rvtrace_component_type {
> > +       RVTRACE_COMPONENT_TYPE_RESV0,
> > +       RVTRACE_COMPONENT_TYPE_ENCODER, /* 0x1 */
> > +       RVTRACE_COMPONENT_TYPE_RESV2,
> > +       RVTRACE_COMPONENT_TYPE_RESV3,
> > +       RVTRACE_COMPONENT_TYPE_RESV4,
> > +       RVTRACE_COMPONENT_TYPE_RESV5,
> > +       RVTRACE_COMPONENT_TYPE_RESV6,
> > +       RVTRACE_COMPONENT_TYPE_RESV7,
> > +       RVTRACE_COMPONENT_TYPE_FUNNEL, /* 0x8 */
> > +       RVTRACE_COMPONENT_TYPE_RAMSINK, /* 0x9 */
> > +       RVTRACE_COMPONENT_TYPE_PIBSINK, /* 0xA */
> > +       RVTRACE_COMPONENT_TYPE_RESV11,
> > +       RVTRACE_COMPONENT_TYPE_RESV12,
> > +       RVTRACE_COMPONENT_TYPE_RESV13,
> > +       RVTRACE_COMPONENT_TYPE_ATBBRIDGE, /* 0xE */
> > +       RVTRACE_COMPONENT_TYPE_RESV15,
> > +       RVTRACE_COMPONENT_TYPE_MAX
> > +};
> > +
> > +/* Encoding/decoding macros for RISC-V trace component version */
> > +#define rvtrace_component_version_major(__version)     \
> > +       (((__version) >> 16) & 0xffff)
> > +#define rvtrace_component_version_minor(__version)     \
> > +       ((__version) & 0xffff)
> > +#define rvtrace_component_mkversion(__major, __minor)  \
> > +       ((((__major) & 0xffff) << 16) | ((__minor) & 0xffff))
> > +
> > +/*
> > + * Possible component implementation IDs discovered from DT or ACPI
> > + * shared across the RISC-V trace drivers to infer trace parameters,
> > + * quirks, and work-arounds. These component implementation IDs are
> > + * internal to Linux and must not be exposed to user-space.
> > + *
> > + * The component implementation ID should be named as follows:
> > + *    RVTRACE_COMPONENT_IMPID_<vendor>_<part>
> > + */
> > +enum rvtrace_component_impid {
> > +       RVTRACE_COMPONENT_IMPID_UNKNOWN,
> > +       RVTRACE_COMPONENT_IMPID_MAX
> > +};
> > +
> > +/**
> > + * struct rvtrace_connection - Representation of a physical connection=
 between
> > + * two RISC-V trace components.
> > + * @src_port:    A connection's source port number.
> > + * @src_fwnode:  Source component's fwnode handle..
> > + * @src_comp:    Source component's pointer.
> > + * @dest_port:   A connection's destination port number.
> > + * @dest_fwnode: Destination component's fwnode handle.
> > + * @dest_comp:   Destination component's pointer.
> > + */
> > +struct rvtrace_connection {
> > +       int src_port;
> > +       struct fwnode_handle *src_fwnode;
> > +       int dest_port;
> > +       struct fwnode_handle *dest_fwnode;
> > +       struct rvtrace_component *src_comp;
> > +       struct rvtrace_component *dest_comp;
> > +};
> > +
> > +/**
> > + * struct rvtrace_platform_data - Platform-level data for a RISC-V tra=
ce component
> > + * discovered from DT or ACPI.
> > + * @dev:         Parent device.
> > + * @impid:       Component implementation ID
> > + * @io_mem:      Flag showing whether component registers are memory m=
apped.
> > + * @base:        If io_mem =3D=3D true then base address of the memory=
 mapped registers.
> > + * @read:        If io_mem =3D=3D false then read register from the gi=
ven "offset".
> > + * @write:       If io_mem =3D=3D false then write register to the giv=
en "offset".
> > + * @bound_cpu:   CPU to which the component is bound. This should be -=
1 if
> > + *               the component is not bound to any CPU. For encoder co=
mponent
> > + *               type this must not be -1.
> > + * @nr_inconns:  Number of input connections.
> > + * @inconns:     Array of pointers to input connections.
> > + * @nr_outconns: Number of output connections.
> > + * @outconns:    Array of pointers to output connections.
> > + */
> > +struct rvtrace_platform_data {
> > +       struct device *dev;
> > +
> > +       enum rvtrace_component_impid impid;
> > +
> > +       bool io_mem;
> > +       union {
> > +               void __iomem *base;
> > +               struct {
> > +                       u32 (*read)(struct rvtrace_platform_data *pdata=
,
> > +                                   u32 offset, bool relaxed);
> > +                       void (*write)(struct rvtrace_platform_data *pda=
ta,
> > +                                     u32 val, u32 offset, bool relaxed=
);
> > +               };
> > +       };
> > +
> > +       int bound_cpu;
> > +
> > +       /* Delay in microseconds when polling control register bits */
> > +       int control_poll_timeout_usecs;
> > +
> > +       /*
> > +        * Platform driver must only populate empty pointer array witho=
ut
> > +        * any actual input connections.
> > +        */
> > +       unsigned int nr_inconns;
> > +       struct rvtrace_connection **inconns;
> > +
> > +       /*
> > +        * Platform driver must fully populate pointer array with indiv=
idual
> > +        * array elements pointing to actual output connections. The sr=
c_comp
> > +        * of each output connection is automatically updated at the ti=
me of
> > +        * registering component.
> > +        */
> > +       unsigned int nr_outconns;
> > +       struct rvtrace_connection **outconns;
> > +};
> > +
> > +static inline u32 rvtrace_read32(struct rvtrace_platform_data *pdata, =
u32 offset)
> > +{
> > +       if (likely(pdata->io_mem))
> > +               return readl(pdata->base + offset);
> > +
> > +       return pdata->read(pdata, offset, false);
> > +}
> > +
> > +static inline u32 rvtrace_relaxed_read32(struct rvtrace_platform_data =
*pdata, u32 offset)
> > +{
> > +       if (likely(pdata->io_mem))
> > +               return readl_relaxed(pdata->base + offset);
> > +
> > +       return pdata->read(pdata, offset, true);
> > +}
> > +
> > +static inline void rvtrace_write32(struct rvtrace_platform_data *pdata=
, u32 val, u32 offset)
> > +{
> > +       if (likely(pdata->io_mem))
> > +               writel(val, pdata->base + offset);
> > +       else
> > +               pdata->write(pdata, val, offset, false);
> > +}
> > +
> > +static inline void rvtrace_relaxed_write32(struct rvtrace_platform_dat=
a *pdata,
> > +                                          u32 val, u32 offset)
> > +{
> > +       if (likely(pdata->io_mem))
> > +               writel_relaxed(val, pdata->base + offset);
> > +       else
> > +               pdata->write(pdata, val, offset, true);
> > +}
> > +
> > +static inline bool rvtrace_is_source(struct rvtrace_platform_data *pda=
ta)
> > +{
> > +       return !pdata->nr_inconns ? true : false;
> > +}
> > +
> > +static inline bool rvtrace_is_sink(struct rvtrace_platform_data *pdata=
)
> > +{
> > +       return !pdata->nr_outconns ? true : false;
> > +}
> > +
> > +/**
> > + * struct rvtrace_component_id - Details to identify or match a RISC-V=
 trace component
> > + * @type:      Type of the component
> > + * @version:   Version of the component
> > + * @data:      Data pointer for driver use
> > + */
> > +struct rvtrace_component_id {
> > +       enum rvtrace_component_type type;
> > +       u32 version;
> > +       void *data;
> > +};
> > +
> > +/**
> > + * struct rvtrace_component - Representation of a RISC-V trace compone=
nt
> > + * pdata:    Pointer to underlying platform data
> > + * id:       Details to match the component
> > + * type_idx: Unique number based on component type
> > + * dev:      Device instance
> > + * ready:    Flag showing whether RISC-V trace driver was probed succe=
ssfully
> > + */
> > +struct rvtrace_component {
> > +       struct rvtrace_platform_data *pdata;
> > +       struct rvtrace_component_id id;
> > +       u32 type_idx;
> > +       struct device dev;
> > +       bool ready;
> > +};
> > +
> > +#define to_rvtrace_component(__dev)    container_of_const(__dev, struc=
t rvtrace_component, dev)
> > +
> > +static inline void rvtrace_get_component(struct rvtrace_component *com=
p)
> > +{
> > +       get_device(&comp->dev);
> > +}
> > +
> > +static inline void rvtrace_put_component(struct rvtrace_component *com=
p)
> > +{
> > +       put_device(&comp->dev);
> > +}
> > +
> > +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_com=
ponent *comp,
> > +                                                   const struct rvtrac=
e_component_id *ids);
> > +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handle =
*fwnode);
> > +
> > +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset,
> > +                    int bit, int bitval, int timeout);
> > +int rvtrace_enable_component(struct rvtrace_component *comp);
> > +int rvtrace_disable_component(struct rvtrace_component *comp);
> > +
> > +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu);
> > +
> > +struct rvtrace_component *rvtrace_register_component(struct rvtrace_pl=
atform_data *pdata);
> > +void rvtrace_unregister_component(struct rvtrace_component *comp);
> > +
> > +/**
> > + * struct rvtrace_driver - Representation of a RISC-V trace driver
> > + * id_table: Table to match components handled by the driver
> > + * probe:    Driver probe() function
> > + * remove:   Driver remove() function
> > + * driver:   Device driver instance
> > + */
> > +struct rvtrace_driver {
> > +       const struct rvtrace_component_id *id_table;
> > +       int                     (*probe)(struct rvtrace_component *comp=
);
> > +       void                    (*remove)(struct rvtrace_component *com=
p);
> > +       struct device_driver    driver;
> > +};
> > +
> > +#define to_rvtrace_driver(__drv)   \
> > +       ((__drv) ? container_of_const((__drv), struct rvtrace_driver, d=
river) : NULL)
> > +
> > +extern struct platform_driver rvtrace_platform_driver;
> > +
> > +int __rvtrace_register_driver(struct module *owner, struct rvtrace_dri=
ver *rtdrv);
> > +#define rvtrace_register_driver(driver) __rvtrace_register_driver(THIS=
_MODULE, driver)
> > +static inline void rvtrace_unregister_driver(struct rvtrace_driver *rt=
drv)
> > +{
> > +       if (rtdrv)
> > +               driver_unregister(&rtdrv->driver);
> > +}
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

