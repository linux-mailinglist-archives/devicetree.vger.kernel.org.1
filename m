Return-Path: <devicetree+bounces-252857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F179D03B50
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0A48307E6E5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA98B47A0C2;
	Thu,  8 Jan 2026 14:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="q0oSgCOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A317747A0A6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882184; cv=none; b=EwJOHFkTWSnk7R7BnQUqsPvVtrbvvJAMAqt/ebzd8NjXFwI+bMbOiPOwJTYdXhFUEv+oZI3GeMbYIs69Uz3YHom/tTS1evupdFHZpTAdJkgCaoWBDxhKhxpaTP4WINb3JHfOJi3+u7X/5FQpE8quj8Do0tDwkLOG36QOYDKrS+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882184; c=relaxed/simple;
	bh=2orwHsAAgUV6XStypLKLzlVHZisbEUW8dEtZ/Cxrskc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kN7U4KWsxrsA85LX+9XyVyNgNqNC4OCuqTthUuQJwG/pGK3LFduz3b+XLNMqIDTXTPczx3Klssiilm4I0Wri9APqGYo2362UR0mdmx5CyMMpl4AvHWkd+DnQLGi3XHxuHLZburbMzXYh2Sn/Jw2vbqcP8UuxISD6r8IRbFwTQDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=q0oSgCOl; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7b9c17dd591so2064121b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767882181; x=1768486981; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42RRts4LKhj3HDLLS6q2Q6/55pZsEWKtlgxyH9/r35A=;
        b=q0oSgCOllzdA7iayWXoXdSUdRAyNjYjcpSEIVOT0kBRFc7SvDrL/ps2D6cc5oKbCgt
         d7kweO6h4P+qeteQBCU8HqxiHFcdlGhA4mPSnTagZ3d+YnXT/V13abGa/X/JUJ87diTG
         DHnnzwpL41Kr0ulvIznKd2/+hPFnDIO+ohvhVysP6VaMqjs+USAjkhd9gM21K+G68Wia
         RuogVt6JT7ocfk7wzRfH+uKcSjiYnc67dtvrp1ihy57eFAvvz4XsUenMyoSeNkS9e77d
         0ac0U+AaKI5h0QRgznisfEaluB+Qoga6NiQrYWoksr1KTMKy02x5/hpT/jAB5/rv3PM1
         Bi6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767882181; x=1768486981;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=42RRts4LKhj3HDLLS6q2Q6/55pZsEWKtlgxyH9/r35A=;
        b=K8EcWkp7B9BhxmBBcNSK+gNzUJ208jWr/6S9FeRZyf0nI53jxdqyxP5J/lJ7ciibz3
         W8LJ3RBwpksmKSPWZ0vwhkG6SQL0XtJHdkfHsSxUOCOluSg+gGOp6Y+TxPw+Okg++wUK
         zpAX23BgX4WjcHySKKe5T6ERnFSzrJJskYJwinDtQOjDIIOIdqq235598MFaPcD/mypQ
         Oiy0n3imy9Nn7gR3xnVmLgf985ZDaU4F8wdLC9tzyZTD3wHQyuzWmk+p9c56q0SNcsiP
         FHsYqm0tlOoxq+Lm3xwA7Z1WtAmkJ61l/jrX+1HjQlt0k0unFlMSxEJHqdVt08DhdulW
         DEuA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ8HvkjtvLYWAJX7p5o5ZaiXi33l/47n3/IfubwyAhumKcn5a69jytejnN9JU3KLKDhgUkivQ85Nw2@vger.kernel.org
X-Gm-Message-State: AOJu0YzfhmqdB9CjkYJ0MtvWfeGvQgoneUZLbVmA/sqScqHo7sSRjd1L
	kYF/WEFXCJMBNoh+MVVxis0C611KpkPZt7h3WNi2kmauCoNWDFDSOUU3PddH/ABWlSc=
X-Gm-Gg: AY/fxX6h6Z5HFwpGfc6MDsMYwT3SK7bmc3eKnyXcFrI1U/dIx/QPD9S75f8oRAhzOlM
	51lRJJQVFSYfigFsmFMOiHjuyZyrRmsBRX5eVa9Q3aBSe0Jp/CEvMLP59hfKe6ZH0T6Se0vOkJb
	1nkXdM/9PFmKFlm82N73eY91CaIz4jSon/1K7iNGbVxgd48/l8BdodOgOkhdparegpg5J64hVPc
	IzHTnPYYQ3ugntCfzS+0fmfCi4ueRxZsXXyIIiAX+EZL4UHldYqStZ6SIc8bxtjULqAZ2Ow2MZl
	3F4IWESvz/X/lghuPAqdibHWQHwMfsdDsjx1/Udyl8rQ3aKxUlrCZPIlYizBVo95mYcItTPEYE1
	NgLmRXxIop69jMDcnyHwmCtz2t3Mj/T5ctYsBhzyBNQNLeZYLhYwQLJRvYY8BuQhwgDWucpqcFz
	HKg8ITXACz/L3WpEQdDN7/a1IPPS5JZfg=
X-Google-Smtp-Source: AGHT+IGDWUheq7bAmRQ/NpjxeOypmK1lVdB1YhIS7WdpVwU8NQHESVsoWAVdR6HW92z4sPCMNa2D3w==
X-Received: by 2002:a05:6a00:f93:b0:7b2:2d85:ae59 with SMTP id d2e1a72fcca58-81b7eb28141mr6124949b3a.11.1767882180860;
        Thu, 08 Jan 2026 06:23:00 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e7c16sm7927906b3a.53.2026.01.08.06.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:23:00 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 22:22:14 +0800
Subject: [PATCH v2 1/4] dt-bindings: soc: spacemit: Add K3 reset support
 and IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-reset-v2-1-457df235efe9@riscstar.com>
References: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
In-Reply-To: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Update the spacemit,k1-syscon.yaml binding to document K3 SoC reset
support.

K3 reset devices are registered at runtime as auxiliary devices by the
K3 CCU driveri. Since K3 reuses the K1 syscon binding, there is no separate
YAML binding file for K3 resets.

Update #reset-cells description to document where reset IDs are defined.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Update spacemit,k1-syscon binding to clarify K3 reset is supported.
    Update the commit message to add backgrounds of this patch why,
      instead of what.
---
 .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  |   8 +-
 include/dt-bindings/reset/spacemit,k3-resets.h     | 171 +++++++++++++++++++++
 2 files changed, 178 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
index 66e6683a3ccb94af2ddf71bf443424adcb7a0d72..1a28af22cac1d474fec8af3b6c7dc674a75ee734 100644
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
index 0000000000000000000000000000000000000000..79ac1c22b7b5447af1596edcb67a5dfa981e9ee7
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


