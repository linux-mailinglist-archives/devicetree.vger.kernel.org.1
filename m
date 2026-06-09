Return-Path: <devicetree+bounces-308681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q7BsEdKsJ2rE0QIAu9opvQ
	(envelope-from <devicetree+bounces-308681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:04:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C1F65C93C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:04:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=WT6Ohiol;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308681-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308681-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E5E2301F335
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205133CF02B;
	Tue,  9 Jun 2026 06:01:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58AE3C942C
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 06:01:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780984907; cv=none; b=lYbA9o21O1PdJeT9A60+5fJMdu3VpuhAziiNAr06bAWn2ZhN3gN67IYID08YHcKH51ZZOaQ0YCW39m5S0AovEZmQkyS0lolZT27NOEzBTgzLRzZOfGqRM2tiaoLAU0oKVkRECnsFLEhtjY/Y+OV3ZDeLVL5pClpRkEmrE9zLkMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780984907; c=relaxed/simple;
	bh=d8QlKHkfqNhfYohsE98McxXyqugfqZ6DLhV9E4Pu1qY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e+I1mCdDF+EOt+mtvSJAX2Kq9YNaGN2sxf/2X6ufKxe+RH9Ta9mZm2uO7ZfsIL5KuFgCifD6sWp3HgW/eUjv66xhnItoH5nM/b/EqeCQk3xcbTVhQTBrMrDIni3eozv/pA0y3io1UfijoQYAiVYDLWC8SLyfxb6Qc0wrr8Ul9TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=WT6Ohiol; arc=none smtp.client-ip=95.215.58.186
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1780984904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vu7UaTVidpWvsx9wHZ3XDd5Hh0ON6Lo1UHqkFEyPu34=;
	b=WT6OhiolxkqKy78e365lfBny3qt/Y9J9QpcCcbQCiUH4bVvJ1B7zNHjqqhd4DdLpaYR80E
	A2QRg/b7jfIiLkugqJ/E/q3b+J14jz5G1N2XO1RBuYwGMyZ1/+yk37nEPvFTrczG6IUSNi
	bdMcj6deKuZJV7MmAtHWwZ1q8pPNb7Q=
From: Atish Patra <atish.patra@linux.dev>
Date: Mon, 08 Jun 2026 23:01:18 -0700
Subject: [PATCH v6 04/21] RISC-V: Define indirect CSR access helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-counter_delegation-v6-4-285b72ed65a9@meta.com>
References: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
In-Reply-To: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
To: James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>, 
 Atish Patra <atish.patra@linux.dev>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>, 
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Anup Patel <anup@brainfault.org>, Namhyung Kim <namhyung@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ian Rogers <irogers@google.com>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-perf-users@vger.kernel.org, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:james.clark@linaro.org,m:robh@kernel.org,m:atish.patra@linux.dev,m:acme@kernel.org,m:jolsa@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:anup@brainfault.org,m:namhyung@kernel.org,m:pjw@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,vger.kernel.org:from_smtp,rivosinc.com:email,linux.dev:dkim,linux.dev:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91C1F65C93C

From: Atish Patra <atishp@rivosinc.com>

The indriect CSR requires multiple instructions to read/write CSR.
Add a few helper functions for ease of usage.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr_ind.h | 44 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/riscv/include/asm/csr_ind.h b/arch/riscv/include/asm/csr_ind.h
new file mode 100644
index 000000000000..6fd7d44dc640
--- /dev/null
+++ b/arch/riscv/include/asm/csr_ind.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2024 Rivos Inc.
+ */
+
+#ifndef _ASM_RISCV_CSR_IND_H
+#define _ASM_RISCV_CSR_IND_H
+
+#include <linux/irqflags.h>
+
+#include <asm/csr.h>
+
+#define csr_ind_read(iregcsr, iselbase, iseloff) ({		\
+	unsigned long __value = 0;				\
+	unsigned long __flags;					\
+	local_irq_save(__flags);				\
+	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
+	__value = csr_read(iregcsr);				\
+	local_irq_restore(__flags);				\
+	__value;						\
+})
+
+#define csr_ind_write(iregcsr, iselbase, iseloff, value) ({	\
+	unsigned long __flags;					\
+	local_irq_save(__flags);				\
+	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
+	csr_write(iregcsr, (value));				\
+	local_irq_restore(__flags);				\
+})
+
+#define csr_ind_warl(iregcsr, iselbase, iseloff, warl_val) ({	\
+	unsigned long __old_val = 0, __value = 0;		\
+	unsigned long __flags;					\
+	local_irq_save(__flags);				\
+	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
+	__old_val = csr_read(iregcsr);				\
+	csr_write(iregcsr, (warl_val));				\
+	__value = csr_read(iregcsr);				\
+	csr_write(iregcsr, __old_val);				\
+	local_irq_restore(__flags);				\
+	__value;						\
+})
+
+#endif

-- 
2.53.0-Meta


