Return-Path: <devicetree+bounces-259494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGnADspod2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:14:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DF71188ABD
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B82893017F92
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838E933859A;
	Mon, 26 Jan 2026 13:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="VgwEh2HQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C27337B8C
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433280; cv=pass; b=UCXQ75Te7dqc6reWV3q+co4sZ1U0L6BsIDWzAYD4kiGzp9verA3lbjcpOYyOUtKJmKW49jm7L7CPz5DgHpIn8e/tIvDZp+YBAJTcqqo7ESGzGY9+6cHsBo8T8Xespnf6nx8yJWyz8uQNzmLfKkGfgQ/P8kyC0/KdCRa0QOWwglw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433280; c=relaxed/simple;
	bh=C2RBBhsrW9+92+2PDvZNY+POx6Dt9r6pZo24Na8vhbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qAUyzV2Z26bQU5g/Gd3B3bD7UNlKFu0JvoAmDuOm9cg+ZVTLvUbTEuk0XUmkcxbpKZtiAgI/Sy81JXPvFfb77egzaI2e9rpqin2+yhT7YCXoAIAvtO5sPhMufcY1t2xA96EJp920PvFwd4O8dl1Q6gkukrihhibDrjog0eMajvw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=VgwEh2HQ; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6495d592b58so3242710d50.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769433276; cv=none;
        d=google.com; s=arc-20240605;
        b=f6EBjGgtLT+Jq/GCtn7FOENeEvn82nCO+exHm/Z+zZAsZ/x/MKoHFqQpSlkmj8an6B
         asf7mdUAn2OzRUm+w74CfZ2zzIFFaHpFcOKuOxDGhxhtKz8teYJ6dHamsoAvDuhpqonL
         WeMLsSlKMqFZFL8pGbikFvAUx9nulWkiZFwelTzIRXUXSPGVlt4S8Ne/FVeHk/xh/t30
         moL5C9duCTPf274qeIi9Kpojrvb5+vfQU8Cp9INTsoU5/rDZrvQBPNRlJaCwFBPs2MxL
         OZUh9+fLuVKfKyHrumRLYlwzTK8rsSfmcK2TLET6keR8+0hF1X3Gn2/31a+J62UM/7vJ
         Snpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vshS6ZvoqmohsmlLHucT7O4RL0jZoIRFL81Pl4g5YdA=;
        fh=SPagixHgygv2842rbdYQQ72fly3cx0P8aQArA78GZN0=;
        b=hpSXE/ZZ4AFVxGQA+Q/6X371/USrpGtAb9Y/qynT0EeMVX1AFCmkrS7yEMMvCc/27r
         dr01n5xGzsyhv9006wAN8tWwDd4XDm72DyGdUV+KtWGf3Ms7JxDtUCtX15iHpvztFKdN
         71hGdko6lCMJGW6efh7NljFfiTSb+Ukvcr3XrH8bbZgr69StgaXLSxa6MEfshAiDZN3F
         sRylMYMwTt/OsSkYlZyaqXQP/l/8CpHWiQhieF2xSF1t1vR7TF0yZJzYt4MeeTQArl5r
         mL06nYU5ap66L2w2EVLRRcSHRbwYbjCYEAm9zv8SbLRXBrDDBt7KePcw24Kr0xen3kQA
         QNsw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1769433276; x=1770038076; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vshS6ZvoqmohsmlLHucT7O4RL0jZoIRFL81Pl4g5YdA=;
        b=VgwEh2HQMfYVhj48cAi+BszRJqD82dwFTboCNbjVQy46jmnEI6pa3ap8PRr9oIe5rR
         juWN8UfQlGxeaur2hxovO6hjDsG6wI/8vYaeKqCvoO0yiFu/jhUOxqI4xZ0bWFQODpe9
         Rs6xKz3rfyLaz0ESLVWDJQCsinGdXYoRx0egHMmsBoYnIzYqRN33AaieXF1Z0RnQks5z
         N2R3HyH64e1LAs8KjDwBUa/A4MZSahu6SO3YEol+v73rMGM3yS9ilU9mRDd+Op0+FXPx
         chWZk1/17muTdWTR6HAIfIyzANNtNkGRlWrW+vFunp4+DlT5y3wgNG9vT+DzLZL2VaH5
         g0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769433276; x=1770038076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vshS6ZvoqmohsmlLHucT7O4RL0jZoIRFL81Pl4g5YdA=;
        b=FwABH9cODx+hq4iV8oevO135bd+KhK20aPW0ANc8JpjYK8bZ30fLqsRR7Dxw6UNV8m
         YBTCtmWspV/rpieSSG0mIHxYh0NqmGvlWN6yBiNUWVUoAulFj1TMDzAeKzziU1k8Tu7a
         AerKUYxJi5oxMPcymIz3G4bXmPulbyRAUdmCRyHPDrTlxBwkD38kaWQd5C0UpwJRMiOz
         lvNAGish7N9ra2B8GgvGMUVqKwhrh8sruOtIbmlhymNrnyDv8td37iw29l01y91p3f6Y
         PmjuNV/Pf7+THsYSrrqVWo/B9mjpLF6ws7oU16Ar1eisAa4hJENOWTKkYRjab0GIItql
         koow==
