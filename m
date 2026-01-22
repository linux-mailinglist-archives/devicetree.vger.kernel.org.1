Return-Path: <devicetree+bounces-258638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPmuCV+ncmnaoQAAu9opvQ
	(envelope-from <devicetree+bounces-258638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:40:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3BE6E3D8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:40:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34E11302800F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 22:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828E03D729E;
	Thu, 22 Jan 2026 22:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="dsC+Ock5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C06A3A5C17
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 22:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769121438; cv=none; b=Iim4giwtrvILnw3VGJU5eRY0/dULCtGMHkjcFfTLUriVJdc0/qopcwMaEoFQPG/4LyEgqUlfIldBGYb4W4J3W7nkc27ed8Yzhs3mnPF0dZ3ZmtGF0aleoiLLDiu3yyES3xnyhyC0ZkJSTb15LcC6jMndzRoOWVi0Poy2KRuaOuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769121438; c=relaxed/simple;
	bh=nuJdKHGCTV0D09Z7qyDqhwfvfBu5By5qCwePaRgr+WM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=artENhLzqmZ1+S9We8P+xSajBFcsUcAFv+6fGbdTDJg08uIQm1i8GfcKGAE85Ab+ItLEBvX04vYFeenF+AtYQExlTp88I0cvNg6nu6N9nLvg2SFaGjJ+878rYZdbPzCRlkXODiA5gq9XcNuQeCEG6DXARg48/uvZkMFzC2YkKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=dsC+Ock5; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7927261a3acso18144137b3.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 14:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769121428; x=1769726228; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jy1u4d8feAZPBgF+/xH/YbvlGqaa/pPappPh2V1R7Jg=;
        b=dsC+Ock5bi5/CkuEg4RiqlIMQpa8KsOe1MgQpLC3V5E5bpqRpEdu3XDfBWDQNFOEB/
         bI+2UgLhwXPlZ5sBHH1WzlEMVQgovXzZKiz3a5wP6sdVTkUlkf7FQKkUY/sifXxDW38y
         +TkQbtxrr3BackU8icSYS0J0zGfun6Ei2VvbvVOpdJhK82FpL74/s1M+vYs7ee1j0ATW
         BZR/p0oSfi+M27XB8ozfVlrijQT6sB/8DoPhmA4vLaKJxMRQyGNFeZ/jcXhne8vxCHnF
         QO8qnK5BUVW+70OW2mmtOMVDOxpSfS2PlapPonuDoy70l9IeDs6bljfGMfA42jVx0tWI
         TVpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769121428; x=1769726228;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jy1u4d8feAZPBgF+/xH/YbvlGqaa/pPappPh2V1R7Jg=;
        b=gxlV+EdwbzbnVyQoKZKsp4FS4TXLevzE8EIPj8psqBdNk9nKK06yix9WSY22BrXywJ
         n5MiBRFWPhtiEGzR7KaVwlwGIbaDVPVrLi4+5lZ/7oYBJU1p3Z9tlrtOYzt0Gt0rH2jU
         V4SEqcHh7q1sehJkE8urPr4WJx81opVZbwu0WmcGmYY1LPmsOt++hsE5cRVUZ5Cb1CjZ
         CHhbdpgrIyNT5T3GB6QoC6MIycM5yVdUrRLxyZHy1vgS0vgBK20JpOpzUTRdnor5PAZ7
         VCWfz3+WViaAPhcSAfJ95OAZe2fFgpLU2kQT03XBuySrAJO4O2aLa6uc4LJYnOki2HnS
         mBpQ==
X-Forwarded-Encrypted: i=1; AJvYcCU54TV1DaUgmRntb1DKKJExh1FQAg8lQGd7dKq9DzwMBpCkVtm2xbHAP5cVc4t5piDslvI9kDwVDCDb@vger.kernel.org
X-Gm-Message-State: AOJu0YwCSV90WPvpvRr0+Dh2v95NFKvsW1WklVxYszxXY5sSSQqCyYG8
	G4UDV4nP6Rhao8m/A8Y8fM1yMPAZiPX8sD7RCDZuT8wFIySSGecPeZFJMQoVojoTuK8=
X-Gm-Gg: AZuq6aKJeKdabaBHT4DaXYcQoCjNy66PRL9fKFTNU8djHy6HcpfoVvobwq6We4N0S6Q
	3ptivzzBJ03RCRfu5fLeD7bs4Rr+bedIHMnWSPfOQGpP7O69fGBHO38crjpZjDLnBAF6TWlsPSL
	QvLuezmSGOj2kP+vf0dF5qr+7YHjh7/IzrK2gq1RTBTnbXlpx4qVB5TxMbaVCR0EMyNQuJRvImy
	Rbkpmh9mXOuGx0SGDl5WRiEGVBOp+iKxGRpucfhVYVDArqPsq30as0/L8lv6AOdtfqnXmaTEl7+
	Y7rdoaqDyj2UsM8RNfiHzoujCfvnZwtIeCJTQSMINX6zswTmXlXnRT8NkBILSZEcqgiZH0WJX5y
	3Ar99YJxIQie2/Ek6V9mo6U3ik92TVMCXWGfyawL5HPMUnqyPgtZpiyiA7WX44JWHD4e1WxyWzN
	U7P9AA2EB2TnJ4lpIskzEzaIMUJY0Ot/pbGmsFlTGcsKa50nt/nrsFzxOWo0sSm8KGT7z8g+gw8
	tq/wJ16/w==
X-Received: by 2002:a05:690c:c50c:b0:794:3cb7:80fe with SMTP id 00721157ae682-7943cb78460mr470627b3.20.1769121428408;
        Thu, 22 Jan 2026 14:37:08 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7943b01b09csm2766167b3.15.2026.01.22.14.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 14:37:08 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 22 Jan 2026 16:36:37 -0600
Subject: [PATCH v2 1/3] dt-bindings: soc: tenstorrent: Add
 tenstorrent,atlantis-syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-atlantis-clocks-v2-1-c66371639e66@oss.tenstorrent.com>
References: <20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com>
In-Reply-To: <20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258638-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a8000000:email,tenstorrent.com:email,tenstorrent.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,e00c0000:email,devicetree.org:url,infradead.org:email]
X-Rspamd-Queue-Id: 9E3BE6E3D8
X-Rspamd-Action: no action

