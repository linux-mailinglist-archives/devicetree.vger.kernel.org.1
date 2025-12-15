Return-Path: <devicetree+bounces-246630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B447CBEA2A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D13B305FAAD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81E7833C1B4;
	Mon, 15 Dec 2025 14:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CtVI9Kvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD45733B97B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765808213; cv=none; b=uefzUPoq7mrLv6boCX3Os8o6ZtrpASBBFnCIY6T9s7mZtbKhn82FFwISllpFpqHoN+ByDrt5FvsVZ/5njKdX/7ksaTo/FTIKInj5bvIJdctgRsE6S1P7DBHlYH1c4rQkf+ZCLokVuYPy7hS7FlKD3TdQybSX2TDE4K3inScinEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765808213; c=relaxed/simple;
	bh=ZR6q3hUlpQa05vbit+PLb45/WQBI03pAz9sOoLchSxw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l/1/tiKzXZ548Woj/jBSoWS0HZ2GlFCdWNbR3xk+UYYs78CS/ZpGayN92wsuyDGw29V20t1qSFfzDgeetx2WwfPJgqYdSaGIY1C9wCIBfpExw8cSfLmuE0slu2UTbd0fGlft50KrtIC1TEjk1Q+DR/Dzv+dkm7VrjApPYYkqHOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CtVI9Kvq; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7aad4823079so3129327b3a.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765808210; x=1766413010; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ryhYtP1wm9rO0sAsCRHCZCcFW4Wvia7RnAGn4TEXwrI=;
        b=CtVI9KvqDa0A/irjRgzeE2V7rNk6ttmDL8jyNijow8mB5QQWXiYKT1CDc246HUhrMY
         lkpQjCEuZXBS1uIyvsPkcvggAMsYkI6RUAuXcxyOeOulGBqnO6rlslViHLCT1fN7faCc
         yQ3gYSeKFsIdxInITkZDk6VRtYy3fEWD1ypRB4gB0eSt3ze/QL0UoZupWBvRi9IJxp9O
         Pv0VDBu8368EK4yg/EuUyhjlUc5LZf9rYcZ2aS999E0NcqTF7DsvF/FCDsY+dbRYx+YE
         YE/pxGDzR8b4n4AwcCm6hVPPKf2B/OnbOhR/gOnlrcINCPHZb+uwYywJdgm/2KEsjove
         PzSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765808210; x=1766413010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ryhYtP1wm9rO0sAsCRHCZCcFW4Wvia7RnAGn4TEXwrI=;
        b=jz5ZMdSrnDNdpObijo4G0IwJkN+Gjd5gl4wg46elM0VEKn6BiCNtKfx5g5gQQLLKxB
         21faUM11jdoSfSFppUmYecnyB7putRQNrc8HI9+wdQIXNpj/Ft7c+/8/JVw3Pm6I4Rl0
         dx7YpFrCvIC9iSrg45fA1kn+L+SP+/fYyfr2hPUiBZzu+9Qrrlcl+OJIsJpYNYyjt46O
         rG71CHZ9qaVi4ktgQnuR51FoLiX9DiltDcCWCJZAD2k2dY4SaAUEA14n3XME2vL2Ni7U
         xFcUJ1NJxEW+YUXo1MiktUwAcXc2NePJRX21V2xKP9zHfgs5kcPI6Kl4ErbX6DXs8JF4
         L1xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVqSvkN4+8QG/gTrn8GzppP1S6n/s8T+GWORPSWAfXWinDq/8GLMSLW3MATzukBJoX0NUvGvwfCpYy@vger.kernel.org
X-Gm-Message-State: AOJu0YwtIC7bnr7j2LEUh4sRQ/Vjm1eRMVXlaLx9gIMyCJGod5nJm2RT
	jPmBmZjFlH3ForyZBqSF8dnEE1uYy8wJHB6geGZdRzh5G+3FHkGZmzhx