X-Forwarded-Encrypted: i=1; AJvYcCWxhg6/cNJyt4fZFcvHRLhZu+rrDy/9QS8QRveXKTYhQpDOzfsCDnYqgHHq4NYbH5AcS1K53+2NS/OD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ECNFeQOg/a7pmj8+5iWc/oQ8NHcDUAIENUpKLGHxyuZpVq3O
	rQG+yOV9WRl6pO14O6WNvK5zoVqxsBSMd7uFwSIGoood5pou3kTC8MeHEGceYGKyn9GFc9ksu5h
	ABrhrOvBzzskeXw4GBHPor+BwNt61G3z4BNpukf1+Qw==
X-Gm-Gg: AZuq6aLyPAg1FaNGxBuXl1Q7jM///eSWbhcREPAQuTSHoCu/F57eHEORI05AzpFjsEw
	KEF2OirOYugJqhOibZHw4CtLrYZiaDSCMXXAFEnrHxnmpp1BjH3F1i2B6TkXQM0cNIIWgn/IIUN
	7VqRAyIVJFwyQVzyag1YsnpsfNpKMxGnuUpchyLyTMLor+mdZHZP+KTDuYho6huMAzeWFqaWH3l
	NCUGZ9H+JNXvZn72XqmVvlii1lTC1GPUqsEGsSXWgBHvEwqkzacMvWZShYM/3eyhRbPcM2nMQ==
X-Received: by 2002:a05:690e:d43:b0:63f:31f7:b956 with SMTP id
 956f58d0204a3-64970bbe514mr2864857d50.27.1769433275609; Mon, 26 Jan 2026
 05:14:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
In-Reply-To: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Mon, 26 Jan 2026 21:14:24 +0800
X-Gm-Features: AZwV_QgztdBGgUGhOHC5N3UmTJDdlTyKvX0jbFvvZS7TC_M1JZsTC2LSJ2fDlmY
Message-ID: <CAEEQ3w=0_JvE0nuJ=F_RHsBE=tbV5j0ycgT_k3kYPLE_ixOExw@mail.gmail.com>
Subject: Re: [External] [PATCH RFC 00/19] RISC-V: QoS: add CBQRI resctrl interface
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
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Reinette Chatre <reinette.chatre@intel.com>, 
	Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>, 
	Peter Newman <peternewman@google.com>, Fenghua Yu <fenghua.yu@intel.com>, 
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, x86@kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259494-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bytedance.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lpc.events:url,bytedance.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DF71188ABD
X-Rspamd-Action: no action

Hi Drew,


