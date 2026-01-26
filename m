Return-Path: <devicetree+bounces-259655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMZUHafXd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:07:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECDF8D856
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:07:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C905301D070
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6854E2DF132;
	Mon, 26 Jan 2026 21:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="JpdAjrFa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1852765D4
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 21:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461645; cv=none; b=DrHu5TVwOO3wfzrt6FZpBa3EdtpoZCkUvieTbkppmPcynTWsuspVMwU6VNBwGZCT6Fawpu8tk0PjcNMjFpQ0pwwmyXbejNQSqqr4J0YU0u03QXbyGUz8XIK4nX8sVTGEusfAhXmEDzHmwpapSALnsvES2GjDn7DxBRVGbbNAxew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461645; c=relaxed/simple;
	bh=csZKkZyProPFCVAM3eH4n1dn4037V3/YH9UjwOAN5mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E4efe9Hs7/cW1WQ7pWczcCijjA4ecN3ZG7USurwzPFNbsssAnLtLCMqpdLqGk+Kh+AH13DttWK9yVNRVsIw1auJ7a500aaBGbGu80TiVdrGxZUqvpM0o0HXe+GvsjygmplsA5KRY4AqpFVaOI/lg9ox0reHrWzZWT0xUB3v4JSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=JpdAjrFa; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-649605d3664so3290962d50.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769461642; x=1770066442; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VmgB4JOviFy42/0uIZfa03y/6mB8pldrtvsYd3V5d+M=;
        b=JpdAjrFaR7c9s0IXlUdzJGeLREKUahUkbPb1gMG5M8Ojlnql35OMvlk/aJggljxh2v
         3wj2Oqelo1uZJIup0Ayozhe9EBBbliklSpXpe/Ov8kbNLIdLMndp1vQJpn9KAgsDwW77
         OaQ2Aao+ZE/kOoalHgoKmSf0pKVsTXTm/Jhg77UP88QX0nY1qF6yi811TUjqSAYGc0tO
         CMeO6hVi0F3cxK2kJEay8eM60HNQvMeKB35zADbTfGMjWaltGMxRgHOAWN+8t5YPtUaL
         c1kqOSyAakixn0B9FAMTdBzsgWtIw14/loJKtix4UKYtGNIYHLui5SaTsRVXwdKvxFPb
         8Tkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769461642; x=1770066442;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VmgB4JOviFy42/0uIZfa03y/6mB8pldrtvsYd3V5d+M=;
        b=OFDqoz/2FG2TpEajFTZbs0YH8em5Iyb1uMfqfkyEswCekzMEQBG84pHEIEhM4sGEFV
         laAqwp+edX2Jy1SRPMg/FiBYiDOIarIIsnNI9GvgR3zhMNZv/m2j/fUeTAi00vajRFyT
         6xt34TkQm/7tiFOSRqHrf8a3V5W2Rg7ZTolgN790HiYIEjSHFd397tF+CEcROz+wNJY8
         rR7JHFjCgsKfIX8m3Rx68XtVHjw5uyJp2iBvL/ae/m1vv3Q+ZOPtkW4vaVTu+S57o64U
         e48MBoRobQ+Ql+h2saEiMR/tpsV+692IPfkAJxSCt/8HHTDoVhc/RTV08LS3FpAN95Ws
         GX8g==
X-Forwarded-Encrypted: i=1; AJvYcCWnZkR0Belrpa/GFR5PqLVQMzNkp44ap+xJiUFiNEL9WyWv9Y/lMMsbl5PjbWUmorMoh/RH6xx2vODu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvj4ufANElOUeMo9bMgrUQIp0UpvsGbPRLfpCI1hA8UkHJ42cU
	0AmBQlxGSx5n8TQ6/JDTwA6J/LLGttsa0MYthtsOvtUbueg+SRLoqmrSWhyEha1v5UU=
