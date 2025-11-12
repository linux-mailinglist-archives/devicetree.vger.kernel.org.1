Return-Path: <devicetree+bounces-237594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CD6C5234B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1588F4FE2B4
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C6C315D2D;
	Wed, 12 Nov 2025 11:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="WnhyXE4c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246342FD667
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762948757; cv=none; b=KKzLN5nZDrhh65zte8JcjPEQTFDRXIWr5oRblxPcIrYPIHG514NYaR8RtgCQol80Y31LoOeU6GijzGtUsEfGAq20RFHUJGZlcit98SgvLjMCAvXYuY4M0z5pXwsHREekzDlGA62CKttxZUjvGOYtfbveKCXuUvQCx9EZGwvpkeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762948757; c=relaxed/simple;
	bh=Y5lLKstGDY1Pc29kL/97w+SyWuyTuOT5IGfFDoH20aU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=b118CInC6EXTT8RLOdscjFyuaQYSNhUPENohG7CMPKsU6SCmQU1wYC5SJy4rOAkbYvsCUOfi1XvR2c41CGPnxL1B83zkrIpbL+TvOzTqU2bqPRXe5LHRNIZ/oxT9S8M0Oxdwf4aUeyIWM1H4NvfXSRkItIup4BhxGmqEgqOYIIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=WnhyXE4c; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-343dfb673a8so626889a91.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1762948753; x=1763553553; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SiyOAeJRKTUJTKhEW85SIMSH5lByvfK0g14ZquI4Zkk=;
        b=WnhyXE4cS+KrUFN6oKLxvqL1vu3lzZ17Q19eM/w/paLHfe22ndVA2iY16IXKW44LdR
         d5kDrmTHqp/5Qfbn3w2YnNO2VyrV/vUOGRlmCe7Afmjl7NViyekmX6MWq7/sb8pkabvP
         t5L3RPqA2Ga8W8NXWveFfYw5+1yAiDc6EAWJNnrVAtEjY8CmMUlgp4eJcqGGGaKf0Bwo
         PZu9qMOaUGKTzpLySMhzGReZvwMMi144hbNMHJHzT/SspMXM1dTBug+FNYGHZ4PQ0B6s
         8g6Wabi5ytfzM+ynCAcRvFo549Jo4u0eRVpaSK+6ahfghQatcn21MEJa0rRnQEAg3DFK
         mqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762948753; x=1763553553;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SiyOAeJRKTUJTKhEW85SIMSH5lByvfK0g14ZquI4Zkk=;
        b=ww5ERGVwHTktWski7CIo/65GqKDVgNnQtHgnF18Oa8NwoP82QjkcJA6gTXQaQY0wr1
         4d83nRdLm4jV7ntvl06nuPngY8l9gZ93x/CRjDsZ3o2/TZHUOPKUBTjB+TKmlemtyeWq
         1vOwSxW2Qe93YijqIQfcmkecl3ccCs9nTWWMbR8M9EZlZ8k6U/iB1ZfTVDCgH9pi1QXk
         QKlJ23uuqN9ye13v4PJgIddeV3yMIB6wfNFtB53OrPSledhb6hk6JbNFt7IxsqbaRRqW
         7mlFZFx+65XzORZuuOD4x8svg1ZS/M/UI7Qm4+7QFF7+EErrhM8VZvENLsbx+2rYLNvl
         d5ow==
X-Forwarded-Encrypted: i=1; AJvYcCVhw7atlVAjLcfuFYiG0/34J5rYlEA+4ea0hDxqdaaZc8rb+Ny3+G2n51/GZCzaC6+xsZJSBuMezD6p@vger.kernel.org
X-Gm-Message-State: AOJu0YzllvE9TH4743bKCqVid/IwaEb5/IJuQvNXFGsfStthHECE4y/a
	XWt0n8M6Ia9V/ERtSRz3EM3EmflF8YfzThO8hTNBTQgNj29IAQz6ocWs35KgMubkjg==
X-Gm-Gg: ASbGncs9NpMoLThw4PHOBeyu+FqchdH5du91i1L8IRFmSvF8/5KXVr1eS3ZdZX+LjsS
	NzHW94j51LMaV7fYOonrpn13+qqpXqe7TJ3v5DwXG6loI27wNmSj35Bfrqho4b0zDMulQnuc6kM
	JCjqv6Fc/usnZeMVUllLDg4tz6hLyhQTujYpNphphbCF4fUQGIg1hrzcgYlxZWb/KI+i2N+SX2N
	edWK4fF2HqAPfxFPNu+oRFilrGz0gh++rYNVp85yvoniGIbXdtAhlt2ssbrRVICyMudYsNSHUyI
	VlrgPzyV6hGbfLd6aP9Jn2pnNaRAnh/PZ0z+EAmgAFnmU0NESrUP70Jixbkhhx19IxcSnHFG95B
	glgNzFNIdVDjKMMsEuP3/R1tfWckaRBhPbZb3D1gh3uxm8P0+V2UqMJIVhiueSk+L1LlBNuTgrB
	o1jAJw/o7MdjdNFdiFX2J5qu5KRXo2HFp7K6+VI8uQrx4r16Oe/7m0c26NV9KG7MNQikj2g/R4y
	6ZbOeEtA2M7Ht4nj2fN9DW17jQ4J6ROdki2qSsg0ARCsLwdCsiHrHxad6Y=
X-Google-Smtp-Source: AGHT+IEPODYI5DGv5mdJrYei+FpqFhn1kolGZ3QnlSCdtH16SEj6/23l5FhErEzEnnmFa3KvBD4vgA==
X-Received: by 2002:a17:90b:1808:b0:341:88ba:bdda with SMTP id 98e67ed59e1d1-343ddeccff4mr3337075a91.31.1762948753355;
        Wed, 12 Nov 2025 03:59:13 -0800 (PST)
Received: from sw-TUF-Gaming-FX505GU-FX505GU.. (2001-b400-e2ac-65d6-840d-05d3-e7aa-72e2.emome-ip6.hinet.net. [2001:b400:e2ac:65d6:840d:5d3:e7aa:72e2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b2c83906e5sm14278922b3a.71.2025.11.12.03.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 03:59:13 -0800 (PST)
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
Subject: [PATCH v3 1/2] dt-bindings: input: i2c-hid: Introduce FocalTech FT8112
Date: Wed, 12 Nov 2025 19:59:04 +0800
Message-Id: <20251112195751.v3.1.I894dde5015f4acad94cb5bada61e5811c5142395@changeid>
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
- Modified the subject description.
- Modified maintainers to myself of this binding file.
- Fixed the extra '>' on section of "interrupts = <15 IRQ_TYPE_LEVEL_LOW>;" and confirm command 'make dt_binding_check' correctly.
- Restored MAINTAINERS file.

---

(no changes since v1)

 .../bindings/input/focaltech,ft8112.yaml      | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/focaltech,ft8112.yaml

diff --git a/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
new file mode 100644
index 000000000000..197f30b14d45
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
+  - Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
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
-- 
2.34.1


