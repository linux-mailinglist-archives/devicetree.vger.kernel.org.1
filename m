Return-Path: <devicetree+bounces-225367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 037BDBCCDE0
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC9E94204C8
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A93642D0629;
	Fri, 10 Oct 2025 12:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="CzL1NYXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2E2289340
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760099047; cv=none; b=CUTe9fkJQt476KvC4YM+nbsJHgaXrEx9w11sU/ixwFXHtMtQnqVez+9DdlE5GVixGoort9/XhjnV64iqXoSI4P7UqxwqrTQCKBOIYTGAsAv22Or6R52c7Zhafju+2yZxNSPWwRiFzV5mEMPETsesajWthDAuVA7YLCcBEDeBKus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760099047; c=relaxed/simple;
	bh=VikWKkG6XHYuWwJ0LqHNlM5SlI2m77fONIHGfB8p2Oc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LeCuZAsHUd9F/MIo4Co0YkhYh46HSUwrzDoUVsB0TaUCXXSqcUtla8b107I6IYZkjLej0paMU/3jAJuONuAzv5m5CG66+j+YS9v2VTl9/EGyihZA0TkGQF7XkXEWwU8KcWr0YvaioMSQhg3vzxgs3frWAk0bO7Z+Duy6MLZIE8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=CzL1NYXZ; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-35ba7c71bfdso1029246fac.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1760099043; x=1760703843; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ro3+kAua24TbasdwiZJ06Dvn43ZJ82YF71cQ3Adsr5c=;
        b=CzL1NYXZrgdEIhCFHGQ9m2rtavwPpC2h7wZ3rPUos+9gwsjWNGWXqiBEpqUyWj3X2G
         xlkhYaV6S8sQAkf6pQKOQRLmv9CfhR51pG+bVwD1lLZi8ehtL5NNnhBt6AuzusXSEW+w
         WQGc8vEztQsZFyGM1224i01PEbC8CAixSNFSPxWRvjit2f7HOhx4ViKCrHuXG1TEXBSC
         JEv8KWfUGJfpk9Frf66wF1of0XqyyoZaO5ZfzKgbOdgHJ5KY8ZyrY309U7yhzNTIGnyj
         Jv5X6T8BqU+UPBDNSvVC/9o5kxYoRihTj6ZNYvW/yfb09WQXzNlbwhABf5csmqo64paK
         cyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760099043; x=1760703843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ro3+kAua24TbasdwiZJ06Dvn43ZJ82YF71cQ3Adsr5c=;
        b=Hj4vvHkfD4fNTKeRus4iVZRkTC2sDbJ0+NZ2VSj/tMI0KIcvpFa6vUQeVbTbj6rSoI
         2ZzTtt3ZWa7GKY1+TlLq4tCinz9jNU0rqXrXiaRUR9SGc9jYTou4kZwQC/00wAU+/F7c
         9riMcJ/wYWeKQAiQDNRUywYF109ogFwMoTC13+TXRVtRmqB3k5mdGl4vUoxtxAJatHLQ
         EdHTzXRLPC9q4oqbS3mOJzudgmnpeJZBsajqsPzyzvzfVZz01sQq/qXyXCGAjUZMhMm2
         E1ZcVHLC6KPfsjrLRNn8d/P3ben63NzexnO6IIwqTqEUlTXkQrnxv0RzgnL7fhqubnJg
         B77g==
X-Forwarded-Encrypted: i=1; AJvYcCXArV1/LXRZZ0xesMim8QkvejewDEwvkoVbbSvftzMi9SdqrW9fMBZZsBRR1YGDNzOkJmeIiETJZir0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2suLpLZxYRe7fIY0Fx3Oscn5rMyzkWFopnkqnAKC7zGnkDVSw
	UPdfQR/B5qXlQEu8tAr3sBHAsEazSxYW++gbqoxv6lalESZ36mLqNOkarD3A4XI48+2J6wCbXm6
	9C8EH0rC3+xOBFAN9Q5CmygQCQ+xJh4G7y0BbB27I1Q==
