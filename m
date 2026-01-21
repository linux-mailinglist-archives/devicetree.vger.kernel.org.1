Return-Path: <devicetree+bounces-257773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMWgCIuFcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1728353107
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:51:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BD1C626D54
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F43466B59;
	Wed, 21 Jan 2026 07:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ezVBs+4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7457248F68
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768981872; cv=pass; b=TTvJmC2u2rA/8oSjXOoEUaGLloNx3dkFF/h3AyKUz7/m2VrXGROGwL02Q9qQ5TsPa1gJa8CME0nzKMIsStS/bnIrPk1OtzvWkJ0ujs5xyuzrmIkgyeO9iH0TtAruP8zCJRH5YH7hlQVfpb57QDgh8jWigdSPo/A6XERrVy/a/9k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768981872; c=relaxed/simple;
	bh=CbyNxAFV4uR8Lk+WVc67zIIPFouiWCK0KN12f0ogODw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cCGJObIEGaQ2fCRsS5fdiRo754DurRqBADXx8kUmers2z9xYg/S3Ev0a42CuCq/Bn7yEKIRc7iMm3kMKsbnTpvTdHdomeVJqyXePy1bz3S0w1phjwuFQcOdgNJv6bLPDMzAF81KxGqBUEZmSeHjAtjFp5iqf8dpF3xV9BvKFKOg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ezVBs+4w; arc=pass smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7d11e2ee188so2146344a34.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:51:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768981864; cv=none;
        d=google.com; s=arc-20240605;
        b=LFnOeKlK/kH4zZT60s0WRcbxp9EhlLofGtxEF0JX4Lx9AEeT6miqLnGtrioOGC172z
         WvFWQLu0aGmrcpjFonYVbn0XIOT9EDB6ouHZCQmL2RLXsURTXwVLgj0BhY4ci2ndYgtE
         YqYmCKDMSQ2vKAbYKTRECmvxJOv24SWKD8YA2U2RQGinklQKfaak1vGuTzp4soJBZGrq
         68+N0vkNTgQkJgnaeEiv7aF8uD64HJsC7aj7INSlaV1yvkUpd/IPdq/467J8HR6KBvXW
         Lct769Nx0h8Dg5eLEc8PzjXHqj3y5PEVuuSOChHcnsvooIADd4DZbOK0bsct6n8RmPXa
         JptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=x9NsiVsf2a2v52VPxKjdRmolPIi5sBYLrwJiLHifyiQ=;
        fh=24qoCPQXSlvV6eR13x/cP4N6mm0HWAC8ZgMLVPMvK/8=;
        b=ArO7MJ7kjfdrsmr1aDCYjHhd1keb8GRiKnSDQcqETsi3fd5Y1U4SLXRDL+pq9vlbD3
         bx59RBd5wiJnQl0lmztpQ8PI2g2GtF7Chu53c90yxtf4lAhQOzWtp6Nae4fiXfRMJj/Y
         IoEksZIqsjNUx65YA5Nlprj+Q0hR2oYHAKrWrghxQbFsppkOupMIvBT74MgvgUvar9HZ
         d2BuOE4toLN/QP5Oidw2ZlmUSW76ziFGnkToWmJ9NlJXmY9k04+5YENuWRvwhFX5EoaI
         /yY3qIhLjBbQRbYJdG7hswZtshT+683qpR2rUJIvzw8AF4mu9Q2BZgQ4gID7j/nxEg9g
         wRiA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1768981864; x=1769586664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9NsiVsf2a2v52VPxKjdRmolPIi5sBYLrwJiLHifyiQ=;
        b=ezVBs+4wzG5Aku+mfLNWXySaETXaCdp6CMDPPn+LQDwQUusfjdHNKsL6/HZynJfX48
         h0wqeXq7IQWjpKzOXpCS8BDHhnEK+T52S9IxBq7ygnEBiHHI7ayfHLIguHC0ZSbGj1qh
         TbEo6YJAcuzF0gldq4y/sZEvL/aIOmSMFO16nbdjAlwIOQSboa1edC7fjcADI9iwqnOX
         55VzA1clKDLOwRR66RTSiiOHyojbYu+BCq5vnRjbEA9ITekBH6n4HA1eh3ulXrswOf0o
         17sM+RxliGu1e5Hxvjyms7pwQoH3QjJmN5MuSDn/rgcfomZgH0yyfPc1cRPygmpMvPiB
         Y9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768981864; x=1769586664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x9NsiVsf2a2v52VPxKjdRmolPIi5sBYLrwJiLHifyiQ=;
        b=mIIXRyTcs/eOpPj67uih80NyzSG7y2lBj2L9JdUR0+wedJKM3UZfdJ/CNGvsdbMMKm
         nZZBmA67qNBJdCyM2YQ/gU6PEqzKdWEGHuuKBNraiVxqivp+yM1u7P2Kh2qPTtMbFf78
         bK7eEEdBDtn0lMyhTqFAcFf867RQH1P7CcUWeeZhH/uEqMZJr3LB4dhQGHqH7WZCVq45
         mXWLu9DIukoK/GOu/BfKNlfjqu3lO7imfu2ZVRlKqdMXaBoiP67lad6G3/8UvbOX1IDf
         vAEX32UDeL5E9Odjg0MXgCGAZckjvpKek43TroQw3vj6vdbM0Hvh9iSS7vj9NhBug40X
         +KaA==
X-Forwarded-Encrypted: i=1; AJvYcCVnbUzH4zZl3ykrUW0a54C6BaPrxP+NuytFfAeCikJ7Hghq0oTlqx4FNYncuOtBnXkkczXHIw9JehkO@vger.kernel.org
X-Gm-Message-State: AOJu0YzrZNCc4lOU03DKCThMc+KT2f9XnewmB33QTODktol/zzlz0AC0
	bZjzbq74/ifI6URDIOZ6BS4t/Dsmf++zlVVAus9bRwaOmopj5Y2qwIoaNwV0v3E6yoUfGYDt5vk
	pVoShL8p3Z4y5vi/1vEkyEMXZ7e0j9/F+xRq2RCWEaA==
X-Gm-Gg: AZuq6aLNHxEnmpGT2rOt9nyv5l3HZMwmZB3e4J4L+6CSJsUGU5Yo2NNVkNksyhMPTMe
	aTRqEwM6DXwkV1RzQBnvujPL8brR88jmQ0X1ifJqTwLeIbXd2XiWuPyxXVJ4IxdrYta2W+z3a4y
	4+2+fQlt2dVWdbw5V/Q2G/zIRISrH7N4aTEKHHF/9d5b7oG+L8hU9sGOfESpv82Ttb/7zlK0qqU
	Te7d+sVik6YVxzZS5tEXDTV2PhToHcbWvQJpW94NuPv+VAvCPinsK51SfFoTA8+mJV5cs8gVQ==
