Return-Path: <devicetree+bounces-274108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CrIDb1tsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:27:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDED264807
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65D71302330B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1343531E83E;
	Wed, 11 Mar 2026 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbAbFYXR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D1931B803;
	Wed, 11 Mar 2026 13:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235635; cv=none; b=BJbHwNZzvvIf0meX9cwJgqqzdFO1g7y/osefL1mZhqIE56jt3OCoolnVtI/ZBfrgfcjc3eC++xELXM11p/H+XMRglqeWbAPxY3Cm7J60ixSqorzyJNozidU7ZX65DuG5VUs6zJwijmUo/Be/CLU/EnIymB3DW3oH3dHp3mJZ3gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235635; c=relaxed/simple;
	bh=LFbmUOex4B5o7clfZWmgNVfvHIxLuigp4QSkfd7cb74=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YO+NEmZfzqyIxupWyQE1sIKZWq6AI8Msjq2MvtPzkUsmaBIuRstCInGfKjltLukAzM6Ob6XfA8Fj5s2TD1GdlLkDvgLN9vAnNpe0WMq7aXWnhSb0CsR+UxWIoS0ASK+K7vCWa73bTrC+GOhImYbJ7PedTIC8iEDh1GAPHSfhAN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbAbFYXR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D5EC2BCB3;
	Wed, 11 Mar 2026 13:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773235634;
	bh=LFbmUOex4B5o7clfZWmgNVfvHIxLuigp4QSkfd7cb74=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nbAbFYXR8sLu7zXHPc+et0xJU6Zt3V1v+UhtA8sIc95xaU2+jnxwqHroK72AeU/lD
	 ooAEIZWecHoRNy3lmMnkQef2iVSlOzL9aBfF4mGsmWyWXUByd29RAKqU2mzfkdtt8U
	 jgdmNZDCk1BvxP2V43JI7CIfm+Y98ZVW+QFWdgkEqJE8+XSM0U/FBeUU66AsCPD54N
	 4ODRWXGkPSYvXHBw0MND9izyIVgEPsqkyyu9a7Lm1noEuajGVl7zfLY/m4sgrVo04a
	 0VvDL2W8WtVgL0auOqXnyL1hzv3MLImiH+5J0ug8lRXQ0ZwPIurHPjLwcDXOUXok+g
	 ZBr2GPuvRcsXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC95D112580C;
	Wed, 11 Mar 2026 13:27:14 +0000 (UTC)
From: Aleksa Paunovic via B4 Relay <devnull+aleksa.paunovic.htecgroup.com@kernel.org>
Date: Wed, 11 Mar 2026 14:26:57 +0100
Subject: [PATCH v7 3/3] riscv: clocksource: Add p8700-gcru driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-riscv-time-mmio-v7-3-016845a0f808@htecgroup.com>
References: <20260311-riscv-time-mmio-v7-0-016845a0f808@htecgroup.com>
In-Reply-To: <20260311-riscv-time-mmio-v7-0-016845a0f808@htecgroup.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Paul Walmsley <pjw@kernel.org>, 
 John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>, 
 Vivian Wang <wangruikang@iscas.ac.cn>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 Djordje Todorovic <djordje.todorovic@htecgroup.com>, 
 Aleksa Paunovic <aleksa.paunovic@htecgroup.com>, 
 Chao-ying Fu <cfu@mips.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773235633; l=3250;
 i=aleksa.paunovic@htecgroup.com; s=20250806; h=from:subject:message-id;
 bh=6tKjaKViZn8P2amTu2oO3Kpu4d2sX/LUMZ6acjvMpRY=;
 b=fXcnagy2tx3oaD+njlXo1rWkaoWBHFQgCroBxs+y6LbN7XHocxSoVYCuv7strvmSP1AcZNlWi
 j5sqN9fNhp2CKQvw+xGRxXNvfIJIJRRYdaBA08SUZQ0/Bmve3zeJ+mv
X-Developer-Key: i=aleksa.paunovic@htecgroup.com; a=ed25519;
 pk=Dn4KMnDdgyhlXJNspQQrlHJ04i7/irG29p2H27Avd+8=