On Tue, Jan 20, 2026 at 12:15=E2=80=AFPM Drew Fustini <fustini@kernel.org> =
wrote:
>
> This RFC series implements the RISC-V Quality-of-Service Identifiers
> (Ssqosid) extension [1] which adds the srmcfg register. It also
> implements the RISC-V Capacity and Bandwidth Controller QoS Register
> Interface (CBQRI) specification [2] and integrates resctrl [3] support.
> The patches are also available as a branch [4].
>
> There is a Qemu patch series [5] that implements Ssqosid and CBQRI, and
> a corresponding Qemu branch with those patches too [6].
>
> [1] https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
> [2] https://github.com/riscv-non-isa/riscv-cbqri/releases/tag/v1.0
> [3] https://docs.kernel.org/filesystems/resctrl.html
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log=
/?h=3Db4/ssqosid-cbqri
> [5] https://lore.kernel.org/qemu-devel/20260105-riscv-ssqosid-cbqri-v4-0-=
9ad7671dde78@kernel.org/
> [6] https://github.com/tt-fustini/qemu/tree/b4/riscv-ssqosid-cbqri
>
> RISC-V QoS
> ----------
> QoS (Quality of Service) in this context is concerned with shared
> resources on an SoC such as cache capacity and memory bandwidth.
>
> The Sssqosid extension defines the srmcfg CSR which configures a hart
> with two identifiers:
>
>  - Resource Control ID (RCID)
>  - Monitoring Counter ID (MCID)
>
> These identifiers accompany each request issued by the hart to shared
> resource controllers. This allows the capacity and bandwidth resources
> used by a software workload (e.g. a process or a set of processes) to be
> controlled and monitored.
>
> CBQRI defines operations to configure resource usage limits, in the form
> of capacity or bandwidth, for an RCID. CBQRI also defines operations to
> configure counters to track resource utilization per MCID. Furthermore,
> the Access Type (AT) field allows resource usage to be differentiated
> between data and code.
>
> x86 comparison
> --------------
> The existing QoS identifiers on x86 map well:
>
>   CLOSID (Class of Service ID) on x86 is RCID on RISC-V
>     RMID (Resource Monitoring ID) on x86 is MCID on RISC-V
>
> In addition, CDP (code data prioritization) on x86 is similar to the
> AT (access type) field in CBQRI which defines code and data types.
>
> One aspect of CBQRI that simplifies the RISC-V resctrl interface is that
> any cpu (technically a hart, or hardware thread, in RISC-V terminology)
> can access the memory-mapped registers of any CBQRI controller in the
> system. This means it does not matter which cpu runs the resctrl code.
>
> Example SoC
> -----------
> This series also includes a Qemu device tree and platform drivers for a
> hypothetical SoC with a cache controller that implements CBQRI capacity
> operations and a memory controller that implements CBQRI bandwidth
> operations.
>
>   - L2 cache controllers
>     - Resource type: Capacity
>     - Number of capacity blocks (NCBLKS): 12
>         - In the context of a set-associative cache, the number of
>           capacity blocks can be thought of as the number of ways
>     - Number of access types: 2 (code and data)
>     - Usage monitoring not supported
>     - Capacity allocation operations: CONFIG_LIMIT, READ_LIMIT
>
>   - Last-level cache (LLC) controller
>     - Resource type: Capacity
>     - Number of capacity blocks (NCBLKS): 16
>     - Number of access types: 2 (code and data)
>     - Usage monitoring operations: CONFIG_EVENT, READ_COUNTER
>     - Event IDs supported: None, Occupancy
>     - Capacity allocation ops: CONFIG_LIMIT, READ_LIMIT, FLUSH_RCID
>
>   - Memory controllers
>     - Resource type: Bandwidth
>     - Number of bandwidth blocks (NBWBLKS): 1024
>        - Bandwidth blocks do not have a unit but instead represent a
>          portion of the total bandwidth resource. For NWBLKS of 1024,
>          each block represents about 0.1% of the bandwidth resource.
>     - Maximum reserved bandwidth blocks (MRBWB): 819 (80% of NBWBLKS)
>     - Number of access types: 1 (no code/data differentiation)
>     - Usage monitoring operations: CONFIG_EVENT, READ_COUNTER
>     - Event IDs supported: None, Total read/write byte count, Total
>                            read byte count, Total write byte count
>     - Bandwidth allocation operations: CONFIG_LIMIT, READ_LIMIT
>
> The memory map for this example SoC:
>
>   Base addr  Size
>   0x4820000  4KB  Cluster 0 L2 cache controller
>   0x4821000  4KB  Cluster 1 L2 cache controller
>   0x4828000  4KB  Memory controller 0
>   0x4829000  4KB  Memory controller 1
>   0X482a000  4KB  Memory controller 2
>   0X482b000  4KB  Shared LLC cache controller
>
> This configuration is only meant to provide a "concrete" example, and it
> represents just one of many possible ways that hardware can implement
> the CBQRI spec.
>
> The example SoC configuration is created with the following:
>
>   qemu-system-riscv64 \
>         -M virt \
>         -nographic \
>         -smp 8 \
>         -device riscv.cbqri.capacity,max_mcids=3D256,max_rcids=3D64,ncblk=
s=3D12,alloc_op_flush_rcid=3Dfalse,mon_op_config_event=3Dfalse,mon_op_read_=
counter=3Dfalse,mon_evt_id_none=3Dfalse,mon_evt_id_occupancy=3Dfalse,mmio_b=
ase=3D0x04820000 \
>         -device riscv.cbqri.capacity,max_mcids=3D256,max_rcids=3D64,ncblk=
s=3D12,alloc_op_flush_rcid=3Dfalse,mon_op_config_event=3Dfalse,mon_op_read_=
counter=3Dfalse,mon_evt_id_none=3Dfalse,mon_evt_id_occupancy=3Dfalse,mmio_b=
ase=3D0x04821000 \
>         -device riscv.cbqri.capacity,max_mcids=3D256,max_rcids=3D64,ncblk=
s=3D16,mmio_base=3D0x0482B000 \
>         -device riscv.cbqri.bandwidth,max_mcids=3D256,max_rcids=3D64,nbwb=
lks=3D1024,mrbwb=3D819,mmio_base=3D0x04828000 \
>         -device riscv.cbqri.bandwidth,max_mcids=3D256,max_rcids=3D64,nbwb=
lks=3D1024,mrbwb=3D819,mmio_base=3D0x04829000 \
>         -device riscv.cbqri.bandwidth,max_mcids=3D256,max_rcids=3D64,nbwb=
lks=3D1024,mrbwb=3D819,mmio_base=3D0x0482a000
>
> In addition, please note that this series only implements the register
> interface that CBQRI specifies. It does not attempt to emulate the
> performance impact of configuring limits on shared resources like cache
> and memory bandwidth.
>
> Versioning
> ----------
> I chose to make this series v1 as there have been many changes from the
> old proof-of-concept. However, here are previous series to make the
> history clear:
>
>  [RFC PATCH 00/21] RISC-V: QoS: add CBQRI resctrl interface
>  https://lore.kernel.org/all/20230419111111.477118-1-dfustini@baylibre.co=
m/
>  The original RFC from the CBQRI proof-of-concept in 2023 that worked
>  in conjunction with the Qemu patch series for the proof-of-concept.
>
>  [PATCH v4 0/3] RISC-V: Detect Ssqosid extension and handle srmcfg CSR
>  https://lore.kernel.org/all/20251007-ssqosid-v4-0-e8b57e59d812@kernel.or=
g/
>  More recently I thought it would be simpler to upstream just the
>  Ssqosid patches first. However, I got feedback that it was hard to
>  review without the CBQRI patches in the same series.
>
> Open issues:
> ------------
>  - Checkpatch false positive: there is a checkpatch warning about
>    "Argument '__next' is not used in function-like macro"
>    - __switch_to_srmcfg(__next) is needed to avoid the error reported
>      by LKP for riscv-allnoconfig:
>      https://lore.kernel.org/oe-kbuild-all/202509162355.wByessnb-lkp@inte=
l.com/
>    - __switch_to_srmcfg() will trigger a build error in clang when
>      CONFIG_RISCV_ISA_SSQOSID is turned off.
>
>  - The number of CBQRI controllers is hard coded
>    - This was done as a simple approach in the proof-of-concept as there
>      were 6 controllers
>    - I need to refactor this so that it is dynamically allocated based
>      on the number of controllers present in the system
>
>  - Stub platform drivers are included to demonstrate device tree integrat=
ion
>    - I am expecting a real CBQRI-enabled hardware platform using device
>      tree would have real platform drivers for controllers that
>      implement CBQRI.
>    - To demonstrate the interaction with the qemu model, I have included
>      patches which create "stub" drivers for a cache controller and a
>      generic bandwidth controller. These patches are not meant for
>      upstream, so I did not create binding documentation for the
>      compatibles.
>
>  - Add RQSC table support for ACPI platforms
>    - My kernel patches from the RQSC proof-of-concept were based on
>      v6.14, so I need to rebase them.
>    - The necessary PPTT helpers are already in 6.19 thanks to the MPAM
>      driver series. This should help reduce the number of patches in my
>      RQSC series.
>    - My Qemu patches for RQSC will also take some work to rebase on top
>      of my recent Qemu CBQRI+Ssqosid v4 series.

