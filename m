Return-Path: <devicetree+bounces-221731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ABBBA275C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:39:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8B097A6911
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 05:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38A4277C81;
	Fri, 26 Sep 2025 05:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cyh8n6x/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C4A1FCFEF
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 05:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758865165; cv=none; b=J8b+g8zl9bY29plNTsl7H9AwIDAS1X0IY2mrDmMbwm9eWv9ZzhEOKeapcFCclWN0tcT2vy6UiHUWfTksSOWPeLCoJbJ3E0756rAZBBQBLpFd30PzsdgaKOObebRahirsKJe0pdAtoSlmxFd5w4Pd4t5rA2Kv8L2WAmoE05IVXeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758865165; c=relaxed/simple;
	bh=Beq3zJ9Yir84ESXbuDFoAJxQDiqZxmnkRmEwjSUBkHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kWOOFh5S3Z4qlA8WLmR6n1eX+YPWsl60jBXqTNKJmJHwzcoft4y9o9yZHoKnnDLHC2WiSgBxJB+1XdojwuzAsMBCCWWRsQ/GYsAdavYgdktgFmR/AIuPBtg+ac6TmaGV6SsC4hOEvPb1Y/+XIoj8E2Tc50Cu0f7SEam+0X8+vfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cyh8n6x/; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b57f08e88bcso334096a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758865163; x=1759469963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pe1j9chdIMcilasNbgcFZSIoZX4HxLtPrmn8vQTZBk=;
        b=cyh8n6x/xiQqoJZ1DU5M+LcnGz7n7fWcs9anzCnhSL0jAO1MaBTHSz2kuwqZdLdZnU
         30d1LDvDiaJ1B4XtGGxlF8McgEdcoMkgPVHn4/lUFSlvh78d5ZUVVMxck5UAqSWA/v0S
         E33S9MYg2gu1fpsVld1TUJznh5WaYVI2EpSGW6EqvNerPbLineyAxG7wVrlUg20MM5+6
         wWVmPLLdMncaKT3UZP/tuFprzS1+lz5Wi6dGdPlHbq1CJOJNX2yPNkqHPPTlwv1PQtOa
         scUZoxDulLwmwhMtrEW06vCO06Qpiq8qG+GmagJs0EbcC69+msUwWEbyDxs0H2/j/ay/
         Pnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758865163; x=1759469963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pe1j9chdIMcilasNbgcFZSIoZX4HxLtPrmn8vQTZBk=;
        b=mTATULvsEdNyaAW9FnnLQb8Ket56N2mNJOawIHxV5WGHKzuJCkJLwzlSjM3V81k1uj
         2EqT/D2ORVO+3PL65FGzKIES0es6lDlC4GwexatFFTYECc8WfiaRePEWDUsJAFARMjnQ
         QzXekl7MJeKG6gAuWE/lU0Q2bfqizo+2Vds9UakNOEsbGrgvkOfxiRTXdP2RRThs+8YK
         jV+2z4MZ+JeKjY5TdRxuhdUFQgDSuadW7clAjDEuC2ft/k7u/EthtZ/v5jeMpmbTO9Y/
         3ntiNfl6st5lGs7ETGvBKt9crOhN/1Wn3maFAlnxAZjeILGcJjIGt51P/Hu7/cEuZyu8
         YuzA==
X-Forwarded-Encrypted: i=1; AJvYcCUoFt6MIpgBx+OjhxXKU+UctIpl/HrrVP7qxyv6SxTSTnF2WgGN90z301Izb32afy6pfQPu99AspBEW@vger.kernel.org
X-Gm-Message-State: AOJu0YzR5VRMCZ7w6L3uZFMM2UrvoC6nXoxvbhVSickSeXQjyhdU8XIJ
	RAS8TQxSqEDznS0vqcsSh8dBDzkmd62EbVWwB6T5H49n+6l/71ACyFi6
X-Gm-Gg: ASbGnctmNkv+zbpkU1OD1TL6IzkN2FyRYXmEIHVtguu/cWwtjko35sv2fpwF7o8mMLY
	1h8czewdUqVTXhvCd8Y3qFiBmUZ5ku0g5hclH3rWYOhuMAlFyMXyMUecAPu+IdnszoKJjcH9mpR
	A3PSgvvQ1O0qgBGBJDyjbjTgy30mgRgSl3g78oudsOQjUM414IcpkXOGprkrYFj/IqZ1M99jkTo
	R+xqh/v5vL2GhrsKZ73F6pBK09x+TwkMEWfLDX3r3/XAP+ewmO1ALppTck+f786KNuGfWGiudFW
	FGhLOzeCyala88OfVhyRAC/cDIMATZCos5mnF/M44zpznwYHbI/z2G4reSUOq+NWUMO3hTEfE73
	bbLAhGFD9j9jl6/Q+jegwDoM5ROBQmkzyRNTKIw==
X-Google-Smtp-Source: AGHT+IF24GY09FqC/mRcjEGwNAmt8xciN/1UqlJHXn7H6rCSb/JbypwirnWt+vUczaGlevlr9OSdRA==
X-Received: by 2002:a17:902:c102:b0:269:b65a:cbb2 with SMTP id d9443c01a7336-27ed4a46418mr42444775ad.47.1758865163454;
        Thu, 25 Sep 2025 22:39:23 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66fb07dsm41925025ad.36.2025.09.25.22.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 22:39:23 -0700 (PDT)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH 1/3] dt-bindings: regulator: Add MAX77675 binding header
