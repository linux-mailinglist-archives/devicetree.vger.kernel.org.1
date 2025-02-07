Return-Path: <devicetree+bounces-144044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65693A2C95A
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 170237A3C97
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3826918FDAE;
	Fri,  7 Feb 2025 16:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FScusrU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B485C18DB2F
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 16:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738947252; cv=none; b=VTe7jBAq3wmOC3Tvxz1+qhp5HaNM5LAs5lIvj1Tj1syUzmh3fftOrTHARppL6X9kof8Q9l93serDd0iMHQYWaO1wsT6bKCQhhhJgG3vaN0Qz7Fs3LSkvma47nOEW8EkUCK3kU4A0PEaHD/wqRelp8OqPXQnwIMRo1Apb+5jAv7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738947252; c=relaxed/simple;
	bh=RBG51+4Lfr8vrZH4BvUqvMXfCP96AceZstCxlo2AYWA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tjrVw35qQ6KQtOCVJgsy5SDNm9WmOTndCUSWw3BiC+l2q/u4OD3wYYJZIf4yRiPTrFHsssPkZG8NnT+j4YuswbS2didO4vvXDShpojZ4y5UDaotJQifGyrUyBp+doWSPaS8N3rDivCmHdWYq6sgRvt2fJ3rcdW2zrYlEdOLVRvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=FScusrU6; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21f2f386cbeso41690795ad.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 08:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738947249; x=1739552049; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0UvshL8nXVJdd7vp4+YSGo25p1rD7pCcETOL1e0fbZQ=;
        b=FScusrU6GtU2JbOsxqOOu2ijBPENshOfq6kNCSn+EvDcOrm5JAecHIRHlMJ4hV+n6p
         5LlmEcqlH0XwH+uZTsHuoRvdKQWIMYB4Cyve03u0VB1FKwT7YkA67l+m97WeYKQEGLqQ
         8h4JhVBR9MMFTq9Hb8hDBBM6k4jTQG+GEDuexm7QnFxyR7M8ACM2yF3HEqJMvilcG4Wp
         hWa76er9zQadEYnS/JH8pJKJpHyqNTzDHFe43kd6q97jSTKJTGzFZ2b7zTv4q/mBnq+w
         TC/caD9UYZDoQDzry5XxrtJsguX9jQqYykIoKTpw6/7QcMdnAu1rr8aecII0iN4kSOqp
         068A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738947249; x=1739552049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0UvshL8nXVJdd7vp4+YSGo25p1rD7pCcETOL1e0fbZQ=;
        b=T5YxWgCv4wZZhOuOkFDeM2yRjsE07xEGYarjl+8+Feeafey41qWPh13oO7s2JeZfl6
         qRg9diXc7O87sgHHKgPpUZtKWrR8+oW3QnWbPEydhQjJ1iTM2GZbgwGeHelQOcWuHNLn
         3+S3sag6hOhLoyjhdZM/1DIfBBIO9rmM1VgBxOM1qjsG6x0YPs7ojaJvfP1Ynadc3t0T
         /UzMMWGtw5TvexLH/S3qqrUxbGxkpH/0QKykiQtWokfH9oDAvkcR9VfoRRo9hjzBogBN
         lXu9/LB2da9VxscfvgpJyHSuhoV93Gu7q1bp2aR/8Xwlxh6UKw+xycog8paq0OJV13FI
         sFRw==
X-Forwarded-Encrypted: i=1; AJvYcCXdU0WlBwlcWJsHJ4QlmKy3pzJUzBnaMNEjFeyEXJ2B0f69BHtsqJB4s9/03jKASWicsWchT8UeKlmZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Y45WWHpPPDhPoNnkEc+mDx2TG1T8HIbDz8kR2OW5/YwIq3NJ
	H8I0ugLOINvn4QGohY5SNZDG3l7oB8kV3lvqB1az1Ozjiokgh8ja2lW4mG1LWXE9+YBbwYXnkMu
	mURIky9g7uJoE77IegORNYgXf4kuIRVobP3uZpw==