X-Received: by 2002:a05:6820:217:b0:65f:65cc:ad98 with SMTP id
 006d021491bc7-66118924defmr6317819eaf.40.1768981864233; Tue, 20 Jan 2026
 23:51:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002060732.100213-1-apatel@ventanamicro.com> <20251002060732.100213-3-apatel@ventanamicro.com>
In-Reply-To: <20251002060732.100213-3-apatel@ventanamicro.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 21 Jan 2026 15:50:52 +0800
X-Gm-Features: AZwV_Qj5Cj26vTuWVt2UonFbH7658voIJDzO3OYkaxsiBOlC2UQZbXlSTbzqaak
Message-ID: <CABvJ_xgn__drv_oAFzEYdjwMBFGK1WnPs82Kh-5UtevEedNfeQ@mail.gmail.com>
Subject: Re: [PATCH 02/11] rvtrace: Initial implementation of driver framework
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
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257773-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[kernel.org,sifive.com,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,arm.com,vger.kernel.org,ghiti.fr,linux.dev,infradead.org,brainfault.org,intel.com,ventanamicro.com,redhat.com,gmail.com,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sifive.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.chen@sifive.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[sifive.com,reject];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,infradead.org:email,infradead.org:url,riscv.org:url,ventanamicro.com:email]
X-Rspamd-Queue-Id: 1728353107
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Anup,

Thank you for providing the RVtrace infrastructure in Linux. It is great
to see support for manipulating RISC-V trace components via the Linux
perf tool.

SiFive provides a similar instruction trace specification that allows
users to collect processor execution history and other events on SiFive
platforms. This specification is implemented on the HiFive Premier P550
board. The specification is available here:
https://lists.riscv.org/g/tech-nexus/files/RISC-V-Trace-Control-Interface-P=
roposed-20200612.pdf

The fundamental concepts behind both specifications are aligned:
1. Both instruction trace systems are composed of Trace Encoders, Trace
   Funnels, and Trace Sinks.
   a. Trace encoder: Each hart has its own trace encoder. It monitors
      the ingress port to record addresses where program flow
      discontinuities occur. It compresses the log using either the
      Efficient Trace for RISC-V or RISC-V N-Trace specification
      (SiFive encoders support Nexus-based trace only) and transmits it
      to a downstream Trace Funnel or Sink.
   b. Trace funnel: Functionally identical in both systems, the funnel
      aggregates traces from multiple inputs (encoders or other funnels)
      and forwards the combined stream to a designated sink.
   c. Trace sink: Both specifications support SRAM, System Memory, PIB,
      and ATB Bridge sinks.

2. The control flow for starting and stopping recording is also consistent:
   a. Start tracing: Proceed from the downstream sink up to the trace
      encoder to ensure sinks are ready to capture logs.
   b. Stop tracing: Proceed from the trace encoder down to the sink to
      ensure all logs are flushed.

However, these two specifications have some differences in implementation,
primarily in:
1. MMIO Register Definitions: While functionally similar, the register
   layouts for SiFive encoders and funnels differ from the RISC-V
   standard.
2. Lack of Independent Sink Components: In the SiFive implementation,
   sink configuration registers are embedded within the trace encoder and
   funnel MMIO regions, rather than existing as standalone components.
3. Trace Path configuration:
   a. RISC-V trace component is allowed to pass down the trace log to a
      single or multiple next-level trace components, depending on the HW
      capabilities and connection. This trace component cannot configure
      the output target via the MMIO register, but the next-level trace
      component has the ability to disable the inputs from a specific
      trace component.
   b. The SiFive trace component can only output the trace log to a
      designated sink, which is specified in the corresponding MMIO
      register. The designated sink cannot be configured to disable any
      input.
4. SiFive customer feature: SiFive platforms include custom event
   collection capabilities that require a dedicated PMU registration to
   expose via the Linux perf tool.

Given the similarities in control flow, we propose integrating the
SiFive trace driver into your RVtrace infrastructure to avoid code
duplication. Below is our proposed integration approach:

1. DT File (Device Tree)
   - Inherit the current dt-bindings for RISC-V trace components,
     specifically the in-ports and out-ports descriptions for topology.
   - Add "sifive,trace-component" to the compatible string of SiFive
     nodes.
   - Add a new DT property to indicate the specific type of SiFive trace
     component. This is necessary because the corresponding register in
     the SiFive specification does not expose the component's type
     (Encoder/Funnel) to software.
2. Perf Tool
   - Register a new perf PMU specifically for SiFive trace. This also
     allows us to define custom event configurations for SiFive-specific
     features.
   - The Perf tool will support both PMUs simultaneously. The final
     selected operating PMU depends on the PMU name in the perf command
     and the platform capability.
   - Leverage the callback functions registered to "struct auxtrace_record"
     as much as possible.
3. Linux Device Driver
   - Device Probe:
     - Add "sifive,trace-component" to rvtrace_platform_match[] to
       enable rvtrace_platform_probe() to support SiFive trace
       components.
     - Update rvtrace_register_component() to support registering
       SiFive encoders and funnels to the rvtrace bus.
     - Plan to let the SiFive trace encoder and funnel share the same
       type ID as RISC-V. In this condition, to enable the driver to
       distinguish between SiFive and RISC-V hardware, it would be
       necessary to add a new vendor ID field into
       "struct rvtrace_component_id".
   - Driver Implementations:
     - Like other drivers of RISC-V trace components, the SiFive encoder
       and funnel driver will implement the required functions in the
       rvtrace_driver.
   - Trace Delivery Path (Encoder to Sink):
     - This infrastructure can be used in the same way to establish the
       topology of the entire trace system via the DT file.
     - Based on the same topology descriptions, the trace delivery path
       can use the same logic to create.
     - The primary difference lies in the trace path configuration. To
       address this, we propose delegating the path configuration logic
       to the .start() and .stop() callbacks in "struct rvtrace_driver".
       This allows the routing implementation to be encapsulated within
       the specific driver. To support this, we would need to update the
       definition of the .start() and .stop() callbacks to accept the adjac=
