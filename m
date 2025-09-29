Return-Path: <devicetree+bounces-222413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E61DBA8EDB
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 12:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1B541898CCD
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255352FD7C7;
	Mon, 29 Sep 2025 10:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WH5I27T2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F5B2E1EF4
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759143410; cv=none; b=Jf5t5M3xiYb1UmPTMMjApROM9Wi5eKTvlTC+2H4/IKbpYgnHWDF1fOkfC53GWfVnQzI4i+fGVectprY3kmCvj+Vg9bqkFux8RC4rCfBA4Iqq+mdAc/tg0q/aKMSylxEX/lWJ1CxzCczdaeFRBFJ+/u2VpCCHjGGczzCZAV68irw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759143410; c=relaxed/simple;
	bh=Beq3zJ9Yir84ESXbuDFoAJxQDiqZxmnkRmEwjSUBkHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AINg46FRYODoxOFy0t7pgxyCev75RNMQMikJTmn4FYts/CEIEII2v/Ht04yU/m29xWsXNRAZzLl2lEPI8hovDWy8TLsT8yygbnD99mI5ezbWhrXSYmT7z+Gh+U6EebnS7ZY4FkC5XcFqstBpj6CkamcGKQPG95GVeW/GzeSuPf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WH5I27T2; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b5a631b9c82so860455a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759143408; x=1759748208; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pe1j9chdIMcilasNbgcFZSIoZX4HxLtPrmn8vQTZBk=;
        b=WH5I27T2xVM/8AsKTrQk6ON+Mxoq3CUBS+LxLiuhsR53pO6fMeaAEQU7l3djbVceBT
         E4dlWnFYsF93xBLYOc3Bnd9lG6sGlb8gJCWYkSt/j2rPMmKl1yz3gF8Yfd7EPJ09LI2j
         4iv1aZzUABeYKfQ9SbYATycyNJtEBOxqCUaXjuEfnB7SIhxxaNkFMeQoKOaU4ZIVR5xY
         XiovIs82JgrPQctk8e+IX0w8SCCVrhekINxCiY97PP6GRNBm3JJHxmNklDMthBVdc+JH
         NQ6tp17BPSS4JT6rVEt7XHfMkW9L7+Wqy7g5Y+LZ9YpiyIcrXWECw3GNPUrA1FXtBkX6
         74Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759143408; x=1759748208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pe1j9chdIMcilasNbgcFZSIoZX4HxLtPrmn8vQTZBk=;
        b=pLzKpoT6aeDUGsXi7r3KXkplVbW6NLOiE25qwdoiex61UJcfzXcC4KdQWVzt61GZgv
         IcBqpjvafLBxkSVlQKoEljeaaEyk+gr1fDXev5xaAmTKWFRPnpkNZwXacjLfxs8Zihac
         0wwN355eDlmDuHz2Y1UEeG+MPKva6A13LhxIyFE61i+K7mfGKjeuA3qBIStaU03GKS/j
         zS7z3ouNS8GCn1xxfSqOusKuP7RSvb2BiCQMc8VSI9BwPM93u2iFlBKNC2Fv/vNdZKE0
         D5c9thvYpR8Q435AHildom6IkbdHwRr0w9Qif/xatMNLV8jVPZKeObhQBPcoRkBkTr/F
         D9ug==
X-Forwarded-Encrypted: i=1; AJvYcCXsJV6zQW+9w5iW45fmkKEOltaItoXonC3EfacRDL4Hw+H6zZU3ggmd3TxRT+lIN2xszKtMglunrPa9@vger.kernel.org
X-Gm-Message-State: AOJu0YzjaGFUfXylgjY0tfOlHyWZXo/IQpGx520XXYqS9TYoGEQIQ7Yy
	LEgltBoPpfWB6qe25F4qmlyX3iudLo2tXqubY12VYQae+e3DCccUOJRI
X-Gm-Gg: ASbGncv81k8UR7Ih4YL43nXxRKgJ+86EveCiLLdHegzHxwsHxlmdCqzfwk6CDmdTLDt
	9DlUp3driyaLGKOX+rNTA2hPmPWqpgfnsvS1X0luDfjt7mf4KYkS1noiIj/ygfa0V8tg7ER5hF1
	k9AEugBo/a7JdnGOmAYEvgZVjx7Fav86EsNs4J5pFmdQ0krlVLqYrEDlojyz7Zdw9F3ktfvRR+h
	50d99wmN51IFDwFeV01BgEtgFcQbr4JDJDS78fRQQ3zVb4kr4Xv6ckgar9UW/XiazGVZOa2wj9h
	FTmrQCy3jQ8E2Xfc5LILGycTZFRjU90ASDpbbJG/Sot3/NL60lGW0EbN7rIuOcVorhHHGNL3ybB
	jJQpxobatcYFAkaTXRDEZIGk3nRAR1lQh0k3wIO2ttXCsZ2pTVBVW
X-Google-Smtp-Source: AGHT+IEzNnzMQUmm64U2sdZ4qlIa1+onrCYJuYxc25Qz80fDiR49PF6DfOmnvPqN0nbAF5tDS663og==
X-Received: by 2002:a17:902:e74b:b0:24c:caab:dfd2 with SMTP id d9443c01a7336-27ed4a7aef4mr181988215ad.61.1759143407725;
        Mon, 29 Sep 2025 03:56:47 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28cef7db380sm4762325ad.107.2025.09.29.03.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 03:56:47 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: regulator: Add MAX77675 binding header
Date: Mon, 29 Sep 2025 19:56:16 +0900
Message-Id: <20250929105618.177511-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250929105618.177511-1-joan.na@analog.com>
References: <20250929105618.177511-1-joan.na@analog.com>
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


