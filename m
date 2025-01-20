Return-Path: <devicetree+bounces-139767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6077BA16CFA
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CD2B1609C7
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 13:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9371E1C34;
	Mon, 20 Jan 2025 13:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Y4caGsss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE451E0DD1
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 13:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737378586; cv=none; b=OflwQVtxfvI+p9FhiLmDJLb1/swRj/nOh1gVaKBtmXiPwrUTenu3DJFWsKUq5rrsk41GparcS/TRfxBFbha2gD1fRzcOwaC/LBsq9L8E9xLw2jA5BJlUWO930n+wp2QvBfXtvVgWhgoo40qhEQ0KDhjFwcPkILlDY5dvdstpDUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737378586; c=relaxed/simple;
	bh=7n5sMDbwVn+ispnfZZTJJPvroNDzqS+OKERZbs8Fe0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BzCwzu0MXc5uM8aHG1FNRdtYk5/ew/ETCSiy/fPC9FUI863ScbvqIShNxWrZ//MwbXqnW8+K/qp0lnG/ZZ+5lWHWt+Ba5h3G31OGsqxyHeUMzaqdYQ9epIkBLICMmGZ5Ix/Bxp0xNJemHONNkDlRbcgPR6pMCW5QFGrhDyr4Two=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Y4caGsss; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43634b570c1so31700355e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 05:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737378583; x=1737983383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2gRlxtvByNO5udzwmMv5gFGDjo6tJlSTC3E0AGWaYSY=;
        b=Y4caGsssFUKZXUr41pPOSXGP8Q668FEh1XziKh8tRfwWIBE2MvWuMacekpLEmzr6wQ
         NPBr6TM8JNcYvp1rtZmdfTIZrGz1WEZ/4ku9+4EcYXp4tta9Uw+xQS9oqBHiGbTmzaxM
         4ee7afd3fNNDRSirgdL6fzppbKurcZGDUXSFX6DqSp8MCBA5pyBhXUTh1c/BacGFfqqv
         NK9abCjIkWwJV1U+jEmAwqaunm6aTy40utMsQkHQbVLy/RsBmxkEEx9RuP9K6cOgswLa
         YsfGAqmcIy7xNMfLfORpbpNcvD1JFcVw8MxKUIpz3iINeTZagqSRnlPUfV0dmxOduH0i
         PASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737378583; x=1737983383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2gRlxtvByNO5udzwmMv5gFGDjo6tJlSTC3E0AGWaYSY=;
        b=Y94zp9e3z9QdoHo/sHkxD9w253DgFs8x3vQsRISTmmBPj6/LsgkO5Aixmzxd2UtTAw
         4+YwzAeKVZCNCwgO0S5xy+b6w73SJ6GQ5OZKz+S/VPmKlrhnxq+s2wS/R9l962ME25m3
         8tXpMd93AXWj0jK4dtMKbUvmGj5I0efDsYT73HdFC8PZPnyLubQ8cRVnfb9n5wiU1LNP
         rVbvMz0a4b1vulwYRubIWCNhJVd9R0g97QTIso92EH5yvfMw8OAXjkq5MAYC+7TCiknb
         9L0nUl2+iERtq+47ft7K0hBu3yr5eLjp0I2CIdnro3AxiuppWSyiC6RcENU9ORNQfghT
         XsSw==
X-Forwarded-Encrypted: i=1; AJvYcCWie5cfHJWeIsYS911bX/IwzqtnxXwwXPrboSvSPzl35UPuiv1VnYbABkIhUg6/wB5SXpYB4EjC5+0q@vger.kernel.org
X-Gm-Message-State: AOJu0YzZfZeLif0goY4CEk9+aqcEqK7QOTnmPNrwlWhCF0bsut+eAmo5
	uaVfo8vejvqpox+j54iECpQYu5Dt2d1AP/6lB4V7Y2s2Xvr97ClBWFA0kTfmpzM=
X-Gm-Gg: ASbGncvrxut3XZ73+6jWFASwJ3/YjdXjylsjSkEFebanfN9r0hFfixmbd5Tm6XZ6qi6
	dbT5eoxzLIRPYMsir9KZAm0iQkYmMpmkyNgke6ygljJJlU1MMgbP/c8T1Jiee2FtNdema/Nos0h
	cpXxpGtJUoyPdLFDXdY+w81lVXU0DrgyWjvNXYXcIPHp3JjCzHNxDChaI7eowmsg2T7aNuC6KE1
	ykYgoGelBUknY2SPX6o2LrrO824bTZUcMrZ+HbJsItttghs/uQEFGK7Tnh5kxcZMRKIIwSihEFP
	tWuby9zGpnFtBzgY8Bix8Ok=
