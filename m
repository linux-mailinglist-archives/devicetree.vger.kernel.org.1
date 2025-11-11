Return-Path: <devicetree+bounces-237009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAAFC4BB18
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:39:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FDD818934A3
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F49D2D879F;
	Tue, 11 Nov 2025 06:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="KUE6pxN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628782DBF76
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 06:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762843153; cv=none; b=MCob5ZQIS1H8aEEpmPdlgWa/c5GeNqjkWEqrIbJbj+5sHiMcoWT3iHnRA/M85HPpzyhATJwDh/SRo7wV+gvtMgc6f/69QkzZm1/E+K6zQ4bQ3oEqA3sSydyEVhqSn3NkVbE4ZGwO1uM44KGQQU6zKV61RDy5xO7zGQjS9trXzCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762843153; c=relaxed/simple;
	bh=76ABllftNutziPZMfTsAUOfZ4NSqPsrwSGo7hCu81bQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LMlsuuVu7ETebTi3OQ04fF0siPJgYabLYrJqg5j2GC/cvIgxi2zAmKTyQYqP5hia/uzuE1XXTcjzRLOkTR28Ma/HZ+ehjNbM+PnG4fyLp7WCLZgDQmhNxPta/VK71XE9j+qx/a5v62xEHghbxKoVLT5sQtPbREw15G3pxQ6AbQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=KUE6pxN/; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-3438d4ae152so2360512a91.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 22:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1762843148; x=1763447948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0TxzvcO8Ijul3ALJ59ZtrQlKnZ0E0zof1tiecvpAdh0=;
        b=KUE6pxN/2usja5SEEKiQl6lYp4Fpb96ubwL9vmzDOsrK+mMCLhpvEdaB4q4NLcYIVn
         lPZ+2K56pZ5uF/Djrg2BNaeolH4g9ZIjUZHJN2/SGoAv35yt8hnaVjMkCIR+zWk2mqtx
         ZATxB/jeijnrQtCimMBkqPKhi5AFad6Q7kSdl+54BgmI/QtOAe/1d0TcL18bE2W96bRv
         gm4wDUdmHLNiDYXKNkyUJBHUwder/JQuwQMq15FKi0UZDHfS8IjUFHTBgs7daEV6j/wM
         X1WLjgIOKpt5qYnZjJ4GIVFxBBKbXPGayz0HYfV9N/php1w0YB47lkhhsnkJjFv2veSM
         lTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762843148; x=1763447948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0TxzvcO8Ijul3ALJ59ZtrQlKnZ0E0zof1tiecvpAdh0=;
        b=uVu6Q4054Kx0FjwcMsQfErRiFQYbUKJCPXzg5UpIXokk1s6+/pIgioZKlKUKx7VDUG
         vawRJvzf0KWhfmD+665syeA7siKrh6BvKxSpMYjpSldN+1Jpj895/jjPRVpGCVnd/QQ0
         +f5Gb8ahp7L9Gs3y0RpCI6XUITaIovjFE+rkpY1oJ6SP3EE+Hl1wbEIM0wQbRKo2nCVr
         ZCmYS3Jf050GjBBRICNvK3gXWmcBbrAC8IYoLK99Ys06fVT4N25GmVZuTvBbbXDxrPpe
         NhGWb/iNzs1Hl0Q1Y+Eo0nNevjl/bKBGsHYkXdEXXmTCaLtcI0gTMRj0TS6Jtd15LzWF
         d8eg==
X-Forwarded-Encrypted: i=1; AJvYcCXmBOw/5SS8nxyBoEypk0GcOi8xp2CG2P6PDVG2pflfxhTcu7myRkofTg3d+JAySacRDFCRIDH9v5Rh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8Dp8c612+jG1fVb7nboHXDWLCaq3QkqG4MCFwpU+l/KrikuOd
	MVJQGPUPFz89kLsZVzKGeRiQOrzQmNcSbD8cTphr1/S2hrheFcUTf93TWfkhHWqziA==
