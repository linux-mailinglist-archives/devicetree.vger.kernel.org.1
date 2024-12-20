Return-Path: <devicetree+bounces-133105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D3C9F93BE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A80061882CCE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF7B21A445;
	Fri, 20 Dec 2024 13:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qvwji8Gq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90F421638F
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702605; cv=none; b=cZuEY2KioLQS2j0HtVLwDaEHMm2MCKO3ivqzykpY/VHaabXzfrwZyJeVp5wV+aHXGmqveC4xkMTpeFghoDGGIS0bkBYnJm0+tjwi6TzSbp2t4b/o02N0eZNa8vmD4eDJx0TG8l+fc/b2xLgP2zvggCsOHLJM1cPEV6tkghdLeRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702605; c=relaxed/simple;
	bh=gc/x/vd/iTT6DgRuhTHKKXPn1qQVX3+uctKpzIwRy8k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HmivUk+8T6SRhE6U4HsA5l3TqHi61aHgbvB3iQXu/Eci3JTNdfn6u+0zYE+mCa7f/UL9N7UGjsF/hqPk4PZWeRr84WwWgvN2V3dowL1IVHDFaXg2CvLX31TLXN/dxxmWYZ94dZQxduPikm6yVDh1pqNYoftZWOx5UVT2a7hnfGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qvwji8Gq; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso14898525e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734702601; x=1735307401; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Drrp/bM071Dp74jG1eEsU28h5Inku9vU1l6IcVuKHXY=;
        b=Qvwji8GqF3WohjUIVxGklkmlYPawplJY/2wP9EsiOkTpwaijr+//ZVU8ltlF7B3wU9
         fUaUEGQfY788vSWOm3yoXV4QNtwm9uMbvUifQ/k95+8DHlXbBrXgmGyN5ICfqorGszKp
         SK/bQdXqpj8bD46WRLPDmnGoRaBhuN70RPGengu9xLcgdlDYPBbV9ze9EnobNT1WWtBn
         R0hWJiZZe98PCuldv1qS0mdES8zR136wQZ3k3S0cd2pxCC/oDr1uZmhCPsd/hj5BVIW8
         69eDMHTcjEydsoytHP+3YBBAOPPRkDv8/l39ZV/dGWHPPdad1WXZwNlVBZt8uIRFPGy0
         nEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702601; x=1735307401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Drrp/bM071Dp74jG1eEsU28h5Inku9vU1l6IcVuKHXY=;
        b=US57et1PkQAA91M633gEEttNUhax7ynka4VPZ+TOBqvnOSZIKDj6dOUWgXfdaO1L3Q
         0bxUgADgxBpvLzOIiHkTy23+b8Q3UwBKHGWxxWWdDNcAVSbTMteHQo/OqMUmmsX6hS62
         Jfka2n0AYL1K6A07YflGC42p2S+oZX/PrmrX6XP/es8M8S/jVthSUfQxJjg/rm4cV6oy
         /4ZJmTWDdMkEPnWZzO9tnKz7NtZZ4hPXWBaWKUWAZhCGvkPczfD3fbiFhQKHxrYBPUlZ
         s+lwgKuPLcXPyY1F7bFtQZ3XwuOnkg+Av/sN71MbBucGFl1c7l1Vl5kC/wTH5G9Jriuj
         Anpg==
X-Forwarded-Encrypted: i=1; AJvYcCUnE9SOIfucUWabJVBBIb0elCzywC9CaFqHMP70Gjv3OCgmeyUC2T5sdQtsh9XMrNjaMbTOb2jBT6W6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs3XF0H4BVH5aLs+OoB1otgcmWH6pp1paTOwjn1ZPrUYq5+bj9
	qrXF5UYVuHdQS2OjAYSR+NJ4stHM6WQpj37WEaepSEpxIEAaJt6yQsckbN//an0=
