Return-Path: <devicetree+bounces-262353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGAmKbstgmnzQAMAu9opvQ
	(envelope-from <devicetree+bounces-262353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:17:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF12DCA80
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A0B0302EE72
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 17:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FC3258CE5;
	Tue,  3 Feb 2026 17:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="I07Rl5C/"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-58-216.mail.qq.com (out162-62-58-216.mail.qq.com [162.62.58.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3502652A2
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 17:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.58.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770139057; cv=none; b=BXYxEJ61PcW0QPvRaM12FMs3g5da4ZRvxqr9ejnRggylxRbispHe3Tn+Tb36lC5Mo/fPYPEU6FQ9HXp0YFJ6ZyJOd1NNt68Zw3T/KauqD4nnFo/awYApfRKQA1JaWkgDTx7k1ENyYvOnQIgnTwg1cr4X74n/3/vF7Yz8ZteLAgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770139057; c=relaxed/simple;
	bh=Ss6y/m/M59hrPPyxA75VSv9MVE4heN/jQ691MiDjeew=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=UfmKgjUoTzrx0RHjice8PKHEv6MCkjBMjWNB2ia7RLaQd2V72dhxAZs8Tte1hvQbyZQfxUymZMQ97NqM4ypfA9SSoCoJ38jwBwHgX23qMBax98qDBwlQxwzfONlw6G+QVLzX2QVLuN2TqDUm7pcywzvK+U9yzZDVv49DUk+v8mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=pass smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=I07Rl5C/; arc=none smtp.client-ip=162.62.58.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1770139042; bh=2m9r7lyGKPwigNE6SDb1IPWk3KIGxSFqCC+NDWFmpPw=;
	h=From:To:Cc:Subject:Date;
	b=I07Rl5C/I/8zDa/1ev/DfF7RRCW4/PV/yuLHKQtqHARRDn4eIJlbLaqvbXkQpvF9B
	 c46aYf8z4bBnjatGgTXvFffyfgjIB8D/Y7OucC8/9fEtsoruDxjglHdgho80P/kVjb
	 5co+b9oGjYryKfUelI0DqyzutbWHVZvf+rJFqMQs=
Received: from cyy-pc.lan ([240e:379:2263:bd00:7e4b:55e4:8771:53fb])
	by newxmesmtplogicsvrszc43-0.qq.com (NewEsmtp) with SMTP
	id 44FB641C; Wed, 04 Feb 2026 01:17:15 +0800
X-QQ-mid: xmsmtpt1770139035tu2r2k9s8
Message-ID: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
X-QQ-XMAILINFO: MwoEXPhRg/2G5m80Km1Rl90HySxC/ky8sgaEysJd53CqJAobJIsrrGYHutoLrv
	 Hd2o95KPOGZ9ARw4t/8cmcYbxmY4dIn5BqKVwv1fz2HNGZyi2qSLYBrL0h2AimFGxsfhEZ1ltYYO
	 5qYzQpliCoDEAK+jV+58Tfj9L9ZRIJSAqKH5i37ITME32TaV3CCGPjn+eiVGIfaPEZfeeywU7wWP
	 Pmqx15U58/tvNLsKU/WNJV3PrUwz3kn7xVrA1dSepjuyMvh+72NiSBpvdmtRFlC91jE9OzGkXmTZ
	 xUsiWIPGZnQ/XMY4XIbp/mGf0GIpic13uvpotUrJS9wnP1xi5QVIY4BN3t3BX3Gz6Gy4o6YQepqn
	 3ZWuCrGAoEu5rrNMoHw0N9YbCa9csveYHjJEc/7MSgEYS1q5/Fdjr0k9EeBfTkoT3+wljgLlrLdZ
	 1Z/Mw4wWYFXsUPTkcCoY5h3ygVrB/KNNrB5A0HeekjOoOVioySCyvHZrAqfRKe1mbYDNDWSxGYhe
	 6aYwa9IgCFLWxkMCQpIZdZtUtzaA+IqLmIHPjeYwvCHYL7aLpF5DnHCWOGOWGBshWfUAokv5GoVO
	 NPEpxIT6F/n1iPrEsd277INJ/FRB4IrxXb5Di25mck4MSJweTUo7lr8/9zyGydYC0VD0zfnzqd++
	 E8hpb/y0cSdretIJFdZ4h36mvskP3qDAMANmcI6yusFfmFmij7QPhWNLFqzJYedAC+80fbCGUcOo
	 oS3Cw4xqjqHkaEDZhfoIPLk4b8n8uvaYdZVdhhEDkc2krrXYq32FvtVRkwYV7sp2qSFmLc1UVV7y
	 VbHKEOw5+CC9B6c/ynPpvkuOU78Jzizara9leSgOnyLR6Og5zo+qjOcUHzt5/bUlG7iKiMXEIA2H
	 3Y6sJP4F7GNg7YaGy5mrcTY1Bw/YnkTyErJ+nFaGOZwNmxpEeVnbM+RS3uXirn1qvMLyel3SG04m
	 nxYYJX+s7PhRZ1Dbhllt7VKJ4rEfJGecU3IP9MOx5leOObslc+o+6vRhzrsDuq8FgqNWJL3bdUrN
	 m6JQq+Nh7ajoBStsFpKENA8/KUf4qj4ezbF6OX7FGebnTnlpm5pEYCfh3OSFt2zscYp0jE5TqDK5
	 ATeC0sn4C0m6x3zEE=
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Anup Patel <anup.patel@oss.qualcomm.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Mason Huo <mason.huo@starfivetech.com>,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Marc Zyngier <maz@kernel.org>,
	Sia Jee Heng <jeeheng.sia@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org,
	Yash Shah <yash.shah@sifive.com>,
	Jia Wang <wangjia@ultrarisc.com>,
	Yangyu Chen <cyy@cyyself.name>
Subject: [PATCH v3 0/2] irqchip/sifive-plic: Fix wrong nr_irqs handling
Date: Wed,  4 Feb 2026 01:17:07 +0800
X-OQ-MSGID: <20260203171707.1581780-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[cyyself.name];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-262353-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cyy@cyyself.name,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qq.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 0EF12DCA80
X-Rspamd-Action: no action

This patch series fixes long standing bugs in sifive-plic driver regarding
the handling of nr_irqs. Some code assumes the first irq source is 0 while
some assumes it is 1. Since the first irq source is actually 1, this causes
various issues including memory corruption when the number of irqs is
multiple of 32. Also, some code assumes nr_irqs is the maximum irq source
ID while some assumes it is the total number of irq sources including the
reserved source 0. This patch series standardizes the handling of nr_irqs
to be the maximum irq source ID, and the first irq source is 1.

This bug can be reproduced by modifying the PLIC node in DT to have ndev as
exactly multiple of 32, e.g., 32, 64, etc., then triggering some interrupts
and checking dmesg for memory corruption:

plic: plic@3c000000 {
	compatible = "riscv,plic0";
	reg = <0x0 0x3c000000 0x0 0x4000000>;
	#interrupt-cells = <1>;
	interrupt-controller;
	interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
	riscv,max-priority = <7>;
	riscv,ndev = <64>;
};

Here is an example dmesg log when ndev is 64:
[    0.077196] Unable to handle kernel paging request at virtual address ffffaf8000000000
[    0.077205] Current swapper/0 pgtable: 4K pagesize, 48-bit VAs, pgdp=0x0000000081c2d000
[    0.077215] [ffffaf8000000000] pgd=000000009ffffc01, p4d=000000009ffffc01, pud=000000009ffff801, pmd=000000009ffff401, pte=0000000000000000
[    0.077240] Oops [#1]
[    0.077246] Modules linked in:
[    0.077254] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.19.0-rc6 #36 NONE 
[    0.077266] Hardware name: XiangShan (DT)
[    0.077273] epc : __kmalloc_node_track_caller_noprof+0x1a0/0x524
[    0.077284]  ra : kstrdup+0x32/0x60
[    0.077293] epc : ffffffff80253c70 ra : ffffffff801fa70e sp : ffff8f800000b700
[    0.077304]  gp : ffffffff81a1b580 tp : ffffaf8080158000 t0 : 0000000000000264
[    0.077313]  t1 : 0000000000000003 t2 : 0000000000000000 s0 : ffff8f800000b750
[    0.077323]  s1 : 0000000000000002 a0 : ffffaf8000000000 a1 : 0000000000000cc0
[    0.077332]  a2 : ffff8d800200bfc0 a3 : ffffffff81a5c5e0 a4 : ffffaf8000000000
[    0.077342]  a5 : 0000000000000003 a6 : ffffffffffffffff a7 : ffffaf8080001400
[    0.077352]  s2 : ffffaf80802ff178 s3 : ffffffff810107f0 s4 : 0000000000000000
[    0.077362]  s5 : 0000000000000000 s6 : ffff8f800000b9c0 s7 : ffffaf8080823200
[    0.077372]  s8 : ffffffff81a20580 s9 : ffffaf808012c990 s10: ffffffffffffffff
[    0.077382]  s11: 0000000000000000 t3 : 0000000000000cc0 t4 : ffffffff801fa764
[    0.077391]  t5 : 0000000000000000 t6 : 0000000000000263
[    0.077399] status: 0000000200000120 badaddr: ffffaf8000000000 cause: 000000000000000d
[    0.077409] [<ffffffff80253c70>] __kmalloc_node_track_caller_noprof+0x1a0/0x524
[    0.077422] [<ffffffff801fa70e>] kstrdup+0x32/0x60
[    0.077433] [<ffffffff801fa764>] kstrdup_const+0x28/0x34
[    0.077444] [<ffffffff80318438>] __kernfs_new_node+0x3c/0x274
[    0.077457] [<ffffffff80318a90>] kernfs_new_node+0x44/0x6c
[    0.077470] [<ffffffff80318f40>] kernfs_create_dir_ns+0x20/0x7c
[    0.077483] [<ffffffff8031b8f8>] sysfs_create_dir_ns+0x60/0xcc
[    0.077497] [<ffffffff80b41bea>] kobject_add_internal+0xae/0x2d8
[    0.077509] [<ffffffff80b422d6>] kobject_add+0x52/0xb8
[    0.077520] [<ffffffff80b6401c>] __irq_alloc_descs+0x190/0x328
[    0.077534] [<ffffffff800976de>] irq_domain_alloc_descs.part.0+0x46/0x78
[    0.077549] [<ffffffff8009827a>] irq_create_mapping_affinity+0x72/0xcc
[    0.077561] [<ffffffff805d27d2>] plic_probe+0x2e2/0x6c8
[    0.077573] [<ffffffff805d2bc8>] plic_platform_probe+0x10/0x18

Changes since v2:
- Clarify the riscv,ndev meaning in the devicetree binding
  documentation for PLIC.
- Fix the entire driver code to have all nr_irqs handling consistent
  with the standard definition.

v2: https://lore.kernel.org/lkml/tencent_A697393AE256C4288768342AF245099A690A@qq.com/

Changes since v1:
- Add more Fixes tags for earlier commits that are also affected by this
  bug.
- Add more explanation about the bug's history.

v1: https://lore.kernel.org/lkml/tencent_6E9A1A3DF88005E3B4A11C4D7039637E4309@qq.com/

Yangyu Chen (2):
  irqchip/sifive-plic: Fix wrong nr_irqs handling
  dt-binding: riscv: Clarify the riscv,ndev meaning in PLIC

 .../interrupt-controller/sifive,plic-1.0.0.yaml  |  2 ++
 drivers/irqchip/irq-sifive-plic.c                | 16 ++++++++--------
 2 files changed, 10 insertions(+), 8 deletions(-)

-- 
2.51.0


