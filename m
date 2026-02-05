Return-Path: <devicetree+bounces-262858-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GWODcEzhGll0wMAu9opvQ
	(envelope-from <devicetree+bounces-262858-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 07:08:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A10DFEEEA0
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 07:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38037300DA4A
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 06:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815BB3203B0;
	Thu,  5 Feb 2026 06:07:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E201D61B7;
	Thu,  5 Feb 2026 06:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770271659; cv=none; b=S5xS2pA+9inBfAvZGNFCKwGl4hVTnaVSlc8GdV0FUTIxlG26OzJmRK2d6YrleZZ43roEd1Km5g23t6asu0UhVTpDGZd9HaAsMO6HFE1tq0KV9yMG0LBobtMKecVJKhTnJ6kZqtCx1gzTg4Y35puPzjNEuAuTRaUYx1fudy5ECsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770271659; c=relaxed/simple;
	bh=rDmI36wMlYPSwIc+H4llkof4eAuk8Sz030JtmtRFVJ4=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=UN5byedqoPoAx2wlsm0F8m+J92vi2khrs/iR1qDyB7VdLBBndf3a6Vu2ncj9cQDMk9a2T7FOmcWnnr5ZCDyGbpZDLPw1s/PwdGTOyO4jqJPFazl/ILQ+X4RpEv3k8F5Lazn0DTXTiLOdbv98sF9rAvUm6fDEwloaMW0DL40IhRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 5 Feb
 2026 14:07:29 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Thu, 5 Feb 2026 14:07:29 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Subject: [PATCH 0/4] Add AST2700 INTC0/INTC1 support
Date: Thu, 5 Feb 2026 14:07:18 +0800
Message-ID: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJYzhGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwNT3cyiwuSMzAJd89TE1DRjM3OTlFRLJaDqgqLUtMwKsEnRsbW1APC
 PjmBZAAAA
X-Change-ID: 20260205-irqchip-7eaef3674de9
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, "Albert
 Ou" <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-riscv@lists.infradead.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770271649; l=3818;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=rDmI36wMlYPSwIc+H4llkof4eAuk8Sz030JtmtRFVJ4=;
 b=tMe7+qBoJqIpvk9QS5BEc1NujHzW57rW7AGNx4xk2x2iJRWTRjJwo/SzX3gvIayPcEgNNMcxW
 qlTUc2ct44eDAVTIOuK9PgPK5B6PQBOAp/sChagEtI/drVbY+ZeOq9l
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262858-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,aspeedtech.com:mid,aspeedtech.com:email]
X-Rspamd-Queue-Id: A10DFEEEA0
X-Rspamd-Action: no action

This series replaces the existing AST2700 interrupt controller binding
and driver. The original implementation was focused on a narrow,
PSP-centric view and could not fully describe the complexity of the
AST2700 interrupt fabric:

* It was focused primarily on the perspective of the Primary Service
  Processor (PSP).
* It could not handle interrupt route configuration.
* It could not handle interrupt register protection.

By contrast, the new bindings and drivers describe the interrupt
controllers at the block-function level and provide a unified binding
design that can be used from the perspective of any of the four
integrated processors (the Primary, Secondary and Tertiary Service
Processors, and the Boot MCU):

* Can handle interrupt register protection.
* Can handle interrupt route configuration.
* Has a unified binding design that applies to the system perspective
  of any integrated processors ({P,S,T}SP, BootMCU).
* Provides enough information for any of the {P,S,T}SP or BootMCU to
  route interrupts intended for any of the other processors' interrupt
  controllers.

There are no known upstream users of the existing binding. This series
removes it along with the associated driver after introducing the new
binding and driver at the start of this series.

The AST2700 interrupt architecture is built around two controller
designs. INTC0 routes interrupt outputs to upstream interrupt
controllers (e.g. the ARM GIC used by the PSP, as well as interrupt
controllers associated with other cores such as the SSP and TSP).
INTC1 is a banked secondary controller whose interrupt outputs feed
into INTC0 via INTM lines. Connections between the two interrupt
controllers are described in the devicetree using the
aspeed,interrupt-ranges property.

The INTC0 driver creates a hierarchical irqdomain under the selected
upstream interrupt controller. The INTC1 driver implements the INTM-fed
banked controller and exposes a linear interrupt namespace to its
parent.

The design intent of the binding is that, by default, the interrupt for
a given peripheral is routed to the processor consuming that
peripheral. To support this, the devicetree provided to the operating
environment for each processor should set its own processor-local
interrupt controller (e.g. the GIC for the Cortex-A35 PSP) as the
interrupt-parent of INTC0.

Information derived from interrupt-parent at each interrupt controller
is incorporated into the route resolution algorithm implemented in the
INTC0 driver.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
Ryan Chen (4):
      dt-bindings: interrupt-controller: aspeed: Add ASPEED AST2700 INTC0/INTC1
      irqchip/ast2700-intcx: Add AST2700 INTC0/INTC1 support
      irqchip/aspeed: Remove legacy AST2700 interrupt controller driver
      dt-bindings: interrupt-controller: aspeed: Remove legacy AST2700 interrupt binding

 .../interrupt-controller/aspeed,ast2700-intc.yaml  |  90 ---
 .../aspeed,ast2700-interrupt.yaml                  | 207 ++++++
 drivers/irqchip/Kconfig                            |  11 +
 drivers/irqchip/Makefile                           |   2 +-
 drivers/irqchip/irq-aspeed-intc.c                  | 139 ----
 drivers/irqchip/irq-ast2700-intc0-test.c           | 474 +++++++++++++
 drivers/irqchip/irq-ast2700-intc0.c                | 770 +++++++++++++++++++++
 drivers/irqchip/irq-ast2700-intc1.c                | 345 +++++++++
 drivers/irqchip/irq-ast2700.c                      | 105 +++
 drivers/irqchip/irq-ast2700.h                      |  37 +
 10 files changed, 1950 insertions(+), 230 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260205-irqchip-7eaef3674de9

Best regards,
-- 
Ryan Chen <ryan_chen@aspeedtech.com>