X-Gm-Gg: ASbGncttZVayRiZhEN1QiAJmvqq0rUkObwN6kGHZnvBADcc8+XI/NOVJOnm6LZVJcic
	g7TNZZzjnnH4mvepofogeEK+Z5x6kC3OXt86/6WEraq3x2xxRJTztU58oqX67q9ixkggkWftSA3
	+lKhUB8OdGpPsxvbJcYm6mE9/ngCiyjX4KV71CzDXqy7RNy8LH2LBj7/OJp7jbT89oqbfZp/86h
	2qpyJdDWIPE+oLqY0d9NlzHJ5rYvh07qHnKVraBJe2vBWGytMeVHsU2Z53w06uhUAVx8J2rYnc8
	G5xBb8N8PwhCSlMFge2rSJyKHL6/Ap2cvB6y
X-Google-Smtp-Source: AGHT+IGmLqoezR1dy/0yCfVQQLVCWAofOQ6KwjPi9F1bHXgcS8BNdXaZNl7LSVDsp8VtWoa4v/CqjA==
X-Received: by 2002:a05:600c:1c91:b0:434:e9ee:c2d with SMTP id 5b1f17b1804b1-43668b5e085mr23276095e9.26.1734702601113;
        Fri, 20 Dec 2024 05:50:01 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832e74sm4044313f8f.30.2024.12.20.05.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 05:50:00 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 13:49:57 +0000
Subject: [PATCH v6 2/5] dt-bindings: mailbox: add google,gs101-mbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-acpm-v4-upstream-mbox-v6-2-a6942806e52a@linaro.org>
References: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
In-Reply-To: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734702598; l=3101;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=gc/x/vd/iTT6DgRuhTHKKXPn1qQVX3+uctKpzIwRy8k=;
 b=1yqD4Mr6+HTppBrswLA85XgGW1DxBWk3OZasij4CNC75DdzHxr/YW9Uc8Rmqtjk0KoCQpB3uz
 qEW29wjIKGVDt2tWSzFxK7GDD7pOdikK2I0UV7O+C4Hcq7ipm9gl7Eb
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add bindings for the Samsung Exynos Mailbox Controller.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/mailbox/google,gs101-mbox.yaml        | 70 ++++++++++++++++++++++
 include/dt-bindings/mailbox/google,gs101.h         | 14 +++++
 2 files changed, 84 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
new file mode 100644
index 000000000000..a1fbc3b2b9de
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/google,gs101-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos Mailbox Controller
+
+maintainers:
+  - Tudor Ambarus <tudor.ambarus@linaro.org>
+
+description: |
+  The Samsung Exynos mailbox controller, used on Google GS101 SoC, has 16 flag
+  bits for hardware interrupt generation and a shared register for passing
+  mailbox messages. When the controller is used by the ACPM protocol the shared
+  register is ignored and the mailbox controller acts as a doorbell.
+  The controller just raises the interrupt to the firmware after the
+  ACPM protocol has written the message to SRAM.
+
+properties:
+  compatible:
+    const: google,gs101-mbox
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk
+
+  interrupts:
+    description: IRQ line for the RX mailbox.
+    maxItems: 1
+
+  '#mbox-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - '#mbox-cells'
+
+additionalProperties: false
+
+examples:
+  # Doorbell mode.
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/google,gs101.h>
+
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        ap2apm_mailbox: mailbox@17610000 {
+            compatible = "google,gs101-mbox";
+            reg = <0x17610000 0x1000>;
+            clocks = <&cmu_apm CLK_GOUT_APM_MAILBOX_APM_AP_PCLK>;
+            clock-names = "pclk";
+            interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH 0>;
+            #mbox-cells = <0>;
+        };
+    };
diff --git a/include/dt-bindings/mailbox/google,gs101.h b/include/dt-bindings/mailbox/google,gs101.h
new file mode 100644
index 000000000000..7ff4fe669f9e
--- /dev/null
+++ b/include/dt-bindings/mailbox/google,gs101.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright 2024 Linaro Ltd.
+ *
+ * This header provides constants for the defined mailbox channel types.
+ */
+
+#ifndef _DT_BINDINGS_MAILBOX_GOOGLE_GS101_H
+#define _DT_BINDINGS_MAILBOX_GOOGLE_GS101_H
+
+#define DOORBELL	0
+#define DATA		1
+
+#endif /* _DT_BINDINGS_MAILBOX_GOOGLE_GS101_H */

-- 
2.47.1.613.gc27f4b7a9f-goog


