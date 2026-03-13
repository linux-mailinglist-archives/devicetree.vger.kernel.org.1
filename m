Return-Path: <devicetree+bounces-275019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HS0GvTOs2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C3527FECD
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4373302AC36
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44D67351C0D;
	Fri, 13 Mar 2026 08:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fG39ZvNl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46ED1F1518
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391585; cv=none; b=KfKXhAfj0HAmpxD8hxpSM3CmSWsBbFtUHypzHvHm0D0KiAaIdLfyO0uK8KprZnArr5JqD1nv3sqlTdohkOxnB9CnFYJ/Ox3Ckjej0/SXOc/CciKPOxvnn9TJLtAkPIXpRa8YYheltlPQPA2RFFRQqSukrGeY77n6FCOlZqDBvq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391585; c=relaxed/simple;
	bh=siaWA9fambhLhdRJMuYrNcsuGhtY/HuCITcJEe7nDa0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HGKGfGtKsiJonli1a8dLM8obvUSgRgZS3VO/1EMcePcTNu+PEEW/gVWxeoC5leZxKsEYKgvyiM8HhgsOtF143AoD185phHNbk3I7L8DjF00LFPBizR5lq+uFnSVd+VqXrCnycB2nPxJtNgPBJ157YDRCgKJziTUwvJLVqV2BiSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fG39ZvNl; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-89a00e8dc04so18920806d6.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391583; x=1773996383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7TviLKLZnSD0EBSvZ7PGeEHJcczKtDOcwFZJjbpr/G8=;
        b=fG39ZvNltJtdhLKk6rXeGPKycq9xDzNxaIatUcGOonHwkZk7bX60LEdCVeor6dKX9+
         6NozrpI22+40n1qxaW/2kfjQ3BUPS9U9Hx8TYkR5CoOVGoqgmSah////rP0OGmHVjBHf
         W+NOvOpYES/bCqQYdZXM0F43MlXAbpGMRuEHHsVAkOBLlFtd31aEqhD/uGw1B4tUBmnb
         UNEJump8KJNv4oRKYGYsHeMhNo+y+38fXb7UDcq9ukJlfxWwYqcuwmYtFE8BIyPDWJW8
         q9W6F940C8q1NzTHkXTLTIMdMCoGSsKIsHs00YS/zUydYI6DcykCMcVxN+XUz021mPuE
         8isA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391583; x=1773996383;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7TviLKLZnSD0EBSvZ7PGeEHJcczKtDOcwFZJjbpr/G8=;
        b=o1++kZS1GsVHST/nVnoDQWBWCHGDzD781RMT2BAlU9QgG3XnjJKAW73oCicKpJ8tLS
         OOwhNImt1LKKzI3qQhldyf5OPZtlJomYdVLz4y2Qw77P8qJiOGPlgFU31TOZ4L0nZFpA
         TPt8SGzzgz+LtBxQooiFmmV7UA7aBuf4OL2nLtq+ExEAWT6Pr0y8fysDI6BrmvZcIFeg
         UmWi2+CD5x56Kgh4KAqgvpwwqL6HnZmngXp811r2A0efDBffWfYjK7VgnOm5qRCZD2at
         ZpekgY8UlPTVt2W+ccUyhhHKbqdfhcEOerhky5t2WRpj2bxxVrYwHKmvTE+ZoJWPpdL8
         Y0dQ==
X-Forwarded-Encrypted: i=1; AJvYcCXT9afhP6Bway5S/ZOoZAwmSYS4BaCG7QxRaKWU8hq5Q0IZ5SeeIYLox+402cInvgzRT2R57cgfcuIl@vger.kernel.org
X-Gm-Message-State: AOJu0YxW1iqG/9XeGFQYkd8xGS8aFNSt+JYRX5KMSvp1ZX7BAzHlkDo/
	MQ2JXkwOXaLTG8fjAH82vuMI58rD6RdbWprCXs8bBCUdqQV/Kyn19ZSD
X-Gm-Gg: ATEYQzzcUOyWvlzOopD11DGAelRjYsNkuduCGGE1p1oDR3A7sY3ifPpCoR1aMCAjzRl
	5i+vFdK9X8kkVDUewhMq5wHDNrt+T9RqMvHLs9v6wURTsikqgzNRyubkVhx997ciM0qFInho7+x
	2xUqlhGAaK94qpKBtfQTCte0vUrQjiH4MkaLy83CYwfN+buu1fooSgm4YOCpLcnd5xVtthqTEp5
	mWgYpOnpJvXUAug24yBj9n7tNdf0Nj9tEog2dyNiB5VcM9Oy3KBdMR5CWef42fmWiqSi0uNRZkA
	YXCnNrRoYG9Prb1eiLbM7arsALpGBmgiOTiElbeONxFIewD0PIOJ1vr+Mu7/ACoNL+ixJZK5zW6
	//zoLrniy+etg+GTX0QmOZlLUH44lOLkvOx5kr8NDZgXnsX3xlsduXUZ7xNYGz2eLMc2Kdch0yQ
	76IGU0XzOV/Bo/HvezeMGg/IcYB1xhC7jU/xo=