ent
       node information as arguments, allowing the driver to perform the
       necessary MMIO writes for routing.

   - Sink Manipulation:
     - Standard RISC-V: Managed through dedicated drivers (init during
       probe, access via callbacks during dump).
     - SiFive Implementation: Sink regs are embedded in Encoder/Funnel
       MMIO.
     - We propose that the SiFive encoder and funnel drivers:
       a. Initialize their supported sinks during the driver probe
          sequence.
       b. Implement and register the appropriate sink access callbacks,
          ensuring they align with the standard perf log dumping
          workflow.

Do you think the proposed solution is feasible? I would appreciate your
feedback.

Best regards,
Vincent

On Thu, Oct 2, 2025 at 2:09=E2=80=AFPM Anup Patel <apatel@ventanamicro.com>=
 wrote:
>
> The RISC-V Trace Control Interface Specification [1] defines a standard
> way of implementing RISC-V trace related modular components irrespective
> to underlying trace format (E-trace or N-trace). These RISC-V trace
> components are organized in a graph-like topology where each RISC-V
> hart has its own RISC-V trace encoder component.
>
> Implement a basic driver framework for RISC-V trace where RISC-V trace
> components are instantiated by a common platform driver and a separate
> RISC-V trace driver for each type of RISC-V trace component.
>
> [1] https://github.com/riscv-non-isa/tg-nexus-trace/releases/download/1.0=
_Ratified/RISC-V-Trace-Control-Interface.pdf
>
> Co-developed-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  drivers/Makefile                             |   1 +
>  drivers/hwtracing/Kconfig                    |   2 +
>  drivers/hwtracing/rvtrace/Kconfig            |  16 +
>  drivers/hwtracing/rvtrace/Makefile           |   4 +
>  drivers/hwtracing/rvtrace/rvtrace-core.c     | 484 +++++++++++++++++++
>  drivers/hwtracing/rvtrace/rvtrace-platform.c | 174 +++++++
>  include/linux/rvtrace.h                      | 272 +++++++++++
>  7 files changed, 953 insertions(+)
>  create mode 100644 drivers/hwtracing/rvtrace/Kconfig
>  create mode 100644 drivers/hwtracing/rvtrace/Makefile
>  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-core.c
>  create mode 100644 drivers/hwtracing/rvtrace/rvtrace-platform.c
>  create mode 100644 include/linux/rvtrace.h
>
> diff --git a/drivers/Makefile b/drivers/Makefile
> index b5749cf67044..466a55580f60 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -178,6 +178,7 @@ obj-$(CONFIG_CORESIGHT)             +=3D hwtracing/co=
resight/
>  obj-y                          +=3D hwtracing/intel_th/
>  obj-$(CONFIG_STM)              +=3D hwtracing/stm/
>  obj-$(CONFIG_HISI_PTT)         +=3D hwtracing/ptt/
> +obj-$(CONFIG_RVTRACE)          +=3D hwtracing/rvtrace/
>  obj-y                          +=3D android/
>  obj-$(CONFIG_NVMEM)            +=3D nvmem/
>  obj-$(CONFIG_FPGA)             +=3D fpga/
> diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
> index 911ee977103c..daeb38fe332d 100644
> --- a/drivers/hwtracing/Kconfig
> +++ b/drivers/hwtracing/Kconfig
> @@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
>
>  source "drivers/hwtracing/ptt/Kconfig"
>
> +source "drivers/hwtracing/rvtrace/Kconfig"
> +
>  endmenu
> diff --git a/drivers/hwtracing/rvtrace/Kconfig b/drivers/hwtracing/rvtrac=
e/Kconfig
> new file mode 100644
> index 000000000000..f8f6feea1953
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/Kconfig
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +menuconfig RVTRACE
> +       tristate "RISC-V Trace Support"
> +       depends on RISCV
> +       depends on OF
> +       default RISCV
> +       help
> +         This framework provides a kernel interface for the RISC-V trace
> +         drivers (including both e-trace and n-trace). It's intended to
> +         build a topological view of the RISC-V trace components and
> +         configure the right series of components when trace is enabled
> +         on a CPU.
> +
> +         To compile this driver as a module, choose M here: the module
> +         will be called rvtrace.
> diff --git a/drivers/hwtracing/rvtrace/Makefile b/drivers/hwtracing/rvtra=
ce/Makefile
> new file mode 100644
> index 000000000000..988525a379cf
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_RVTRACE) +=3D rvtrace.o
> +rvtrace-y :=3D rvtrace-core.o rvtrace-platform.o
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtracing=
/rvtrace/rvtrace-core.c
> new file mode 100644
> index 000000000000..52ea931745fc
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
> @@ -0,0 +1,484 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> + */
> +
> +#include <linux/cpumask.h>
> +#include <linux/delay.h>
> +#include <linux/export.h>
> +#include <linux/idr.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/percpu.h>
> +#include <linux/rvtrace.h>
> +
> +/* Mutex to serialize component registration/unregistration */
> +static DEFINE_MUTEX(rvtrace_mutex);
> +
> +/* Per-CPU encoder instances */
> +static DEFINE_PER_CPU(struct rvtrace_component *, rvtrace_cpu_encoder);
> +
> +/* Component type based id generator */
> +struct rvtrace_type_idx {
> +       /* Lock to protect the type ID generator */
> +       struct mutex lock;
> +       struct idr idr;
> +};
> +
> +/* Array of component type based id generator */
> +static struct rvtrace_type_idx rvtrace_type_idx_array[RVTRACE_COMPONENT_=
TYPE_MAX];
> +
> +static int rvtrace_alloc_type_idx(struct rvtrace_component *comp)
> +{
> +       struct rvtrace_type_idx *rvidx =3D &rvtrace_type_idx_array[comp->=
id.type];
> +       int idx;
> +
> +       mutex_lock(&rvidx->lock);
> +       idx =3D idr_alloc(&rvidx->idr, comp, 0, 0, GFP_KERNEL);
> +       mutex_unlock(&rvidx->lock);
> +       if (idx < 0)
> +               return idx;
> +
> +       comp->type_idx =3D idx;
> +       return 0;
> +}
> +
> +static void rvtrace_free_type_idx(struct rvtrace_component *comp)
> +{
> +       struct rvtrace_type_idx *rvidx =3D &rvtrace_type_idx_array[comp->=
id.type];
> +
> +       mutex_lock(&rvidx->lock);
> +       idr_remove(&rvidx->idr, comp->type_idx);
> +       mutex_unlock(&rvidx->lock);
> +}
> +
> +static void __init rvtrace_init_type_idx(void)
> +{
> +       struct rvtrace_type_idx *rvidx;
> +       int i;
> +
> +       for (i =3D 0; i < RVTRACE_COMPONENT_TYPE_MAX; i++) {
> +               rvidx =3D &rvtrace_type_idx_array[i];
> +               mutex_init(&rvidx->lock);
> +               idr_init(&rvidx->idr);
> +       }
> +}
> +
> +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_compo=
nent *comp,
> +                                                   const struct rvtrace_=
component_id *ids)
> +{
> +       const struct rvtrace_component_id *id;
> +
> +       for (id =3D ids; id->version && id->type; id++) {
> +               if (comp->id.type =3D=3D id->type &&
> +                   comp->id.version =3D=3D id->version)
> +                       return id;
> +       }
> +
> +       return NULL;
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_match_id);
> +
> +static int rvtrace_match_device(struct device *dev, const struct device_=
driver *drv)
> +{
> +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(drv);
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +
> +       return rvtrace_match_id(comp, rtdrv->id_table) ? 1 : 0;
> +}
> +
> +static int rvtrace_probe(struct device *dev)
> +{
> +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(dev->dri=
ver);
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +       int ret =3D -ENODEV;
> +
> +       if (!rtdrv->probe)
> +               return ret;
> +
> +       ret =3D rtdrv->probe(comp);
> +       if (!ret)
> +               comp->ready =3D true;
> +
> +       return ret;
> +}
> +
> +static void rvtrace_remove(struct device *dev)
> +{
> +       const struct rvtrace_driver *rtdrv =3D to_rvtrace_driver(dev->dri=
ver);
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +
> +       comp->ready =3D false;
> +       if (rtdrv->remove)
> +               rtdrv->remove(comp);
> +}
> +
> +const struct bus_type rvtrace_bustype =3D {
> +       .name   =3D "rvtrace",
> +       .match  =3D rvtrace_match_device,
> +       .probe  =3D rvtrace_probe,
> +       .remove =3D rvtrace_remove,
> +};
> +
> +struct rvtrace_fwnode_match_data {
> +       struct fwnode_handle *fwnode;
> +       struct rvtrace_component *match;
> +};
> +
> +static int rvtrace_match_fwnode(struct device *dev, void *data)
> +{
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +       struct rvtrace_fwnode_match_data *d =3D data;
> +
> +       if (device_match_fwnode(&comp->dev, d->fwnode)) {
> +               d->match =3D comp;
> +               return 1;
> +       }
> +
> +       return 0;
> +}
> +
> +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handle *f=
wnode)
> +{
> +       struct rvtrace_fwnode_match_data d =3D { .fwnode =3D fwnode, .mat=
ch =3D NULL };
> +       int ret;
> +
> +       ret =3D bus_for_each_dev(&rvtrace_bustype, NULL, &d, rvtrace_matc=
h_fwnode);
> +       if (ret < 0)
> +               return ERR_PTR(ret);
> +
> +       return d.match;
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_find_by_fwnode);
> +
> +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset,
> +                    int bit, int bitval, int timeout)
> +{
> +       int i =3D 10;
> +       u32 val;
> +
> +       while (i--) {
> +               val =3D rvtrace_read32(pdata, offset);
> +               if (((val >> bit) & 0x1) =3D=3D bitval)
> +                       break;
> +               udelay(timeout);
> +       }
> +
> +       return (i < 0) ? -ETIMEDOUT : 0;
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_poll_bit);
> +
> +int rvtrace_enable_component(struct rvtrace_component *comp)
> +{
> +       u32 val;
> +
> +       val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET=
);
> +       val |=3D BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
> +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSE=
T,
> +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 1,
> +                               comp->pdata->control_poll_timeout_usecs);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_enable_component);
> +
> +int rvtrace_disable_component(struct rvtrace_component *comp)
> +{
> +       u32 val;
> +
> +       val =3D rvtrace_read32(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSET=
);
> +       val &=3D ~BIT(RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT);
> +       rvtrace_write32(comp->pdata, val, RVTRACE_COMPONENT_CTRL_OFFSET);
> +       return rvtrace_poll_bit(comp->pdata, RVTRACE_COMPONENT_CTRL_OFFSE=
T,
> +                               RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT, 0,
> +                               comp->pdata->control_poll_timeout_usecs);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_disable_component);
> +
> +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu)
> +{
> +       if (!cpu_present(cpu))
> +               return NULL;
> +
> +       return per_cpu(rvtrace_cpu_encoder, cpu);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_cpu_source);
> +
> +static int rvtrace_cleanup_inconn(struct device *dev, void *data)
> +{
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> +       struct rvtrace_connection *conn =3D data;
> +       int i;
> +
> +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
> +               for (i =3D 0; i < pdata->nr_inconns; i++) {
> +                       if (pdata->inconns[i] !=3D conn)
> +                               continue;
> +                       pdata->inconns[i] =3D NULL;
> +                       return 1;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
> +static void rvtrace_cleanup_inconns_from_outconns(struct rvtrace_compone=
nt *comp)
> +{
> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> +       struct rvtrace_connection *conn;
> +       int i;
> +
> +       lockdep_assert_held(&rvtrace_mutex);
> +
> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> +               conn =3D pdata->outconns[i];
> +               bus_for_each_dev(&rvtrace_bustype, NULL, conn, rvtrace_cl=
eanup_inconn);
> +       }
> +}
> +
> +static int rvtrace_setup_inconn(struct device *dev, void *data)
> +{
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> +       struct rvtrace_connection *conn =3D data;
> +       int i;
> +
> +       if (device_match_fwnode(&comp->dev, conn->dest_fwnode)) {
> +               for (i =3D 0; i < pdata->nr_inconns; i++) {
> +                       if (pdata->inconns[i])
> +                               continue;
> +                       pdata->inconns[i] =3D conn;
> +                       return 1;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
> +static int rvtrace_setup_inconns_from_outconns(struct rvtrace_component =
*comp)
> +{
> +       struct rvtrace_platform_data *pdata =3D comp->pdata;
> +       struct rvtrace_connection *conn;
> +       int i, ret;
> +
> +       lockdep_assert_held(&rvtrace_mutex);
> +
> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> +               conn =3D pdata->outconns[i];
> +               ret =3D bus_for_each_dev(&rvtrace_bustype, NULL, conn, rv=
trace_setup_inconn);
> +               if (ret < 0) {
> +                       rvtrace_cleanup_inconns_from_outconns(comp);
> +                       return ret;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
> +static void rvtrace_component_release(struct device *dev)
> +{
> +       struct rvtrace_component *comp =3D to_rvtrace_component(dev);
> +
> +       fwnode_handle_put(comp->dev.fwnode);
> +       rvtrace_free_type_idx(comp);
> +       kfree(comp);
> +}
> +
> +static int rvtrace_component_reset(struct rvtrace_platform_data *pdata)
> +{
> +       int ret;
> +
> +       rvtrace_write32(pdata, 0, RVTRACE_COMPONENT_CTRL_OFFSET);
> +       ret =3D rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> +                              RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 0,
> +                              pdata->control_poll_timeout_usecs);
> +       if (ret)
> +               return ret;
> +
> +       rvtrace_write32(pdata, RVTRACE_COMPONENT_CTRL_ACTIVE_MASK,
> +                       RVTRACE_COMPONENT_CTRL_OFFSET);
> +       return rvtrace_poll_bit(pdata, RVTRACE_COMPONENT_CTRL_OFFSET,
> +                               RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT, 1,
> +                               pdata->control_poll_timeout_usecs);
> +}
> +
> +struct rvtrace_component *rvtrace_register_component(struct rvtrace_plat=
form_data *pdata)
> +{
> +       struct rvtrace_connection *conn;
> +       struct rvtrace_component *comp;
> +       u32 impl, type, major, minor;
> +       int i, ret =3D 0;
> +
> +       if (!pdata || !pdata->dev) {
> +               ret =3D -EINVAL;
> +               goto err_out;
> +       }
> +
> +       for (i =3D 0; i < pdata->nr_inconns; i++) {
> +               if (pdata->inconns[i]) {
> +                       ret =3D -EINVAL;
> +                       goto err_out;
> +               }
> +       }
> +
> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> +               conn =3D pdata->outconns[i];
> +               if (!conn || conn->src_port < 0 || conn->src_comp ||
> +                   !device_match_fwnode(pdata->dev, conn->src_fwnode) ||
> +                   conn->dest_port < 0 || !conn->dest_fwnode || !conn->d=
est_comp) {
> +                       ret =3D -EINVAL;
> +                       goto err_out;
> +               }
> +       }
> +
> +       ret =3D rvtrace_component_reset(pdata);
> +       if (ret)
> +               goto err_out;
> +
> +       impl =3D rvtrace_read32(pdata, RVTRACE_COMPONENT_IMPL_OFFSET);
> +       type =3D (impl >> RVTRACE_COMPONENT_IMPL_TYPE_SHIFT) &
> +               RVTRACE_COMPONENT_IMPL_TYPE_MASK;
> +       major =3D (impl >> RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT) &
> +               RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK;
> +       minor =3D (impl >> RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT) &
> +               RVTRACE_COMPONENT_IMPL_VERMINOR_MASK;
> +
> +       if (pdata->bound_cpu >=3D 0 && !cpu_present(pdata->bound_cpu)) {
> +               ret =3D -EINVAL;
> +               goto err_out;
> +       }
> +       if (type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER && pdata->bound_cp=
u < 0) {
> +               ret =3D -EINVAL;
> +               goto err_out;
> +       }
> +
> +       comp =3D kzalloc(sizeof(*comp), GFP_KERNEL);
> +       if (!comp) {
> +               ret =3D -ENOMEM;
> +               goto err_out;
> +       }
> +       comp->pdata =3D pdata;
> +       comp->id.type =3D type;
> +       comp->id.version =3D rvtrace_component_mkversion(major, minor);
> +       ret =3D rvtrace_alloc_type_idx(comp);
> +       if (ret) {
> +               kfree(comp);
> +               goto err_out;
> +       }
> +
> +       comp->dev.parent =3D pdata->dev;
> +       comp->dev.coherent_dma_mask =3D pdata->dev->coherent_dma_mask;
> +       comp->dev.release =3D rvtrace_component_release;
> +       comp->dev.bus =3D &rvtrace_bustype;
> +       comp->dev.fwnode =3D fwnode_handle_get(dev_fwnode(pdata->dev));
> +       switch (comp->id.type) {
> +       case RVTRACE_COMPONENT_TYPE_ENCODER:
> +               dev_set_name(&comp->dev, "encoder-%d", comp->type_idx);
> +               break;
> +       case RVTRACE_COMPONENT_TYPE_FUNNEL:
> +               dev_set_name(&comp->dev, "funnel-%d", comp->type_idx);
> +               break;
> +       case RVTRACE_COMPONENT_TYPE_RAMSINK:
> +               dev_set_name(&comp->dev, "ramsink-%d", comp->type_idx);
> +               break;
> +       case RVTRACE_COMPONENT_TYPE_PIBSINK:
> +               dev_set_name(&comp->dev, "pibsink-%d", comp->type_idx);
> +               break;
> +       case RVTRACE_COMPONENT_TYPE_ATBBRIDGE:
> +               dev_set_name(&comp->dev, "atbbridge-%d", comp->type_idx);
> +               break;
> +       default:
> +               dev_set_name(&comp->dev, "type%d-%d", comp->id.type, comp=
->type_idx);
> +               break;
> +       }
> +
> +       mutex_lock(&rvtrace_mutex);
> +
> +       ret =3D device_register(&comp->dev);
> +       if (ret) {
> +               put_device(&comp->dev);
> +               goto err_out_unlock;
> +       }
> +
> +       for (i =3D 0; i < pdata->nr_outconns; i++) {
> +               conn =3D pdata->outconns[i];
> +               conn->src_comp =3D comp;
> +       }
> +
> +       ret =3D rvtrace_setup_inconns_from_outconns(comp);
> +       if (ret < 0) {
> +               device_unregister(&comp->dev);
> +               goto err_out_unlock;
> +       }
> +
> +       if (comp->id.type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER) {
> +               rvtrace_get_component(comp);
> +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) =3D =
comp;
> +       }
> +
> +       mutex_unlock(&rvtrace_mutex);
> +
> +       return comp;
> +
> +err_out_unlock:
> +       mutex_unlock(&rvtrace_mutex);
> +err_out:
> +       return ERR_PTR(ret);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_register_component);
> +
> +void rvtrace_unregister_component(struct rvtrace_component *comp)
> +{
> +       struct rvtrace_component *c;
> +
> +       mutex_lock(&rvtrace_mutex);
> +
> +       if (comp->id.type =3D=3D RVTRACE_COMPONENT_TYPE_ENCODER) {
> +               c =3D per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu=
);
> +               per_cpu(rvtrace_cpu_encoder, comp->pdata->bound_cpu) =3D =
NULL;
> +               rvtrace_put_component(c);
> +       }
> +
> +       rvtrace_cleanup_inconns_from_outconns(comp);
> +       device_unregister(&comp->dev);
> +
> +       mutex_unlock(&rvtrace_mutex);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_unregister_component);
> +
> +int __rvtrace_register_driver(struct module *owner, struct rvtrace_drive=
r *rtdrv)
> +{
> +       rtdrv->driver.owner =3D owner;
> +       rtdrv->driver.bus =3D &rvtrace_bustype;
> +
> +       return driver_register(&rtdrv->driver);
> +}
> +EXPORT_SYMBOL_GPL(__rvtrace_register_driver);
> +
> +static int __init rvtrace_init(void)
> +{
> +       int ret;
> +
> +       rvtrace_init_type_idx();
> +
> +       ret =3D bus_register(&rvtrace_bustype);
> +       if (ret)
> +               return ret;
> +
> +       ret =3D platform_driver_register(&rvtrace_platform_driver);
> +       if (ret) {
> +               bus_unregister(&rvtrace_bustype);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +static void __exit rvtrace_exit(void)
> +{
> +       platform_driver_unregister(&rvtrace_platform_driver);
> +       bus_unregister(&rvtrace_bustype);
> +}
> +
> +module_init(rvtrace_init);
> +module_exit(rvtrace_exit);
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-platform.c b/drivers/hwtra=
cing/rvtrace/rvtrace-platform.c
> new file mode 100644
> index 000000000000..a110ff1f2f08
> --- /dev/null
> +++ b/drivers/hwtracing/rvtrace/rvtrace-platform.c
> @@ -0,0 +1,174 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/of.h>
> +#include <linux/of_graph.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/rvtrace.h>
> +#include <linux/types.h>
> +
> +static int rvtrace_of_parse_outconns(struct rvtrace_platform_data *pdata=
)
> +{
> +       struct device_node *parent, *ep_node, *rep_node, *rdev_node;
> +       struct rvtrace_connection *conn;
> +       struct of_endpoint ep, rep;
> +       int ret =3D 0, i =3D 0;
> +
> +       parent =3D of_get_child_by_name(dev_of_node(pdata->dev), "out-por=
ts");
> +       if (!parent)
> +               return 0;
> +
> +       pdata->nr_outconns =3D of_graph_get_endpoint_count(parent);
> +       pdata->outconns =3D devm_kcalloc(pdata->dev, pdata->nr_outconns,
> +                                      sizeof(*pdata->outconns), GFP_KERN=
EL);
> +       if (!pdata->outconns) {
> +               ret =3D -ENOMEM;
> +               goto done;
> +       }
> +
> +       for_each_endpoint_of_node(parent, ep_node) {
> +               conn =3D devm_kzalloc(pdata->dev, sizeof(*conn), GFP_KERN=
EL);
> +               if (!conn) {
> +                       of_node_put(ep_node);
> +                       ret =3D -ENOMEM;
> +                       break;
> +               }
> +
> +               ret =3D of_graph_parse_endpoint(ep_node, &ep);
> +               if (ret) {
> +                       of_node_put(ep_node);
> +                       break;
> +               }
> +
> +               rep_node =3D of_graph_get_remote_endpoint(ep_node);
> +               if (!rep_node) {
> +                       ret =3D -ENODEV;
> +                       of_node_put(ep_node);
> +                       break;
> +               }
> +               rdev_node =3D of_graph_get_port_parent(rep_node);
> +
> +               ret =3D of_graph_parse_endpoint(rep_node, &rep);
> +               if (ret) {
> +                       of_node_put(ep_node);
> +                       break;
> +               }
> +
> +               conn->src_port =3D ep.port;
> +               conn->src_fwnode =3D dev_fwnode(pdata->dev);
> +               /* The 'src_comp' is set by rvtrace_register_component() =
*/
> +               conn->src_comp =3D NULL;
> +               conn->dest_port =3D rep.port;
> +               conn->dest_fwnode =3D of_fwnode_handle(rdev_node);
> +               conn->dest_comp =3D rvtrace_find_by_fwnode(conn->dest_fwn=
ode);
> +               if (!conn->dest_comp) {
> +                       ret =3D -EPROBE_DEFER;
> +                       of_node_put(ep_node);
> +               }
> +
> +               pdata->outconns[i] =3D conn;
> +               i++;
> +       }
> +
> +done:
> +       of_node_put(parent);
> +       return ret;
> +}
> +
> +static int rvtrace_of_parse_inconns(struct rvtrace_platform_data *pdata)
> +{
> +       struct device_node *parent;
> +       int ret =3D 0;
> +
> +       parent =3D of_get_child_by_name(dev_of_node(pdata->dev), "in-port=
s");
> +       if (!parent)
> +               return 0;
> +
> +       pdata->nr_inconns =3D of_graph_get_endpoint_count(parent);
> +       pdata->inconns =3D devm_kcalloc(pdata->dev, pdata->nr_inconns,
> +                                     sizeof(*pdata->inconns), GFP_KERNEL=
);
> +       if (!pdata->inconns)
> +               ret =3D -ENOMEM;
> +
> +       of_node_put(parent);
> +       return ret;
> +}
> +
> +static int rvtrace_platform_probe(struct platform_device *pdev)
> +{
> +       struct rvtrace_platform_data *pdata;
> +       struct device *dev =3D &pdev->dev;
> +       struct rvtrace_component *comp;
> +       struct device_node *node;
> +       struct resource *res;
> +       int ret;
> +
> +       pdata =3D devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> +       if (!pdata)
> +               return -ENOMEM;
> +       pdata->dev =3D dev;
> +       pdata->impid =3D RVTRACE_COMPONENT_IMPID_UNKNOWN;
> +
> +       res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       if (!res)
> +               return -EINVAL;
> +
> +       pdata->io_mem =3D true;
> +       pdata->base =3D devm_ioremap(&pdev->dev, res->start, resource_siz=
e(res));
> +       if (!pdata->base)
> +               return dev_err_probe(dev, -ENOMEM, "failed to ioremap %pR=
\n", res);
> +
> +       pdata->bound_cpu =3D -1;
> +       node =3D of_parse_phandle(dev_of_node(dev), "cpu", 0);
> +       if (node) {
> +               ret =3D of_cpu_node_to_id(node);
> +               of_node_put(node);
> +               if (ret < 0)
> +                       return dev_err_probe(dev, ret, "failed to get CPU=
 id for %pOF\n", node);
> +               pdata->bound_cpu =3D ret;
> +       }
> +
> +       /* Default control poll timeout */
> +       pdata->control_poll_timeout_usecs =3D 10;
> +
> +       ret =3D rvtrace_of_parse_outconns(pdata);
> +       if (ret)
> +               return dev_err_probe(dev, ret, "failed to parse output co=
nnections\n");
> +
> +       ret =3D rvtrace_of_parse_inconns(pdata);
> +       if (ret)
> +               return dev_err_probe(dev, ret, "failed to parse input con=
nections\n");
> +
> +       comp =3D rvtrace_register_component(pdata);
> +       if (IS_ERR(comp))
> +               return PTR_ERR(comp);
> +
> +       platform_set_drvdata(pdev, comp);
> +       return 0;
> +}
> +
> +static void rvtrace_platform_remove(struct platform_device *pdev)
> +{
> +       struct rvtrace_component *comp =3D platform_get_drvdata(pdev);
> +
> +       rvtrace_unregister_component(comp);
> +}
> +
> +static const struct of_device_id rvtrace_platform_match[] =3D {
> +       { .compatible =3D "riscv,trace-component" },
> +       {}
> +};
> +
> +struct platform_driver rvtrace_platform_driver =3D {
> +       .driver =3D {
> +               .name           =3D "rvtrace",
> +               .of_match_table =3D rvtrace_platform_match,
> +       },
> +       .probe =3D rvtrace_platform_probe,
> +       .remove =3D rvtrace_platform_remove,
> +};
> diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
> new file mode 100644
> index 000000000000..04eb03e62601
> --- /dev/null
> +++ b/include/linux/rvtrace.h
> @@ -0,0 +1,272 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2025 Ventana Micro Systems Inc.
> + */
> +
> +#ifndef __LINUX_RVTRACE_H__
> +#define __LINUX_RVTRACE_H__
> +
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/types.h>
> +
> +/* Control register common across all RISC-V trace components */
> +#define RVTRACE_COMPONENT_CTRL_OFFSET          0x000
> +#define RVTRACE_COMPONENT_CTRL_ACTIVE_MASK     0x1
> +#define RVTRACE_COMPONENT_CTRL_ACTIVE_SHIFT    0
> +#define RVTRACE_COMPONENT_CTRL_ENABLE_MASK     0x1
> +#define RVTRACE_COMPONENT_CTRL_ENABLE_SHIFT    1
> +
> +/* Implementation register common across all RISC-V trace components */
> +#define RVTRACE_COMPONENT_IMPL_OFFSET          0x004
> +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_MASK   0xf
> +#define RVTRACE_COMPONENT_IMPL_VERMAJOR_SHIFT  0
> +#define RVTRACE_COMPONENT_IMPL_VERMINOR_MASK   0xf
> +#define RVTRACE_COMPONENT_IMPL_VERMINOR_SHIFT  4
> +#define RVTRACE_COMPONENT_IMPL_TYPE_MASK       0xf
> +#define RVTRACE_COMPONENT_IMPL_TYPE_SHIFT      8
> +
> +/* Possible component types defined by the RISC-V Trace Control Interfac=
e */
> +enum rvtrace_component_type {
> +       RVTRACE_COMPONENT_TYPE_RESV0,
> +       RVTRACE_COMPONENT_TYPE_ENCODER, /* 0x1 */
> +       RVTRACE_COMPONENT_TYPE_RESV2,
> +       RVTRACE_COMPONENT_TYPE_RESV3,
> +       RVTRACE_COMPONENT_TYPE_RESV4,
> +       RVTRACE_COMPONENT_TYPE_RESV5,
> +       RVTRACE_COMPONENT_TYPE_RESV6,
> +       RVTRACE_COMPONENT_TYPE_RESV7,
> +       RVTRACE_COMPONENT_TYPE_FUNNEL, /* 0x8 */
> +       RVTRACE_COMPONENT_TYPE_RAMSINK, /* 0x9 */
> +       RVTRACE_COMPONENT_TYPE_PIBSINK, /* 0xA */
> +       RVTRACE_COMPONENT_TYPE_RESV11,
> +       RVTRACE_COMPONENT_TYPE_RESV12,
> +       RVTRACE_COMPONENT_TYPE_RESV13,
> +       RVTRACE_COMPONENT_TYPE_ATBBRIDGE, /* 0xE */
> +       RVTRACE_COMPONENT_TYPE_RESV15,
> +       RVTRACE_COMPONENT_TYPE_MAX
> +};
> +
> +/* Encoding/decoding macros for RISC-V trace component version */
> +#define rvtrace_component_version_major(__version)     \
> +       (((__version) >> 16) & 0xffff)
> +#define rvtrace_component_version_minor(__version)     \
> +       ((__version) & 0xffff)
> +#define rvtrace_component_mkversion(__major, __minor)  \
> +       ((((__major) & 0xffff) << 16) | ((__minor) & 0xffff))
> +
> +/*
> + * Possible component implementation IDs discovered from DT or ACPI
> + * shared across the RISC-V trace drivers to infer trace parameters,
> + * quirks, and work-arounds. These component implementation IDs are
> + * internal to Linux and must not be exposed to user-space.
> + *
> + * The component implementation ID should be named as follows:
> + *    RVTRACE_COMPONENT_IMPID_<vendor>_<part>
> + */
> +enum rvtrace_component_impid {
> +       RVTRACE_COMPONENT_IMPID_UNKNOWN,
> +       RVTRACE_COMPONENT_IMPID_MAX
> +};
> +
> +/**
> + * struct rvtrace_connection - Representation of a physical connection b=
etween
> + * two RISC-V trace components.
> + * @src_port:    A connection's source port number.
> + * @src_fwnode:  Source component's fwnode handle..
> + * @src_comp:    Source component's pointer.
> + * @dest_port:   A connection's destination port number.
> + * @dest_fwnode: Destination component's fwnode handle.
> + * @dest_comp:   Destination component's pointer.
> + */
> +struct rvtrace_connection {
> +       int src_port;
> +       struct fwnode_handle *src_fwnode;
> +       int dest_port;
> +       struct fwnode_handle *dest_fwnode;
> +       struct rvtrace_component *src_comp;
> +       struct rvtrace_component *dest_comp;
> +};
> +
> +/**
> + * struct rvtrace_platform_data - Platform-level data for a RISC-V trace=
 component
> + * discovered from DT or ACPI.
> + * @dev:         Parent device.
> + * @impid:       Component implementation ID
> + * @io_mem:      Flag showing whether component registers are memory map=
ped.
> + * @base:        If io_mem =3D=3D true then base address of the memory m=
apped registers.
> + * @read:        If io_mem =3D=3D false then read register from the give=
n "offset".
> + * @write:       If io_mem =3D=3D false then write register to the given=
 "offset".
> + * @bound_cpu:   CPU to which the component is bound. This should be -1 =
if
> + *               the component is not bound to any CPU. For encoder comp=
onent
> + *               type this must not be -1.
> + * @nr_inconns:  Number of input connections.
> + * @inconns:     Array of pointers to input connections.
> + * @nr_outconns: Number of output connections.
> + * @outconns:    Array of pointers to output connections.
> + */
> +struct rvtrace_platform_data {
> +       struct device *dev;
> +
> +       enum rvtrace_component_impid impid;
> +
> +       bool io_mem;
> +       union {
> +               void __iomem *base;
> +               struct {
> +                       u32 (*read)(struct rvtrace_platform_data *pdata,
> +                                   u32 offset, bool relaxed);
> +                       void (*write)(struct rvtrace_platform_data *pdata=
,
> +                                     u32 val, u32 offset, bool relaxed);
> +               };
> +       };
> +
> +       int bound_cpu;
> +
> +       /* Delay in microseconds when polling control register bits */
> +       int control_poll_timeout_usecs;
> +
> +       /*
> +        * Platform driver must only populate empty pointer array without
> +        * any actual input connections.
> +        */
> +       unsigned int nr_inconns;
> +       struct rvtrace_connection **inconns;
> +
> +       /*
> +        * Platform driver must fully populate pointer array with individ=
ual
> +        * array elements pointing to actual output connections. The src_=
comp
> +        * of each output connection is automatically updated at the time=
 of
> +        * registering component.
> +        */
> +       unsigned int nr_outconns;
> +       struct rvtrace_connection **outconns;
> +};
> +
> +static inline u32 rvtrace_read32(struct rvtrace_platform_data *pdata, u3=
2 offset)
> +{
> +       if (likely(pdata->io_mem))
> +               return readl(pdata->base + offset);
> +
> +       return pdata->read(pdata, offset, false);
> +}
> +
> +static inline u32 rvtrace_relaxed_read32(struct rvtrace_platform_data *p=
data, u32 offset)
> +{
> +       if (likely(pdata->io_mem))
> +               return readl_relaxed(pdata->base + offset);
> +
> +       return pdata->read(pdata, offset, true);
> +}
> +
> +static inline void rvtrace_write32(struct rvtrace_platform_data *pdata, =
u32 val, u32 offset)
> +{
> +       if (likely(pdata->io_mem))
> +               writel(val, pdata->base + offset);
> +       else
> +               pdata->write(pdata, val, offset, false);
> +}
> +
> +static inline void rvtrace_relaxed_write32(struct rvtrace_platform_data =
*pdata,
> +                                          u32 val, u32 offset)
> +{
> +       if (likely(pdata->io_mem))
> +               writel_relaxed(val, pdata->base + offset);
> +       else
> +               pdata->write(pdata, val, offset, true);
> +}
> +
> +static inline bool rvtrace_is_source(struct rvtrace_platform_data *pdata=
)
> +{
> +       return !pdata->nr_inconns ? true : false;
> +}
> +
> +static inline bool rvtrace_is_sink(struct rvtrace_platform_data *pdata)
> +{
> +       return !pdata->nr_outconns ? true : false;
> +}
> +
> +/**
> + * struct rvtrace_component_id - Details to identify or match a RISC-V t=
race component
> + * @type:      Type of the component
> + * @version:   Version of the component
> + * @data:      Data pointer for driver use
> + */
> +struct rvtrace_component_id {
> +       enum rvtrace_component_type type;
> +       u32 version;
> +       void *data;
> +};
> +
> +/**
> + * struct rvtrace_component - Representation of a RISC-V trace component
> + * pdata:    Pointer to underlying platform data
> + * id:       Details to match the component
> + * type_idx: Unique number based on component type
> + * dev:      Device instance
> + * ready:    Flag showing whether RISC-V trace driver was probed success=
fully
> + */
> +struct rvtrace_component {
> +       struct rvtrace_platform_data *pdata;
> +       struct rvtrace_component_id id;
> +       u32 type_idx;
> +       struct device dev;
> +       bool ready;
> +};
> +
> +#define to_rvtrace_component(__dev)    container_of_const(__dev, struct =
rvtrace_component, dev)
> +
> +static inline void rvtrace_get_component(struct rvtrace_component *comp)
> +{
> +       get_device(&comp->dev);
> +}
> +
> +static inline void rvtrace_put_component(struct rvtrace_component *comp)
> +{
> +       put_device(&comp->dev);
> +}
> +
> +const struct rvtrace_component_id *rvtrace_match_id(struct rvtrace_compo=
nent *comp,
> +                                                   const struct rvtrace_=
component_id *ids);
> +struct rvtrace_component *rvtrace_find_by_fwnode(struct fwnode_handle *f=
wnode);
> +
> +int rvtrace_poll_bit(struct rvtrace_platform_data *pdata, int offset,
> +                    int bit, int bitval, int timeout);
> +int rvtrace_enable_component(struct rvtrace_component *comp);
> +int rvtrace_disable_component(struct rvtrace_component *comp);
> +
> +struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu);
> +
> +struct rvtrace_component *rvtrace_register_component(struct rvtrace_plat=
form_data *pdata);
> +void rvtrace_unregister_component(struct rvtrace_component *comp);
> +
> +/**
> + * struct rvtrace_driver - Representation of a RISC-V trace driver
> + * id_table: Table to match components handled by the driver
> + * probe:    Driver probe() function
> + * remove:   Driver remove() function
> + * driver:   Device driver instance
> + */
> +struct rvtrace_driver {
> +       const struct rvtrace_component_id *id_table;
> +       int                     (*probe)(struct rvtrace_component *comp);
> +       void                    (*remove)(struct rvtrace_component *comp)=
;
> +       struct device_driver    driver;
> +};
> +
> +#define to_rvtrace_driver(__drv)   \
> +       ((__drv) ? container_of_const((__drv), struct rvtrace_driver, dri=
ver) : NULL)
> +
> +extern struct platform_driver rvtrace_platform_driver;
> +
> +int __rvtrace_register_driver(struct module *owner, struct rvtrace_drive=
r *rtdrv);
> +#define rvtrace_register_driver(driver) __rvtrace_register_driver(THIS_M=
ODULE, driver)
> +static inline void rvtrace_unregister_driver(struct rvtrace_driver *rtdr=
v)
> +{
> +       if (rtdrv)
> +               driver_unregister(&rtdrv->driver);
> +}
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