1. What about the relevant logic for mweight?
2. What is the support plan for IOMMU?
3. Can we also add the patches that support RQSC to this patchset?

>
>  - No L2 and L3 cache occupancy monitoring
>    - This is not currently implemented and I have to decided to leave
>      it as an enhancement for a future series after the Ssqosid and
>      CBQRI core are merged.
>
>  - No MBM (bandwidth monitoring)
>    - MBA schema works ok for the CBQRI-enabled memory controllers, but
>      resctrl does not currently have solution for representing MBM for
>      bandwidth resources that are not associated with a L3 cache.
>    - For the old CBQRI proof-of-concept RFC, two separate domains were
>      created for each memory controller: one for MB (allocation) and one
>      for MBM (monitoring).
>    - The monitoring domains had to pretend that these memory controllers
>      were L3 caches which is not the case. I have removed this as it was
>      too complicated and not the right solution.
>    - Fenghua Yu talked about a similar problem last month at LPC in the
>      resctrl BoF during the "MBA/MBM on CPU-less Memory Node" topic:
>      https://lpc.events/event/19/contributions/2093/
>    - I hope to work with resctrl developers on finding a solution.
>
> ---
> Drew Fustini (19):
>       dt-bindings: riscv: Add Ssqosid extension description
>       RISC-V: Detect the Ssqosid extension
>       RISC-V: Add support for srmcfg CSR from Ssqosid ext
>       RISC-V: QoS: define properties of CBQRI controllers
>       RISC-V: QoS: define CBQRI capacity and bandwidth capabilities
>       RISC-V: QoS: define CBQRI resctrl resources and domains
>       RISC-V: QoS: define prototypes for resctrl interface
>       RISC-V: QoS: add resctrl interface for CBQRI controllers
>       RISC-V: QoS: expose implementation to resctrl
>       RISC-V: QoS: add late_initcall to setup resctrl interface
>       RISC-V: QoS: add to build when CONFIG_RISCV_ISA_SSQOSID set
>       RISC-V: QoS: make CONFIG_RISCV_ISA_SSQOSID select resctrl
>       dt-bindings: riscv: add riscv,cbqri bindings
>       [NFU] resctrl: riscv: add CBQRI cache controller driver
>       [NFU] resctrl: riscv: add CBQRI bandwidth controller driver
>       [NFU] resctrl: riscv: build CBQRI drivers
>       [NFU] riscv: dts: qemu: add dump from virt machine
>       [NFU] riscv: dts: qemu: add CBQRI controller nodes
>       [NFU] riscv: dts: build qemu dtb for CONFIG_ARCH_VIRT
>
>  .../devicetree/bindings/riscv/extensions.yaml      |    6 +
>  .../devicetree/bindings/riscv/riscv,cbqri.yaml     |   28 +
>  MAINTAINERS                                        |   10 +
>  arch/riscv/Kconfig                                 |   20 +
>  arch/riscv/boot/dts/Makefile                       |    1 +
>  arch/riscv/boot/dts/qemu/Makefile                  |    3 +
>  arch/riscv/boot/dts/qemu/qemu-virt-cbqri.dts       |  458 ++++++++
>  arch/riscv/include/asm/csr.h                       |    8 +
>  arch/riscv/include/asm/hwcap.h                     |    1 +
>  arch/riscv/include/asm/processor.h                 |    3 +
>  arch/riscv/include/asm/qos.h                       |   41 +
>  arch/riscv/include/asm/resctrl.h                   |    2 +
>  arch/riscv/include/asm/switch_to.h                 |    3 +
>  arch/riscv/kernel/Makefile                         |    2 +
>  arch/riscv/kernel/cpufeature.c                     |    1 +
>  arch/riscv/kernel/qos/Makefile                     |    2 +
>  arch/riscv/kernel/qos/internal.h                   |  155 +++
>  arch/riscv/kernel/qos/qos.c                        |   32 +
>  arch/riscv/kernel/qos/qos_resctrl.c                | 1191 ++++++++++++++=
++++++
>  drivers/resctrl/Kconfig                            |    2 +
>  drivers/resctrl/Makefile                           |    2 +
>  drivers/resctrl/riscv/Kconfig                      |   25 +
>  drivers/resctrl/riscv/Makefile                     |    4 +
>  drivers/resctrl/riscv/cbqri_bandwidth.c            |   79 ++
>  drivers/resctrl/riscv/cbqri_cache.c                |  106 ++
>  include/linux/riscv_qos.h                          |   78 ++
>  26 files changed, 2263 insertions(+)
> ---
> base-commit: 9ace4753a5202b02191d54e9fdf7f9e3d02b85eb
> change-id: 20260112-ssqosid-cbqri-407cfcda9ff4
>
> Best regards,
> --
> Drew Fustini <fustini@kernel.org>
>

Thanks,
Yunhui

