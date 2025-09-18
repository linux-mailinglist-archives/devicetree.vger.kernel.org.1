Return-Path: <devicetree+bounces-215945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5FFB53398
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:24:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AC4C17DB12
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4DC9327A0B;
	Thu, 11 Sep 2025 13:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="AZe2TiuN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080CA3112D9
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597060; cv=none; b=JLyi8NBWYgUY0vtdE/SRmY+D5T5zg1wetkW1NNc1yGi1gK4cCtbp3XSPIv9AQPpAcG2/S6BV2Ggi6Ri9mR9ZcTtzOLRCnU+MEX1tr6LEMZkKK5+wD1TH5jODtxJJ8pTMkACEgug0hR/Y8gIvXZuZvPqDTUc2q0LAONxZPpvENxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597060; c=relaxed/simple;
	bh=TaQueTEoC6o4eB4nfhhT60PYphmO+Aqh4TLGtadNh0Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VU4XSnh5ThBrmNUzJc37dDAOos/ZAqg008nyGXUHq3TkYOjY33wjrE2OE3tOyIbdRWKqH95tHZoohpi6K32mKG6IVA2KvaFvnMn/A9ijlo9krjg4UnbJjTZZPxMMmavvnH7GnYOdlOlRmPvvsZ1aXMEHt/ogNOvhnMI5e9Sj1uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=AZe2TiuN; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-30ccec59b4bso509968fac.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1757597057; x=1758201857; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfBLhNXXq9Rsc8Z2YKn++Jo2sHEm+zyXMU4WnJYLHBc=;
        b=AZe2TiuNvKAyR3O64Gf1pmmac6nhibKl0D9U/RGp5QiY4wdCa9iqwGCc7mlUqEurJL
         Axull3NGyACzSOti43Eh3Rahh9250OVwGJAta2enzLZoXLgc4+139qgE8EQF3rXfnyYH
         sthP5xJ7cjaqBKnTinsd7fxYveZjjwwUTIGXajF6ANJE6DRB5lCrMGUm119ezv/LMhxW
         0TJUDGGUdGGd57wZfgOLTt2fP5BxjtD6GEQIuEw6IuTXOozMt1UQjpmqB0Og1cEUoQi7
         5neTIK5UhjJELgAtKrxVbHVkWqJKDzE7ETtWtpV8Y3psMF0XaLpYykLGG9cK2lp8D2up
         wb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757597057; x=1758201857;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfBLhNXXq9Rsc8Z2YKn++Jo2sHEm+zyXMU4WnJYLHBc=;
        b=KhRWC5BVg0fOpoUUPWLD1ZKIYpTPl89qN8+A5KSs6IbUwESu8/h/Kqw7g2npYJdtwY
         JgPsuFQQslTZFWLKf5PAnJu7x7JkQGUCGw+nL7kXhzCTte7vX4XfRNPugfACAam9lNKU
         OfeoouTDiWXNBBUqMyCa1aAxnJxQbn7YGtiYnZr58A0IR/jMeF7jENzOArB7q3qM+yP0
         iN/8/Z8cfj9FtVCumNTlX5L+WR4YA60AFokc8kB6zzq25dkXudYpfOOuPW+TW6pfQg+T
         0/dDrFFplkuqqjNltwOr/drR7hgqyQH+sY5pFVTYl+tVf7LMDcMy7MmRkMnNIdmvRLKN
         BwVw==
X-Forwarded-Encrypted: i=1; AJvYcCUu5ytCT1WgXmNNdR5lk59wVgw9WRv7ezfZoeONmf9TWgrTdVD1lrLU9Lal5jR9uGDXMPAhzOBO5qW6@vger.kernel.org
X-Gm-Message-State: AOJu0YyFKUAxVAeme/RyuSky++g8P7E8B2ycbSvAISYDk2FTYCIuVr2Y
	OK7PqSMT7yC6/ITwckiYlWoJ3SOtpcCZNFdYvREFxCVia4mLBDvvfBCJrvyhAjSprzM9wtOjdVA
	4E6AqKHIi5gS9ThQCpfhhkGJrEQbZCxzBz0ks2Gsqiw==
X-Gm-Gg: ASbGncse6CXEa6k1Q0YIsC2CeQooygjW0tRCNkLl2jfi7VmFo2AZP10NyJW+fywJUj5
	oF/G2tiEiwCQY53GnLLUX8xAORMl92bgcVeg0wn4mSvAj2jEVkIYwvPYJQbybb2N9g+qC4gjMN/
	3dU0/fI06Qe0t7HSQC83Dn7LxO1Omz8sRQa2NEhbBdoeIO7RbUGEJRtyoVJGtELfbg6qkWEG3aQ
	OfWL/GWUlDjhOXD
X-Google-Smtp-Source: AGHT+IHRdBKXm1Bz1NHFHe2IrSKtcJoxyFdHCG+gmrlFxehDwahE40seZUC2QEjKPDn+5kw4bLLqvWTXBPHddQo3Z4w=
X-Received: by 2002:a05:6870:4e8c:b0:31d:63f9:b247 with SMTP id
 586e51a60fabf-32264607e14mr11225562fac.25.1757597056938; Thu, 11 Sep 2025
 06:24:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250327-counter_delegation-v5-0-1ee538468d1b@rivosinc.com> <20250327-counter_delegation-v5-18-1ee538468d1b@rivosinc.com>