X-Endpoint-Received: by B4 Relay for aleksa.paunovic@htecgroup.com/20250806
 with auth_id=476
X-Original-From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
Reply-To: aleksa.paunovic@htecgroup.com
X-Rspamd-Queue-Id: DFDED264807
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274108-lists,devicetree=lfdr.de,aleksa.paunovic.htecgroup.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[aleksa.paunovic@htecgroup.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[htecgroup.com:replyto,htecgroup.com:email,htecgroup.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>

Add a clocksource driver for the P8700 GCRU.

Initialization uses helper functions
provided by clocksource/mmio.c and timer-of.c.

Since the GCRU does not support any kind of interrupts,
the default RISC-V clockevent implementation should suffice.

Signed-off-by: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
---
 drivers/clocksource/Kconfig       |  9 ++++++++
 drivers/clocksource/Makefile      |  1 +
 drivers/clocksource/timer-p8700.c | 45 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 55 insertions(+)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index ffcd23668763fe7707a4e917bf240caadbb09a8c..861e7b8c93376b345e3a488dabe435d06a42f357 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -672,6 +672,15 @@ config CLINT_TIMER
 	  This option enables the CLINT timer for RISC-V systems.  The CLINT
 	  driver is usually used for NoMMU RISC-V systems.
 
+config P8700_TIMER
+	bool "MIPS P8700 timer driver"
+	depends on GENERIC_SCHED_CLOCK && RISCV && RISCV_SBI
+	select CLKSRC_MMIO
+	select TIMER_PROBE
+	select TIMER_OF
+	help
+	  Enables support for MIPS P8700 timer driver.
+
 config CSKY_MP_TIMER
 	bool "SMP Timer for the C-SKY platform" if COMPILE_TEST
 	depends on CSKY
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index ec4452ee958f1a814c708aeba6412bea61d24892..fae9a58d6c8663a7c857b9ab7fdae05782b3551c 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -95,3 +95,4 @@ obj-$(CONFIG_CLKSRC_LOONGSON1_PWM)	+= timer-loongson1-pwm.o
 obj-$(CONFIG_EP93XX_TIMER)		+= timer-ep93xx.o
 obj-$(CONFIG_RALINK_TIMER)		+= timer-ralink.o
 obj-$(CONFIG_NXP_STM_TIMER)		+= timer-nxp-stm.o
+obj-$(CONFIG_P8700_TIMER)		+= timer-p8700.o
diff --git a/drivers/clocksource/timer-p8700.c b/drivers/clocksource/timer-p8700.c
new file mode 100644
index 0000000000000000000000000000000000000000..220ed8efdfe5544a3f925ad43b8faf2e0565557b
--- /dev/null
+++ b/drivers/clocksource/timer-p8700.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2025 MIPS.
+ */
+
+#include <linux/sched_clock.h>
+#include <linux/delay.h>
+#include <linux/of_address.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/clocksource.h>
+
+#include "timer-of.h"
+
+static struct timer_of gcru_of = { .flags = TIMER_OF_BASE };
+static u64 __iomem *p8700_time_val __ro_after_init;
+
+static u64 notrace p8700_timer_sched_read(void)
+{
+	return (u64)readq_relaxed(p8700_time_val);
+}
+
+static int __init p8700_timer_init(struct device_node *node)
+{
+	int error = 0;
+
+	error = timer_of_init(node, &gcru_of);
+	if (error)
+		return error;
+
+	p8700_time_val = timer_of_base(&gcru_of);
+	/* Now init the mmio timer with the address we got from DT */
+	error = clocksource_mmio_init(p8700_time_val, "mips,p8700-gcru",
+				      riscv_timebase, 450, 64,
+				      clocksource_mmio_readq_up);
+	if (error)
+		return error;
+
+	/* Sched clock */
+	sched_clock_register(p8700_timer_sched_read, 64, riscv_timebase);
+
+	return error;
+}
+
+TIMER_OF_DECLARE(p8700_timer, "mips,p8700-gcru", p8700_timer_init);

-- 
2.43.0



