Return-Path: <devicetree+bounces-257319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AArgC1RgcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:12:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 907D651614
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2FA007E9998
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE5A41B369;
	Tue, 20 Jan 2026 11:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="doVuNorL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6B741B359
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907477; cv=none; b=F9sujLPctKXfXAHyqeAeF+Oej4wuxNd+XO7VYTsTXuhEhLpQRgW0GlVG5cmvKmnnFzsh7IETB+/Eu+5wT40pZ2ThlRxthYY52Atsl0llzaC9zwCdkXvmEQW6dj7qSnjVWAf9yWDoihtwKD692ewVaVHmd6IhQ9h4/KNMBGfSVTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907477; c=relaxed/simple;
	bh=z4ek7rLKX6iSImhWnGZvnODpndCL05b3cjROLGhE9yg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PBmx7ufvEzgrxaPHqWPIsFvOOhsf/KpEALDA0hq57mIMkmnkpqvaAYqLFA4ApgIhhRFrgnhD0dLLFr7yA/WAkKW97o03PBlAx/sO96PEvgqZoPC6W7S9WubNWCzNwoG/CXfyjDoEvvviX6/wwSV2fgx+TVFdogIBj3Con5E0Xck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=doVuNorL; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-81e7477828bso2869076b3a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768907474; x=1769512274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tsbrvqDNdVqP2JJq0dpRdT3fxKgznPJspd7iKuP2Rhc=;
        b=doVuNorLwueWT6UWtgI6/x735QF7uRT1WWEkjsMbuyPXcJoLNwMcar5ideP+A2fIRo
         vacEWfMHMSK15/+142WbfYygSKsKA39CoVonXU/mUyxqUH2P2oaVxXM0RfceH1GY17c0
         r4I5XwfeUfpeOwm015nDjxltit+uPPUrkadDQftfYWgT+gVyWi331hmZ4nY6C49HUdTR
         LYhkf9nRr7ci9af2e0vT2lgp72NBggz/cKpkNNX4yenPhkOEcjZzcGd3IphOl5DIJHTV
         OR3J7SsG0rGxfmrP+5ZYsQ1IS4ikiOLQe0OECFT6TkAXoO5z+oQ4ejIw1XXkfJG/TtwT
         B4rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907474; x=1769512274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tsbrvqDNdVqP2JJq0dpRdT3fxKgznPJspd7iKuP2Rhc=;
        b=QZJWx1F5rlRMln4QPVeBlCG3qbWAIO3cfgLhrJI0dwVRJ9fwHtO/E0ifWfONXePbCv
         M1leL0+QrrL8JNCwTbtPI836piMPFQNEdskDWLlTuHVKnPPj2rW08yCNz66CriKyZFzO
         To7G4s9U45GBAZ9R/hlK9IS2wMlJXa/Lk4IbFamJQ43TU7fKMtJhLYiyuWIJGEnrzwuw
         DozpUX1coEfzderAZJPH5QoW/HFj8CcTcMjNaVpN5rMNEXLesuZDlaBhtYkHFTVMT2aV
         XXFhlNYZTPBVc3a/euvegQspHyCaUTKto/xBpbpe6V23h1fQmLjiBRDgq34Tg2XQD5PT
         z86Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0EH5d3V82e89ZeppiSoupbaiTTOAn6/lOnChSmim/ZaaUiFkzkDvztZWZ+dmj30va4FrHrvVX3gln@vger.kernel.org
X-Gm-Message-State: AOJu0YzmHkZ7dQCD7H7MoDVlEpwlrL6lMreZ9pbiUyPklBPEYVaY4J+U
	4mV7iDS90QneQ9Bi3yIFrWnKIZ1vPkmzVfeJULUL2mMjxtyx5t/qDcwVfTahTnnl+A0=