In-Reply-To: <20250327-counter_delegation-v5-18-1ee538468d1b@rivosinc.com>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Thu, 11 Sep 2025 21:24:04 +0800
X-Gm-Features: Ac12FXwLi65vQtG3EKjaprZe3vR6jcXi2qMAlWPQLWbqK3WvwYrKsOxiKlH-8R4
Message-ID: <CAEEQ3wk92bmHQb=EbM-Ev0ra=eS-ZH6_aGTqAw1WENXpORXUKg@mail.gmail.com>
Subject: Re: [External] [PATCH v5 18/21] RISC-V: perf: Add Qemu virt machine events
To: Atish Patra <atishp@rivosinc.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, 
	Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Atish,

On Fri, Mar 28, 2025 at 3:46=E2=80=AFAM Atish Patra <atishp@rivosinc.com> w=
rote:
>
> Qemu virt machine supports a very minimal set of legacy perf events.
> Add them to the vendor table so that users can use them when
> counter delegation is enabled.
>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>
> ---
>  arch/riscv/include/asm/vendorid_list.h |  4 ++++
>  drivers/perf/riscv_pmu_dev.c           | 36 ++++++++++++++++++++++++++++=
++++++
>  2 files changed, 40 insertions(+)
>
> diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/=
asm/vendorid_list.h
> index a5150cdf34d8..0eefc844923e 100644
> --- a/arch/riscv/include/asm/vendorid_list.h
> +++ b/arch/riscv/include/asm/vendorid_list.h
> @@ -10,4 +10,8 @@
>  #define SIFIVE_VENDOR_ID       0x489
>  #define THEAD_VENDOR_ID                0x5b7
>
> +#define QEMU_VIRT_VENDOR_ID            0x000
> +#define QEMU_VIRT_IMPL_ID              0x000
> +#define QEMU_VIRT_ARCH_ID              0x000
> +
>  #endif
> diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
> index 8a079949e3a4..cd2ac4cf34f1 100644
> --- a/drivers/perf/riscv_pmu_dev.c
> +++ b/drivers/perf/riscv_pmu_dev.c
> @@ -26,6 +26,7 @@
>  #include <asm/sbi.h>
>  #include <asm/cpufeature.h>
>  #include <asm/vendor_extensions.h>
> +#include <asm/vendorid_list.h>
>  #include <asm/vendor_extensions/andes.h>
>  #include <asm/hwcap.h>
>  #include <asm/csr_ind.h>
> @@ -391,7 +392,42 @@ struct riscv_vendor_pmu_events {
>           .hw_event_map =3D _hw_event_map, .cache_event_map =3D _cache_ev=
ent_map, \
>           .attrs_events =3D _attrs },
>
> +/* QEMU virt PMU events */
> +static const struct riscv_pmu_event qemu_virt_hw_event_map[PERF_COUNT_HW=
_MAX] =3D {
> +       PERF_MAP_ALL_UNSUPPORTED,
> +       [PERF_COUNT_HW_CPU_CYCLES]              =3D {0x01, 0xFFFFFFF8},
> +       [PERF_COUNT_HW_INSTRUCTIONS]            =3D {0x02, 0xFFFFFFF8}
> +};
> +
> +static const struct riscv_pmu_event qemu_virt_cache_event_map[PERF_COUNT=
_HW_CACHE_MAX]
> +                                               [PERF_COUNT_HW_CACHE_OP_M=
AX]
> +                                               [PERF_COUNT_HW_CACHE_RESU=
LT_MAX] =3D {
> +       PERF_CACHE_MAP_ALL_UNSUPPORTED,
> +       [C(DTLB)][C(OP_READ)][C(RESULT_MISS)]   =3D {0x10019, 0xFFFFFFF8}=
,
> +       [C(DTLB)][C(OP_WRITE)][C(RESULT_MISS)]  =3D {0x1001B, 0xFFFFFFF8}=
,
> +
> +       [C(ITLB)][C(OP_READ)][C(RESULT_MISS)]   =3D {0x10021, 0xFFFFFFF8}=
,
> +};
> +
> +RVPMU_EVENT_CMASK_ATTR(cycles, cycles, 0x01, 0xFFFFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(instructions, instructions, 0x02, 0xFFFFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(dTLB-load-misses, dTLB_load_miss, 0x10019, 0xFFFF=
FFF8);
> +RVPMU_EVENT_CMASK_ATTR(dTLB-store-misses, dTLB_store_miss, 0x1001B, 0xFF=
FFFFF8);
> +RVPMU_EVENT_CMASK_ATTR(iTLB-load-misses, iTLB_load_miss, 0x10021, 0xFFFF=
FFF8);

If other vendors intend to define it, would that throw a duplicate
definition error?

> +
> +static struct attribute *qemu_virt_event_group[] =3D {
> +       RVPMU_EVENT_ATTR_PTR(cycles),
> +       RVPMU_EVENT_ATTR_PTR(instructions),
> +       RVPMU_EVENT_ATTR_PTR(dTLB_load_miss),
> +       RVPMU_EVENT_ATTR_PTR(dTLB_store_miss),
> +       RVPMU_EVENT_ATTR_PTR(iTLB_load_miss),
> +       NULL,
> +};
> +
>  static struct riscv_vendor_pmu_events pmu_vendor_events_table[] =3D {
> +       RISCV_VENDOR_PMU_EVENTS(QEMU_VIRT_VENDOR_ID, QEMU_VIRT_ARCH_ID, Q=
EMU_VIRT_IMPL_ID,
> +                               qemu_virt_hw_event_map, qemu_virt_cache_e=
vent_map,
> +                               qemu_virt_event_group)
>  };
>
>  const struct riscv_pmu_event *current_pmu_hw_event_map;
>
> --
> 2.43.0
>
>

Thanks,
Yunhui