X-Google-Smtp-Source: AGHT+IGUE8yPgR7lQfCZF5G3ZqkDOFLEhMezebE22LyEhYPqM8owjlY/N8nCg5j028/go6Z7PsODoQ==
X-Received: by 2002:a05:600c:6c9a:b0:438:a240:c54 with SMTP id 5b1f17b1804b1-438a2400d95mr64394965e9.9.1737378583223;
        Mon, 20 Jan 2025 05:09:43 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4389041f61bsm138001955e9.17.2025.01.20.05.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 05:09:42 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	claudiu.beznea.uj@bp.renesas.com,
	wsa+renesas@sang-engineering.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 2/4] arm64: dts: renesas: rzg3s-smarc-switches: Add a header to describe different switches
Date: Mon, 20 Jan 2025 15:09:34 +0200
Message-ID: <20250120130936.1080069-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

There are different switches available on both the RZ/G3S SMARC Module and
RZ SMARC Carrier II boards. These switches are used to route different SoC
signals to different parts available on board.

These switches are described in device trees through macros. These macros
are set accordingly such that the resulted compiled dtb to describe the
on-board switches states.

The SCIF1 depends on the state of the SW_CONFIG3 and SW_OPT_MUX4 switches.
SCIF1 can be enabled through a device tree overlay. To manage all switches
in a unified state and allow users to configure the output device tree, add
a file that contains all switch definitions and states.

Commit prepares the code to enable SCIF1 on the RZ/G3S overlay.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- adjusted the patch description
- used GPL-2.0-only OR BSD-2-Clause license
- used proper description for SW_CONFIG3

Changes in v3:
- none

Changes in v2:
- none

 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 20 +-----------
 .../boot/dts/renesas/rzg3s-smarc-switches.h   | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index ef12c1c462a7..39845faec894 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -9,25 +9,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
 
-/*
- * On-board switches' states:
- * @SW_OFF: switch's state is OFF
- * @SW_ON:  switch's state is ON
- */
-#define SW_OFF		0
-#define SW_ON		1
-
-/*
- * SW_CONFIG[x] switches' states:
- * @SW_CONFIG2:
- *	SW_OFF - SD0 is connected to eMMC
- *	SW_ON  - SD0 is connected to uSD0 card
- * @SW_CONFIG3:
- *	SW_OFF - SD2 is connected to SoC
- *	SW_ON  - SCIF1, SSI0, IRQ0, IRQ1 connected to SoC
- */
-#define SW_CONFIG2	SW_OFF
-#define SW_CONFIG3	SW_ON
+#include "rzg3s-smarc-switches.h"
 
 / {
 	compatible = "renesas,rzg3s-smarcm", "renesas,r9a08g045s33", "renesas,r9a08g045";
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h b/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
new file mode 100644
index 000000000000..514a8a6dc013
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * On-board switches for the Renesas RZ/G3S SMARC Module and RZ SMARC Carrier II
+ * boards.
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ */
+
+#ifndef __RZG3S_SMARC_SWITCHES__
+#define __RZG3S_SMARC_SWITCHES__
+
+/*
+ * On-board switches' states:
+ * @SW_OFF: switch's state is OFF
+ * @SW_ON:  switch's state is ON
+ */
+#define SW_OFF		0
+#define SW_ON		1
+
+/*
+ * SW_CONFIG[x] switches' states:
+ * @SW_CONFIG2:
+ *	SW_OFF - SD0 is connected to eMMC
+ *	SW_ON  - SD0 is connected to uSD0 card
+ * @SW_CONFIG3:
+ *	SW_OFF - SD2 is connected to SoC
+ *	SW_ON  - SCIF1, SSI0, IRQ0, IRQ1 connected to SoC
+ */
+#define SW_CONFIG2	SW_OFF
+#define SW_CONFIG3	SW_ON
+
+#endif /* __RZG3S_SMARC_SWITCHES__ */
-- 
2.43.0