X-Gm-Gg: AZuq6aKoiHcOWElqTWSH2Q5+vYwMjOyvon03lIWQANAVXZa54FqJ0NQQJ6R6fdOYUJo
	Kx4O1ZmY4+hl3oRQ8hEBXvtWf+v+HwyxCp4X2e1G1OA9Na1vVroseIn8/De7ptfPEyCMbj8cyVv
	nPQvIF4TfEkTX9XAh6XlviafkPG9BkmK9juX3M83fvb30NcPFQA20bg+15EuyI4Fwy7xL3BqAbe
	/j/S6bS9XsSQ4GZxi8kolKACfSHfxcAchtuj4vU5+LX40Zf6tRLRTmT5FOvlwPMKL32IOT97ocW
	rMg5qonRVtA6OJHu9bu8gu88eTyX5nakv3c6O/9oj0PaX2dNoiWhpOP1RXDNhUfjNyRjrs6bVs1
	T64bsHbet58nX3Dd5S/zgEKTSHu57m464EDRWytRoIIOlARLsMpBuGDBcrcgRuKGyZsEQrayhFP
	Mlsh6tHHEQVPh6lpDlx8XFdP+GSiCSqGM=
X-Received: by 2002:a05:6a00:1814:b0:81e:7734:9e85 with SMTP id d2e1a72fcca58-81f8f11e6d8mr14799245b3a.20.1768907474533;
        Tue, 20 Jan 2026 03:11:14 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4015])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10efc6bsm11398349b3a.29.2026.01.20.03.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 03:11:14 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 20 Jan 2026 19:10:49 +0800
Subject: [PATCH v3 1/4] dt-bindings: soc: spacemit: Add K3 reset support
 and IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-k3-reset-v3-1-effe87f4bdbe@riscstar.com>
References: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
In-Reply-To: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257319-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,qualcomm.com:email,riscstar.com:email,riscstar.com:mid]
X-Rspamd-Queue-Id: 907D651614
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update the spacemit,k1-syscon.yaml binding to document K3 SoC reset
support.

K3 reset devices are registered at runtime as auxiliary devices by the
K3 CCU driver. Since K3 reuses the K1 syscon binding, there is no separate
YAML binding file for K3 resets.

Update #reset-cells description to document where reset IDs are defined.

Acked-by: Alex Elder <elder@riscstar.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Add Acked-by from Krzysztof and Alex.
v2: Update spacemit,k1-syscon binding to clarify K3 reset is supported.
    Update the commit message to add backgrounds of this patch why,
      instead of what.
---
 .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  |   8 +-
 include/dt-bindings/reset/spacemit,k3-resets.h     | 171 +++++++++++++++++++++
 2 files changed, 178 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
index 66e6683a3ccb..1a28af22cac1 100644
--- a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
+++ b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Haylen Chu <heylenay@4d2.org>
 
 description:
-  System controllers found on SpacemiT K1 SoC, which are capable of
+  System controllers found on SpacemiT K1/K3 SoC, which are capable of
   clock, reset and power-management functions.
 
 properties:
@@ -50,6 +50,12 @@ properties:
 
   "#reset-cells":
     const: 1
+    description: |
+      ID of the reset controller line. Valid IDs are defined in corresponding
+      files:
+
+      For SpacemiT K1, see include/dt-bindings/clock/spacemit,k1-syscon.h
+      For SpacemiT K3, see include/dt-bindings/reset/spacemit,k3-resets.h
 
 required:
   - compatible
