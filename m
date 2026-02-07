Return-Path: <devicetree+bounces-263602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sD8rAxI4h2kbVQQAu9opvQ
	(envelope-from <devicetree+bounces-263602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:03:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1174F105E9B
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:03:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E0C963004D3D
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458CA33EAED;
	Sat,  7 Feb 2026 13:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TB9N1775"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F380B3009D4
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770469386; cv=none; b=a/xjcSKs4lJ6WwvvcnL7GjY/Tt104Jsp4jj+kN7IKR+JFV3X2SYzuqpEXEsk3Hdi3dv3S/1ksPAQv0qYc7j8BjPwZm4ZrAJfzZUMHfRax0gXLzaVYZrmcgJHCfwgagEx3B4F001/W2ktZCuQgM8uIdzrBNCmvJzXzWA2/aCLKRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770469386; c=relaxed/simple;
	bh=DLGdJ8n4moTwi02Kx88Dv0gz4ej8vPmCoGW0VzXs5/s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Irr4rDniYVjp1x9goko1I31lKgaPwL63zCd30ZBYvJ+N1T5hyUxh3YkIN5B9tcqgU3pVTYwUjJobLVqG8UTQ4FzDkXRLBYBV50DiP22gRzl44MtHpH+U+fGoEkdk6Wwtrv5ZKFJzDOo4n4Zax1foqVAHGPvpnMx68/kiTyINBfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TB9N1775; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7950881727cso21529617b3.3
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469385; x=1771074185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2dOCLlAugUKogIyuSKW55Yg+tIx5l5apaOsAfQPJFJU=;
        b=TB9N17754VmvqcHDd0CvmKlIIjhG61pWvbKnNrMksV0lD813BW0iRuCeFy3Z7qVQoI
         UOV28k6YUieAj1lz0Rs4QPxX3ziWrstRFYkzM5MJwUuWwK6aCGQPhRKz27Zyb91MzmIC
         ASC6FMBwiFmVNWcdcMtkhpMdbfGmourfAMVjkhCGuWgmzBwmRHva4bX0FyAzL2H31jiO
         0RFatAe4DLI6AjEpAuEbsIxFQ2fwb71jigtfvfQhrkn0Rsiz2cdkR7jRMpCcRYSCjbWN
         oIvRIqiAv8Nb27oATul5IGSlrNcRWwtGqToJ/17OfsLCoGEbVBSNZwNZfEKZrrpFmOPC
         oTIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469385; x=1771074185;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2dOCLlAugUKogIyuSKW55Yg+tIx5l5apaOsAfQPJFJU=;
        b=bgLkVxIPJvO47d9mbXBktlu1v7gBRK/31Q/bx+sQVWBybm/oobObScO7mFCBZRukxc
         9ChMKQYST7w0FEFjPZKz5GF6W+hxvJs5ASNA8A9U3pt4T07NO86JV7Ged2cCvmrIenSK
         hEmafqZFBJMPVmB/rInea1PlU/huuxCOHrWS259aNaIsxuuLVJ5XpmDkJ8rNl7PYqeFx
         TL8rQSuc6gAgHxpSpZDVUGtLToK1Uug+dMmMJSEGDf/lf8cskjC3DWMZfY9y46MecMa0
         bz48jpwiYUMdQMshWs916qfW/4iyRKNpnVW3wyqvUiCt1fmNSlt5L5yEm+9w2XpJw7eI
         mvYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfYz2zXks14ws8L3njLC3WM8ySiQo1UYtd29e7Oaou3ElGANbyexbOTI4BJ41Mj6PeqGS12vnP8N4E@vger.kernel.org
X-Gm-Message-State: AOJu0YyHuI9wPeqj/B9eld6iRq2LXUu2Ks5hY/4jg/b7hyeAREaWBFja
	yfPx/pwFGJIfjU9Aj88HUPWCfWdcX2wHH72+fpXYo4i1ow54bLMZpM1G
X-Gm-Gg: AZuq6aLc5evgtklRKatDLHWr9j7GQSFOIWyPpi3hDrnD/c6JCo4okcUvvpITOvz/l0w
	qeKpqq73IvxK4IKQEDOpBHlPaWMCOFMzPU2RQUHlLEeUy9MVOmbFIX61yJF8HRAUhcVtXqcdKRE
	t+DGeFk1ERx19Wfo9vUhKL4Bjmywm61XONnF/pZPhNskM9VW05bZx8lcq73Fd7QmWOfDe9txCdL
	Un/0MTtBt9qTrK4ACZfQbbBF0N5Y5dRnlbGhYGVzNxFy8lWqsB8bzQINLQkbOhyaT0klwP9J1WV
	dcb3hK2Mhy8fuGN9pOSoOL+uEQw46fOU/Db20ksqg4FxtwWQ8cOAaays9zhgNQc9AshfDT4gZyM
	t0OzFqUzEdcRZn7tFgoLBfAKlOaj6V0TRm/drDyHyfLxsHKG52g8jGFCeCpTnMZ0zjvTZKLwBQZ
	1PbNiuJXPnXpOZQRdb4jibTOFS
X-Received: by 2002:a05:690c:498f:b0:796:3124:6565 with SMTP id 00721157ae682-796312469e8mr27333117b3.1.1770469384611;
        Sat, 07 Feb 2026 05:03:04 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1e525dsm45939667b3.29.2026.02.07.05.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:03:04 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	jonas@kwiboo.se,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
Date: Sat,  7 Feb 2026 10:02:55 -0300
Message-Id: <20260207130256.2832815-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263602-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1174F105E9B
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add support for the Rockchip RV1103B Clock and Reset Unit (CRU).

The RV1103B CRU is compatible with the existing RV1126B binding.
Add the compatible string to the schema and introduce the
corresponding clock ID definitions.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Make it a separate series.
- Start the clock index from zero and without gaps.
- Remove the reset definitions as there is no consumer for them yet.
- Squash yaml and dt-bindings.

 .../bindings/clock/rockchip,rv1126b-cru.yaml  |   1 +
 .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 220 ++++++++++++++++++
 2 files changed, 221 insertions(+)
 create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
index 04b0a5c51e4e..b6d3a04be8f1 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
@@ -17,6 +17,7 @@ description:
 properties:
   compatible:
     enum:
+      - rockchip,rv1103b-cru
       - rockchip,rv1126b-cru
 
   reg:
diff --git a/include/dt-bindings/clock/rockchip,rv1103b-cru.h b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
new file mode 100644
index 000000000000..35afdee7e961
--- /dev/null
+++ b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
@@ -0,0 +1,220 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co. Ltd.
+ * Author: Elaine Zhang <zhangqing@rock-chips.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
+#define _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
+
+#define PLL_GPLL		0
+#define ARMCLK			1
+#define PLL_DPLL		2
+#define XIN_OSC0_HALF		3
+#define CLK_GPLL_DIV24		4
+#define CLK_GPLL_DIV12		5
+#define CLK_GPLL_DIV6		6
+#define CLK_GPLL_DIV4		7
+#define CLK_GPLL_DIV3		8
+#define CLK_GPLL_DIV2P5		9
+#define CLK_GPLL_DIV2		10
+#define CLK_UART0_SRC		11
+#define CLK_UART1_SRC		12
+#define CLK_UART2_SRC		13
+#define CLK_UART0_FRAC		14
+#define CLK_UART1_FRAC		15
+#define CLK_UART2_FRAC		16
+#define CLK_SAI_SRC		17
+#define CLK_SAI_FRAC		18
+#define LSCLK_NPU_SRC		19
+#define CLK_NPU_SRC		20
+#define ACLK_VEPU_SRC		21
+#define CLK_VEPU_SRC		22
+#define ACLK_VI_SRC		23
+#define CLK_ISP_SRC		24
+#define DCLK_VICAP		25
+#define CCLK_EMMC		26
+#define CCLK_SDMMC0		27
+#define SCLK_SFC_2X		28
+#define LSCLK_PERI_SRC		29
+#define ACLK_PERI_SRC		30
+#define HCLK_HPMCU		31
+#define SCLK_UART0		32
+#define SCLK_UART1		33
+#define SCLK_UART2		34
+#define CLK_I2C_PMU		35
+#define CLK_I2C_PERI		36
+#define CLK_SPI0		37
+#define CLK_PWM0_SRC		38
+#define CLK_PWM1		39
+#define CLK_PWM2		40
+#define DCLK_DECOM_SRC		41
+#define CCLK_SDMMC1		42
+#define CLK_CORE_CRYPTO		43
+#define CLK_PKA_CRYPTO		44
+#define CLK_CORE_RGA		45
+#define MCLK_SAI_SRC		46
+#define CLK_FREQ_PWM0_SRC	47
+#define CLK_COUNTER_PWM0_SRC	48
+#define PCLK_TOP_ROOT		49
+#define CLK_REF_MIPI0		50
+#define CLK_MIPI0_OUT2IO	51
+#define CLK_REF_MIPI1		52
+#define CLK_MIPI1_OUT2IO	53
+#define MCLK_SAI_OUT2IO		54
+#define ACLK_NPU_ROOT		55
+#define HCLK_RKNN		56
+#define ACLK_RKNN		57
+#define LSCLK_VEPU_ROOT		58
+#define HCLK_VEPU		59
+#define ACLK_VEPU		60
+#define CLK_CORE_VEPU		61
+#define PCLK_IOC_VCCIO3		62
+#define PCLK_ACODEC		63
+#define PCLK_USBPHY		64
+#define LSCLK_VI_100M		65
+#define LSCLK_VI_ROOT		66
+#define HCLK_ISP		67
+#define ACLK_ISP		68
+#define CLK_CORE_ISP		69
+#define ACLK_VICAP		70
+#define HCLK_VICAP		71
+#define ISP0CLK_VICAP		72
+#define PCLK_CSI2HOST0		73
+#define PCLK_CSI2HOST1		74
+#define HCLK_EMMC		75
+#define HCLK_SFC		76
+#define HCLK_SFC_XIP		77
+#define HCLK_SDMMC0		78
+#define PCLK_CSIPHY		79
+#define PCLK_GPIO1		80
+#define DBCLK_GPIO1		81
+#define PCLK_IOC_VCCIO47	82
+#define LSCLK_DDR_ROOT		83
+#define CLK_TIMER_DDRMON	84
+#define LSCLK_PMU_ROOT		85
+#define PCLK_PMU		86
+#define XIN_RC_DIV		87
+#define CLK_32K			88
+#define PCLK_PMU_GPIO0		89
+#define DBCLK_PMU_GPIO0		90
+#define CLK_DDR_FAIL_SAFE	91
+#define PCLK_PMU_HP_TIMER	92
+#define CLK_PMU_32K_HP_TIMER	93
+#define PCLK_PWM0		94
+#define CLK_PWM0		95
+#define CLK_OSC_PWM0		96
+#define CLK_RC_PWM0		97
+#define CLK_FREQ_PWM0		98
+#define CLK_COUNTER_PWM0	99
+#define PCLK_I2C0		100
+#define CLK_I2C0		101
+#define PCLK_UART0		102
+#define PCLK_IOC_PMUIO0		103
+#define CLK_REFOUT		104
+#define CLK_PREROLL		105
+#define CLK_PREROLL_32K		106
+#define CLK_LPMCU_PMU		107
+#define PCLK_SPI2AHB		108
+#define HCLK_SPI2AHB		109
+#define SCLK_SPI2AHB		110
+#define PCLK_WDT_LPMCU		111
+#define TCLK_WDT_LPMCU		112
+#define HCLK_SFC_PMU1		113
+#define HCLK_SFC_XIP_PMU1	114
+#define SCLK_SFC_2X_PMU1	115
+#define CLK_LPMCU		116
+#define CLK_LPMCU_RTC		117
+#define PCLK_LPMCU_MAILBOX	118
+#define PCLK_IOC_PMUIO1		119
+#define PCLK_CRU_PMU1		120
+#define PCLK_PERI_ROOT		121
+#define PCLK_RTC_ROOT		122
+#define CLK_TIMER_ROOT		123
+#define PCLK_TIMER		124
+#define CLK_TIMER0		125
+#define CLK_TIMER1		126
+#define CLK_TIMER2		127
+#define CLK_TIMER3		128
+#define CLK_TIMER4		129
+#define CLK_TIMER5		130
+#define PCLK_STIMER		131
+#define CLK_STIMER0		132
+#define CLK_STIMER1		133
+#define PCLK_WDT_NS		134
+#define TCLK_WDT_NS		135
+#define PCLK_WDT_S		136
+#define TCLK_WDT_S		137
+#define PCLK_WDT_HPMCU		138
+#define TCLK_WDT_HPMCU		139
+#define PCLK_I2C1		140
+#define CLK_I2C1		141
+#define PCLK_I2C2		142
+#define CLK_I2C2		143
+#define PCLK_I2C3		144
+#define CLK_I2C3		145
+#define PCLK_I2C4		146
+#define CLK_I2C4		147
+#define PCLK_SPI0		148
+#define PCLK_PWM1		149
+#define CLK_OSC_PWM1		150
+#define PCLK_PWM2		151
+#define CLK_OSC_PWM2		152
+#define PCLK_UART2		153
+#define PCLK_UART1		154
+#define ACLK_RKDMA		155
+#define PCLK_TSADC		156
+#define CLK_TSADC		157
+#define CLK_TSADC_TSEN		158
+#define PCLK_SARADC		159
+#define CLK_SARADC		160
+#define PCLK_GPIO2		161
+#define DBCLK_GPIO2		162
+#define PCLK_IOC_VCCIO6		163
+#define ACLK_USBOTG		164
+#define CLK_REF_USBOTG		165
+#define HCLK_SDMMC1		166
+#define HCLK_SAI		167
+#define MCLK_SAI		168
+#define ACLK_CRYPTO		169
+#define HCLK_CRYPTO		170
+#define HCLK_RK_RNG_NS		171
+#define HCLK_RK_RNG_S		172
+#define PCLK_OTPC_NS		173
+#define CLK_OTPC_ROOT_NS	174
+#define CLK_SBPI_OTPC_NS	175
+#define CLK_USER_OTPC_NS	176
+#define PCLK_OTPC_S		177
+#define CLK_OTPC_ROOT_S		178
+#define CLK_SBPI_OTPC_S		179
+#define CLK_USER_OTPC_S		180
+#define CLK_OTPC_ARB		181
+#define PCLK_OTP_MASK		182
+#define HCLK_RGA		183
+#define ACLK_RGA		184
+#define ACLK_MAC		185
+#define PCLK_MAC		186
+#define CLK_MACPHY		187
+#define ACLK_SPINLOCK		188
+#define HCLK_CACHE		189
+#define PCLK_HPMCU_MAILBOX	190
+#define PCLK_HPMCU_INTMUX	191
+#define CLK_HPMCU		192
+#define CLK_HPMCU_RTC		193
+#define DCLK_DECOM		194
+#define ACLK_DECOM		195
+#define PCLK_DECOM		196
+#define ACLK_SYS_SRAM		197
+#define PCLK_DMA2DDR		198
+#define ACLK_DMA2DDR		199
+#define PCLK_DCF		200
+#define ACLK_DCF		201
+#define MCLK_ACODEC_TX		202
+#define SCLK_UART0_SRC		203
+#define SCLK_UART1_SRC		204
+#define SCLK_UART2_SRC		205
+#define XIN_RC_SRC		206
+#define CLK_UTMI_USBOTG		207
+#define CLK_REF_USBPHY		208
+
+#endif // _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
-- 
2.34.1


