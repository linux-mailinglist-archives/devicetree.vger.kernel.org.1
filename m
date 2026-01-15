Return-Path: <devicetree+bounces-255799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F6AD294CC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B99673035CFF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF7D3314C8;
	Thu, 15 Jan 2026 23:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="FKJa5zs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC28330B31
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520567; cv=none; b=GQy5d2bCsmljidCZQq7JmyYnP5zCwumuQMfUIKa21Z8Nke7IxqfPHsWOruQ4KTU7idy6s/+E3/OyrvYAF2zjqj3+5ZB9eOvDz3JuPyWxk9dVXhhI0tYb/ffCAnZZ9HJpazDxYkbUTT2JAq2ZLFoWJTGhzS27H2tAm1jGzQuaeB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520567; c=relaxed/simple;
	bh=ok/oOy2H/gCmt8aqGtg4bivoLspv42jnrduGYWvKsXI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bb6xYJLLpQCcD5uveIjMYf/2ZMccATXtXAECMaDa0GvrNdDMElwCWoF4dkp8fVx0x7tN+0DnEavHU6I3Y4VgVZr81AHT/3WsI8o3xo3qCg/qpKnErSVciigJvPmqsaNmywUvozRsPlqwz8f4Vo2PnlHwsScjSJH4ar7QBS14j+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=FKJa5zs9; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-79018a412edso14885337b3.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520565; x=1769125365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o+0cIAGDGMmJvU1Q3VxQyqOTGo8fl+3oX0TiLK3VJIY=;
        b=FKJa5zs9lAD3kxox6Qw4a1JhouM2W1aX+GxFBSkqZad8jmaUsemVeqjlUKh2kRrcFj
         IV5GbasDfH6IV3J9hpYLwfDGQcBBUVx31TMsEDf5LkiPkqAl96mQOpCvc38Vw/U7BWsa
         GwryW7Yq/Kp1421opTlzWb9LPwfHDB/pRFxiPN0h9tm39vu6z3/85ZbKrBEtgk+JLwrS
         gmolz29jCNwXJOH85z1dO40+YFtPZE4J+ICWz6GdcL2wbE5PwyTrHScXoRdvw1YGCtcm
         13T5Syaxk2x+xV+FLyE3JQzji6HkoRaEHs8eMW3Pxpelg4Sr42QhmyBC+rwxh2ZHb+Sq
         mTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520565; x=1769125365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o+0cIAGDGMmJvU1Q3VxQyqOTGo8fl+3oX0TiLK3VJIY=;
        b=azSiVXjicip4Gfd2v1Nby0HSXaJtQBoGG7tpQ/3DcZBgSkqCuVCeOxO4ktJtecB1ha
         rTImtg/bT/seEiRVpXhV0XAvFWzROlh8HCb4N3N0/Qz4KhLHGfUC+PlPKnzKW1bBtCLy
         gnUmYt1tDCkES/P4zxYemu4muUi4Ao1murduRcv4kUYTXf35whhKlxnGjpTnViA7wtDt
         WdHOXV2B7WsUjbqWcE9MBBlRpuumrimiGZP4bGv8Khu2EnYFN1AiGOcjbNPw4fKeAI7Q
         f84V1VCVTJrxBfA5Gw6r5IIVv26wIPFp2EG1pMkOBSWMjJnhjLIS+6J0KgR39SgneHnL
         VUOQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6HukgBkikxeLgG9WbrdhGyVWLsrbsYcN0iTaGHym51P/Mmd7w49hq8la7rjO2E+LU3G+mKJyWz4DF@vger.kernel.org
X-Gm-Message-State: AOJu0YzIf09/f5im2TeswOkU3+rkwDDmwR+Vgk3bkaXuFZTrLD9Izd7J
	NXWachriNYefOHijivbyi9O3qbpXwgH34IHErL2rOgAE3mait6GCZPsVwwPpi8VpVN4=
X-Gm-Gg: AY/fxX4zsPT0/izPhQFybQVaiSRPQg4XJvOKG07KrFrJXKGgwH/nnwXsQigNtNZGffO
	j6tB5N4C+GpnDt8FzxhLYHU8Z0fiuhbyKL69ndYltl8FK7VMMO3qxpdT3jH9ZzXqOSKPdee66co
	7jkJPOjfoUXLVZYfJHd/y3kjHLndJ4nazx4osWh0wECNqY3XT/DuNwvGLl+EgTY8ruqSgRXo+cT
	U7umiXgGHuyjmP+9EA6GqQcheIz5dQ4DrYwI+3l8AB2f3zoKVqSp4oIo/ZoR7luYPyC3SJ1NP4D
	2HDVVCIw+IRdTQ1DvWEBo8pxNWBk1X3/7HspWw2Z5LNQPwq1CSQDUb2SDAn/1v0ZoCl+VY3Bavr
	s9BWK9Dab8pzvyrpDTCkFt2w9U9zanM4EnI83b1gRYfEaxiXE2GhKbmEM6+vM7mL01eTdbke0NL
	IAzub+p0S+cQ1TV5DFxfGfA4dXBbJE99LyNQM57XhDfbW3cSigIgc+vXheICouhm0eaG2kbwk=