X-Gm-Gg: AY/fxX6zQm9IrVuXxACJgkwbFPeIvJ2mTExgC65tqlAKQMj9YxrlF9rC+VnJpidf6il
	+pP/UfwjJmwKiAybPS3eHbhq2SsZU22sj0pvcr44dT0qLHcvBfnQpk+dVpdI3IkuDXOTWlfM3bV
	f8zo74wQSNzYzDxHfS3lSLL55pNh9KPBf1zic/Kb2rBtp1KbQRhk8D+EZNMCOgN7wswsPcBCg2R
	XfARNtqTMoaJemvth7dE44YOccclwEcyldaTJEjE0XWwtVkT2vdPavhKPt3npeK3tqJrfil5xDL
	6hwq9+5RwUqpXUIvoHtyG/FAFqrEnLPsPssBR01dcU6vXJTPs1VeQj5bFIIxx8/rb2wLYbbN2eL
	reniYoyqz3PTwPUtfYt2UKjH4t3pe++PdaDZ1CThBkeu8VB1c66PNIcAAsfpxH7uk5kHUk78Oiv
	WnZeYy9g==
X-Google-Smtp-Source: AGHT+IEiY7mkfOBoYzxmWFqaVzQf2O3CE0Stan6v9+BXqL38ogVwa5kiO5amtFhh/9Z+KmHhcB5HKA==
X-Received: by 2002:a05:6a00:bc10:b0:7b9:a27:3516 with SMTP id d2e1a72fcca58-7f667d197a4mr9573135b3a.21.1765808209866;
        Mon, 15 Dec 2025 06:16:49 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c2772a51sm12938189b3a.17.2025.12.15.06.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:16:49 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-pci@vger.kernel.org (open list:PCI SUBSYSTEM),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-tegra@vger.kernel.org (open list:TEGRA ARCHITECTURE SUPPORT),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Subject: [PATCH v2 4/4] PCI: tegra: Use BIT() and GENMASK() macros for register definitions
Date: Mon, 15 Dec 2025 19:45:37 +0530
Message-ID: <20251215141603.6749-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251215141603.6749-1-linux.amoon@gmail.com>
References: <20251215141603.6749-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace manual bit operations with standard BIT() and GENMASK() macros.
This eliminates magic numbers, enhances readability, improves
maintainability, and resolves checkpatch.pl warnings.

Cc: Jon Hunter <jonathanh@nvidia.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: improve the commit message
v1: New patch
---
 drivers/pci/controller/pci-tegra.c | 129 +++++++++++++++--------------
 1 file changed, 65 insertions(+), 64 deletions(-)

diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 336d2cf4d828..99f6f93d6d99 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -13,6 +13,7 @@
  * Author: Thierry Reding <treding@nvidia.com>
  */
 
+#include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/cleanup.h>
 #include <linux/debugfs.h>
@@ -85,17 +86,17 @@
 #define AFI_MSI_EN_VEC(x)	(0x8c + ((x) * 4))
 
 #define AFI_CONFIGURATION		0xac
-#define  AFI_CONFIGURATION_EN_FPCI		(1 << 0)
-#define  AFI_CONFIGURATION_CLKEN_OVERRIDE	(1 << 31)
+#define  AFI_CONFIGURATION_EN_FPCI		BIT(0)
+#define  AFI_CONFIGURATION_CLKEN_OVERRIDE	BIT(31)
 
 #define AFI_FPCI_ERROR_MASKS	0xb0
 
 #define AFI_INTR_MASK		0xb4
-#define  AFI_INTR_MASK_INT_MASK	(1 << 0)
-#define  AFI_INTR_MASK_MSI_MASK	(1 << 8)
+#define  AFI_INTR_MASK_INT_MASK	BIT(0)
+#define  AFI_INTR_MASK_MSI_MASK	BIT(8)
 
 #define AFI_INTR_CODE			0xb8
-#define  AFI_INTR_CODE_MASK		0xf
+#define  AFI_INTR_CODE_MASK		GENMASK(3, 0)
 #define  AFI_INTR_INI_SLAVE_ERROR	1
 #define  AFI_INTR_INI_DECODE_ERROR	2
 #define  AFI_INTR_TARGET_ABORT		3
@@ -114,32 +115,32 @@
 #define AFI_INTR_SIGNATURE	0xbc
 #define AFI_UPPER_FPCI_ADDRESS	0xc0
 #define AFI_SM_INTR_ENABLE	0xc4
