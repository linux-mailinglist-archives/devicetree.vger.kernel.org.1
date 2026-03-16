Return-Path: <devicetree+bounces-275939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC+IDrudt2l/TgEAu9opvQ
	(envelope-from <devicetree+bounces-275939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 92663294F2A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F96F3009CF9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EDC234751B;
	Mon, 16 Mar 2026 06:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EWYj5bfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34154346A15
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641144; cv=none; b=LEmL8iKxBOlYUIrPqWh9S5kitd+nFuJz72GSMWUSsKLo50n82n4lVp9OpJcqiJ1JmFi9TVoNwRcOZbfIcOjt6G6d09EqU7focUzq/EnLZY15LTisMc5G8CQlUGR5kFpeQEDqVSCc8Seg+wIhLVgsQ0Zeii8WM6+VQxsTdsvOjHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641144; c=relaxed/simple;
	bh=NFKUzQ7t7o4RjXIdzvCO033I+SAi1zIdxj8cVB9ZS2Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mDnqCsggpOwP+usq2uLfLEhFnAihaOMufumRchvui53X6MF78PM5tu+D3HIXF4xU856gxCOKNaEg95mk9HIFMDOf5uDbeO7XliQ1Y3yfnVw/r8FTSHr3kTPwhrJnDOvFkdQivZzWN+pJv2QbPWGp5ICkmM9QBbewZItXGst9cW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EWYj5bfq; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-829abaaa92bso2672922b3a.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773641142; x=1774245942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XqADmgEQy7gNByruAkWImtwTKNM7Exnw9tKz+3+dv0M=;
        b=EWYj5bfqN39HteNRvFYuqW7QQnBZBqdzxZU5TEUKbW9K8YZkjaQgYtMq3lxFZIkbSQ
         3znZD/XaTjzhRsnbkt7peshTX7AIoVnAkbZ6pU6bXIKwfcnXgQsAyT0/XLOyz/oh+IV4
         /9aqDhGFJ4nVkpdkOB6fJZ/F5DBNFrXU8LKsl7qflasAUGru4ZRBszGZSs6RfaUw1mI0
         VKYHCTEffgzBUavWOD1pZ3apbemWK+GVbmdZc39xM8jLikyQM/9TOg0FGOv19dgtCAlh
         HtVQp6U2zdlfSN5qTSWD/JwuCfBZNkMSpbLZUsyy9+yJBTBpOVXALGLSlX/7U68h0ELH
         xFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773641142; x=1774245942;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqADmgEQy7gNByruAkWImtwTKNM7Exnw9tKz+3+dv0M=;
        b=WwzXv3EtROZQ9g1TNWAV5Qq2jgHZiKBH7Ez3sjOa+KchIr35mFKZ21p+ewqbPgZBAo
         MoV78hslKrhvJngV1nLPLfsEXiT00H2aEqdZmwcimB7HD4tZCimgD6dvOtTd9gtAHoMb
         xxp+efMYp50AGZdA0p2q4YVwzIHlhTn7HyefNB6dHMExNfmH4H0nqkYf0JOygA9PYSqY
         V7M6DndMEF0EKNn6diUNss3ywQXasx7IbI+zb0lYMRmLyDDYHxcSOWaE49rpQg0Q1T+0
         wPrWBOvpGn862wouDZtsdK5lbhqdKWXeBbT51PhA/cfZRi22UHxWsiUgIWJIl6gODxzw
         mnfw==
X-Forwarded-Encrypted: i=1; AJvYcCWM3J1phSKvhN15UAouvQZm/8nNPo2dktMZzpqL3nUnSc6a4ucmKXbWSoaDHRuCv06K6dRmANzTvjJY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0cOXBPOCgsPTOKMZisS7Na6WQNY1fcx239+GThP9YtthmG4ug
	MbsNJlH8rD5KFGEx5wlSQfHzvocZhm/kGNkE3NEJT90AeQI+oyHPALSv
X-Gm-Gg: ATEYQzw9xVSRfw89pXceGadgwF1DAYCszGeQRS9IUJaAHmfBKX+Pkcm08/ZDcwfiwUS
	QhTdR7UGX+hFBxm9jjYcwaZtsEH7v4WWYvnCtF1XOewY3wTkKo2Tqu5+0vQbva/fvAMYMpeEU7A
	L5tVZwe95D0r4Aa1eEmLmmZvRPvJsFX6DT1H7zuOogurqwCz/QlC9lwmHD/ltlFu9Z4jsN30pI+
	IMFw/x7JuRE1+9NEV7IEjTGgix0jZCov7zDDXxRbYObznoXoe1tWyHytD2DVp19NYcL/ocLTfix
	9KzwD27pqBFY/TImWUewTokI4mvVTn4Qe+1pCTyU+EuDNQTvOJaVTxUpPUSpRnivWL9BZZPyoLz
	a8p6OIoSur7cfw5jAFSnsAFsowhiV9Ce+im0wsk58xnI+Fqo6xHuMll60927Iqfy2lucDIGflYU
	Afkq8kLraQQCRM1AdxpebG6QCTR5As0k2013Q=
X-Received: by 2002:a05:6a00:3e22:b0:829:a127:518 with SMTP id d2e1a72fcca58-82a198d152dmr8827062b3a.40.1773641142279;
        Sun, 15 Mar 2026 23:05:42 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07393098sm12525226b3a.62.2026.03.15.23.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:05:41 -0700 (PDT)
From: Bo Gan <ganboing@gmail.com>
To: linux-riscv@lists.infradead.org,
	samuel.holland@sifive.com,
	david@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Cc: lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com,
	marcel@ziswiler.com,
	conor@kernel.org,
	kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v2 0/3] riscv: support EIC770X/JH7110 noncoherent devices with XPbmtUC
