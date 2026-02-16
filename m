Return-Path: <devicetree+bounces-265933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIqkDGGXk2lI6wEAu9opvQ
	(envelope-from <devicetree+bounces-265933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:17:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2F1147E2F
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 099D3302297B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 22:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383B02DB7B3;
	Mon, 16 Feb 2026 22:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="TjlR6okq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E339219319
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 22:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771280207; cv=none; b=Wkz9hPXDsIxpf9BwwCU2D1wU5l/feY7Yu2ypM7+yewpgvrKBhAfcrR7V4INWyuLT3eIXTo6pfPVUugVrHQ/YB8S3McgVaoEG1Jz+/nLbVOtpdwkCOopaPjZdELqNPlMGkOlEj43l7FRMc5O4roWEKpFT6pMfaGEQfi+Rw5ggnd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771280207; c=relaxed/simple;
	bh=LRpRrPlFr3WG/Hf0VC5ZlSqIsbeePRU3gQpC8DT4EfI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LWqgbl07/LL1kjaAmA9wHq4+Olig1df/ERnhMlaTYiDDTxYT5HmO0VSNgnNJryhUm/w0h+JmBjm9PUXSjmjNwVIS7ZFyeT4QPBCpcdpmsGBCSvkGCWvnudTB/n7vYYgfcy8xiyW1OTegijzfuGMTgrZouT4OTcMBOZ90OOWRI5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=TjlR6okq; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-797afd2e872so19254607b3.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771280204; x=1771885004; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vr9AQ16LUCsHISAxFNb9nZcdT/t7sl0hcy6miHE+OBw=;
        b=TjlR6okqhMKZyI6HVG/2m87mLXaiQ37y0lDiTjz5H+8WhMxfKzTj4moU91DjkV8VW7
         4s+bBJO6FSYuCM3wir1HqsbGFGxuj5X0hCWEsvx3WwT8bM940/p8CT2/RkDyk9saMV9/
         TTdRpfemfC+Osnt4KefJDBgsMCXgzqV4N1VSaSXkqASG0QuZnred2OawW9h17yWTQgUz
         kSFbaiciLrzQN6eIvfvzTZ+f5A9tqIXV47ypz+XU05bGnMB7NHWpSS0LIuZYjnLU1U+q
         gr52D8GlVfa5ClNK9KPxEee23u7ABWKw/p1Vsq3h12mnCCZhcZQFcjWrcJ9alI1T8MoX
         iBWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771280204; x=1771885004;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vr9AQ16LUCsHISAxFNb9nZcdT/t7sl0hcy6miHE+OBw=;
        b=AsuQWUKBtdEYres7wtyxWuHhAUbaiufFOnLqxax7w32drhmB//eGXAgIZ52vD+C60k
         Kgtzlir+2qQI4l8/cZt1T5h8ek0wUkI6Zze7v8f2rmV7WD8PDxfM2n4bLtTbrol/XRfZ
         xZcZu0F0DXc649HDuvQ5hRgO0DZiMd3HVhbSuampAEsGNbG/uWs96gP7DF+K0ryVC1/G
         v5zgPzWt24dgVuXRPQlGG5B8X+TX6PQy8o4u/l7joFNLiPXSA1o9q+7THjDNe1EFd3iy
         K5YbHFh5jNCjAuP1WpP+MbyURxtyZJM5rlVDynummq5RvTHOIu0dnLeKv5ert8udYcqY
         nACA==
X-Forwarded-Encrypted: i=1; AJvYcCW70hs6VYdZ82+O+bV3SGt2IlhR/l5uDG0fHYOPke9JqRNZEayS9xxkXZNOjWjGpIPj5K+8Sc5uNN7C@vger.kernel.org
X-Gm-Message-State: AOJu0YyepIxc6mLty1xclakGVRcYyP+OCQDoOX1g5TyANiIr0DuvJE92
	wc1scleFjbJ/iqlYqzXid0rRbIQYW23wFtO5M5Zz58TK+/alSE/tvBFRDndZF0xldf4=
X-Gm-Gg: AZuq6aJG3hSxl18MmO1YyT6eT+mN35Vf/tC2jchybJdgzbVXq6PPZrDX/KE8VI/dbyh
	5vMdNwai42LtGfsiE3PzN4exWOhO30GG7zvaWeU+Icmnflm5u8tnm7eEMjWVkC3u/+SPo9syLBd
	pR+qO4VBcK5cO4cfU9hIchygSNzR0YxVF3wwf8OEpmlI8A4UaAHQaAcQInPIHjuk1ZAjeUCKp7j
	0NdaYLxahd/9KpvPJ9XxRHahuCs5ggtXezPhlbGVG3Flzm0MHrJ95LO/qaHop2FsARc8/N1Lrbw
	wEYswjMIQJ5NhSAp/ZCw7RFJ1aWR0vNn/aRp85LvEtIL6PaZTzT+lhT747zASe+n0yRucRWbG6U
	gi9ft2Z39ud7vJS+V7UKA0o06LYInNSC39W9Ehbesd2kUV1JiJ7WfeIyigDu8yTPv2bndNtgqsh
	93vRa0TUNVCydplA2ejg9ek1yqCXTXAXTsb1Bg04HZk+QDJEH5GEO0umZ4VcCt2gL+jbLNIH7xT
	tvDR4z90/o=
X-Received: by 2002:a05:690c:4884:b0:794:ef94:120d with SMTP id 00721157ae682-797ac5263d8mr72932517b3.24.1771280204562;
        Mon, 16 Feb 2026 14:16:44 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c1a8222sm106705757b3.23.2026.02.16.14.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 14:16:44 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Mon, 16 Feb 2026 16:16:32 -0600
Subject: [PATCH v6 1/3] dt-bindings: clk: tenstorrent: Add
 tenstorrent,atlantis-prcm-rcpu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-atlantis-clocks-v6-1-cb46d6a59c73@oss.tenstorrent.com>
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
In-Reply-To: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
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
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265933-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim,oss.tenstorrent.com:mid]
X-Rspamd-Queue-Id: BE2F1147E2F
X-Rspamd-Action: no action