X-Gm-Gg: ASbGncuhBjxVCJAoYLW5TAe8lBObkz3/Z2xj26E9tyxs1u5HpO5tdF7Zfv9hM3cGIhl
	XvPjfFN7Ku+/KfJR+QTszuXtfphPg9X2C8wRNySvaRWd1C/GR27Mp028ul/WdOF4Ss2xJUl71S4
	Ttkb3HnxoB9MOEXAW8yuG++V5uSmuWd0kerKcqjQXbd17v0RV7A97wvWyTuLP3qbbC2ASUJyp2G
	M+6V8cE6j1lKTULIZrJgXf5Raj39fZl93z3lQ8=
X-Google-Smtp-Source: AGHT+IFwxCA7x9/0sbYa1+iquw2dNW2ztO7RgA5N9vNqLZKjJ8WptOtg61iPfZU7eyB/c+01KuJjQS2dtnsOgkC9/no=
X-Received: by 2002:a05:6870:d372:b0:3a5:81b0:8339 with SMTP id
 586e51a60fabf-3c0f91a8ef0mr5229274fac.31.1760099042537; Fri, 10 Oct 2025
 05:24:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-ssqosid-v4-0-e8b57e59d812@kernel.org>
In-Reply-To: <20251007-ssqosid-v4-0-e8b57e59d812@kernel.org>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Fri, 10 Oct 2025 20:23:50 +0800
X-Gm-Features: AS18NWBjm-gW9xf5A556itmFvcxR3HUB5zONSZ2JAVqk6TC55UaCFUsRW7mLiVI
Message-ID: <CAEEQ3w=3pte5=CR9-R3rmCGFZ9ErJ9YcWS9i=JwPUb1Ty3ipwQ@mail.gmail.com>
Subject: Re: [External] [PATCH v4 0/3] RISC-V: Detect Ssqosid extension and
 handle srmcfg CSR
To: Drew Fustini <fustini@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
	Adrien Ricciardi <aricciardi@baylibre.com>, James Morse <james.morse@arm.com>, 
	Atish Kumar Patra <atishp@rivosinc.com>, Atish Patra <atish.patra@linux.dev>, 
	Vasudevan Srinivasan <vasu@rivosinc.com>, Conor Dooley <conor.dooley@microchip.com>, guo.wenjia23@zte.com.cn, 
	liu.qingtao2@zte.com.cn, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Drew,

On Wed, Oct 8, 2025 at 2:22=E2=80=AFPM Drew Fustini <fustini@kernel.org> wr=
ote:
>
> This series adds support for the RISC-V Quality-of-Service Identifiers
> (Ssqosid) extension [1] which adds the srmcfg register. This CSR
> configures a hart with two identifiers: a Resource Control ID (RCID)
> and a Monitoring Counter ID (MCID). These identifiers accompany each
> request issued by the hart to shared resource controllers.
>
> Background on RISC-V QoS:
>
> The Ssqosid extension is used by the RISC-V Capacity and Bandwidth
> Controller QoS Register Interface (CBQRI) specification [2]. QoS in
> this context is concerned with shared resources on an SoC such as cache
> capacity and memory bandwidth. Intel and AMD already have QoS features
> on x86 and ARM has MPAM. There is an existing user interface in Linux:
> the resctrl virtual filesystem [3].
>
> The srmcfg CSR provides a mechanism by which a software workload (e.g.
> a process or a set of processes) can be associated with an RCID and an
> MCID. CBQRI defines operations to configure resource usage limits, in
> the form of capacity or bandwidth. CBQRI also defines operations to
> configure counters to track the resource utilization.
>
> Goal for this series:
>
> These patches are taken from the implementation of resctrl support for
> RISC-V CBQRI. Please refer to the proof-of-concept RFC [4] for details
> on the resctrl implementation. More recently, I have rebased the CBQRI
> support on mainline [5]. Big thanks to James Morse for the tireless
> work to extract resctrl from arch/x86 and make it available to all
> architectures.
>
> I think it makes sense to first focus on the detection of Ssqosid and
> handling of srmcfg when switching tasks. It has been tested against a
> QEMU branch that implements Ssqosid and CBQRI [6]. A test driver [7]
> was used to set srmcfg for the current process. This allows switch_to
> to be tested without resctrl.

Could we consider submitting the entire QoS functionality as a single
integrated patchset (indicating the upstream branch that the patchset
is based on)? This should include the content from
https://lore.kernel.org/linux-riscv/20230419111111.477118-1-dfustini@baylib=
re.com/