Document bindings for Tenstorrent Atlantis syscon that manages clocks
and resets. This syscon block is instantiated 4 times in the SoC.
This commit documents the clocks from the RCPU syscon block.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 .../tenstorrent/tenstorrent,atlantis-syscon.yaml   |  90 ++++++++++++++++++
 MAINTAINERS                                        |   2 +
 .../clock/tenstorrent,atlantis-syscon.h            | 101 +++++++++++++++++++++
 3 files changed, 193 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
new file mode 100644
index 000000000000..49fbe2423be0
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Tenstorrent Atlantis SoC Syscon
+
+maintainers:
+  - Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
+
+description:
+  Multifunctional register block found in Tenstorrent Atlantis SoC whose main function
+  is to control clocks and resets. This Block is instantiated multiple times in the SoC,
+  each block controls clock and resets for a different subsystem.
+
+  RCPU syscon serves low speed IO interfaces on chip
+  PCIe syscon serves all PCIe related functions
+  HSIO syscon serves high speed IO interfaces (Ethernet, USB)
+  MM syscon serves GPU, display and video processing functions
+
+properties:
+  compatible:
+    enum:
+      - tenstorrent,atlantis-syscon-rcpu
+      - tenstorrent,atlantis-syscon-pcie
+      - tenstorrent,atlantis-syscon-mm
+      - tenstorrent,atlantis-syscon-hsio
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
+      See <dt-bindings/clock/tenstorrent,atlantis-syscon.h> for valid indices.
+
+  "#reset-cells":
+    const: 1
+
+  tenstorrent,syscon-rcpu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle reference to RCPU syscon, needed by other 3 syscons (PCIe, MM, HSIO)
+      as the control registers for the PLLs that drive these subsystems are in RCPU
+      syscon's range
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
+              - tenstorrent,atlantis-syscon-pcie
+              - tenstorrent,atlantis-syscon-mm
+              - tenstorrent,atlantis-syscon-hsio
+    then:
+      required:
+        - tenstorrent,syscon-rcpu
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon_rcpu: system-controller@a8000000 {
+      compatible = "tenstorrent,atlantis-syscon-rcpu";
+      reg = <0xa8000000 0x10000>;
+      clocks = <&osc_24m>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
+  - |
+    syscon_hsio: system-controller@e00c0000 {
+      compatible = "tenstorrent,atlantis-syscon-hsio";
+      reg = <0xe00c0000 0x500>;
+      clocks = <&osc_24m>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      tenstorrent,syscon-rcpu = <&syscon_rcpu>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8fe..19a98b1fa456 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22535,7 +22535,9 @@ L:	linux-riscv@lists.infradead.org
 S:	Maintained
 T:	git https://github.com/tenstorrent/linux.git
 F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
+F:	Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
+F:	include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
 
 RISC-V THEAD SoC SUPPORT
 M:	Drew Fustini <fustini@kernel.org>
diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h b/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
new file mode 100644
index 000000000000..053cef2b43c8
--- /dev/null
+++ b/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
@@ -0,0 +1,101 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2026 Tenstorrent
+ */
+
+#ifndef _DT_BINDINGS_ATLANTIS_SYSCON_H
+#define _DT_BINDINGS_ATLANTIS_SYSCON_H
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
+#endif /* _DT_BINDINGS_ATLANTIS_SYSCON_H */

-- 
2.43.0