Date: Fri, 26 Sep 2025 14:37:55 +0900
Message-Id: <20250926053757.480086-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926053757.480086-1-joan.na@analog.com>
References: <20250926053757.480086-1-joan.na@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

Add binding header for the MAX77675 PMIC regulator. This header defines
voltage ID and regulator index macros used both in device tree sources
and in the driver implementation.

Signed-off-by: Joan Na <joan.na@analog.com>
---
 .../regulator/maxim,max77675-regulator.h      | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 include/dt-bindings/regulator/maxim,max77675-regulator.h

diff --git a/include/dt-bindings/regulator/maxim,max77675-regulator.h b/include/dt-bindings/regulator/maxim,max77675-regulator.h
new file mode 100644
index 000000000000..df12cae5e250
--- /dev/null
+++ b/include/dt-bindings/regulator/maxim,max77675-regulator.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD 2-Clause */
+/*
+ * This header provides macros for MAXIM MAX77675 device bindings.
+ *
+ * Copyright (c) 2025, Analog Device inc.
+ * Author: Joan Na <joan.na@analog.com>
+ */
+
+#ifndef _DT_BINDINGS_REGULATOR_MAX77675_
+#define _DT_BINDINGS_REGULATOR_MAX77675_
+
+// Define the voltage limits for 12.5mV and 25mV steps
+#define MAX77675_MIN_UV            500000    // 500 mV
+
+#define MAX77675_MAX_UV_25MV       5500000   // 5.5V in microvolts for 25mV step
+#define MAX77675_MAX_UV_12_5MV     3687500   // 3.6875V in microvolts for 12.5mV step
+
+#define MAX77675_STEP_25MV         25000     // 25 mV
+#define MAX77675_STEP_12_5MV       12500     // 12.5 mV
+
+#define MAX77675_NUM_LEVELS_25MV   201
+#define MAX77675_NUM_LEVELS_12_5MV 255
+
+/* FPS source */
+#define MAX77675_FPS_SLOT_0       0
+#define MAX77675_FPS_SLOT_1       1
+#define MAX77675_FPS_SLOT_2       2
+#define MAX77675_FPS_SLOT_3       3
+#define MAX77675_FPS_NONE         4
+#define MAX77675_FPS_DEF          5
+
+/* nEN Manual Reset Time Configuration (MRT) */
+#define MAX77675_MRT_4S           0x0
+#define MAX77675_MRT_8S           0x1
+#define MAX77675_MRT_12S          0x2
+#define MAX77675_MRT_16S          0x3
+
+/* Internal Pull-Up Disable (PU_DIS) */
+#define MAX77675_PU_EN            0x0
+#define MAX77675_PU_DIS           0x1
+
+/* Bias Low-Power Mode (BIAS_LPM) */
+#define MAX77675_BIAS_NORMAL      0x0
+#define MAX77675_BIAS_LPM_REQ     0x1
+
+/* SIMO Internal Channel Disable (SIMO_INT_CH_DIS) */
+#define MAX77675_SIMO_INT_NORMAL  0x0
+#define MAX77675_SIMO_INT_LDO     0x1
+
+/* nEN Mode Configuration */
+#define MAX77675_EN_PUSH_BUTTON   0x0
+#define MAX77675_EN_SLIDE_SWITCH  0x1
+#define MAX77675_EN_LOGIC         0x2
+#define MAX77675_EN_RESERVED      0x3
+
+/* Debounce Timer Enable (DBEN_nEN) */
+#define MAX77675_DBEN_100US       0x0
+#define MAX77675_DBEN_30MS        0x1
+
+/* Rising slew rate control for SBB0 when ramping up */
+#define MAX77675_SR_2MV_PER_US    0x0  // 2 mV/us
+#define MAX77675_SR_USE_DVS       0x1  // Use DVS slew rate setting (maxim,dvs-slew-rate)
+
+/* Dynamic Voltage Scaling (DVS) Slew Rate */
+#define MAX77675_DVS_SLEW_5MV     0x0  // 5 mV/us
+#define MAX77675_DVS_SLEW_10MV    0x1  // 10 mV/us
+
+/* Latency Mode */
+#define MAX77675_LAT_MODE_HIGH_LATENCY    0  // Low quiescent current, high latency (~100us)
+#define MAX77675_LAT_MODE_LOW_LATENCY     1   // High quiescent current, low latency (~10us)
+
+/* SIMO Buck-Boost Drive Strength (All Channels) */
+#define MAX77675_DRV_SBB_FASTEST      0  // Fastest transition (~0.6 ns)
+#define MAX77675_DRV_SBB_FAST         1  // Faster transition (~1.2 ns)
+#define MAX77675_DRV_SBB_MEDIUM       2  // Moderate transition (~1.8 ns)
+#define MAX77675_DRV_SBB_SLOWEST      3  // Slowest transition (~8 ns)
+
+#endif
--
2.34.1