X-Gm-Gg: AZuq6aLv+ydx7xeqj2gSV/O6KNArMuNxdQvZ6s19reUufbuQGMJwIGtcOagwIlCvShQ
	/Cwb8RV1CBl4mH5ZenwV82DfQtox1xdfaLMymtcu4xGOnW/r8gasoLv9G1wkifmQ5An4p9H3Icv
	+QIisCps+A/58IusLzVfdkRion8Mjz+6oE3/rDLwPQMBj2nSajAOeoSNmDkLYC2QRbFgBIWssVw
	/c9b1m3t3Grp2vBQQ+kN4N1qJpJI5y7WxcbjIs4fOble79MGgSad/uvBTve3BcYP5IdCNw1PCLA
	tWjTMUPVpc0E5sInmEK23SETlXSQtD5t9QI0gWe/exEfpJ2ySr1IiZWQBK9XCc2gVuUii5h6ams
	HwslOn1AgQByyCBeHUqlSpuP6kJDnEzJ3PeTrwEBXWa5cqGyp3VMu8QSX9yGqSvRO8/RChlsgWp
	bvOYYDZdq9raiwG0oRQxowfWEOjq+aFZG194OVE/FE1jwx5sdZDYMrumyymL7T36ZfYfi2kkA=
X-Received: by 2002:a05:690c:6f0b:b0:794:ef5:cf9f with SMTP id 00721157ae682-7945a9cf77amr48608167b3.60.1769461642017;
        Mon, 26 Jan 2026 13:07:22 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7944bed27casm37948757b3.7.2026.01.26.13.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 13:07:21 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Mon, 26 Jan 2026 15:07:14 -0600
Subject: [PATCH v3 1/3] dt-bindings: clk: tenstorrent: Add
 tenstorrent,atlantis-prcm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-atlantis-clocks-v3-1-b016135551b7@oss.tenstorrent.com>
References: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
In-Reply-To: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
 bmasney@redhat.com
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259655-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.tenstorrent.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,infradead.org:email,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 1ECDF8D856
X-Rspamd-Action: no action

Document bindings for Tenstorrent Atlantis PRCM that manages clocks
and resets. This block is instantiated 4 times in the SoC.
This commit documents the clocks from the RCPU PRCM block.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  82 ++++++++++++++++
 MAINTAINERS                                        |   2 +
 .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++++++++++++++++++++
 3 files changed, 187 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm.yaml b/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm.yaml