X-Received: by 2002:a05:690c:7206:b0:78c:2d5c:1988 with SMTP id 00721157ae682-793c52ab10bmr12877617b3.15.1768520565147;
        Thu, 15 Jan 2026 15:42:45 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:44 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:00 -0600
Subject: [PATCH 1/8] dt-bindings: soc: tenstorrent: Add
 tenstorrent,atlantis-syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-1-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
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
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Document bindings for Tenstorrent Atlantis syscon that manages clocks
and resets. This syscon block is instantiated 4 times in the SoC.
This commit documents the clocks from the RCPU syscon block.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 .../tenstorrent/tenstorrent,atlantis-syscon.yaml   | 58 +++++++++++++++++++
 MAINTAINERS                                        |  2 +
 .../clock/tenstorrent,atlantis-syscon.h            | 67 ++++++++++++++++++++++
 3 files changed, 127 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
new file mode 100644
index 000000000000..3915d78dfeda
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Tenstorrent Atlantis SoC System Controller
+
+maintainers:
+  - Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
+
+description:
+  System controller found in Tenstorrent Atlantis SoC, which is capable of
+  clock and reset functions.
+
+  RCPU syscon controls clocks and resets for low speed IO interfaces on chip
+
+properties:
+  compatible:
+    enum:
+      - tenstorrent,atlantis-syscon-rcpu
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
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clocks {
+      osc_24m: clock-24m {
+        compatible = "fixed-clock";
+        clock-frequency = <24000000>;
+        clock-output-names = "osc_24m";
+        #clock-cells = <0>;
+      };
+    };
+
+    syscon_rcpu: system-controller@a8000000 {
+      compatible = "tenstorrent,atlantis-sycon-rcpu";
+      reg = <0x0 0xa8000000 0x0 0x10000>;
+      clocks = <&osc_24m>;
+      #clock-cells = <1>;
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
index 000000000000..a8518319642a
--- /dev/null
+++ b/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
@@ -0,0 +1,67 @@
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
+#define CLK_RCPU_PLL 0
+#define CLK_RCPU_ROOT 1
+#define CLK_RCPU_DIV2 2
+#define CLK_RCPU_DIV4 3
+#define CLK_RCPU_RTC 4
+#define CLK_SMNDMA0_ACLK 5
+#define CLK_SMNDMA1_ACLK 6
+#define CLK_WDT0_PCLK 7
+#define CLK_WDT1_PCLK 8
+#define CLK_TIMER_PCLK 9
+#define CLK_PVTC_PCLK 10
+#define CLK_PMU_PCLK 11
+#define CLK_MAILBOX_HCLK 12
+#define CLK_SEC_SPACC_HCLK 13
+#define CLK_SEC_OTP_HCLK 14
+#define CLK_TRNG_PCLK 15
+#define CLK_SEC_CRC_HCLK 16
+#define CLK_SMN_HCLK 17
+#define CLK_AHB0_HCLK 18
+#define CLK_SMN_PCLK 19
+#define CLK_SMN_CLK 20
+#define CLK_SCRATCHPAD_CLK 21
+#define CLK_RCPU_CORE_CLK 22
+#define CLK_RCPU_ROM_CLK 23
+#define CLK_OTP_LOAD_CLK 24
+#define CLK_NOC_PLL 25
+#define CLK_NOCC_CLK 26
+#define CLK_NOCC_DIV2 27
+#define CLK_NOCC_DIV4 28
+#define CLK_NOCC_RTC 29
+#define CLK_NOCC_CAN 30
+#define CLK_QSPI_SCLK 31
+#define CLK_QSPI_HCLK 32
+#define CLK_I2C0_PCLK 33
+#define CLK_I2C1_PCLK 34
+#define CLK_I2C2_PCLK 35
+#define CLK_I2C3_PCLK 36
+#define CLK_I2C4_PCLK 37
+#define CLK_UART0_PCLK 38
+#define CLK_UART1_PCLK 39
+#define CLK_UART2_PCLK 40
+#define CLK_UART3_PCLK 41
+#define CLK_UART4_PCLK 42
+#define CLK_SPI0_PCLK 43
+#define CLK_SPI1_PCLK 44
+#define CLK_SPI2_PCLK 45
+#define CLK_SPI3_PCLK 46
+#define CLK_GPIO_PCLK 47
+#define CLK_CAN0_HCLK 48
+#define CLK_CAN0_CLK 49
+#define CLK_CAN1_HCLK 50
+#define CLK_CAN1_CLK 51
+#define CLK_CAN0_TIMER_CLK 52
+#define CLK_CAN1_TIMER_CLK 53
+
+#endif /* _DT_BINDINGS_ATLANTIS_SYSCON_H */

-- 
2.43.0