Date: Sun, 15 Mar 2026 23:03:25 -0700
Message-Id: <20260316060328.1173634-1-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275939-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 92663294F2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SoCs with pre-Svpbmt Sifive cores, e.g., Starfive JH7110 and ESWIN
EIC770X both have non cache-coherent peripherals. On JH7110[1], video
subsystem (GPU/VOUT/VPU/ISP) is routed to the sys port, making them not
cache-coherent. On EIC770X, all peripherals are routed to the sys port,
and none is cache-coherent. Instead of Svpbmt, these SoCs map system
memory twice -- the conventional cached region (through front port),
and the uncached alias (through sys port) at different base addresses.
The uncached alias implicitly applies the uncacheable PMA. Drivers
working with noncoherent devices can utilize the uncache alias to map
DMA buffers, without doing explicit cache flushes.

This feature is not an ISA standard, and the cache/uncache base can be
configured by the SoC vendor. To expose it properly, introduce a Sifive
"errata", namely "XPbmtUC", to model the setup as a customized version
of Svpbmt. It choses a single, artificial bit in PTE at runtime for
cache/uncache control, effectively offsetting the PPN by power-of-2.
On JH7110, it aligns perfectly with the HW: it maps the cached region
at 0x40000000, and the uncached alias at 0x4_40000000. Chosing bit 32
(PPN bit 34) as the UC bit matches HW exactly.

Starfive JH7110 (Sifive U74 core) memory map:

          [0x0,   0x40000000) Low MMIO
   [0x40000000, 0x2_40000000) Cached Mem
 [0x4_40000000, 0x6_40000000) Uncached Mem (UC+)
 [0x9_00000000, 0x9_d0000000) High MMIO

On EIC770X, the aliased UC region is put to a offset not power-of-2.
There can also be 2 NUMA node (dual-die) with 2 separate memory regions
and their UC alias counterparts are offsetted differently. We detect if
the firmware has the capability to re-arrange the memory map, using
G-stage pagetable, making the the offsets power-of-2 again.

            [0x0,     0x20000000) Core Internal
     [0x20000000,     0x40000000) Core Internal (Die 1)
     [0x40000000,     0x60000000) Low MMIO
     [0x60000000,     0x80000000) Low MMIO (Die 1)
     [0x80000000,  0x10_80000000) Cached Mem
  [0x20_00000000,  0x30_00000000) Cached Mem (Die 1)
  [0x80_00000000,  0xa0_00000000) High MMIO
  [0xa0_00000000,  0xc0_00000000) High MMIO (Die 1)
  [0xc0_00000000,  0xd0_00000000) Uncached Mem <----------.
  [0xe0_00000000,  0xf0_00000000) Uncached Mem (Die 1) <--+--.