Document bindings for Tenstorrent Atlantis PRCM that manages clocks
and resets. This block is instantiated multiple times in the SoC.
This commit documents the clocks from the RCPU PRCM block.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 .../clock/tenstorrent,atlantis-prcm-rcpu.yaml      |  54 +++++++++++
 MAINTAINERS                                        |   2 +
 .../clock/tenstorrent,atlantis-prcm-rcpu.h         | 103 +++++++++++++++++++++
 3 files changed, 159 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm-rcpu.yaml b/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm-rcpu.yaml
new file mode 100644
index 000000000000..7fa16526efce
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm-rcpu.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/tenstorrent,atlantis-prcm-rcpu.yaml#
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
+  subsystem. RCPU prcm serves low speed IO interfaces.
+
+properties:
+  compatible:
+    enum:
+      - tenstorrent,atlantis-prcm-rcpu
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
+      See <dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h> for valid indices.
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#clock-cells"
+  - "#reset-cells"
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
index dc731d37c8fe..24cd2bbe1c78 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22534,8 +22534,10 @@ M:	Joel Stanley <jms@oss.tenstorrent.com>
 L:	linux-riscv@lists.infradead.org
 S:	Maintained
 T:	git https://github.com/tenstorrent/linux.git
+F:	Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm-rcpu.yaml
 F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
+F:	include/dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h
 
 RISC-V THEAD SoC SUPPORT
 M:	Drew Fustini <fustini@kernel.org>
diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h b/include/dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h
new file mode 100644
index 000000000000..c1c875e016f8
--- /dev/null
+++ b/include/dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Tenstorrent Atlantis PRCM Clock and Reset Indices
+ *
+ * Copyright (c) 2026 Tenstorrent
+ */
+
+#ifndef _DT_BINDINGS_ATLANTIS_PRCM_RCPU_H
+#define _DT_BINDINGS_ATLANTIS_PRCM_RCPU_H
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
+#endif /* _DT_BINDINGS_ATLANTIS_PRCM_RCPU_H */

-- 
2.43.0


