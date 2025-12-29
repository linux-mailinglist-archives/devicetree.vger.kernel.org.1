Return-Path: <devicetree+bounces-250136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B86FCE6738
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:06:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D689300764E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F582F363C;
	Mon, 29 Dec 2025 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="njyOfmoe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85472F6582
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006273; cv=none; b=EdcYGFSZYgnWmht3Makf+kAcbuTeW8sxfk7JVy52KOIwY48j35at4NgFLg5Pku0k4zsn0UKdmORsuN3T4VCP2RercPWR4250qQn59iEJS3mH7DJcystbvNN6E3KnxMnIt83P1gwC8fhvWGqT5mAMJ+bybmywMpNkurKS4wv0I28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006273; c=relaxed/simple;
	bh=gTzrS/GJFNs3HUrW503aR1sUg0Y55rjRGuAjF7yl8AI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eOdhmWVVrsGc92PJ0Ct6LC1KeqrrIhzTCfCdouuhpT6qVZPzYQAMUMT/0ASssLwqWfl68F8t5HVoJtwjTsu0BuWxIsMWkM6uQqrmeuDfPFJoPOh8ugR0BAaLb+n27GfaiTUzpH/RfSqAMwK4ki8d5/wyCOMRoX3UBHOxqB1+pVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=njyOfmoe; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so8399695b3a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767006271; x=1767611071; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FEchA6+yuO+kdA1fAAObKTJMPxKw1rQkSoXSh2GsmCc=;
        b=njyOfmoePVGlwTd9C8TeFS631a6H/DtzN5ygE6cPQ2ZH1Ja99vgCZ4+e4fdulWHfwZ
         DR9/97nxDnttM2QqdefW3vGmQ7IPp79YY7voJoXsv5O89gY025ERzSIPOetFw1kuoptI
         Pgs+f3BxzcZkrRgyA/kD+vlKCKVWESLYfW5ucrmENniusXlqiysPt+l3jL0B9Wu3GGhS
         zVPm40mWvTdXUoUBPf3B+Roq1GA9s2kvx6x4/RHJanb6QkaUvhpiphVeyGDQN+mDOMQr
         /EwApBbc/sxMhAgke7wkRxNuhztFGhyGAV1fcr+YxHl2WjPAHVq0lbcRZjbDfqmq6JS2
         xFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767006271; x=1767611071;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FEchA6+yuO+kdA1fAAObKTJMPxKw1rQkSoXSh2GsmCc=;
        b=L4J45zo8SwOwbURNHcnDPlVJF6B3Oolf6EkXuoVbsBMdD45OVkukYinNqGQHNSQxaD
         k7A7JKsRlmbbdpL5s4Madm+2JXN3er+8ftG3wFZWsgjSiQLTfQqKjH7iE5CoETlIcjrV
         VviIvzvOK+FiFJvBXbH856I8qFvHedYuzDFao6E0ZbpHa9RA1hKp2fcqAYp1e3xzp8a9
         7MhnFBAMU4n7M2WTgWieMZoIQUARIR2IS0Gd0dhxaCx219kGIFEJqCQTAPX6KZBMmt3i
         PAjcaIeMHsF/GlQcPlT/2INIccw++XuCy2pZvyKKmQ5IBugtkB2x87w3HBo/qID7n3Co
         pJug==
X-Forwarded-Encrypted: i=1; AJvYcCX/UNaqqsJ1SQPRquNxjVvzvg+U0j4biFYBA07UNuCEpymGRLYiW7OGdUPDY8ILrGoc9G9GGOgN3AYZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwiJB+x32h6vd2xrtCoUnj2pauAsB4DgGU5KwLRwriooErPbDcM
	mNsrPakVupjVdP5XRHtToBhGd0YAU9auA/9WAVWyE7ZsyhwIfofyia8oYYVVXhGKoQE=
X-Gm-Gg: AY/fxX6b3OR2zD77nVbm0QHQl0DfquERjZ0r8GqyZJtYUSel/PUYCL21UHT8aq5u4uT
	Zy3wr2Yf5aXm9ehhS6pYwLtYiaC/KeJLA2AvFXhDnsLHfhjYNYmjkPFQEY0GrZ434xAflrHQspk
	qbD3tTbNdW63RMyyGeMt/12a0xTRzjHcpO5V4A+b+9QmFwDBOWyhMFciqH8AeD/IT90HIcCDi+R
	94iktQU3d3+sFNBSDWrLZGrqsQVKbd4+ATknMgBnjyJuUJxRRcFsFB6bZ0XwojX786qHmSzS66I
	DqkO0FVjKs7AmA+cs+iOewtgqns7TCqt4fAaU2hw/zVvnaXJVKcteeuZVOQkHrc9p+P0arQRTNq
	6gqvBFqzPahAqrsYHqYmmaTzzxZo8S5w31rcXuvJ1CBuGYQiHbl9MQaYu+krAw/qFbeOD0fJIC3
	diOTgmZdzrFGUYsSZlnglifY8jm5wXoks=
X-Google-Smtp-Source: AGHT+IG+X7Jh45hMS45vuXV+LzF95YhwtkbWh7ogDoRvta1kMuklJmRbDKeKGBsUcHz79+uRYhu/Iw==
X-Received: by 2002:a05:6a00:1d19:b0:7e8:4471:ae6a with SMTP id d2e1a72fcca58-7ff679667e9mr27477515b3a.54.1767006271046;
        Mon, 29 Dec 2025 03:04:31 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40d7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7aa32916sm29338817b3a.8.2025.12.29.03.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 03:04:30 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 29 Dec 2025 19:04:04 +0800
Subject: [PATCH 1/4] dt-bindings: reset: spacemit: Add K3 reset IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-k3-reset-v1-1-eda0747bded3@riscstar.com>
References: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
In-Reply-To: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Add reset IDs for SpacemiT K3 SoC.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 include/dt-bindings/reset/spacemit,k3-resets.h | 171 +++++++++++++++++++++++++
 1 file changed, 171 insertions(+)

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