with firmware/hypervisor re-mapping:                      |  |
------------------------------------                      |  |
 [0x100_80000000, 0x110_80000000) Mem UC+ ----------------'  |
 [0x120_00000000, 0x130_00000000) Mem UC+ (Die 1) -----------'

The "XPbmtUC" alternative PTE format is the cleanest solution I can
think of to solve the non-coherent device enablement w/o Svpbmt from
kernel side. Drivers can do explicit cache flushes to workaround the
problem, but a. it pushes the burden of cache flushes to driver code,
and we don't want to complicate them if it's already written with the
cache coherent assumption in mind. b. complex drivers like GPU could
allow user-space to mmap DMA pages, but userspace can't flush caches
due to the lack of Zicbom on these SoCs. I'm aware there's an ongoing
series[2] that Samuel sent for physical memory aliases, which is
essentially a superset of my patch. I don't mean to step ahead of him,
but try to find a middle ground if the community still worries about
his change touching too many areas. My change is very minimal and
local. It's fairly easy to remove, too.

----------------------------------------
Notes about PoC firmware implementation on EIC7700X[3]:

The OpenSBI is augmented to provide a very thin layer hypervisor, where
it runs the entire host OS in VS-mode, and provide the aforementioned
remapping. I remap UC+ memory to 2^40+ to make the 2-stage translation
efficient, where I can utilize Sv39x4 G-stage scheme to map the entire
physical address space at bottom-half, and the uncache counterparts to
system memory at top-half. I also make use of the largest page in Sv39
-- 1GB page, to map everything, keeping the G-stage page-table minimal,
only 16KB in size, while also minimizing TLB misses. A very slight,
unavoidable, slow down is with the external interrupt delivery. Due to
the lack of AIA in EIC770X, all device irq now needs to trap to M mode
first, before forwarding to VS mode. The overhead of running KVM in
such setup is yet unknown, and may well be noticeable. All HS-qualified
instructions will trap to M mode, which is costly. The NACL extension,
if implemented, will alleviate it, but there's also the extra cost of
flushing G/VS-stage TLBs. I'm analyzing it in parallel.

Use [4] if you have a Hifive Premier P550 to try it out.

[1] https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Cache%20Coherence%20V1.0.pdf
[2] https://lore.kernel.org/all/20251113014656.2605447-20-samuel.holland@sifive.com/
[3] https://github.com/ganboing/opensbi/tree/eic77x-vspt-physalias-wip
[4] https://github.com/ganboing/linux-eic77/tree/ganboing-xpbmt-uc-v2-eic77-clk-v15

---
v2:
 - Move the core logic to Sifive errata to address Conor's comments

v1: https://lore.kernel.org/linux-riscv/338f0f79-1eed-4c5c-9966-04a2eaeb3d98@gmail.com

Bo Gan (3):
  riscv: alternatives: support auipc+load pair
  riscv: errata: sifive: support auipc/load pair in patched alternatives
  riscv: errata: sifive: Add an "errata" to simulate Svpbmt on cores
    without

 arch/riscv/Kconfig.errata                    | 13 ++++
 arch/riscv/errata/sifive/errata.c            | 80 +++++++++++++++++++-
 arch/riscv/include/asm/errata_list.h         | 19 ++++-
 arch/riscv/include/asm/errata_list_vendors.h |  3 +-
 arch/riscv/include/asm/insn.h                |  8 ++
 arch/riscv/include/asm/pgtable-64.h          |  9 ++-
 arch/riscv/kernel/alternative.c              | 11 +--
 7 files changed, 132 insertions(+), 11 deletions(-)

-- 
2.34.1


