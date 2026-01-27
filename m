Return-Path: <devicetree+bounces-259873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IyfH6eteGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:20:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C84639438B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:20:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A05F53016491
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F6D34C808;
	Tue, 27 Jan 2026 12:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EOkBNLAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB173491D3
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516452; cv=none; b=by4CwdEPtlZ18tDcgPGSFhR/56rKJ1TgwjX3mkKGJ4PvKW+rvaGJZYq8BYp0NSZrnhR7+E59nysWsybIFdlSY+wASFiIHMlxcD1TnWJ/uRQaEvL05RYCqAJuL3xQGyYs3Pl6quUgPRzXHqwPli28d2OnBVCzg3zffhSn6YkChto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516452; c=relaxed/simple;
	bh=Fii4+8iGHzvPtC9ovOHuoHbOO2P4nBRRQxuAIUiXZys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O6QcmsPWl5CwFOU35SXQvEluM1WKOICOsE1+5vvBWPUIfa4srzMAbPFlQ37+1vBmXnMEiC5U1nz7x6KEPHUJGuQTI1ubHqIlDeTuWvAEmK8VQ+Az8SbCNfTsTsbgk3Zb6jrw98rkVkfPkB7aLOcssYcDUUonmYKK4ikcWmH5zp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EOkBNLAP; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34b75fba315so3322776a91.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769516449; x=1770121249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fih+roRLG40tyOk+XC1TwdnQrg+MZ7aSiedQ6Fqyf9k=;
        b=EOkBNLAPSmMOwqBClpFsYP30F8igKzKWO+HdLDD0xYlPQp1r94f70CLnk7MvyXQd6E
         GmFqE+lSXCE5PfauQp8uElQOIRBxb8u0a8Adbah1n6WHBvh04JLLqR4u+HaCewD5qXM9
         BAh8cD+4Iw2GgwZHkxVZZNBw1+fHT/V0DPnFdS01NayIvk+d7MaMA+AH2QKzEN95foag
         563JOVVoWfkX2+Wcz9ZyQLH04CpH3L1ig7GejWXzX7g/9XT+mmdKvBacMwhgluE7fsv5
         XoFHGXYSJCvfMlvGpdpLe2MI4vbyz55OoxxAJU7Hr6Omd6gtCS+hH0QRtJE8Wou/89E2
         PIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516449; x=1770121249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fih+roRLG40tyOk+XC1TwdnQrg+MZ7aSiedQ6Fqyf9k=;
        b=rjtBoIQUFMIOcgFAlrEX+JrOqggxK8UePt+3etGuXfoxI9GRwb33qifMsjlpe5X5gG
         nRoXoncj3+UhDb0GTzS5CCs7CWqKJANQVuan6ttJ3IrA2Nv93gkpsdtXzfbcKGPhKkjh
         btpay6v0D3Lx34LGCAsCv68i4mdo0pQCAO+gyUKqN82roV8kxxW2sDtaPbfxwzgzSmeM
         PZ+cfGD7U9IRd/aWkoqO0h3xuHRdarx7Kh52QUCigFP0AuAA1G/5+OA+cmGVb5gQS+g7
         D8Ts3vIEHqmxBdV6X9DLkfbhF06HMxqIkkxWbwxRpJi2LtMZSWm/KkpKmHMwXZCnLrPZ
         d6xA==
X-Forwarded-Encrypted: i=1; AJvYcCXTh67a7X1oXrcqy5WKFmgP2a4Raex4D8GqeuLhj9Ac8lpU0O5QgUHVd/qxcLCaCVbZdLvOsxGQoceX@vger.kernel.org
X-Gm-Message-State: AOJu0YybasO6S3NBxXyrGNTI6F/xFduzM6tx0A1jGC+G5l7H2fmxwecX
	7tmnLz+VuT49BDIMH8q5ImclqCRmCLm4ERfuZIcYvXoKDKWLo2Jh8f87
X-Gm-Gg: AZuq6aIVhGRqpSEWXK4f/IKb7/ePE6uXUcnff7FsX2+fDByUNurNbdXc8louIMqPmm2
	Yhttg6laf9tymi7d8mQw9Woa3PIJcamdsRpy/5/PdiIjd+enqkHZ2SPDwPDkHuDYEtD9Z88+2MC
	Z+Nouee00xBZrqIeDUt7B7xynNOR/pI+/1bTMNw3iv8ZT8ptDCGbl+zRPn3DbQaKfy8OD2mSWAw
	s20AR5pLV1f6XvvjnGh9cYJtLpqGO2cmKWai4g8X+Ec5xGF6MaR299pjxhGsqxqBjOLXn5kLgUL
	oxa6X14WmWyUhtZZKX9KCjepBEnavDjCo64z/JGWSY/brXLhloyH3hTl4fgaViHgV5+TEnraCpa
	0rku6F0ZZ73i9lNppk+O6CUjoX06vB1QfRlOTn7Vnk7F8vWq8+VJQKlkPmstLcBifBAf7oiFJsJ
	/XBKJ2zfe6fJ/z
X-Received: by 2002:a17:90a:ee88:b0:353:3f04:1b78 with SMTP id 98e67ed59e1d1-353fecd096emr1055635a91.4.1769516449037;
        Tue, 27 Jan 2026 04:20:49 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536b373f19sm4662545a91.5.2026.01.27.04.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:20:48 -0800 (PST)
Message-ID: <dd4cad42-65c3-4479-bf0b-87f0943f1d9a@gmail.com>
Date: Tue, 27 Jan 2026 04:19:18 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/11] rvtrace: Initial implementation of driver framework
To: Anup Patel <anup@brainfault.org>, Vincent Chen <vincent.chen@sifive.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ian Rogers <irogers@google.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, Alexandre Ghiti <alex@ghiti.fr>,
 Atish Patra <atish.patra@linux.dev>, Peter Zijlstra <peterz@infradead.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Mayuresh Chitale <mchitale@ventanamicro.com>, Ingo Molnar
 <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Mayuresh Chitale <mchitale@gmail.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>,
 Liang Kan <kan.liang@linux.intel.com>
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <20251002060732.100213-3-apatel@ventanamicro.com>
 <CABvJ_xgn__drv_oAFzEYdjwMBFGK1WnPs82Kh-5UtevEedNfeQ@mail.gmail.com>
 <CAAhSdy1SuNrkJGih++V7F9jPb_5hfM9_T29A63kQB-dhMJthjw@mail.gmail.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <CAAhSdy1SuNrkJGih++V7F9jPb_5hfM9_T29A63kQB-dhMJthjw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259873-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ventanamicro.com,kernel.org,sifive.com,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,arm.com,vger.kernel.org,ghiti.fr,linux.dev,infradead.org,intel.com,redhat.com,gmail.com,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ventanamicro.com:email,perf.data:url]
X-Rspamd-Queue-Id: C84639438B
X-Rspamd-Action: no action

Hi Anup, Vincent,

I'm an active user of HiFive Premier P550. I've got full system stack trace
collection and decoding working with:

https://github.com/ganboing/riscv-trace-umd
https://github.com/ganboing/libnexus-rv

Hence, I'm fully aware of the situation, and the spec differences between
the pre-ratified spec (sifive) and the ratified one. I see the following
path forward:

- Still prioritize the support for ratified spec, and add the funnel comp.
   Once rvtrace for 1.0 is in, then we can start working on supporting the
   pre-ratified ones. There aren't many people interested in reviewing it,
   except Nutty, Rob and me, and I'm the only one reviewing the riscv trace
   related code, so please start reviewing it if you can or get more folks.
   Latest is v2: https://lore.kernel.org/all/20251101154245.162492-1-apatel@ventanamicro.com/

- For pre-ratified trace systems such as the one in p550, I agree with
   most of the comments from you and Anup. I want to add:

Specifically for the "Sifive PMU" you are talking about, I don't think
it's needed. I know p550 support ICT (In-Circuit Trace), which I assume
is the "custom event" you were talking about. But still, they are encoded
in N-trace format. I think this is closely related to the upcoming event
trace spec, where you only enable a subset of messages during trace to
capture events, rather than the whole control flow. Thus, we'll need a
more generic way of dealing with it. I'd like to propose that we embed
some crucial trace impl/runtime parameters in the metadata when producing
perf.data E.g., the trace format (e-trace/n-trace) for sure, so that from
a perf.data, it can be decoded anywhere without specifying other params.
I know a typical N-trace may not need any parameters except the length of
srcID (trTeSrcBits), but clearly E-trace would need more, and regarding
event trace, we can, say, put the events enabled and some vendor specific
info there. For trace collection (invoking perf), these vendor specific
configuration can be passed in some vendor parameters/flags.

I'll closely follow this series, and I'll jump in for the p550 work if my
time permits. This p550 (EIC7700) is the only silicon with N-trace that I
can get my hands on, so in fact I'll need it to do a real E2E testing of
rvtrace. BTW, beware that the p550 (EIC7700) trace does not strictly
follow RISC-V-Trace-Control-Interface-Proposed-20200612.pdf. Hence, you
actually need to refer to
https://github.com/eswincomputing/EIC7700X-SoC-Technical-Reference-Manual/releases/download/v1.0.0-20250103/EIC7700X_SoC_Technical_Reference_Manual_Part1.pdf
Chapter 3.4.1.19

Bo