X-Gm-Gg: ASbGncvLH9a3He+s2v3zf+acWWD1Lyhn0xzXv4Z7tgFjgtgoG3fZ2Y5NbEWedHMZNhp
	SKJQgjlgHdanw1KbM3U4aYSI/YIs6qEGyZaH/GKz/9l3ervIImvnRXAUh/Wm/6TVgxFa9zLdllQ
	==
X-Google-Smtp-Source: AGHT+IGcOreyYzVTdgMb0QBe7xfS8Hq4n/vBf0b22MVHxkWExD11jxox3l4GddXf+HqClKoe976BaxK99Tn7Vq/+DBg=
X-Received: by 2002:a05:6a21:3399:b0:1e0:d4f4:5b39 with SMTP id
 adf61e73a8af0-1ee03a9b0afmr7073525637.24.1738947249048; Fri, 07 Feb 2025
 08:54:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
 <20250205-counter_delegation-v4-11-835cfa88e3b1@rivosinc.com> <20250206105100.GA2971@willie-the-truck>
In-Reply-To: <20250206105100.GA2971@willie-the-truck>
From: Atish Kumar Patra <atishp@rivosinc.com>
Date: Fri, 7 Feb 2025 08:53:59 -0800
X-Gm-Features: AWEUYZl2-SoqDPQ6r-GdOfUPJBX1qdNjRlIcNpQpRwZeLOQULWh9MTRajFVfra0
Message-ID: <CAHBxVyEtxoRHLO791r6uFzHnX0vAcpeWMOcS+0tbVN+p6Oh2tQ@mail.gmail.com>
Subject: Re: [PATCH v4 11/21] RISC-V: perf: Restructure the SBI PMU code
To: Will Deacon <will@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, 
	Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 6, 2025 at 2:51=E2=80=AFAM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Feb 05, 2025 at 11:23:16PM -0800, Atish Patra wrote:
> > With Ssccfg/Smcdeleg, we no longer need SBI PMU extension to program/
> > access hpmcounter/events. However, we do need it for firmware counters.
> > Rename the driver and its related code to represent generic name
> > that will handle both sbi and ISA mechanism for hpmcounter related
> > operations. Take this opportunity to update the Kconfig names to
> > match the new driver name closely.
> >
> > No functional change intended.
> >
> > Signed-off-by: Atish Patra <atishp@rivosinc.com>
> > ---
> >  MAINTAINERS                                       |   4 +-
> >  arch/riscv/include/asm/kvm_vcpu_pmu.h             |   4 +-
> >  arch/riscv/include/asm/kvm_vcpu_sbi.h             |   2 +-
> >  arch/riscv/kvm/Makefile                           |   4 +-
> >  arch/riscv/kvm/vcpu_sbi.c                         |   2 +-
> >  drivers/perf/Kconfig                              |  16 +-
> >  drivers/perf/Makefile                             |   4 +-
> >  drivers/perf/{riscv_pmu.c =3D> riscv_pmu_common.c}  |   0
> >  drivers/perf/{riscv_pmu_sbi.c =3D> riscv_pmu_dev.c} | 214 ++++++++++++=
+---------
>
> This seems... gratuitous? It feels like renaming the file could be a pain
> for managing backports and renaming the driver might cause some headaches
> in userspace.
>
> What do you gain from such an invasive change?
>

The current upstream driver was developed only for SBI PMU[1] due to
lack of any ISA extension support that allows PMU programming from the
kernel.
Thus, the name of the file and the functions reflect those assumptions.

IMO, it would be confusing to use a driver named sbi that also uses
the new ISA extensions that allows direct PMU programming from the
kernel.
This patch allows the internal functions and structure to clearly
identify two ways of PMU programming.
There are more PMU related ISA extensions planned in the future as
well. Thus, I felt it would be best to do these changes now rather
than later.
I understand that managing the backport would be a pain as a result
but I didn't quite understand the concern about the userspace
headances.
Can you please clarify that ?

[1] https://github.com/riscv-non-isa/riscv-sbi-doc/blob/master/src/ext-pmu.=
adoc


> Will