>
> [1] https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
> [2] https://github.com/riscv-non-isa/riscv-cbqri/releases/tag/v1.0
> [3] https://docs.kernel.org/filesystems/resctrl.html
> [4] https://lore.kernel.org/linux-riscv/20230419111111.477118-1-dfustini@=
baylibre.com/
> [5] https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log=
/?h=3Db4/cbqri
> [6] https://github.com/tt-fustini/qemu/tree/riscv-cbqri-rqsc-pptt
> [7] https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log=
/?h=3Db4/ssqosid-debug
>
> Changes in v4:
>  - Rebase on riscv/for-next as of riscv-for-linus-6.18-mw2
>  - Add Conor's Acked-by to the yaml patch
>  - Link to v3: https://lore.kernel.org/all/20250920-ssqosid-v6-17-rc5-v3-=
0-5093162922d8@kernel.org/
>
> Changes in v3:
>  - Fix parameter in __switch_to_srmcfg() when CONFIG_RISCV_ISA_SSQOSID
>    is not set to avoid error in clang. This does trigger checkpatch
>    warning about "Argument '__next' is not used in function-like macro"
>    but it seems that '__switch_to_srmcfg(__next)' is needed to avoid
>    the error that LKP reported. '__switch_to_srmcfg()' will trigger a
>    build error in clang.
>    https://lore.kernel.org/oe-kbuild-all/202509162355.wByessnb-lkp@intel.=
com/
>  - Improve description of ssqosid in extensions.xml
>  - Link to v2: https://lore.kernel.org/linux-riscv/20250915-ssqosid-v6-17=
-rc5-v2-0-2d4b0254dfd6@kernel.org/
>
> Changes in v2:
>  - Restore the per-cpu fix from RFC v2 that was missed in v1:
>    change DEFINE_PER_CPU to DECLARE_PER_CPU in qos.h and move
>    DEFINE_PER_CPU to qos.c
>  - Introduce a patch that adds Ssqosid to riscv/extensions.yaml
>  - Link to v1: https://lore.kernel.org/r/20250910-ssqosid-v6-17-rc5-v1-0-=
72cb8f144615@kernel.org
>
> Changes in v1:
>  - Rename all instances of the sqoscfg CSR to srmcfg to match the
>    ratified Ssqosid spec
>  - Link RFC v2: https://lore.kernel.org/linux-riscv/20230430-riscv-cbqri-=
rfc-v2-v2-0-8e3725c4a473@baylibre.com/
>
> Changes in RFC v2:
>  - change DEFINE_PER_CPU to DECLARE_PER_CPU for cpu_sqoscfg in qos.h to
>    prevent linking error about multiple definition. Move DEFINE_PER_CPU
>    for cpu_sqoscfg into qos.c
>  - renamed qos prefix in function names to sqoscfg to be less generic
>  - handle sqoscfg the same way has_vector and has_fpu are handled in the
>    vector patch series
>  - Link to RFC v1: https://lore.kernel.org/linux-riscv/20230410043646.313=
8446-1-dfustini@baylibre.com/
>
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> ---
> Drew Fustini (3):
>       dt-bindings: riscv: Add Ssqosid extension description
>       RISC-V: Detect the Ssqosid extension
>       RISC-V: Add support for srmcfg CSR from Ssqosid ext
>
>  .../devicetree/bindings/riscv/extensions.yaml      |  6 ++++
>  MAINTAINERS                                        |  7 ++++
>  arch/riscv/Kconfig                                 | 17 +++++++++
>  arch/riscv/include/asm/csr.h                       |  8 +++++
>  arch/riscv/include/asm/hwcap.h                     |  1 +
>  arch/riscv/include/asm/processor.h                 |  3 ++
>  arch/riscv/include/asm/qos.h                       | 41 ++++++++++++++++=
++++++
>  arch/riscv/include/asm/switch_to.h                 |  3 ++
>  arch/riscv/kernel/Makefile                         |  2 ++
>  arch/riscv/kernel/cpufeature.c                     |  1 +
>  arch/riscv/kernel/qos/Makefile                     |  2 ++
>  arch/riscv/kernel/qos/qos.c                        |  5 +++
>  12 files changed, 96 insertions(+)
> ---
> base-commit: 68247d45c045bb7dda923cf2c8d0937ce0e16394
> change-id: 20251007-ssqosid-ddc87968b2d9
>
> Best regards,
> --
> Drew Fustini <fustini@kernel.org>
>
>

Thanks,
Yunhui