-#define  AFI_SM_INTR_INTA_ASSERT	(1 << 0)
-#define  AFI_SM_INTR_INTB_ASSERT	(1 << 1)
-#define  AFI_SM_INTR_INTC_ASSERT	(1 << 2)
-#define  AFI_SM_INTR_INTD_ASSERT	(1 << 3)
-#define  AFI_SM_INTR_INTA_DEASSERT	(1 << 4)
-#define  AFI_SM_INTR_INTB_DEASSERT	(1 << 5)
-#define  AFI_SM_INTR_INTC_DEASSERT	(1 << 6)
-#define  AFI_SM_INTR_INTD_DEASSERT	(1 << 7)
+#define  AFI_SM_INTR_INTA_ASSERT	BIT(0)
+#define  AFI_SM_INTR_INTB_ASSERT	BIT(1)
+#define  AFI_SM_INTR_INTC_ASSERT	BIT(2)
+#define  AFI_SM_INTR_INTD_ASSERT	BIT(3)
+#define  AFI_SM_INTR_INTA_DEASSERT	BIT(4)
+#define  AFI_SM_INTR_INTB_DEASSERT	BIT(5)
+#define  AFI_SM_INTR_INTC_DEASSERT	BIT(6)
+#define  AFI_SM_INTR_INTD_DEASSERT	BIT(7)
 
 #define AFI_AFI_INTR_ENABLE		0xc8
-#define  AFI_INTR_EN_INI_SLVERR		(1 << 0)
-#define  AFI_INTR_EN_INI_DECERR		(1 << 1)
-#define  AFI_INTR_EN_TGT_SLVERR		(1 << 2)
-#define  AFI_INTR_EN_TGT_DECERR		(1 << 3)
-#define  AFI_INTR_EN_TGT_WRERR		(1 << 4)
-#define  AFI_INTR_EN_DFPCI_DECERR	(1 << 5)
-#define  AFI_INTR_EN_AXI_DECERR		(1 << 6)
-#define  AFI_INTR_EN_FPCI_TIMEOUT	(1 << 7)
-#define  AFI_INTR_EN_PRSNT_SENSE	(1 << 8)
+#define  AFI_INTR_EN_INI_SLVERR		BIT(0)
+#define  AFI_INTR_EN_INI_DECERR		BIT(1)
+#define  AFI_INTR_EN_TGT_SLVERR		BIT(2)
+#define  AFI_INTR_EN_TGT_DECERR		BIT(3)
+#define  AFI_INTR_EN_TGT_WRERR		BIT(4)
+#define  AFI_INTR_EN_DFPCI_DECERR	BIT(5)
+#define  AFI_INTR_EN_AXI_DECERR		BIT(6)
+#define  AFI_INTR_EN_FPCI_TIMEOUT	BIT(7)
+#define  AFI_INTR_EN_PRSNT_SENSE	BIT(8)
 
 #define AFI_PCIE_PME		0xf0
 
 #define AFI_PCIE_CONFIG					0x0f8
