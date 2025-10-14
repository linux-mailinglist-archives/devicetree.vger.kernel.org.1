Return-Path: <devicetree+bounces-226365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D529BD76D7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A14BD18A282F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA870265CB2;
	Tue, 14 Oct 2025 05:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V3xOYGg3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1969624BCF5
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760419971; cv=none; b=MKLMzUfjQ8Z+OjmFVg1SHMZ3XUvIek74qrM0NIj6LLcyyp4+vph3dbJQA0QYt2qoVzGo3xNmkHt0Xw24umJKVq1ZXx/dXmsVb+N9M2NNIo8fLoSeIL5iMR9GSRudjiXctXcd8gMdOiPrVO+u9hUbX7fIAv8tAAyyj6suRQKHbnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760419971; c=relaxed/simple;
	bh=85lsaqBLyATDhWxcGtHCb8rrSMM1Zi40Ykn/mdczpbQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C6u4Y2W9BG9XBh+vXXHeI/4Sz1Jhd3DD9Az3WpfaE48sxyx2iTum7uBtFAhIp/KloPGBcT1KL4GVt22wS27pRJQynvkjHYHWdsw2fjv98jdapeWtUmDQzz/1Lu6L4NjQ91DKxrjLxBGhcq3xvFL99IboKlcztb9osn2MuyT7uQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V3xOYGg3; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-781206cce18so5085187b3a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760419969; x=1761024769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIknfe4iunyEV+sctQbH+hV6F4kkt3Ymm4KKw2uvoJg=;
        b=V3xOYGg32HE+mQvWyVV3FGxhSu9YRa5qFNhVGENnLZ+3QUw5cMa3pXZTKYJeVCSQ1H
         imd7HOZqhG9HdSXnwfg5wv/NcT6yN+CPvSa1QPTJi+BR6R4P7JI2KwaIoaEAlwz34ThQ
         lU1fVHgs4POqm2cmGGXDjvMNyypfPmKTxpaVd7anfwBcxfQgSU2iTAE3bNnp1k+FdKCi
         YXlw/tiq2Xfgva/af3v7z4oCrpwDGjTh2+wR9yYw9MCMTM3ol929XOpJKalPRZs5OPxw
         EUuwCy1EKnbWFC6lDqIDQ+pdClkxSsX1yEj2Bvm8AogVDeemLdU+UEUcwTTFzIzZvoSf
         SXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760419969; x=1761024769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vIknfe4iunyEV+sctQbH+hV6F4kkt3Ymm4KKw2uvoJg=;
        b=IupPNCb+I3ApQ12v9juzEU9r/kxLctEj+sVv4gIMenMOxbocPCThqym9NMYVxB8OQT
         BDhqgsd6I9aR6sf/UkqNDyALGhiVaj4so8UKpa+ie49UXzhsYsAKoTZDLvIAJLh9UQFB
         67e/XbWyLTnbBZMWXuGXCejhSpgBPVJaYFakfiZJXlnKwsriqiJoYPc8GOj63k6opx1H
         gSFTums3J8VK+LZkhcShDddyedT6xlW/ZpM24rxtpSaovpz8OpaNmirp1H6yHWgp66DT
         Nlk98sO+SfvNJOmWZfRbSgWsA2XT/+zGNisP3l2G4vPzYRU/R5RVdK8KHoSJ3EYlXHQi
         XI0w==
X-Forwarded-Encrypted: i=1; AJvYcCUR7xUZSUx57pV1PSI1ToZ/4devdWVSD2s2llnXzDa04+Xkid1NHMzXil+SI+aUHOoNDFtfqZQ1TSgP@vger.kernel.org
X-Gm-Message-State: AOJu0YxPlCfhTBfN3h8Cva9RQrP+BI3+GbMbLMWH7YUNhviP+eYPO4/o
	ibSQ8tLTjuIxSdTPQLYxZYVoNocQZCJHgudOwZcqaD6TW+2dlI1Br5W3
X-Gm-Gg: ASbGncuInulbJbOPRAfmgVYK5dmxCZR7qOt94xUpjWu5c/Qs87A+PH6HWJfAOp2+t/0
	lXOfInBNzCrV4XifK7zGEl8vDVFKdnJbDzwKHeRFJb7hfwq1xaOQn8C4/cDWngnRTcpFUfGGuuu
	CA0RHhiooYsJ+6o3CK/bLZbEnQhVZCsqNk4VX63G6lD4Zbd2M0PkvWRlJDesSF22wJw9my8fubo
	HNgci0SIV+xu57Rw/zjbP+pARNkcuk9tffnMkf6nCo7/eFCHtMNzIm6PisCDcHNFmDFEXxuPm5N
	KNX8bYhupE17ojkJSQCK9l0JjO8uFbqCPTaFKye7oGOgT2r/DOWrN+2nWs18Ijp4DfXhjvwVj/S
	ktWw1HD7d0KLkRUIajujXnJrE/l6MH3gcSoLkedoCdsNhfkFuG5Say1avbPePS0DpFG15J6IxK2
	1MzdPrjA==
