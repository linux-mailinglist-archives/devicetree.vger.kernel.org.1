Return-Path: <devicetree+bounces-261614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNSYJnIXgGma2gIAu9opvQ
	(envelope-from <devicetree+bounces-261614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 04:18:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3168DC8022
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 04:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31A0830010F9
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 03:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D509B2222B6;
	Mon,  2 Feb 2026 03:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="LU6p2xEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13751B4F1F
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 03:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770002287; cv=pass; b=NjWLlfWMwhxNb8Ga3MWzUDq0TPR2L8hAvIA0TrkEYbXhj6I5+cvc4Ivlkaw9viaDJHSfF7c7tN6+z5naPBRqrNZ6FVkdZoR+nA0QRfvGWN2C3rw6pIWSaIgyl/yLIs+NHm2DF9y/+RmBl+KBc17ikwhdtYFWaV9MQGqcmy4t0bw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770002287; c=relaxed/simple;
	bh=ShGgQhbThQ6I+6O+faNv+aPbTubcoIQhkPUIA0b5/DY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bSEqCIs6L4TFtoczOV0YeG0HqjzM3t41p+FdooEh5r8dJS4tp01qksvZ9X8HlAywCIhYqSpnLmaPiQz4zzc6DWwUx0BdwTxCVVb1PwQwL9AnPe9l3IUKEDwLaft4DMs1GOgB8qob37qWIkSOFVSmtxm8JEP6jNRRgVLcv9fRGIk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=LU6p2xEg; arc=pass smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-658d54197d3so6439298a12.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 19:18:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770002284; cv=none;
        d=google.com; s=arc-20240605;
        b=c0zYxqa8R5XEfg/PuXpxStnWbXts6K0ovWxlxEgdDY5HIsmLW2c2zDqwG/+3qTDvkG
         SMeCgjzV3n1nvMIHzS9mfXWkTg8otdB/VSOHHHpje0GoEjYy3IVybQsVv4qeJjt0suvu
         WTgy84IfQ9Dvaj08LaEry5BM++1qY2aGcGCgJHajuTiDSb7wOlL4Yrdtav+QsRjHsC3H
         5oLAiNpng4Ie+wHS71Ufn6t6v7bSwc6BQ8lUM8EoeiUt21m5AfNsBImOX+/BFjlcUWVt
         09C0mzW27g1lTz5k2C+FaCu+egp9dXhHEPmVtAPybDmikdb5Y72aILXvEIDbg+GOnlGt
         4BJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=f2z9Nua1MUqgPyVmhT784kx+od6sNmMKO2jLUk+q1qQ=;
        fh=kSm1WlFrJaj6A5ur3jFQwIyVsnUTCU9rdpenrxpDpr0=;
        b=cTYAxWaQ1/G8bJq+AJ1M538bgHyYq/fZ1h3BXibnN/AERsuo/TShiGEIfUjTJ4GMe1
         YE4d22LkvawBc/NehwwWZrI0GvZFltQhUXdY26GtwOx7I/Bio+e5i+l1LZmZokp1GDjF
         Gcanc57YBmg9YLthKSNu2QFjnUWuQVm8B1kXphR8izXMd5wEXmEwBQOSPV4XQYo9Dd74
         z+MaFNIDGiSdiFyWz2jETXpJn4dnoOeeqGvPLddvAIrAEVYFyepprXSNfaBy1mAt8qpH
         Sqq1AQwFfxvfDxZnAQeuuugMKYDFiUK/zbqSY4jVehfjmSKXpABg1FHR0W0W5HiTMUJH
         iKVw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1770002284; x=1770607084; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2z9Nua1MUqgPyVmhT784kx+od6sNmMKO2jLUk+q1qQ=;
        b=LU6p2xEgti5eKXNUF3ok6dU9DmsAgp0hl4aOWifzPglTas3J69vKhD4yBZTJKJeOkL
         P29AXMwPN79x6A1hDhspOxjPMR949zQi48mdzHOYSoC1gXAwwgvWeC10ZNV+C8gb2iwU
         m7cnrm/2018J5/M9rbDB5Sqsqa8eq7F7cT7+GoHm9tfDrKfkfXp19EKRBeUjggeQxUxx
         4rOuK1khg3jfBfq6BofB2SbgLdQFkxLeiHNN0BhVTACbsK8GnrMm58nOrdyOenu+Od8o
         vw+XF1JV6++e16yfI3KSSbI++m8B7FYLom5vo6ecAywwDsN/X3XE926t4zqWcTmuXihM
         2jLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770002284; x=1770607084;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f2z9Nua1MUqgPyVmhT784kx+od6sNmMKO2jLUk+q1qQ=;
        b=dvS/4gXy3FmYf3S6KZeEvhwjuSW3ieWMcj2A12D6R3pCE1bpOHPNVwEGrmndXllFT7
         z44FEaC2lepmR1Jq2cIeoDFnvEBX8gLzFM1q14IPqXXxT2R6TrHHTCdQVQ7xI4v/eLJG
         MjkTpgKe3BQnPRuQObePJEhyxOozGDdP9zcyvAAMwGOtpjzR1KTymNfUC040090ec6fe
         gZ971lv1Oij2AUJ088WxA8gC23r38dunZNgc0FIeJjwxAMOCw8HqZzgCVt2L7e/L8oFm
         SWS0+c360/OxCQnt6PWH9sXgzLymn1NJt0Iq+SHRk93jATBhgCJWC5ptw3HhrgkwmpYJ
         gz6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXt0l0O756Pm0T+P8pJxHNC5zR9zHlrUtXDw6wgw/4EU8WZG+IURrXSgO7g+ZetKsXYSE9bcFDYD2ea@vger.kernel.org
X-Gm-Message-State: AOJu0YynDK3PAbiBRMNLFuaCIkU2bgs2UvZgP3DgOgVrjx+NH2PXaDaL
	N1SfA5N+CcyT1qroZwSMVape6KF5wvrmS2HGs5xmpwMHU7jKilmTzZBy3APptOV9c1xc+EQq7UG
	xqe6XPJCmYUdHrC9UDiXYQmyNaTqb+0a8RVIjt/yQXw==
X-Gm-Gg: AZuq6aK3CQ8jkcG0PWDoiexIth4K+XxvaM1i+HHl3iCrjbluDbZTKfx1tDXOqQHhooh
	8S/DpvCR2W2cPao+Te67bRXJ20wpUv1HdsuoP4ECmJuFPeR4Icr+zOEL8XXrqy2wmjrfrhFi7vZ
	F7e8jsV0maD4LGTSUchdwjkNK51Q7me2CFW+qeq0HO89z0ijPbTzQ2p4UOD3tN7uVx0mBkWcFPs
	w+JW0d+WvDWq6ypWPZJaLlw9BP20UPyQ4tXBshPzCtmnYhnNr+oCUJfUEsgCs3T6D+xiL3JqtR1
	8g==
X-Received: by 2002:a05:6402:146e:b0:64b:5885:87d6 with SMTP id
 4fb4d7f45d1cf-658de5936acmr5660707a12.24.1770002283907; Sun, 01 Feb 2026
 19:18:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-ssqosid-cbqri-v2-0-dca586b091b9@kernel.org> <20260128-ssqosid-cbqri-v2-3-dca586b091b9@kernel.org>
In-Reply-To: <20260128-ssqosid-cbqri-v2-3-dca586b091b9@kernel.org>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Mon, 2 Feb 2026 11:17:52 +0800
X-Gm-Features: AZwV_QjLj_QCXAGGOyiKRELyI0nXPUskAFHV0pKdx8_ngOCQOAP2pJR-3btcosk
Message-ID: <CAEEQ3wkqC4jFf1LGgh2c6dgGwT=tuvpFV+D4fiw40P3LZ7_8hg@mail.gmail.com>
Subject: Re: [External] [PATCH RFC v2 03/17] RISC-V: Add support for srmcfg
 CSR from Ssqosid ext
To: Drew Fustini <fustini@kernel.org>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	=?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Adrien Ricciardi <aricciardi@baylibre.com>, 
	Nicolas Pitre <npitre@baylibre.com>, =?UTF-8?Q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
	Atish Patra <atish.patra@linux.dev>, Atish Kumar Patra <atishp@rivosinc.com>, 
	Vasudevan Srinivasan <vasu@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
	Chen Pei <cp0613@linux.alibaba.com>, Liu Zhiwei <zhiwei_liu@linux.alibaba.com>, 
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn, liu.qingtao2@zte.com.cn, 
	Reinette Chatre <reinette.chatre@intel.com>, Tony Luck <tony.luck@intel.com>, 
	Babu Moger <babu.moger@amd.com>, Peter Newman <peternewman@google.com>, 
	Fenghua Yu <fenghua.yu@intel.com>, James Morse <james.morse@arm.com>, 
	Ben Horgan <ben.horgan@arm.com>, Dave Martin <Dave.Martin@arm.com>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, x86@kernel.org, 
	Rob Herring <robh@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
	Robert Moore <robert.moore@intel.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, linux-acpi@vger.kernel.org, 
	acpica-devel@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261614-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bytedance.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,bytedance.com:dkim,semihalf.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,brainfault.org:email]
