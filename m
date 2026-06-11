Return-Path: <devicetree+bounces-310310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UbdoI7aCKmrOrQMAu9opvQ
	(envelope-from <devicetree+bounces-310310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:41:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 713416707F3
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:41:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OlZDqGip;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310310-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310310-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B4464300B585
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61DB3BED6A;
	Thu, 11 Jun 2026 09:41:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9155930FC0F;
	Thu, 11 Jun 2026 09:41:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781170865; cv=none; b=e9/Sxtu2kWHJl/Vh5WstAGL4GMNwCLvfePCFv1WS5+tF78SjS+OOQq/15KqNAEKaAq+EQxccKuKE+dybUwCWkJIZstvA/wh95RtfKphJ0MG15EL0XdcBpiFJ+tVHbY3tCWNLUMgdxsxOeJSVyiQVJTxjm9jJlyiGN/SC5LQJxCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781170865; c=relaxed/simple;
	bh=j/32tEZB3KNc5HLgvjZ+7oG8ejwVdIuq0j5oXVZwF18=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R3DmVfY4up6LI+gBIPTIHk3VKwColp1vpJZfl+07aIAeN1sFCIGuwCCMuRoPjnmjq/oBfM9ZgxuqhIDB4x4On3fWW4kJo6PsjwVboZvi4AAPpe6RM99k/WnjqC/vhJOtZQUzq7IO4emqPaGBSbrSeYSjBugRvhyDkmOflsABOX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlZDqGip; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 269ACC2BCB0;
	Thu, 11 Jun 2026 09:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781170865;
	bh=j/32tEZB3KNc5HLgvjZ+7oG8ejwVdIuq0j5oXVZwF18=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OlZDqGip25GHRT4UrCaTJ8iOp1okv72ADFQhVlRDakkrspOXMa34JOpjFsxmjjtjc
	 v895SufBvOdq7xkAfW1hv2ow3YEWBZGqsEDD7XTTzsgIYioiCx2QjcalJURsLRnMkS
	 LO6GZclMxcsydTMy7JO/apSEuKOVtpqdgdlJIvOaGzUjv2N+rjUNVMrP1kltEomBBM
	 ts5lnjOz5fostLiwa1MptdgCnUqjaWQzxvfu3AIv6cOaOefUBlZMHReke0ddZVaWfu
	 d4T8eke2wT6OTA/rf6uNdUuDiKzCYhJjMRsEKVEviTl6/mrHvX9H4hcApocyQ28XAn
	 q/6QGfKzAb7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 132F1CD98D2;
	Thu, 11 Jun 2026 09:41:05 +0000 (UTC)
From: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>
Date: Thu, 11 Jun 2026 17:40:53 +0800
Subject: [PATCH 1/2] dt-bindings: clock: ultrarisc: Add DP1000 Clock
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260611-ultrarisc-clock-v1-1-2d93ebb4cc13@ultrarisc.com>
References: <20260611-ultrarisc-clock-v1-0-2d93ebb4cc13@ultrarisc.com>
In-Reply-To: <20260611-ultrarisc-clock-v1-0-2d93ebb4cc13@ultrarisc.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jia Wang <wangjia@ultrarisc.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781170862; l=4324;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=ZVECvPlV5OOnNMLzfwPIxc7AenY8bgWHzITK/jxqUj0=;
 b=4DRmJtjrXmJ9Z8UAKcGcnou2Dxhc0J1R1j4MoYiLhrqXVwTuqy692+ftw0Q0kYBK5WW/tRnji
 6ZVlRxuy5bhBR9+6a/QH8qSM+Q60EubMrUcSHqtZSmF0Uws0plQOFdo
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-Endpoint-Received: by B4 Relay for wangjia@ultrarisc.com/20260515 with
 auth_id=779
X-Original-From: Jia Wang <wangjia@ultrarisc.com>
Reply-To: wangjia@ultrarisc.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310310-lists,devicetree=lfdr.de,wangjia.ultrarisc.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:wangjia@ultrarisc.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[wangjia@ultrarisc.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,devicetree.org:url,ultrarisc.com:replyto,ultrarisc.com:email,ultrarisc.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 713416707F3

From: Jia Wang <wangjia@ultrarisc.com>

Add doc for the clock controller on the UltraRISC DP1000 RISC-V SoC.

Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
---
 .../bindings/clock/ultrarisc,dp1000-clk.yaml       | 72 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 +++
 include/dt-bindings/clock/ultrarisc,dp1000-clk.h   | 29 +++++++++
 3 files changed, 108 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/ultrarisc,dp1000-clk.yaml b/Documentation/devicetree/bindings/clock/ultrarisc,dp1000-clk.yaml
new file mode 100644
index 000000000000..d4d3d851a079
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/ultrarisc,dp1000-clk.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/ultrarisc,dp1000-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UltraRISC DP1000 Clock Controller
+
+maintainers:
+  - Jia Wang <wangjia@ultrarisc.com>
+
+description: |
+  The UltraRISC DP1000 clock controller is driven from a single external
+  oscillator input. It provides a system PLL with fractional multiplier
+  and post-divider stages, several fixed-ratio derived clocks for
+  the on-chip subsystem, Clock Configuration Register (CCR) divider
+  outputs for GMAC and the UART, I2C, and SPI root clocks, and
+  per-instance gate clocks for UART0-3, I2C0-3, and SPI0-1.
+
+  All available clocks are defined as preprocessor macros in
+  include/dt-bindings/clock/ultrarisc,dp1000-clk.h
+
+properties:
+  compatible:
+    const: ultrarisc,dp1000-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      External oscillator input clock used as the parent of the PLLs.
+
+  clock-names:
+    items:
+      - const: osc
+
+  "#clock-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/ultrarisc,dp1000-clk.h>
+
+    osc: oscillator {
+      compatible = "fixed-clock";
+      #clock-cells = <0>;
+      clock-frequency = <24000000>;
+    };
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      clock-controller@11080000 {
+        compatible = "ultrarisc,dp1000-clk";
+        reg = <0x0 0x11080000 0x0 0x1000>;
+        clocks = <&osc>;
+        clock-names = "osc";
+        #clock-cells = <1>;
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index e035a3be797c..3331f1edf002 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -27357,6 +27357,13 @@ S:	Maintained
 F:	drivers/usb/common/ulpi.c
 F:	include/linux/ulpi/
 
+ULTRARISC DP1000 CLOCK DRIVER
+M:	Jia Wang <wangjia@ultrarisc.com>
+L:	linux-clk@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/ultrarisc,dp1000-clk.yaml
+F:	include/dt-bindings/clock/ultrarisc,dp1000-clk.h
+
 ULTRATRONIK BOARD SUPPORT
 M:	Goran Rađenović <goran.radni@gmail.com>
 M:	Börge Strümpfel <boerge.struempfel@gmail.com>
diff --git a/include/dt-bindings/clock/ultrarisc,dp1000-clk.h b/include/dt-bindings/clock/ultrarisc,dp1000-clk.h
new file mode 100644
index 000000000000..5e484f652b08
--- /dev/null
+++ b/include/dt-bindings/clock/ultrarisc,dp1000-clk.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+#ifndef _DT_BINDINGS_CLOCK_ULTRARISC_DP1000_CLK_H
+#define _DT_BINDINGS_CLOCK_ULTRARISC_DP1000_CLK_H
+
+#define DP1000_CLK_SYSPLL		0
+#define DP1000_CLK_SYSPLL_DIV2		1
+#define DP1000_CLK_SUBSYS		2
+#define DP1000_CLK_GMAC			3
+#define DP1000_CLK_UART_ROOT		4
+#define DP1000_CLK_I2C_ROOT		5
+#define DP1000_CLK_SPI_ROOT		6
+#define DP1000_CLK_PCIE_DBI		7
+#define DP1000_CLK_PCIEX4_CORE		8
+#define DP1000_CLK_PCIEX16_CORE		9
+#define DP1000_CLK_PCIE_AUX		10
+#define DP1000_CLK_UART0		11
+#define DP1000_CLK_UART1		12
+#define DP1000_CLK_UART2		13
+#define DP1000_CLK_UART3		14
+#define DP1000_CLK_I2C0			15
+#define DP1000_CLK_I2C1			16
+#define DP1000_CLK_I2C2			17
+#define DP1000_CLK_I2C3			18
+#define DP1000_CLK_SPI0			19
+#define DP1000_CLK_SPI1			20
+
+#define DP1000_CLK_NUM			21
+
+#endif /* _DT_BINDINGS_CLOCK_ULTRARISC_DP1000_CLK_H */

-- 
2.34.1