X-Google-Smtp-Source: AGHT+IEn0XEshB+1n9kBWgR2h4V4uZvGklzrs67V8SZIY7EpnFpo2hMt7lQhdAt8fnMMxg24vL1UEQ==
X-Received: by 2002:a62:b608:0:b0:77f:df:5c3b with SMTP id d2e1a72fcca58-792323d496cmr24204935b3a.16.1760419969299;
        Mon, 13 Oct 2025 22:32:49 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb11ca0sm13707518b3a.32.2025.10.13.22.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 22:32:49 -0700 (PDT)
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
Subject: [PATCH v3 1/3] dt-bindings: regulator: Add MAX77675 binding header
Date: Tue, 14 Oct 2025 14:31:40 +0900
Message-Id: <20251014053142.15835-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251014053142.15835-1-joan.na@analog.com>
References: <20251014053142.15835-1-joan.na@analog.com>
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

Fixes:
- Removed unused macros
- Renamed macros for clarity

Signed-off-by: Joan Na <joan.na@analog.com>
---
 .../regulator/maxim,max77675-regulator.h      | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 include/dt-bindings/regulator/maxim,max77675-regulator.h

diff --git a/include/dt-bindings/regulator/maxim,max77675-regulator.h b/include/dt-bindings/regulator/maxim,max77675-regulator.h
new file mode 100644
index 000000000000..b3b52d1668c2
--- /dev/null
+++ b/include/dt-bindings/regulator/maxim,max77675-regulator.h
@@ -0,0 +1,52 @@
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
+/* FPS source */
+#define MAX77675_FPS_SLOT_0       0x0
+#define MAX77675_FPS_SLOT_1       0x1
+#define MAX77675_FPS_SLOT_2       0x2
+#define MAX77675_FPS_SLOT_3       0x3
+#define MAX77675_FPS_DEF          0x4
+
+/* nEN Manual Reset Time Configuration (MRT) */
+#define MAX77675_MRT_4S           0x0
+#define MAX77675_MRT_8S           0x1
+#define MAX77675_MRT_12S          0x2
+#define MAX77675_MRT_16S          0x3
+
+/* nEN Mode Configuration */
+#define MAX77675_EN_PUSH_BUTTON   0x0
+#define MAX77675_EN_SLIDE_SWITCH  0x1
+#define MAX77675_EN_LOGIC         0x2
+
+/* Debounce Timer Enable (DBEN_nEN) */
+#define MAX77675_DBEN_100US       0x0
+#define MAX77675_DBEN_30000US     0x1
+
+/* Rising slew rate control for SBB0 when ramping up */
+#define MAX77675_SR_2MV_PER_US    0x0  // 2 mV/us
+#define MAX77675_SR_USE_DVS       0x1  // Use DVS slew rate setting (maxim,dvs-slew-rate)
+
+/* Dynamic Voltage Scaling (DVS) Slew Rate */
+#define MAX77675_DVS_SLEW_5MV_PER_US    0x0  // 5 mV/us
+#define MAX77675_DVS_SLEW_10MV_PER_US   0x1  // 10 mV/us
+
+/* Latency Mode */
+#define MAX77675_HIGH_LATENCY_MODE  0x0   // High latency, low quiescent current (~100us)
+#define MAX77675_LOW_LATENCY_MODE   0x1   // Low latency, high quiescent current (~10us)
+
+/* SIMO Buck-Boost Drive Strength (All Channels) */
+#define MAX77675_DRV_SBB_STRENGTH_MAX  0x0  // Maximum drive strength (~0.6 ns transition time)
+#define MAX77675_DRV_SBB_STRENGTH_HIGH 0x1  // High drive strength (~1.2 ns transition time)
+#define MAX77675_DRV_SBB_STRENGTH_LOW  0x2  // Low drive strength (~1.8 ns transition time)
+#define MAX77675_DRV_SBB_STRENGTH_MIN  0x3  // Minimum drive strength (~8 ns transition time)
+
+#endif
--
2.34.1