X-Rspamd-Queue-Id: 3168DC8022
X-Rspamd-Action: no action

Hi Drew,

On Thu, Jan 29, 2026 at 4:28=E2=80=AFAM Drew Fustini <fustini@kernel.org> w=
rote:
>
> Add support for the srmcfg CSR defined in the Ssqosid ISA extension
> (Supervisor-mode Quality of Service ID). The CSR contains two fields:
>
>   - Resource Control ID (RCID) used determine resource allocation
>   - Monitoring Counter ID (MCID) used to track resource usage
>
> Requests from a hart to shared resources like cache will be tagged with
> these IDs. This allows the usage of shared resources to be associated
> with the task currently running on the hart.
>
> A srmcfg field is added to thread_struct and has the same format as the
> srmcfg CSR. This allows the scheduler to set the hart's srmcfg CSR to
> contain the RCID and MCID for the task that is being scheduled in. The
> srmcfg CSR is only written to if the thread_struct.srmcfg is different
> than the current value of the CSR.
>
> A per-cpu variable cpu_srmcfg is used to mirror that state of the CSR.
> This is because access to L1D hot memory should be several times faster
> than a CSR read. Also, in the case of virtualization, accesses to this
> CSR are trapped in the hypervisor.
>
> Link: https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
> Co-developed-by: Kornel Dul=C4=99ba <mindal@semihalf.com>
> Signed-off-by: Kornel Dul=C4=99ba <mindal@semihalf.com>
> [fustini: rename csr, refactor switch_to, rebase on upstream]
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> ---
>  MAINTAINERS                        |  7 +++++++
>  arch/riscv/Kconfig                 | 17 ++++++++++++++++
>  arch/riscv/include/asm/csr.h       |  8 ++++++++
>  arch/riscv/include/asm/processor.h |  3 +++
>  arch/riscv/include/asm/qos.h       | 41 ++++++++++++++++++++++++++++++++=
++++++
>  arch/riscv/include/asm/switch_to.h |  3 +++
>  arch/riscv/kernel/Makefile         |  2 ++
>  arch/riscv/kernel/qos/Makefile     |  2 ++
>  arch/riscv/kernel/qos/qos.c        |  5 +++++
>  9 files changed, 88 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 765ad2daa218..e98d553bd0ca 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22505,6 +22505,13 @@ F:     drivers/perf/riscv_pmu.c
>  F:     drivers/perf/riscv_pmu_legacy.c
>  F:     drivers/perf/riscv_pmu_sbi.c
>
> +RISC-V QOS RESCTRL SUPPORT
> +M:     Drew Fustini <fustini@kernel.org>
> +L:     linux-riscv@lists.infradead.org
> +S:     Supported
> +F:     arch/riscv/include/asm/qos.h
> +F:     arch/riscv/kernel/qos/
> +
>  RISC-V RPMI AND MPXY DRIVERS
>  M:     Rahul Pathak <rahul@summations.net>
>  M:     Anup Patel <anup@brainfault.org>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 6b39f37f769a..35a6238b02c5 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -595,6 +595,23 @@ config RISCV_ISA_SVNAPOT
>
>           If you don't know what to do here, say Y.
>
> +config RISCV_ISA_SSQOSID
> +       bool "Ssqosid extension support for supervisor mode Quality of Se=
rvice ID"
> +       default y
> +       help
> +         Adds support for the Ssqosid ISA extension (Supervisor-mode
> +         Quality of Service ID).
> +
> +         Ssqosid defines the srmcfg CSR which allows the system to tag t=
he
> +         running process with an RCID (Resource Control ID) and MCID
> +         (Monitoring Counter ID). The RCID is used to determine resource
> +         allocation. The MCID is used to track resource usage in event
> +         counters.
> +
> +         For example, a cache controller may use the RCID to apply a
> +         cache partitioning scheme and use the MCID to track how much
> +         cache a process, or a group of processes, is using.
> +
>  config RISCV_ISA_SVPBMT
>         bool "Svpbmt extension support for supervisor mode page-based mem=
ory types"
>         depends on 64BIT && MMU
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 4a37a98398ad..2590b89b8f72 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -75,6 +75,13 @@
>  #define SATP_ASID_MASK _AC(0xFFFF, UL)
>  #endif
>
> +/* SRMCFG fields */
> +#define SRMCFG_RCID_MASK       _AC(0x00000FFF, UL)
> +#define SRMCFG_MCID_MASK       SRMCFG_RCID_MASK
> +#define SRMCFG_MCID_SHIFT      16
> +#define SRMCFG_MASK            ((SRMCFG_MCID_MASK << SRMCFG_MCID_SHIFT) =
| \
> +                                 SRMCFG_RCID_MASK)
> +
>  /* Exception cause high bit - is an interrupt if set */
>  #define CAUSE_IRQ_FLAG         (_AC(1, UL) << (__riscv_xlen - 1))
>
> @@ -317,6 +324,7 @@
>  #define CSR_STVAL              0x143
>  #define CSR_SIP                        0x144
>  #define CSR_SATP               0x180
> +#define CSR_SRMCFG             0x181
>
>  #define CSR_STIMECMP           0x14D
>  #define CSR_STIMECMPH          0x15D
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/=
processor.h
> index da5426122d28..183c55e32b96 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -122,6 +122,9 @@ struct thread_struct {
>         /* A forced icache flush is not needed if migrating to the previo=
us cpu. */
>         unsigned int prev_cpu;
>  #endif
> +#ifdef CONFIG_RISCV_ISA_SSQOSID
> +       u32 srmcfg;
> +#endif
>  };
>
>  /* Whitelist the fstate from the task_struct for hardened usercopy */
> diff --git a/arch/riscv/include/asm/qos.h b/arch/riscv/include/asm/qos.h
> new file mode 100644
> index 000000000000..84830d7c6dc4
> --- /dev/null
> +++ b/arch/riscv/include/asm/qos.h
> @@ -0,0 +1,41 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_RISCV_QOS_H
> +#define _ASM_RISCV_QOS_H
> +
> +#ifdef CONFIG_RISCV_ISA_SSQOSID
> +
> +#include <linux/sched.h>
> +#include <linux/jump_label.h>
> +
> +#include <asm/barrier.h>
> +#include <asm/csr.h>
> +#include <asm/hwcap.h>
> +
> +/* cached value of srmcfg csr for each cpu */
> +DECLARE_PER_CPU(u32, cpu_srmcfg);
> +
> +static inline void __switch_to_srmcfg(struct task_struct *next)
> +{
> +       u32 *cpu_srmcfg_ptr =3D this_cpu_ptr(&cpu_srmcfg);
> +       u32 thread_srmcfg;
> +
> +       thread_srmcfg =3D READ_ONCE(next->thread.srmcfg);


First set the cpu_list, and then the condition thread_srmcfg !=3D
*cpu_srmcfg_ptr will not be satisfied. Is a default value required
here? Both code paths for cpu_list and tasks are compared against the
default value; you may refer to the implementation of mpam.

> +
> +       if (thread_srmcfg !=3D *cpu_srmcfg_ptr) {
> +               *cpu_srmcfg_ptr =3D thread_srmcfg;
> +               csr_write(CSR_SRMCFG, thread_srmcfg);
> +       }
> +}
> +
> +static __always_inline bool has_srmcfg(void)
> +{
> +       return riscv_has_extension_unlikely(RISCV_ISA_EXT_SSQOSID);
> +}
> +
> +#else /* ! CONFIG_RISCV_ISA_SSQOSID  */
> +
> +static __always_inline bool has_srmcfg(void) { return false; }
> +#define __switch_to_srmcfg(__next) do { } while (0)
> +
> +#endif /* CONFIG_RISCV_ISA_SSQOSID */
> +#endif /* _ASM_RISCV_QOS_H */
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/=
switch_to.h
> index 0e71eb82f920..a684a3795d3d 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -14,6 +14,7 @@
>  #include <asm/processor.h>
>  #include <asm/ptrace.h>
>  #include <asm/csr.h>
> +#include <asm/qos.h>
>
>  #ifdef CONFIG_FPU
>  extern void __fstate_save(struct task_struct *save_to);
> @@ -119,6 +120,8 @@ do {                                                 =
       \
>                 __switch_to_fpu(__prev, __next);        \
>         if (has_vector() || has_xtheadvector())         \
>                 __switch_to_vector(__prev, __next);     \
> +       if (has_srmcfg())                               \
> +               __switch_to_srmcfg(__next);     \
>         if (switch_to_should_flush_icache(__next))      \
>                 local_flush_icache_all();               \
>         __switch_to_envcfg(__next);                     \
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f60fce69b725..a3c36d18145c 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -125,3 +125,5 @@ obj-$(CONFIG_ACPI)          +=3D acpi.o
>  obj-$(CONFIG_ACPI_NUMA)        +=3D acpi_numa.o
>
>  obj-$(CONFIG_GENERIC_CPU_VULNERABILITIES) +=3D bugs.o
> +
> +obj-$(CONFIG_RISCV_ISA_SSQOSID) +=3D qos/
> diff --git a/arch/riscv/kernel/qos/Makefile b/arch/riscv/kernel/qos/Makef=
ile
> new file mode 100644
> index 000000000000..9f996263a86d
> --- /dev/null
> +++ b/arch/riscv/kernel/qos/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_RISCV_ISA_SSQOSID) +=3D qos.o
> diff --git a/arch/riscv/kernel/qos/qos.c b/arch/riscv/kernel/qos/qos.c
> new file mode 100644
> index 000000000000..7b06f7ae9056
> --- /dev/null
> +++ b/arch/riscv/kernel/qos/qos.c
> @@ -0,0 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include <asm/qos.h>
> +
> +/* cached value of sqoscfg csr for each cpu */
> +DEFINE_PER_CPU(u32, cpu_srmcfg);
>
> --
> 2.43.0
>

Thanks,
Yunhui