X-Received: by 2002:a05:6214:c41:b0:899:d6d2:4b96 with SMTP id 6a1803df08f44-89a81f730acmr40516186d6.34.1773391582639;
        Fri, 13 Mar 2026 01:46:22 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:21 -0700 (PDT)
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
Subject: [RFC PATCH 0/6] riscv: support EIC770X/JH7110 noncoherent devices with XPbmtUC
Date: Fri, 13 Mar 2026 01:44:01 -0700
Message-Id: <20260313084407.29669-1-ganboing@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-275019-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C9C3527FECD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Starfive JH7110 and ESWIN EIC770X both have non cache-coherent
peripherals. On JH7110[1], GPU/VOUT/VPU/ISP are routed to the sys port,
making them not cache-coherent. On EIC770X, all peripherals are routed
to the sys port, and none is cache-coherent. To make drivers work on
such platforms, the standard solution is to use Svpbmt and map the DMA
buffer as uncacheable. However, neither SoC supports Svpbmt. Instead,
they map the system memory twice, as cached and uncached. The uncached
alias implicitly applies the uncacheable PMA. To support such platform,
a special form of Svpbmt, namely "XPbmtUC" is introduced in this patch.
It's a synthetical PTE format where a single bit (UC) is controlling
the cacheability and the bit position can be configured at runtime. It
is intended to model the physical memory aliasing with minimal effort.

On JH7110, it aligns perfectly with the HW, as the aliased UC region
happens to be offsetted by 2^34. Thus, configuring the XPbmtUC with
bit=32 (PPN is shifted by 2) is all that needs to be done.

On EIC770X, the aliased UC region is put to a awkward offset, and given
there can be 2 NUMA node (dual-die) with 2 separate memory regions and
their UC alias counterpart, we instead ask the firmware to provide a
thin-layer hypervisor to re-arrange the memory map. The XPbmtUC will be
enabled with bit=38, thus map all UC pages to 2^40 (the upper-half of
2^41), and the underlaying hypervisor will re-map the 2^40+ addresses
to the appropriate UC alias regions. (See description in PATCH 1/6)

We chose bit 38 (PPN bit 40) to make the 2-stage translation efficient.
Hypervisor can utilize Sv39x4 G-stage scheme, and map all pages as 1GB
huge page, consuming only the first-level page table (16KB total), and
several TLB entries. In practice, it's the firmware/bootloader that
configures XPbmtUC through device-tree, based on firmware capabilities,
and skip the enablement on stock firmware. This is tested on Hifive
Premier P550 with the modified OpenSBI[2]. It runs the host Linux in VS
mode, and provide the aforementioned remapping. The performance penalty
(if not running KVM in Linux) is minimal, as the CPU is never switched
to HS mode. A very slight, unavoidable, slow down is with the external
interrupt delivery. Due to the lack of AIA in EIC770X, all device irq
now needs to trap to M mode first, before forwarding to VS mode. The
overhead of running KVM in such setup is yet unknown, and may well be
noticeable, as all HS-qualified instructions will trap to M mode, and
there's also the extra cost of flushing G/VS-stage TLBs. I'm analyzing
it in parallel.

I'm aware there's an ongoing series that Samuel sent for physical
memory aliases. I haven't been following too closely, but if you're
worried about it touching to many areas, I hope my series can shed some
light on the problem. My change is very minimal and local, also fairly
easy to remove if we later decide deprecating it down the road.

[1] https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Cache%20Coherence%20V1.0.pdf
[2] https://github.com/ganboing/opensbi/tree/eic77x-vspt-physalias-wip

Bo Gan (6):
  riscv: Add a custom, simplified version of Svpbmt "XPbmtUC"
  riscv: alternatives: support auipc+load pair
  riscv: apply page table attribute bits for XPbmtUC
  riscv: select RISCV_ISA_XPBMTUC in STARFIVE and ESWIN SoC
  riscv: dts: starfive: jh7110: activate XPbmtUC
  [TESTING-ONLY] riscv: dts: eswin: eic7700: activate XPbmtUC

 arch/riscv/Kconfig                       | 12 ++++++++++++
 arch/riscv/Kconfig.socs                  |  2 ++
 arch/riscv/boot/dts/eswin/eic7700.dtsi   |  1 +
 arch/riscv/boot/dts/starfive/jh7110.dtsi |  1 +
 arch/riscv/include/asm/errata_list.h     | 17 +++++++++++++++--
 arch/riscv/include/asm/hwcap.h           |  1 +
 arch/riscv/include/asm/insn.h            |  8 ++++++++
 arch/riscv/include/asm/pgtable-64.h      | 17 ++++++++++++++++-
 arch/riscv/kernel/alternative.c          | 11 ++++++-----
 arch/riscv/kernel/cpufeature.c           |  8 ++++++++
 arch/riscv/mm/pgtable.c                  |  7 +++++++
 11 files changed, 77 insertions(+), 8 deletions(-)

-- 
2.34.1