X-Gm-Gg: ASbGncvq+NZFyKF19d7CA7CAaE92mKXWldOOQzLt9R6q2nuIdGdgQajilJpV+eFllf2
	/lCphl5krYDcvHf72rJ6WqNVjqMV4iNIXMQdFmnnf9ptfznTecqMA1G5hMRIdvJgcV8TGW/9FqK
	VelANg5oAxE+jXk+cOiW+HW/kGiyYvxjakCEAcQTX9A1UT39aAA52qlAeKceO5/X4E4lGdKBx2Q
	Qz5MvonmMRZjsSPrvaB06/3/ayJpWgiuRnkP8UaDzHTTeDMlDz5NVT0q+yhHpRTDe5s04It9H0M
	yWiVolZtij1jf460tlWi/c6WqUokOwZCZR/15FmfMo3IS1KH85RD0AtfbvIUfDGpMHh28KEho0F
	9hPMQOB7H3uWA+jRoHy1wZ8Qb8J0bHYJCaXjtAcfMmO3kf7P3bKGWxlrhtT4jW3WHzpBZ9EQlZx
	FuhwYa3xQ3Vy8IW9Rb3BZUIyFYs9mNeZnUI3hDCFlUaYa7l3rlSrdNHL73SeA+9w7Z+NcNkqKy/
	6wig2OMmnDJx3Ky8kdGQ2/TpjZrDJJ6KYak+GNrAJLhEDdtWA4LFdXkhY8piuNHXzdQpkI=
X-Google-Smtp-Source: AGHT+IG5KqPahXbbmibL5vikOZZx0fOqdq9+WZQW+1be30DeSfCc7ofE7W/ExoFor7vmsaV/es1lpA==
X-Received: by 2002:a17:90b:4a4d:b0:340:dd2c:a3d9 with SMTP id 98e67ed59e1d1-3436cb29cafmr17037940a91.12.1762843148630;
        Mon, 10 Nov 2025 22:39:08 -0800 (PST)
Received: from sw-TUF-Gaming-FX505GU-FX505GU.. (2001-b400-e2ac-65d6-f177-1588-49fc-6b55.emome-ip6.hinet.net. [2001:b400:e2ac:65d6:f177:1588:49fc:6b55])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba8f9ed1e73sm15237243a12.12.2025.11.10.22.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 22:39:08 -0800 (PST)
From: daniel_peng@pegatron.corp-partner.google.com
X-Google-Original-From: Daniel_Peng@pegatron.corp-partner.google.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-input@vger.kernel.org
Cc: LKML <linux-kernel@vger.kernel.org>,
	Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: input: i2c-hid: Introduce FocalTech FT8112
Date: Tue, 11 Nov 2025 14:38:59 +0800
Message-Id: <20251111143853.1.I76ee34ac45e1469dbeb11de0d1e47d794af7dc88@changeid>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>

The FocalTech FT8112 touch screen chip same as Ilitek ili2901 controller
has a reset gpio. The difference is that they have different
post_gpio_reset_on_delay_ms.
FocalTech FT8112 also uses 3.3V power supply.

Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
---

 .../bindings/input/focaltech,ft8112.yaml      | 66 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/focaltech,ft8112.yaml

diff --git a/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
new file mode 100644
index 000000000000..114288787c98
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/focaltech,ft8112.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: FocalTech FT8112 touchscreen controller
+
+maintainers:
+  - Dmitry Torokhov <dmitry.torokhov@gmail.com>
+
+description:
+  Supports the FocalTech FT8112 touchscreen controller.
+  This touchscreen controller uses the i2c-hid protocol with a reset GPIO.
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - focaltech,ft8112
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  panel: true
+
+  reset-gpios:
+    maxItems: 1
+
+  vcc33-supply: true
+
+  vccio-supply: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - vcc33-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen@38 {
+        compatible = "focaltech,ft8112";
+        reg = <0x38>;
+
+        interrupt-parent = <&pio>;
+        interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+        reset-gpios = <&pio 126 GPIO_ACTIVE_LOW>;
+        vcc33-supply = <&pp3300_tchscr_x>;
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index ddecf1ef3bed..69f54515fe98 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12326,6 +12326,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git
 F:	Documentation/devicetree/bindings/input/
 F:	Documentation/devicetree/bindings/serio/
 F:	Documentation/input/
+F:	drivers/hid/
 F:	drivers/input/
 F:	include/dt-bindings/input/
 F:	include/linux/gameport.h
-- 
2.34.1