new file mode 100644
index 000000000000..c5716a9928bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/tenstorrent,atlantis-prcm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Tenstorrent Atlantis PRCM (Power, Reset, Clock Management) Module
+
+maintainers:
+  - Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
+
+description:
+  Multifunctional register block found in Tenstorrent Atlantis SoC whose main
+  function is to control clocks and resets. This block is instantiated multiple
+  times in the SoC, each block controls clock and resets for a different
+  subsystem. RCPU prcm serves low speed IO interfaces. PCIe prcm serves all
+  PCIe related functions, HSIO prcm serves high speed IO interfaces (Ethernet,
+  USB), MM prcm serves GPU, display and video processing functions.
+
+properties:
+  compatible:
+    enum:
+      - tenstorrent,atlantis-prcm-rcpu
+      - tenstorrent,atlantis-prcm-pcie
+      - tenstorrent,atlantis-prcm-mm
+      - tenstorrent,atlantis-prcm-hsio
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+    description:
+      See <dt-bindings/clock/tenstorrent,atlantis-prcm.h> for valid indices.
+
+  "#reset-cells":
+    const: 1
+
+  tenstorrent,prcm-rcpu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle reference to RCPU prcm, needed by other 3 prcms (PCIe, MM, HSIO)
+      as the control registers for the PLLs that drive these subsystems are in
+      RCPU prcm's range
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#clock-cells"
+  - "#reset-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - tenstorrent,atlantis-prcm-pcie
+              - tenstorrent,atlantis-prcm-mm
+              - tenstorrent,atlantis-prcm-hsio
+    then:
+      required:
+        - tenstorrent,prcm-rcpu
+    else:
+      properties:
+        tenstorrent,prcm-rcpu: false
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller@a8000000 {
+      compatible = "tenstorrent,atlantis-prcm-rcpu";
+      reg = <0xa8000000 0x10000>;
+      clocks = <&osc_24m>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8fe..0fc7bc6d0458 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22534,8 +22534,10 @@ M:	Joel Stanley <jms@oss.tenstorrent.com>
 L:	linux-riscv@lists.infradead.org
 S:	Maintained
 T:	git https://github.com/tenstorrent/linux.git
+F:	Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm.yaml
 F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
+F:	include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
 
 RISC-V THEAD SoC SUPPORT
 M:	Drew Fustini <fustini@kernel.org>
diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h b/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
new file mode 100644
index 000000000000..3820781127c3
--- /dev/null
+++ b/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Tenstorrent Atlantis PRCM Clock and Reset Indices
+ *
+ * Copyright (c) 2026 Tenstorrent
+ */
+
+#ifndef _DT_BINDINGS_ATLANTIS_PRCM_H
+#define _DT_BINDINGS_ATLANTIS_PRCM_H
+
+/*
+ * RCPU Domain Clock IDs
+ */
+#define CLK_RCPU_PLL		0
+#define CLK_RCPU_ROOT		1
+#define CLK_RCPU_DIV2		2
+#define CLK_RCPU_DIV4		3
+#define CLK_RCPU_RTC		4
+#define CLK_SMNDMA0_ACLK	5
+#define CLK_SMNDMA1_ACLK	6
+#define CLK_WDT0_PCLK		7
+#define CLK_WDT1_PCLK		8
+#define CLK_TIMER_PCLK		9
+#define CLK_PVTC_PCLK		10
+#define CLK_PMU_PCLK		11
+#define CLK_MAILBOX_HCLK	12
+#define CLK_SEC_SPACC_HCLK	13
+#define CLK_SEC_OTP_HCLK	14
+#define CLK_TRNG_PCLK		15
+#define CLK_SEC_CRC_HCLK	16
+#define CLK_SMN_HCLK		17
+#define CLK_AHB0_HCLK		18
+#define CLK_SMN_PCLK		19
+#define CLK_SMN_CLK		20
+#define CLK_SCRATCHPAD_CLK	21
+#define CLK_RCPU_CORE_CLK	22
+#define CLK_RCPU_ROM_CLK	23
+#define CLK_OTP_LOAD_CLK	24
+#define CLK_NOC_PLL		25
+#define CLK_NOCC_CLK		26
+#define CLK_NOCC_DIV2		27
+#define CLK_NOCC_DIV4		28
+#define CLK_NOCC_RTC		29
+#define CLK_NOCC_CAN		30
+#define CLK_QSPI_SCLK		31
+#define CLK_QSPI_HCLK		32
+#define CLK_I2C0_PCLK		33
+#define CLK_I2C1_PCLK		34
+#define CLK_I2C2_PCLK		35
+#define CLK_I2C3_PCLK		36
+#define CLK_I2C4_PCLK		37
+#define CLK_UART0_PCLK		38
+#define CLK_UART1_PCLK		39
+#define CLK_UART2_PCLK		40
+#define CLK_UART3_PCLK		41
+#define CLK_UART4_PCLK		42
+#define CLK_SPI0_PCLK		43
+#define CLK_SPI1_PCLK		44
+#define CLK_SPI2_PCLK		45
+#define CLK_SPI3_PCLK		46
+#define CLK_GPIO_PCLK		47
+#define CLK_CAN0_HCLK		48
+#define CLK_CAN0_CLK		49
+#define CLK_CAN1_HCLK		50
+#define CLK_CAN1_CLK		51
+#define CLK_CAN0_TIMER_CLK	52
+#define CLK_CAN1_TIMER_CLK	53
+
+/* RCPU domain reset */
+#define RST_SMNDMA0		0
+#define RST_SMNDMA1		1
+#define RST_WDT0		2
+#define RST_WDT1		3
+#define RST_TMR			4
+#define RST_PVTC		5
+#define RST_PMU			6
+#define RST_MAILBOX		7
+#define RST_SPACC		8
+#define RST_OTP			9
+#define RST_TRNG		10
+#define RST_CRC			11
+#define RST_QSPI		12
+#define RST_I2C0		13
+#define RST_I2C1		14
+#define RST_I2C2		15
+#define RST_I2C3		16
+#define RST_I2C4		17
+#define RST_UART0		18
+#define RST_UART1		19
+#define RST_UART2		20
+#define RST_UART3		21
+#define RST_UART4		22
+#define RST_SPI0		23
+#define RST_SPI1		24
+#define RST_SPI2		25
+#define RST_SPI3		26
+#define RST_GPIO		27
+#define RST_CAN0		28
+#define RST_CAN1		29
+#define RST_I2S0		30
+#define RST_I2S1		31
+
+#endif /* _DT_BINDINGS_ATLANTIS_PRCM_H */

-- 
2.43.0