-#define  AFI_PCIE_CONFIG_PCIE_DISABLE(x)		(1 << ((x) + 1))
-#define  AFI_PCIE_CONFIG_PCIE_DISABLE_ALL		0xe
-#define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_MASK	(0xf << 20)
+#define  AFI_PCIE_CONFIG_PCIE_DISABLE(x)		BIT((x) + 1)
+#define  AFI_PCIE_CONFIG_PCIE_DISABLE_ALL		GENMASK(3, 1)
+#define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_MASK	GENMASK(23, 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_SINGLE	(0x0 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_420	(0x0 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X2_X1	(0x0 << 20)
@@ -150,79 +151,79 @@
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_211	(0x1 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_411	(0x2 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_111	(0x2 << 20)
-#define  AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO(x)		(1 << ((x) + 29))
-#define  AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO_ALL		(0x7 << 29)
+#define  AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO(x)		BIT((x) + 29)
+#define  AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO_ALL		GENMASK(31, 29)
 
 #define AFI_FUSE			0x104
-#define  AFI_FUSE_PCIE_T0_GEN2_DIS	(1 << 2)
+#define  AFI_FUSE_PCIE_T0_GEN2_DIS	BIT(2)
 
 #define AFI_PEX0_CTRL			0x110
 #define AFI_PEX1_CTRL			0x118
-#define  AFI_PEX_CTRL_RST		(1 << 0)
-#define  AFI_PEX_CTRL_CLKREQ_EN		(1 << 1)
-#define  AFI_PEX_CTRL_REFCLK_EN		(1 << 3)
-#define  AFI_PEX_CTRL_OVERRIDE_EN	(1 << 4)
+#define  AFI_PEX_CTRL_RST		BIT(0)
+#define  AFI_PEX_CTRL_CLKREQ_EN		BIT(1)
+#define  AFI_PEX_CTRL_REFCLK_EN		BIT(3)
+#define  AFI_PEX_CTRL_OVERRIDE_EN	BIT(4)
 
 #define AFI_PLLE_CONTROL		0x160
-#define  AFI_PLLE_CONTROL_BYPASS_PADS2PLLE_CONTROL (1 << 9)
-#define  AFI_PLLE_CONTROL_PADS2PLLE_CONTROL_EN (1 << 1)
+#define  AFI_PLLE_CONTROL_BYPASS_PADS2PLLE_CONTROL BIT(9)
+#define  AFI_PLLE_CONTROL_PADS2PLLE_CONTROL_EN BIT(1)
 
 #define AFI_PEXBIAS_CTRL_0		0x168
 
 #define RP_ECTL_2_R1	0x00000e84
-#define  RP_ECTL_2_R1_RX_CTLE_1C_MASK		0xffff
+#define  RP_ECTL_2_R1_RX_CTLE_1C_MASK		GENMASK(15, 0)
 
 #define RP_ECTL_4_R1	0x00000e8c
-#define  RP_ECTL_4_R1_RX_CDR_CTRL_1C_MASK	(0xffff << 16)
+#define  RP_ECTL_4_R1_RX_CDR_CTRL_1C_MASK	GENMASK(31, 16)
 #define  RP_ECTL_4_R1_RX_CDR_CTRL_1C_SHIFT	16
 
 #define RP_ECTL_5_R1	0x00000e90
-#define  RP_ECTL_5_R1_RX_EQ_CTRL_L_1C_MASK	0xffffffff
+#define  RP_ECTL_5_R1_RX_EQ_CTRL_L_1C_MASK	GENMASK(31, 0)
 
 #define RP_ECTL_6_R1	0x00000e94
-#define  RP_ECTL_6_R1_RX_EQ_CTRL_H_1C_MASK	0xffffffff
+#define  RP_ECTL_6_R1_RX_EQ_CTRL_H_1C_MASK	GENMASK(31, 0)
 
 #define RP_ECTL_2_R2	0x00000ea4
 #define  RP_ECTL_2_R2_RX_CTLE_1C_MASK	0xffff
 
 #define RP_ECTL_4_R2	0x00000eac
-#define  RP_ECTL_4_R2_RX_CDR_CTRL_1C_MASK	(0xffff << 16)
+#define  RP_ECTL_4_R2_RX_CDR_CTRL_1C_MASK	GENMASK(31, 16)
 #define  RP_ECTL_4_R2_RX_CDR_CTRL_1C_SHIFT	16
 
 #define RP_ECTL_5_R2	0x00000eb0
-#define  RP_ECTL_5_R2_RX_EQ_CTRL_L_1C_MASK	0xffffffff
+#define  RP_ECTL_5_R2_RX_EQ_CTRL_L_1C_MASK	GENMASK(31, 0)
 
 #define RP_ECTL_6_R2	0x00000eb4
-#define  RP_ECTL_6_R2_RX_EQ_CTRL_H_1C_MASK	0xffffffff
+#define  RP_ECTL_6_R2_RX_EQ_CTRL_H_1C_MASK	GENMASK(31, 0)
 
 #define RP_VEND_XP	0x00000f00
-#define  RP_VEND_XP_DL_UP			(1 << 30)
-#define  RP_VEND_XP_OPPORTUNISTIC_ACK		(1 << 27)
-#define  RP_VEND_XP_OPPORTUNISTIC_UPDATEFC	(1 << 28)
-#define  RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK	(0xff << 18)
+#define  RP_VEND_XP_DL_UP			BIT(30)
+#define  RP_VEND_XP_OPPORTUNISTIC_ACK		BIT(27)
+#define  RP_VEND_XP_OPPORTUNISTIC_UPDATEFC	BIT(28)
+#define  RP_VEND_XP_UPDATE_FC_THRESHOLD_MASK	GENMASK(25, 18)
 
 #define RP_VEND_CTL0	0x00000f44
-#define  RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK	(0xf << 12)
+#define  RP_VEND_CTL0_DSK_RST_PULSE_WIDTH_MASK	GENMASK(15, 12)
 #define  RP_VEND_CTL0_DSK_RST_PULSE_WIDTH	(0x9 << 12)
 
 #define RP_VEND_CTL1	0x00000f48
-#define  RP_VEND_CTL1_ERPT	(1 << 13)
+#define  RP_VEND_CTL1_ERPT	BIT(13)
 
 #define RP_VEND_XP_BIST	0x00000f4c
-#define  RP_VEND_XP_BIST_GOTO_L1_L2_AFTER_DLLP_DONE	(1 << 28)
+#define  RP_VEND_XP_BIST_GOTO_L1_L2_AFTER_DLLP_DONE	BIT(28)
 
 #define RP_VEND_CTL2 0x00000fa8
-#define  RP_VEND_CTL2_PCA_ENABLE (1 << 7)
+#define  RP_VEND_CTL2_PCA_ENABLE BIT(7)
 
 #define RP_PRIV_MISC	0x00000fe0
-#define  RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT		(0xe << 0)
-#define  RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT		(0xf << 0)
-#define  RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD_MASK	(0x7f << 16)
+#define  RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT		GENMASK(3, 1)
+#define  RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT		GENMASK(3, 0)
+#define  RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD_MASK	GENMASK(22, 16)
 #define  RP_PRIV_MISC_CTLR_CLK_CLAMP_THRESHOLD		(0xf << 16)
-#define  RP_PRIV_MISC_CTLR_CLK_CLAMP_ENABLE		(1 << 23)
-#define  RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD_MASK	(0x7f << 24)
+#define  RP_PRIV_MISC_CTLR_CLK_CLAMP_ENABLE		BIT(23)
+#define  RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD_MASK	GENMASK(30, 24)
 #define  RP_PRIV_MISC_TMS_CLK_CLAMP_THRESHOLD		(0xf << 24)
-#define  RP_PRIV_MISC_TMS_CLK_CLAMP_ENABLE		(1 << 31)
+#define  RP_PRIV_MISC_TMS_CLK_CLAMP_ENABLE		BIT(31)
 
 #define RP_LINK_CONTROL_STATUS			0x00000090
 #define  RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE	0x20000000
@@ -233,22 +234,22 @@
 #define PADS_CTL_SEL		0x0000009c
 
 #define PADS_CTL		0x000000a0
-#define  PADS_CTL_IDDQ_1L	(1 << 0)
-#define  PADS_CTL_TX_DATA_EN_1L	(1 << 6)
-#define  PADS_CTL_RX_DATA_EN_1L	(1 << 10)
+#define  PADS_CTL_IDDQ_1L	BIT(0)
+#define  PADS_CTL_TX_DATA_EN_1L	BIT(6)
+#define  PADS_CTL_RX_DATA_EN_1L	BIT(10)
 
 #define PADS_PLL_CTL_TEGRA20			0x000000b8
 #define PADS_PLL_CTL_TEGRA30			0x000000b4
-#define  PADS_PLL_CTL_RST_B4SM			(1 << 1)
-#define  PADS_PLL_CTL_LOCKDET			(1 << 8)
-#define  PADS_PLL_CTL_REFCLK_MASK		(0x3 << 16)
+#define  PADS_PLL_CTL_RST_B4SM			BIT(1)
+#define  PADS_PLL_CTL_LOCKDET			BIT(8)
+#define  PADS_PLL_CTL_REFCLK_MASK		GENMASK(17, 16)
 #define  PADS_PLL_CTL_REFCLK_INTERNAL_CML	(0 << 16)
-#define  PADS_PLL_CTL_REFCLK_INTERNAL_CMOS	(1 << 16)
+#define  PADS_PLL_CTL_REFCLK_INTERNAL_CMOS	BIT(16)
 #define  PADS_PLL_CTL_REFCLK_EXTERNAL		(2 << 16)
 #define  PADS_PLL_CTL_TXCLKREF_MASK		(0x1 << 20)
 #define  PADS_PLL_CTL_TXCLKREF_DIV10		(0 << 20)
-#define  PADS_PLL_CTL_TXCLKREF_DIV5		(1 << 20)
-#define  PADS_PLL_CTL_TXCLKREF_BUF_EN		(1 << 22)
+#define  PADS_PLL_CTL_TXCLKREF_DIV5		BIT(20)
+#define  PADS_PLL_CTL_TXCLKREF_BUF_EN		BIT(22)
 
 #define PADS_REFCLK_CFG0			0x000000c8
 #define PADS_REFCLK_CFG1			0x000000cc
-- 
2.50.1