On 1/26/26 05:36, Anup Patel wrote:
> On Wed, Jan 21, 2026 at 1:21 PM Vincent Chen <vincent.chen@sifive.com> wrote:
>>
>> Hi Anup,
>>
>> Thank you for providing the RVtrace infrastructure in Linux. It is great
>> to see support for manipulating RISC-V trace components via the Linux
>> perf tool.
>>
>> SiFive provides a similar instruction trace specification that allows
>> users to collect processor execution history and other events on SiFive
>> platforms. This specification is implemented on the HiFive Premier P550
>> board. The specification is available here:
>> https://lists.riscv.org/g/tech-nexus/files/RISC-V-Trace-Control-Interface-Proposed-20200612.pdf
>>
>> The fundamental concepts behind both specifications are aligned:
>> 1. Both instruction trace systems are composed of Trace Encoders, Trace
>>     Funnels, and Trace Sinks.
>>     a. Trace encoder: Each hart has its own trace encoder. It monitors
>>        the ingress port to record addresses where program flow
>>        discontinuities occur. It compresses the log using either the
>>        Efficient Trace for RISC-V or RISC-V N-Trace specification
>>        (SiFive encoders support Nexus-based trace only) and transmits it
>>        to a downstream Trace Funnel or Sink.
>>     b. Trace funnel: Functionally identical in both systems, the funnel
>>        aggregates traces from multiple inputs (encoders or other funnels)
>>        and forwards the combined stream to a designated sink.
>>     c. Trace sink: Both specifications support SRAM, System Memory, PIB,
>>        and ATB Bridge sinks.
>>
>> 2. The control flow for starting and stopping recording is also consistent:
>>     a. Start tracing: Proceed from the downstream sink up to the trace
>>        encoder to ensure sinks are ready to capture logs.
>>     b. Stop tracing: Proceed from the trace encoder down to the sink to
>>        ensure all logs are flushed.
> 
> It's good that at high-level the SiFive trace is close to the ratified RISC-V
> trace so we won't have major re-work in the rvtrace framework.
> 
>>
>> However, these two specifications have some differences in implementation,
>> primarily in:
>> 1. MMIO Register Definitions: While functionally similar, the register
>>     layouts for SiFive encoders and funnels differ from the RISC-V
>>     standard.
> 
> The rvtrace framework (particularly rvtrace_register_component()) implicitly
> accesses few registers assuming components are RISC-V trace compliant
> which will break for SiFive trace components. I will try to make the rvtrace
> framework a little more generic in the next revision.
> 
>> 2. Lack of Independent Sink Components: In the SiFive implementation,
>>     sink configuration registers are embedded within the trace encoder and
>>     funnel MMIO regions, rather than existing as standalone components.
> 
> This is going to be the case for the self-hosted trace as well so this
> aspect needs to be addressed anyway in the future.
> 
>> 3. Trace Path configuration:
>>     a. RISC-V trace component is allowed to pass down the trace log to a
>>        single or multiple next-level trace components, depending on the HW
>>        capabilities and connection. This trace component cannot configure
>>        the output target via the MMIO register, but the next-level trace
>>        component has the ability to disable the inputs from a specific
>>        trace component.
>>     b. The SiFive trace component can only output the trace log to a
>>        designated sink, which is specified in the corresponding MMIO
>>        register. The designated sink cannot be configured to disable any
>>        input.
>> 4. SiFive customer feature: SiFive platforms include custom event
>>     collection capabilities that require a dedicated PMU registration to
>>     expose via the Linux perf tool.
>>
>> Given the similarities in control flow, we propose integrating the
>> SiFive trace driver into your RVtrace infrastructure to avoid code
>> duplication. Below is our proposed integration approach:
>>
>> 1. DT File (Device Tree)
>>     - Inherit the current dt-bindings for RISC-V trace components,
>>       specifically the in-ports and out-ports descriptions for topology.
>>     - Add "sifive,trace-component" to the compatible string of SiFive
>>       nodes.
> 
> New compatible string is mandatory because the SiFive trace
> component is not directly compatible with the RISC-V trace component.
> 
>>     - Add a new DT property to indicate the specific type of SiFive trace
>>       component. This is necessary because the corresponding register in
>>       the SiFive specification does not expose the component's type
>>       (Encoder/Funnel) to software.
> 
> Rather than new DT property, I would suggest using
> separate compatible strings (such as sifive,trace-encoder
> and sifive,trace-funnel or something similar).
> 
>> 2. Perf Tool
>>     - Register a new perf PMU specifically for SiFive trace. This also
>>       allows us to define custom event configurations for SiFive-specific
>>       features.
>>     - The Perf tool will support both PMUs simultaneously. The final
>>       selected operating PMU depends on the PMU name in the perf command
>>       and the platform capability.
>>     - Leverage the callback functions registered to "struct auxtrace_record"
>>       as much as possible.
> 
> IMO, a separate perf PMU instance for SiFive should be the
> last option. This certainly needs more brainstorming in the
> RISE kernel working group.
> 
>> 3. Linux Device Driver
>>     - Device Probe:
>>       - Add "sifive,trace-component" to rvtrace_platform_match[] to
>>         enable rvtrace_platform_probe() to support SiFive trace
>>         components.
>>       - Update rvtrace_register_component() to support registering
>>         SiFive encoders and funnels to the rvtrace bus.
>>       - Plan to let the SiFive trace encoder and funnel share the same
>>         type ID as RISC-V. In this condition, to enable the driver to
>>         distinguish between SiFive and RISC-V hardware, it would be
>>         necessary to add a new vendor ID field into
>>         "struct rvtrace_component_id".
>>     - Driver Implementations:
>>       - Like other drivers of RISC-V trace components, the SiFive encoder
>>         and funnel driver will implement the required functions in the
>>         rvtrace_driver.
>>     - Trace Delivery Path (Encoder to Sink):
>>       - This infrastructure can be used in the same way to establish the
>>         topology of the entire trace system via the DT file.
>>       - Based on the same topology descriptions, the trace delivery path
>>         can use the same logic to create.
>>       - The primary difference lies in the trace path configuration. To
>>         address this, we propose delegating the path configuration logic
>>         to the .start() and .stop() callbacks in "struct rvtrace_driver".
>>         This allows the routing implementation to be encapsulated within
>>         the specific driver. To support this, we would need to update the
>>         definition of the .start() and .stop() callbacks to accept the adjacent
>>         node information as arguments, allowing the driver to perform the
>>         necessary MMIO writes for routing.
>>
>>     - Sink Manipulation:
>>       - Standard RISC-V: Managed through dedicated drivers (init during
>>         probe, access via callbacks during dump).
>>       - SiFive Implementation: Sink regs are embedded in Encoder/Funnel
>>         MMIO.
>>       - We propose that the SiFive encoder and funnel drivers:
>>         a. Initialize their supported sinks during the driver probe
>>            sequence.
>>         b. Implement and register the appropriate sink access callbacks,
>>            ensuring they align with the standard perf log dumping
>>            workflow.
>>
>> Do you think the proposed solution is feasible? I would appreciate your
>> feedback.
> 
> Overall, I support the idea of accommodating SiFive trace under
> the common rvtrace infrastructure because we will be anyway
> doing the same thing for the upcoming self-hosted trace.
> 
> At this point, I can only try to ensure the rvtrace framework is
> generic enough. Dealing with SiFive specific fitment issues
> should be done incrementally as a separate exercise.
> 
> Regards,
> Anup
> 
>>
>> Best regards,
>> Vincent
>>
>> On Thu, Oct 2, 2025 at 2:09 PM Anup Patel <apatel@ventanamicro.com> wrote:
>>>
>>> The RISC-V Trace Control Interface Specification [1] defines a standard
>>> way of implementing RISC-V trace related modular components irrespective
>>> to underlying trace format (E-trace or N-trace). These RISC-V trace
>>> components are organized in a graph-like topology where each RISC-V
>>> hart has its own RISC-V trace encoder component.
>>>
>>> Implement a basic driver framework for RISC-V trace where RISC-V trace
>>> components are instantiated by a common platform driver and a separate
>>> RISC-V trace driver for each type of RISC-V trace component.
>>>
>>> [1] https://github.com/riscv-non-isa/tg-nexus-trace/releases/download/1.0_Ratified/RISC-V-Trace-Control-Interface.pdf
>>>
>>> Co-developed-by: Mayuresh Chitale <mchitale@ventanamicro.com>
>>> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
>>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>>> ---
>>>   drivers/Makefile                             |   1 +
>>>   drivers/hwtracing/Kconfig                    |   2 +
>>>   drivers/hwtracing/rvtrace/Kconfig            |  16 +
>>>   drivers/hwtracing/rvtrace/Makefile           |   4 +
>>>   drivers/hwtracing/rvtrace/rvtrace-core.c     | 484 +++++++++++++++++++
>>>   drivers/hwtracing/rvtrace/rvtrace-platform.c | 174 +++++++
>>>   include/linux/rvtrace.h                      | 272 +++++++++++
>>>   7 files changed, 953 insertions(+)
>>>   create mode 100644 drivers/hwtracing/rvtrace/Kconfig
>>>   create mode 100644 drivers/hwtracing/rvtrace/Makefile
>>>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-core.c
>>>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-platform.c
>>>   create mode 100644 include/linux/rvtrace.h
>>>
>>> diff --git a/drivers/Makefile b/drivers/Makefile
>>> index b5749cf67044..466a55580f60 100644
>>> --- a/drivers/Makefile
>>> +++ b/drivers/Makefile
>>> @@ -178,6 +178,7 @@ obj-$(CONFIG_CORESIGHT)             += hwtracing/coresight/
>>>   obj-y                          += hwtracing/intel_th/
>>>   obj-$(CONFIG_STM)              += hwtracing/stm/
>>>   obj-$(CONFIG_HISI_PTT)         += hwtracing/ptt/
>>> +obj-$(CONFIG_RVTRACE)          += hwtracing/rvtrace/
>>>   obj-y                          += android/
>>>   obj-$(CONFIG_NVMEM)            += nvmem/
>>>   obj-$(CONFIG_FPGA)             += fpga/
>>> diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
>>> index 911ee977103c..daeb38fe332d 100644
>>> --- a/drivers/hwtracing/Kconfig
>>> +++ b/drivers/hwtracing/Kconfig
>>> @@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
>>>
>>>   source "drivers/hwtracing/ptt/Kconfig"
>>>
>>> +source "drivers/hwtracing/rvtrace/Kconfig"
>>> +
>>>   endmenu
>>> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrace/Kconfig
>>> new file mode 100644
>>> index 000000000000..f8f6feea1953
>>> --- /dev/null
>>> +++ b/drivers/hwtracing/rvtrace/Kconfig
>>> @@ -0,0 +1,16 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +
>>> +menuconfig RVTRACE
>>> +       tristate "RISC-V Trace Support"
>>> +       depends on RISCV
>>> +       depends on OF
>>> +       default RISCV
>>> +       help
>>> +         This framework provides a kernel interface for the RISC-V trace
>>> +         drivers (including both e-trace and n-trace). It's intended to
>>> +         build a topological view of the RISC-V trace components and
>>> +         configure the right series of components when trace is enabled
>>> +         on a CPU.
>>> +
>>> +         To compile this driver as a module, choose M here: the module
>>> +         will be called rvtrace.
>>> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtrace/Makefile
>>> new file mode 100644
>>> index 000000000000..988525a379cf
>>> --- /dev/null
>>> +++ b/drivers/hwtracing/rvtrace/Makefile
>>> @@ -0,0 +1,4 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +
>>> +obj-$(CONFIG_RVTRACE) += rvtrace.o
>>> +rvtrace-y := rvtrace-core.o rvtrace-platform.o
>>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtracing/rvtrace/rvtrace-core.c
>>> new file mode 100644
>>> index 000000000000..52ea931745fc
>>> --- /dev/null
>>> +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
>>> @@ -0,0 +1,484 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
>>> + */
>>> +
>>> +#include <linux/cpumask.h>
>>> +#include <linux/delay.h>
>>> +#include <linux/export.h>
>>> +#include <linux/idr.h>
>>> +#include <linux/module.h>
>>> +#include <linux/mutex.h>
>>> +#include <linux/percpu.h>
>>> +#include <linux/rvtrace.h>
>>> +
>>> +/* Mutex to serialize component registration/unregistration */
>>> +static DEFINE_MUTEX(rvtrace_mutex);
>>> +
>>> +/* Per-CPU encoder instances */
>>> +static DEFINE_PER_CPU(struct rvtrace_component *, rvtrace_cpu_encoder);
>>> +
>>> +/* Component type based id generator */
>>> +struct rvtrace_type_idx {
>>> +       /* Lock to protect the type ID generator */
>>> +       struct mutex lock;
>>> +       struct idr idr;
>>> +};
>>> +
>>> +/* Array of component type based id generator */
>>> +static struct rvtrace_type_idx rvtrace_type_idx_array[RVTRACE_COMPONENT_TYPE_MAX];
>>> +
>>> +static int rvtrace_alloc_type_idx(struct rvtrace_component *comp)
>>> +{
>>> +       struct rvtrace_type_idx *rvidx = &rvtrace_type_idx_array[comp->id.type];
>>> +       int idx;
>>> +
>>> +       mutex_lock(&rvidx->lock);
>>> +       idx = idr_alloc(&rvidx->idr, comp, 0, 0, GFP_KERNEL);
>>> +       mutex_unlock(&rvidx->lock);
>>> +       if (idx < 0)
>>> +               return idx;
>>> +
>>> +       comp->type_idx = idx;
>>> +       return 0;
>>> +}
>>> +
>>> +static void rvtrace_free_type_idx(struct rvtrace_component *comp)
>>> +{
>>> +       struct rvtrace_type_idx *rvidx = &rvtrace_type_idx_array[comp->id.type];
>>> +
>>> +       mutex_lock(&rvidx->lock);
>>> +       idr_remove(&rvidx->idr, comp->type_idx);
>>> +       mutex_unlock(&rvidx->lock);
>>> +}
>>> +
>>> +static void __init rvtrace_init_type_idx(void)
>>> +{
>>> +       struct rvtrace_type_idx *rvidx;
>>> +       int i;
>>> +
>>> +       for (i = 0; i < RVTRACE_COMPONENT_TYPE_MAX; i++) {
>>> +               rvidx = &rvtrace_type_idx_array[i];
>>> +               mutex_init(&rvidx->lock);
>>> +               idr_init(&rvidx->idr);
>>> +       }
>>> +}
>>> +
>>> +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_component *comp,
>>> +                                                   const struct rvtrace_component_id *ids)
>>> +{
>>> +       const struct rvtrace_component_id *id;
>>> +
>>> +       for (id = ids; id->version && id->type; id++) {
>>> +               if (comp->id.type == id->type &&
>>> +                   comp->id.version == id->version)
>>> +                       return id;
>>> +       }
>>> +
>>> +       return NULL;
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_match_id);
>>> +
>>> +static int rvtrace_match_device(struct device *dev, const struct device_driver *drv)
>>> +{
>>> +       const struct rvtrace_driver *rtdrv = to_rvtrace_driver(drv);
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +
>>> +       return rvtrace_match_id(comp, rtdrv->id_table) ? 1 : 0;
>>> +}
>>> +
>>> +static int rvtrace_probe(struct device *dev)
>>> +{
>>> +       const struct rvtrace_driver *rtdrv = to_rvtrace_driver(dev->driver);
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +       int ret = -ENODEV;
>>> +
>>> +       if (!rtdrv->probe)
>>> +               return ret;
>>> +
>>> +       ret = rtdrv->probe(comp);
>>> +       if (!ret)
>>> +               comp->ready = true;
>>> +
>>> +       return ret;
>>> +}
>>> +
>>> +static void rvtrace_remove(struct device *dev)
>>> +{
>>> +       const struct rvtrace_driver *rtdrv = to_rvtrace_driver(dev->driver);
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +
>>> +       comp->ready = false;
>>> +       if (rtdrv->remove)
>>> +               rtdrv->remove(comp);
>>> +}
>>> +
>>> +const struct bus_type rvtrace_bustype = {
>>> +       .name   = "rvtrace",
>>> +       .match  = rvtrace_match_device,
>>> +       .probe  = rvtrace_probe,
>>> +       .remove = rvtrace_remove,
>>> +};
>>> +
>>> +struct rvtrace_fwnode_match_data {
>>> +       struct fwnode_handle *fwnode;
>>> +       struct rvtrace_component *match;
>>> +};
>>> +
>>> +static int rvtrace_match_fwnode(struct device *dev, void *data)
>>> +{
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +       struct rvtrace_fwnode_match_data *d = data;
>>> +
>>> +       if (device_match_fwnode(&comp->dev, d->fwnode)) {
>>> +               d->match = comp;
>>> +               return 1;
>>> +       }
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handle *fwnode)
>>> +{
>>> +       struct rvtrace_fwnode_match_data d = { .fwnode = fwnode, .match = NULL };
>>> +       int ret;
>>> +
>>> +       ret = bus_for_each_dev(&rvtrace_bustype, NULL, &d, rvtrace_match_fwnode);
>>> +       if (ret < 0)
>>> +               return ERR_PTR(ret);
>>> +
>>> +       return d.match;
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_find_by_fwnode);
>>> +
>>> +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset,
>>> +                    int bit, int bitval, int timeout)
>>> +{
>>> +       int i = 10;
>>> +       u32 val;
>>> +
>>> +       while (i--) {
>>> +               val = rvtrace_read32(pdata, offset);
>>> +               if (((val >> bit) & 0x1) == bitval)
>>> +                       break;
>>> +               udelay(timeout);
>>> +       }
>>> +
>>> +       return (i < 0) ? -ETIMEDOUT : 0;
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_poll_bit);
>>> +
>>> +int rvtrace_enable_component(struct rvtrace_component *comp)
>>> +{
>>> +       u32 val;
>>> +
>>> +       val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
>>> +       val |= BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
>>> +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
>>> +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
>>> +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 1,
>>> +                               comp->pdata->control_poll_timeout_usecs);
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_enable_component);
>>> +
>>> +int rvtrace_disable_component(struct rvtrace_component *comp)
>>> +{
>>> +       u32 val;
>>> +
>>> +       val = rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET);
>>> +       val &= ~BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
>>> +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
>>> +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
>>> +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 0,
>>> +                               comp->pdata->control_poll_timeout_usecs);
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_disable_component);
>>> +
>>> +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu)
>>> +{
>>> +       if (!cpu_present(cpu))
>>> +               return NULL;
>>> +
>>> +       return per_cpu(rvtrace_cpu_encoder, cpu);
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_cpu_source);
>>> +
>>> +static int rvtrace_cleanup_inconn(struct device *dev, void *data)
>>> +{
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +       struct rvtrace_platform_data *pdata = comp->pdata;
>>> +       struct rvtrace_connection *conn = data;
>>> +       int i;
>>> +
>>> +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
>>> +               for (i = 0; i < pdata->nr_inconns; i++) {
>>> +                       if (pdata->inconns[i] != conn)
>>> +                               continue;
>>> +                       pdata->inconns[i] = NULL;
>>> +                       return 1;
>>> +               }
>>> +       }
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +static void rvtrace_cleanup_inconns_from_outconns(struct rvtrace_component *comp)
>>> +{
>>> +       struct rvtrace_platform_data *pdata = comp->pdata;
>>> +       struct rvtrace_connection *conn;
>>> +       int i;
>>> +
>>> +       lockdep_assert_held(&rvtrace_mutex);
>>> +
>>> +       for (i = 0; i < pdata->nr_outconns; i++) {
>>> +               conn = pdata->outconns[i];
>>> +               bus_for_each_dev(&rvtrace_bustype, NULL, conn, rvtrace_cleanup_inconn);
>>> +       }
>>> +}
>>> +
>>> +static int rvtrace_setup_inconn(struct device *dev, void *data)
>>> +{
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +       struct rvtrace_platform_data *pdata = comp->pdata;
>>> +       struct rvtrace_connection *conn = data;
>>> +       int i;
>>> +
>>> +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
>>> +               for (i = 0; i < pdata->nr_inconns; i++) {
>>> +                       if (pdata->inconns[i])
>>> +                               continue;
>>> +                       pdata->inconns[i] = conn;
>>> +                       return 1;
>>> +               }
>>> +       }
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +static int rvtrace_setup_inconns_from_outconns(struct rvtrace_component *comp)
>>> +{
>>> +       struct rvtrace_platform_data *pdata = comp->pdata;
>>> +       struct rvtrace_connection *conn;
>>> +       int i, ret;
>>> +
>>> +       lockdep_assert_held(&rvtrace_mutex);
>>> +
>>> +       for (i = 0; i < pdata->nr_outconns; i++) {
>>> +               conn = pdata->outconns[i];
>>> +               ret = bus_for_each_dev(&rvtrace_bustype, NULL, conn, rvtrace_setup_inconn);
>>> +               if (ret < 0) {
>>> +                       rvtrace_cleanup_inconns_from_outconns(comp);
>>> +                       return ret;
>>> +               }
>>> +       }
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +static void rvtrace_component_release(struct device *dev)
>>> +{
>>> +       struct rvtrace_component *comp = to_rvtrace_component(dev);
>>> +
>>> +       fwnode_handle_put(comp->dev.fwnode);
>>> +       rvtrace_free_type_idx(comp);
>>> +       kfree(comp);
>>> +}
>>> +
>>> +static int rvtrace_component_reset(struct rvtrace_platform_data *pdata)
>>> +{
>>> +       int ret;
>>> +
>>> +       rvtrace_write32(pdata, 0, RVTRACE_COMPONENT_CTRL_OFFSET);
>>> +       ret = rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
>>> +                              RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 0,
>>> +                              pdata->control_poll_timeout_usecs);
>>> +       if (ret)
>>> +               return ret;
>>> +
>>> +       rvtrace_write32(pdata, RVTRACE_COMPONENT_CTRL_ACTIVE_MASK,
>>> +                       RVTRACE_COMPONENT_CTRL_OFFSET);
>>> +       return rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
>>> +                               RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 1,
>>> +                               pdata->control_poll_timeout_usecs);
>>> +}
>>> +
>>> +struct rvtrace_component *rvtrace_register_component(struct rvtrace_platform_data *pdata)
>>> +{
>>> +       struct rvtrace_connection *conn;
>>> +       struct rvtrace_component *comp;
>>> +       u32 impl, type, major, minor;
>>> +       int i, ret = 0;
>>> +
>>> +       if (!pdata || !pdata->dev) {
>>> +               ret = -EINVAL;
>>> +               goto err_out;
>>> +       }
>>> +
>>> +       for (i = 0; i < pdata->nr_inconns; i++) {
>>> +               if (pdata->inconns[i]) {
>>> +                       ret = -EINVAL;
>>> +                       goto err_out;
>>> +               }
>>> +       }
>>> +
>>> +       for (i = 0; i < pdata->nr_outconns; i++) {
>>> +               conn = pdata->outconns[i];
>>> +               if (!conn || conn->src_port < 0 || conn->src_comp ||
>>> +                   !device_match_fwnode(pdata->dev, conn->src_fwnode) ||
>>> +                   conn->dest_port < 0 || !conn->dest_fwnode || !conn->dest_comp) {
>>> +                       ret = -EINVAL;
>>> +                       goto err_out;
>>> +               }
>>> +       }
>>> +
>>> +       ret = rvtrace_component_reset(pdata);
>>> +       if (ret)
>>> +               goto err_out;
>>> +
>>> +       impl = rvtrace_read32(pdata, RVTRACE_COMPONENT_IMPL_OFFSET);
>>> +       type = (impl >> RVTRACE_COMPONENT_IMPL_TYPE_SHIFT) &
>>> +               RVTRACE_COMPONENT_IMPL_TYPE_MASK;
>>> +       major = (impl >> RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT) &
>>> +               RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK;
>>> +       minor = (impl >> RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT) &
>>> +               RVTRACE_COMPONENT_IMPL_VERMINOR_MASK;
>>> +
>>> +       if (pdata->bound_cpu >= 0 && !cpu_present(pdata->bound_cpu)) {
>>> +               ret = -EINVAL;
>>> +               goto err_out;
>>> +       }
>>> +       if (type == RVTRACE_COMPONENT_TYPE_ENCODER && pdata->bound_cpu < 0) {
>>> +               ret = -EINVAL;
>>> +               goto err_out;
>>> +       }
>>> +
>>> +       comp = kzalloc(sizeof(*comp), GFP_KERNEL);
>>> +       if (!comp) {
>>> +               ret = -ENOMEM;
>>> +               goto err_out;
>>> +       }
>>> +       comp->pdata = pdata;
>>> +       comp->id.type = type;
>>> +       comp->id.version = rvtrace_component_mkversion(major, minor);
>>> +       ret = rvtrace_alloc_type_idx(comp);
>>> +       if (ret) {
>>> +               kfree(comp);
>>> +               goto err_out;
>>> +       }
>>> +
>>> +       comp->dev.parent = pdata->dev;
>>> +       comp->dev.coherent_dma_mask = pdata->dev->coherent_dma_mask;
>>> +       comp->dev.release = rvtrace_component_release;
>>> +       comp->dev.bus = &rvtrace_bustype;
>>> +       comp->dev.fwnode = fwnode_handle_get(dev_fwnode(pdata->dev));
>>> +       switch (comp->id.type) {
>>> +       case RVTRACE_COMPONENT_TYPE_ENCODER:
>>> +               dev_set_name(&comp->dev, "encoder-%d", comp->type_idx);
>>> +               break;
>>> +       case RVTRACE_COMPONENT_TYPE_FUNNEL:
>>> +               dev_set_name(&comp->dev, "funnel-%d", comp->type_idx);
>>> +               break;
>>> +       case RVTRACE_COMPONENT_TYPE_RAMSINK:
>>> +               dev_set_name(&comp->dev, "ramsink-%d", comp->type_idx);
>>> +               break;
>>> +       case RVTRACE_COMPONENT_TYPE_PIBSINK:
>>> +               dev_set_name(&comp->dev, "pibsink-%d", comp->type_idx);
>>> +               break;
>>> +       case RVTRACE_COMPONENT_TYPE_ATBBRIDGE:
>>> +               dev_set_name(&comp->dev, "atbbridge-%d", comp->type_idx);
>>> +               break;
>>> +       default:
>>> +               dev_set_name(&comp->dev, "type%d-%d", comp->id.type, comp->type_idx);
>>> +               break;
>>> +       }
>>> +
>>> +       mutex_lock(&rvtrace_mutex);
>>> +
>>> +       ret = device_register(&comp->dev);
>>> +       if (ret) {
>>> +               put_device(&comp->dev);
>>> +               goto err_out_unlock;
>>> +       }
>>> +
>>> +       for (i = 0; i < pdata->nr_outconns; i++) {
>>> +               conn = pdata->outconns[i];
>>> +               conn->src_comp = comp;
>>> +       }
>>> +
>>> +       ret = rvtrace_setup_inconns_from_outconns(comp);
>>> +       if (ret < 0) {
>>> +               device_unregister(&comp->dev);
>>> +               goto err_out_unlock;
>>> +       }
>>> +
>>> +       if (comp->id.type == RVTRACE_COMPONENT_TYPE_ENCODER) {
>>> +               rvtrace_get_component(comp);
>>> +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) = comp;
>>> +       }
>>> +
>>> +       mutex_unlock(&rvtrace_mutex);
>>> +
>>> +       return comp;
>>> +
>>> +err_out_unlock:
>>> +       mutex_unlock(&rvtrace_mutex);
>>> +err_out:
>>> +       return ERR_PTR(ret);
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_register_component);
>>> +
>>> +void rvtrace_unregister_component(struct rvtrace_component *comp)
>>> +{
>>> +       struct rvtrace_component *c;
>>> +
>>> +       mutex_lock(&rvtrace_mutex);
>>> +
>>> +       if (comp->id.type == RVTRACE_COMPONENT_TYPE_ENCODER) {
>>> +               c = per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu);
>>> +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) = NULL;
>>> +               rvtrace_put_component(c);
>>> +       }
>>> +
>>> +       rvtrace_cleanup_inconns_from_outconns(comp);
>>> +       device_unregister(&comp->dev);
>>> +
>>> +       mutex_unlock(&rvtrace_mutex);
>>> +}
>>> +EXPORT_SYMBOL_GPL(rvtrace_unregister_component);
>>> +
>>> +int __rvtrace_register_driver(struct module *owner, struct rvtrace_driver *rtdrv)
>>> +{
>>> +       rtdrv->driver.owner = owner;
>>> +       rtdrv->driver.bus = &rvtrace_bustype;
>>> +
>>> +       return driver_register(&rtdrv->driver);
>>> +}
>>> +EXPORT_SYMBOL_GPL(__rvtrace_register_driver);
>>> +
>>> +static int __init rvtrace_init(void)
>>> +{
>>> +       int ret;
>>> +
>>> +       rvtrace_init_type_idx();
>>> +
>>> +       ret = bus_register(&rvtrace_bustype);
>>> +       if (ret)
>>> +               return ret;
>>> +
>>> +       ret = platform_driver_register(&rvtrace_platform_driver);
>>> +       if (ret) {
>>> +               bus_unregister(&rvtrace_bustype);
>>> +               return ret;
>>> +       }
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +static void __exit rvtrace_exit(void)
>>> +{
>>> +       platform_driver_unregister(&rvtrace_platform_driver);
>>> +       bus_unregister(&rvtrace_bustype);
>>> +}
>>> +
>>> +module_init(rvtrace_init);
>>> +module_exit(rvtrace_exit);
>>> diff --git a/drivers/hwtracing/rvtrace/rvtrace-platform.c b/drivers/hwtracing/rvtrace/rvtrace-platform.c
>>> new file mode 100644
>>> index 000000000000..a110ff1f2f08
>>> --- /dev/null
>>> +++ b/drivers/hwtracing/rvtrace/rvtrace-platform.c
>>> @@ -0,0 +1,174 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
>>> + */
>>> +
>>> +#include <linux/device.h>
>>> +#include <linux/io.h>
>>> +#include <linux/of.h>
>>> +#include <linux/of_graph.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/property.h>
>>> +#include <linux/rvtrace.h>
>>> +#include <linux/types.h>
>>> +
>>> +static int rvtrace_of_parse_outconns(struct rvtrace_platform_data *pdata)
>>> +{
>>> +       struct device_node *parent, *ep_node, *rep_node, *rdev_node;
>>> +       struct rvtrace_connection *conn;
>>> +       struct of_endpoint ep, rep;
>>> +       int ret = 0, i = 0;
>>> +
>>> +       parent = of_get_child_by_name(dev_of_node(pdata->dev), "out-ports");
>>> +       if (!parent)
>>> +               return 0;
>>> +
>>> +       pdata->nr_outconns = of_graph_get_endpoint_count(parent);
>>> +       pdata->outconns = devm_kcalloc(pdata->dev, pdata->nr_outconns,
>>> +                                      sizeof(*pdata->outconns), GFP_KERNEL);
>>> +       if (!pdata->outconns) {
>>> +               ret = -ENOMEM;
>>> +               goto done;
>>> +       }
>>> +
>>> +       for_each_endpoint_of_node(parent, ep_node) {
>>> +               conn = devm_kzalloc(pdata->dev, sizeof(*conn), GFP_KERNEL);
>>> +               if (!conn) {
>>> +                       of_node_put(ep_node);
>>> +                       ret = -ENOMEM;
>>> +                       break;
>>> +               }
>>> +
>>> +               ret = of_graph_parse_endpoint(ep_node, &ep);
>>> +               if (ret) {
>>> +                       of_node_put(ep_node);
>>> +                       break;
>>> +               }
>>> +
>>> +               rep_node = of_graph_get_remote_endpoint(ep_node);
>>> +               if (!rep_node) {
>>> +                       ret = -ENODEV;
>>> +                       of_node_put(ep_node);
>>> +                       break;
>>> +               }
>>> +               rdev_node = of_graph_get_port_parent(rep_node);
>>> +
>>> +               ret = of_graph_parse_endpoint(rep_node, &rep);
>>> +               if (ret) {
>>> +                       of_node_put(ep_node);
>>> +                       break;
>>> +               }
>>> +
>>> +               conn->src_port = ep.port;
>>> +               conn->src_fwnode = dev_fwnode(pdata->dev);
>>> +               /* The 'src_comp' is set by rvtrace_register_component() */
>>> +               conn->src_comp = NULL;
>>> +               conn->dest_port = rep.port;
>>> +               conn->dest_fwnode = of_fwnode_handle(rdev_node);
>>> +               conn->dest_comp = rvtrace_find_by_fwnode(conn->dest_fwnode);
>>> +               if (!conn->dest_comp) {
>>> +                       ret = -EPROBE_DEFER;
>>> +                       of_node_put(ep_node);
>>> +               }
>>> +
>>> +               pdata->outconns[i] = conn;
>>> +               i++;
>>> +       }
>>> +
>>> +done:
>>> +       of_node_put(parent);
>>> +       return ret;
>>> +}
>>> +
>>> +static int rvtrace_of_parse_inconns(struct rvtrace_platform_data *pdata)
>>> +{
>>> +       struct device_node *parent;
>>> +       int ret = 0;
>>> +
>>> +       parent = of_get_child_by_name(dev_of_node(pdata->dev), "in-ports");
>>> +       if (!parent)
>>> +               return 0;
>>> +
>>> +       pdata->nr_inconns = of_graph_get_endpoint_count(parent);
>>> +       pdata->inconns = devm_kcalloc(pdata->dev, pdata->nr_inconns,
>>> +                                     sizeof(*pdata->inconns), GFP_KERNEL);
>>> +       if (!pdata->inconns)
>>> +               ret = -ENOMEM;
>>> +
>>> +       of_node_put(parent);
>>> +       return ret;
>>> +}
>>> +
>>> +static int rvtrace_platform_probe(struct platform_device *pdev)
>>> +{
>>> +       struct rvtrace_platform_data *pdata;
>>> +       struct device *dev = &pdev->dev;
>>> +       struct rvtrace_component *comp;
>>> +       struct device_node *node;
>>> +       struct resource *res;
>>> +       int ret;
>>> +
>>> +       pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
>>> +       if (!pdata)
>>> +               return -ENOMEM;
>>> +       pdata->dev = dev;
>>> +       pdata->impid = RVTRACE_COMPONENT_IMPID_UNKNOWN;
>>> +
>>> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>>> +       if (!res)
>>> +               return -EINVAL;
>>> +
>>> +       pdata->io_mem = true;
>>> +       pdata->base = devm_ioremap(&pdev->dev, res->start, resource_size(res));
>>> +       if (!pdata->base)
>>> +               return dev_err_probe(dev, -ENOMEM, "failed to ioremap %pR\n", res);
>>> +
>>> +       pdata->bound_cpu = -1;
>>> +       node = of_parse_phandle(dev_of_node(dev), "cpu", 0);
>>> +       if (node) {
>>> +               ret = of_cpu_node_to_id(node);
>>> +               of_node_put(node);
>>> +               if (ret < 0)
>>> +                       return dev_err_probe(dev, ret, "failed to get CPU id for %pOF\n", node);
>>> +               pdata->bound_cpu = ret;
>>> +       }
>>> +
>>> +       /* Default control poll timeout */
>>> +       pdata->control_poll_timeout_usecs = 10;
>>> +
>>> +       ret = rvtrace_of_parse_outconns(pdata);
>>> +       if (ret)
>>> +               return dev_err_probe(dev, ret, "failed to parse output connections\n");
>>> +
>>> +       ret = rvtrace_of_parse_inconns(pdata);
>>> +       if (ret)
>>> +               return dev_err_probe(dev, ret, "failed to parse input connections\n");
>>> +
>>> +       comp = rvtrace_register_component(pdata);
>>> +       if (IS_ERR(comp))
>>> +               return PTR_ERR(comp);
>>> +
>>> +       platform_set_drvdata(pdev, comp);
>>> +       return 0;
>>> +}
>>> +
>>> +static void rvtrace_platform_remove(struct platform_device *pdev)
>>> +{
>>> +       struct rvtrace_component *comp = platform_get_drvdata(pdev);
>>> +
>>> +       rvtrace_unregister_component(comp);
>>> +}
>>> +
>>> +static const struct of_device_id rvtrace_platform_match[] = {
>>> +       { .compatible = "riscv,trace-component" },
>>> +       {}
>>> +};
>>> +
>>> +struct platform_driver rvtrace_platform_driver = {
>>> +       .driver = {
>>> +               .name           = "rvtrace",
>>> +               .of_match_table = rvtrace_platform_match,
>>> +       },
>>> +       .probe = rvtrace_platform_probe,
>>> +       .remove = rvtrace_platform_remove,
>>> +};
>>> diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
>>> new file mode 100644
>>> index 000000000000..04eb03e62601
>>> --- /dev/null
>>> +++ b/include/linux/rvtrace.h
>>> @@ -0,0 +1,272 @@
>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>> +/*
>>> + * Copyright (c) 2025 Ventana Micro Systems Inc.
>>> + */
>>> +
>>> +#ifndef __LINUX_RVTRACE_H__
>>> +#define __LINUX_RVTRACE_H__
>>> +
>>> +#include <linux/device.h>
>>> +#include <linux/io.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/property.h>
>>> +#include <linux/types.h>
>>> +
>>> +/* Control register common across all RISC-V trace components */
>>> +#define RVTRACE_COMPONENT_CTRL_OFFSET          0x000
>>> +#define RVTRACE_COMPONENT_CTRL_ACTIVE_MASK     0x1
>>> +#define RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT    0
>>> +#define RVTRACE_COMPONENT_CTRL_ENABLE_MASK     0x1
>>> +#define RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT    1
>>> +
>>> +/* Implementation register common across all RISC-V trace components */
>>> +#define RVTRACE_COMPONENT_IMPL_OFFSET          0x004
>>> +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK   0xf
>>> +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT  0
>>> +#define RVTRACE_COMPONENT_IMPL_VERMINOR_MASK   0xf
>>> +#define RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT  4
>>> +#define RVTRACE_COMPONENT_IMPL_TYPE_MASK       0xf
>>> +#define RVTRACE_COMPONENT_IMPL_TYPE_SHIFT      8
>>> +
>>> +/* Possible component types defined by the RISC-V Trace Control Interface */
>>> +enum rvtrace_component_type {
>>> +       RVTRACE_COMPONENT_TYPE_RESV0,
>>> +       RVTRACE_COMPONENT_TYPE_ENCODER, /* 0x1 */
>>> +       RVTRACE_COMPONENT_TYPE_RESV2,
>>> +       RVTRACE_COMPONENT_TYPE_RESV3,
>>> +       RVTRACE_COMPONENT_TYPE_RESV4,
>>> +       RVTRACE_COMPONENT_TYPE_RESV5,
>>> +       RVTRACE_COMPONENT_TYPE_RESV6,
>>> +       RVTRACE_COMPONENT_TYPE_RESV7,
>>> +       RVTRACE_COMPONENT_TYPE_FUNNEL, /* 0x8 */
>>> +       RVTRACE_COMPONENT_TYPE_RAMSINK, /* 0x9 */
>>> +       RVTRACE_COMPONENT_TYPE_PIBSINK, /* 0xA */
>>> +       RVTRACE_COMPONENT_TYPE_RESV11,
>>> +       RVTRACE_COMPONENT_TYPE_RESV12,
>>> +       RVTRACE_COMPONENT_TYPE_RESV13,
>>> +       RVTRACE_COMPONENT_TYPE_ATBBRIDGE, /* 0xE */
>>> +       RVTRACE_COMPONENT_TYPE_RESV15,
>>> +       RVTRACE_COMPONENT_TYPE_MAX
>>> +};
>>> +
>>> +/* Encoding/decoding macros for RISC-V trace component version */
>>> +#define rvtrace_component_version_major(__version)     \
>>> +       (((__version) >> 16) & 0xffff)
>>> +#define rvtrace_component_version_minor(__version)     \
>>> +       ((__version) & 0xffff)
>>> +#define rvtrace_component_mkversion(__major, __minor)  \
>>> +       ((((__major) & 0xffff) << 16) | ((__minor) & 0xffff))
>>> +
>>> +/*
>>> + * Possible component implementation IDs discovered from DT or ACPI
>>> + * shared across the RISC-V trace drivers to infer trace parameters,
>>> + * quirks, and work-arounds. These component implementation IDs are
>>> + * internal to Linux and must not be exposed to user-space.
>>> + *
>>> + * The component implementation ID should be named as follows:
>>> + *    RVTRACE_COMPONENT_IMPID_<vendor>_<part>
>>> + */
>>> +enum rvtrace_component_impid {
>>> +       RVTRACE_COMPONENT_IMPID_UNKNOWN,
>>> +       RVTRACE_COMPONENT_IMPID_MAX
>>> +};
>>> +
>>> +/**
>>> + * struct rvtrace_connection - Representation of a physical connection between
>>> + * two RISC-V trace components.
>>> + * @src_port:    A connection's source port number.
>>> + * @src_fwnode:  Source component's fwnode handle..
>>> + * @src_comp:    Source component's pointer.
>>> + * @dest_port:   A connection's destination port number.
>>> + * @dest_fwnode: Destination component's fwnode handle.
>>> + * @dest_comp:   Destination component's pointer.
>>> + */
>>> +struct rvtrace_connection {
>>> +       int src_port;
>>> +       struct fwnode_handle *src_fwnode;
>>> +       int dest_port;
>>> +       struct fwnode_handle *dest_fwnode;
>>> +       struct rvtrace_component *src_comp;
>>> +       struct rvtrace_component *dest_comp;
>>> +};
>>> +
>>> +/**
>>> + * struct rvtrace_platform_data - Platform-level data for a RISC-V trace component
>>> + * discovered from DT or ACPI.
>>> + * @dev:         Parent device.
>>> + * @impid:       Component implementation ID
>>> + * @io_mem:      Flag showing whether component registers are memory mapped.
>>> + * @base:        If io_mem == true then base address of the memory mapped registers.
>>> + * @read:        If io_mem == false then read register from the given "offset".
>>> + * @write:       If io_mem == false then write register to the given "offset".
>>> + * @bound_cpu:   CPU to which the component is bound. This should be -1 if
>>> + *               the component is not bound to any CPU. For encoder component
>>> + *               type this must not be -1.
>>> + * @nr_inconns:  Number of input connections.
>>> + * @inconns:     Array of pointers to input connections.
>>> + * @nr_outconns: Number of output connections.
>>> + * @outconns:    Array of pointers to output connections.
>>> + */
>>> +struct rvtrace_platform_data {
>>> +       struct device *dev;
>>> +
>>> +       enum rvtrace_component_impid impid;
>>> +
>>> +       bool io_mem;
>>> +       union {
>>> +               void __iomem *base;
>>> +               struct {
>>> +                       u32 (*read)(struct rvtrace_platform_data *pdata,
>>> +                                   u32 offset, bool relaxed);
>>> +                       void (*write)(struct rvtrace_platform_data *pdata,
>>> +                                     u32 val, u32 offset, bool relaxed);
>>> +               };
>>> +       };
>>> +
>>> +       int bound_cpu;
>>> +
>>> +       /* Delay in microseconds when polling control register bits */
>>> +       int control_poll_timeout_usecs;
>>> +
>>> +       /*
>>> +        * Platform driver must only populate empty pointer array without
>>> +        * any actual input connections.
>>> +        */
>>> +       unsigned int nr_inconns;
>>> +       struct rvtrace_connection **inconns;
>>> +
>>> +       /*
>>> +        * Platform driver must fully populate pointer array with individual
>>> +        * array elements pointing to actual output connections. The src_comp
>>> +        * of each output connection is automatically updated at the time of
>>> +        * registering component.
>>> +        */
>>> +       unsigned int nr_outconns;
>>> +       struct rvtrace_connection **outconns;
>>> +};
>>> +
>>> +static inline u32 rvtrace_read32(struct rvtrace_platform_data *pdata, u32 offset)
>>> +{
>>> +       if (likely(pdata->io_mem))
>>> +               return readl(pdata->base + offset);
>>> +
>>> +       return pdata->read(pdata, offset, false);
>>> +}
>>> +
>>> +static inline u32 rvtrace_relaxed_read32(struct rvtrace_platform_data *pdata, u32 offset)
>>> +{
>>> +       if (likely(pdata->io_mem))
>>> +               return readl_relaxed(pdata->base + offset);
>>> +
>>> +       return pdata->read(pdata, offset, true);
>>> +}
>>> +
>>> +static inline void rvtrace_write32(struct rvtrace_platform_data *pdata, u32 val, u32 offset)
>>> +{
>>> +       if (likely(pdata->io_mem))
>>> +               writel(val, pdata->base + offset);
>>> +       else
>>> +               pdata->write(pdata, val, offset, false);
>>> +}
>>> +
>>> +static inline void rvtrace_relaxed_write32(struct rvtrace_platform_data *pdata,
>>> +                                          u32 val, u32 offset)
>>> +{
>>> +       if (likely(pdata->io_mem))
>>> +               writel_relaxed(val, pdata->base + offset);
>>> +       else
>>> +               pdata->write(pdata, val, offset, true);
>>> +}
>>> +
>>> +static inline bool rvtrace_is_source(struct rvtrace_platform_data *pdata)
>>> +{
>>> +       return !pdata->nr_inconns ? true : false;
>>> +}
>>> +
>>> +static inline bool rvtrace_is_sink(struct rvtrace_platform_data *pdata)
>>> +{
>>> +       return !pdata->nr_outconns ? true : false;
>>> +}
>>> +
>>> +/**
>>> + * struct rvtrace_component_id - Details to identify or match a RISC-V trace component
>>> + * @type:      Type of the component
>>> + * @version:   Version of the component
>>> + * @data:      Data pointer for driver use
>>> + */
>>> +struct rvtrace_component_id {
>>> +       enum rvtrace_component_type type;
>>> +       u32 version;
>>> +       void *data;
>>> +};
>>> +
>>> +/**
>>> + * struct rvtrace_component - Representation of a RISC-V trace component
>>> + * pdata:    Pointer to underlying platform data
>>> + * id:       Details to match the component
>>> + * type_idx: Unique number based on component type
>>> + * dev:      Device instance
>>> + * ready:    Flag showing whether RISC-V trace driver was probed successfully
>>> + */
>>> +struct rvtrace_component {
>>> +       struct rvtrace_platform_data *pdata;
>>> +       struct rvtrace_component_id id;
>>> +       u32 type_idx;
>>> +       struct device dev;
>>> +       bool ready;
>>> +};
>>> +
>>> +#define to_rvtrace_component(__dev)    container_of_const(__dev, struct rvtrace_component, dev)
>>> +
>>> +static inline void rvtrace_get_component(struct rvtrace_component *comp)
>>> +{
>>> +       get_device(&comp->dev);
>>> +}
>>> +
>>> +static inline void rvtrace_put_component(struct rvtrace_component *comp)
>>> +{
>>> +       put_device(&comp->dev);
>>> +}
>>> +
>>> +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_component *comp,
>>> +                                                   const struct rvtrace_component_id *ids);
>>> +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handle *fwnode);
>>> +
>>> +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset,
>>> +                    int bit, int bitval, int timeout);
>>> +int rvtrace_enable_component(struct rvtrace_component *comp);
>>> +int rvtrace_disable_component(struct rvtrace_component *comp);
>>> +
>>> +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu);
>>> +
>>> +struct rvtrace_component *rvtrace_register_component(struct rvtrace_platform_data *pdata);
>>> +void rvtrace_unregister_component(struct rvtrace_component *comp);
>>> +
>>> +/**
>>> + * struct rvtrace_driver - Representation of a RISC-V trace driver
>>> + * id_table: Table to match components handled by the driver
>>> + * probe:    Driver probe() function
>>> + * remove:   Driver remove() function
>>> + * driver:   Device driver instance
>>> + */
>>> +struct rvtrace_driver {
>>> +       const struct rvtrace_component_id *id_table;
>>> +       int                     (*probe)(struct rvtrace_component *comp);
>>> +       void                    (*remove)(struct rvtrace_component *comp);
>>> +       struct device_driver    driver;
>>> +};
>>> +
>>> +#define to_rvtrace_driver(__drv)   \
>>> +       ((__drv) ? container_of_const((__drv), struct rvtrace_driver, driver) : NULL)
>>> +
>>> +extern struct platform_driver rvtrace_platform_driver;
>>> +
>>> +int __rvtrace_register_driver(struct module *owner, struct rvtrace_driver *rtdrv);
>>> +#define rvtrace_register_driver(driver) __rvtrace_register_driver(THIS_MODULE, driver)
>>> +static inline void rvtrace_unregister_driver(struct rvtrace_driver *rtdrv)
>>> +{
>>> +       if (rtdrv)
>>> +               driver_unregister(&rtdrv->driver);
>>> +}
>>> +
>>> +#endif
>>> --
>>> 2.43.0
>>>
>>>
>>> _______________________________________________
>>> linux-riscv mailing list
>>> linux-riscv@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