diff --git a/include/dt-bindings/reset/spacemit,k3-resets.h b/include/dt-bindings/reset/spacemit,k3-resets.h
new file mode 100644
index 000000000000..79ac1c22b7b5
--- /dev/null
+++ b/include/dt-bindings/reset/spacemit,k3-resets.h
@@ -0,0 +1,171 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2025 SpacemiT Technology Co. Ltd
+ */
+
+#ifndef _DT_BINDINGS_RESET_SPACEMIT_K3_RESETS_H_
+#define _DT_BINDINGS_RESET_SPACEMIT_K3_RESETS_H_
+
+/* MPMU resets */
+#define RESET_MPMU_WDT           0
+#define RESET_MPMU_RIPC          1
+
+/* APBC resets */
+#define RESET_APBC_UART0         0
+#define RESET_APBC_UART2         1
+#define RESET_APBC_UART3         2
+#define RESET_APBC_UART4         3
+#define RESET_APBC_UART5         4
+#define RESET_APBC_UART6         5
+#define RESET_APBC_UART7         6
+#define RESET_APBC_UART8         7
+#define RESET_APBC_UART9         8
+#define RESET_APBC_UART10        9
+#define RESET_APBC_GPIO          10
+#define RESET_APBC_PWM0          11
+#define RESET_APBC_PWM1          12
+#define RESET_APBC_PWM2          13
+#define RESET_APBC_PWM3          14
+#define RESET_APBC_PWM4          15
+#define RESET_APBC_PWM5          16
+#define RESET_APBC_PWM6          17
+#define RESET_APBC_PWM7          18
+#define RESET_APBC_PWM8          19
+#define RESET_APBC_PWM9          20
+#define RESET_APBC_PWM10         21
+#define RESET_APBC_PWM11         22
+#define RESET_APBC_PWM12         23
+#define RESET_APBC_PWM13         24
+#define RESET_APBC_PWM14         25
+#define RESET_APBC_PWM15         26
+#define RESET_APBC_PWM16         27
+#define RESET_APBC_PWM17         28
+#define RESET_APBC_PWM18         29
+#define RESET_APBC_PWM19         30
+#define RESET_APBC_SPI0          31
+#define RESET_APBC_SPI1          32
+#define RESET_APBC_SPI3          33
+#define RESET_APBC_RTC           34
+#define RESET_APBC_TWSI0         35
+#define RESET_APBC_TWSI1         36
+#define RESET_APBC_TWSI2         37
+#define RESET_APBC_TWSI4         38
+#define RESET_APBC_TWSI5         39
+#define RESET_APBC_TWSI6         40
+#define RESET_APBC_TWSI8         41
+#define RESET_APBC_TIMERS0       42
+#define RESET_APBC_TIMERS1       43
+#define RESET_APBC_TIMERS2       44
+#define RESET_APBC_TIMERS3       45
+#define RESET_APBC_TIMERS4       46
+#define RESET_APBC_TIMERS5       47
+#define RESET_APBC_TIMERS6       48
+#define RESET_APBC_TIMERS7       49
+#define RESET_APBC_AIB           50
+#define RESET_APBC_ONEWIRE       51
+#define RESET_APBC_I2S0          52
+#define RESET_APBC_I2S1          53
+#define RESET_APBC_I2S2          54
+#define RESET_APBC_I2S3          55
+#define RESET_APBC_I2S4          56
+#define RESET_APBC_I2S5          57
+#define RESET_APBC_DRO           58
+#define RESET_APBC_IR0           59
+#define RESET_APBC_IR1           60
+#define RESET_APBC_TSEN          61
+#define RESET_IPC_AP2AUD         62
+#define RESET_APBC_CAN0          63
+#define RESET_APBC_CAN1          64
+#define RESET_APBC_CAN2          65
+#define RESET_APBC_CAN3          66
+#define RESET_APBC_CAN4          67
+
+/* APMU resets */
+#define RESET_APMU_CSI           0
+#define RESET_APMU_CCIC2PHY      1
+#define RESET_APMU_CCIC3PHY      2
+#define RESET_APMU_ISP_CIBUS     3
+#define RESET_APMU_DSI_ESC       4
+#define RESET_APMU_LCD           5
+#define RESET_APMU_V2D           6
+#define RESET_APMU_LCD_MCLK      7
+#define RESET_APMU_LCD_DSCCLK    8
+#define RESET_APMU_SC2_HCLK      9
+#define RESET_APMU_CCIC_4X       10
+#define RESET_APMU_CCIC1_PHY     11
+#define RESET_APMU_SDH_AXI       12
+#define RESET_APMU_SDH0          13
+#define RESET_APMU_SDH1          14
+#define RESET_APMU_SDH2          15
+#define RESET_APMU_USB2          16
+#define RESET_APMU_USB3_PORTA    17
+#define RESET_APMU_USB3_PORTB    18
+#define RESET_APMU_USB3_PORTC    19
+#define RESET_APMU_USB3_PORTD    20
+#define RESET_APMU_QSPI          21
+#define RESET_APMU_QSPI_BUS      22
+#define RESET_APMU_DMA           23
+#define RESET_APMU_AES_WTM       24
+#define RESET_APMU_MCB_DCLK      25
+#define RESET_APMU_MCB_ACLK      26
+#define RESET_APMU_VPU           27
+#define RESET_APMU_DTC           28
+#define RESET_APMU_GPU           29
+#define RESET_APMU_ALZO          30
+#define RESET_APMU_MC            31
+#define RESET_APMU_CPU0_POP      32
+#define RESET_APMU_CPU0_SW       33
+#define RESET_APMU_CPU1_POP      34
+#define RESET_APMU_CPU1_SW       35
+#define RESET_APMU_CPU2_POP      36
+#define RESET_APMU_CPU2_SW       37
+#define RESET_APMU_CPU3_POP      38
+#define RESET_APMU_CPU3_SW       39
+#define RESET_APMU_C0_MPSUB_SW   40
+#define RESET_APMU_CPU4_POP      41
+#define RESET_APMU_CPU4_SW       42
+#define RESET_APMU_CPU5_POP      43
+#define RESET_APMU_CPU5_SW       44
+#define RESET_APMU_CPU6_POP      45
+#define RESET_APMU_CPU6_SW       46
+#define RESET_APMU_CPU7_POP      47
+#define RESET_APMU_CPU7_SW       48
+#define RESET_APMU_C1_MPSUB_SW   49
+#define RESET_APMU_MPSUB_DBG     50
+#define RESET_APMU_UCIE          51
+#define RESET_APMU_RCPU          52
+#define RESET_APMU_DSI4LN2_ESCCLK     53
+#define RESET_APMU_DSI4LN2_LCD_SW     54
+#define RESET_APMU_DSI4LN2_LCD_MCLK   55
+#define RESET_APMU_DSI4LN2_LCD_DSCCLK 56
+#define RESET_APMU_DSI4LN2_DPU_ACLK   57
+#define RESET_APMU_DPU_ACLK      58
+#define RESET_APMU_UFS_ACLK      59
+#define RESET_APMU_EDP0          60
+#define RESET_APMU_EDP1          61
+#define RESET_APMU_PCIE_PORTA    62
+#define RESET_APMU_PCIE_PORTB    63
+#define RESET_APMU_PCIE_PORTC    64
+#define RESET_APMU_PCIE_PORTD    65
+#define RESET_APMU_PCIE_PORTE    66
+#define RESET_APMU_EMAC0         67
+#define RESET_APMU_EMAC1         68
+#define RESET_APMU_EMAC2         69
+#define RESET_APMU_ESPI_MCLK     70
+#define RESET_APMU_ESPI_SCLK     71
+
+/* DCIU resets*/
+#define RESET_DCIU_HDMA          0
+#define RESET_DCIU_DMA350        1
+#define RESET_DCIU_DMA350_0      2
+#define RESET_DCIU_DMA350_1      3
+#define RESET_DCIU_AXIDMA0       4
+#define RESET_DCIU_AXIDMA1       5
+#define RESET_DCIU_AXIDMA2       6
+#define RESET_DCIU_AXIDMA3       7
+#define RESET_DCIU_AXIDMA4       8
+#define RESET_DCIU_AXIDMA5       9
+#define RESET_DCIU_AXIDMA6       10
+#define RESET_DCIU_AXIDMA7       11
+
+#endif /* _DT_BINDINGS_RESET_SPACEMIT_K3_H_ */

-- 
2.43.0


