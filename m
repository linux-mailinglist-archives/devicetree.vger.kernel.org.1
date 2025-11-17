Return-Path: <devicetree+bounces-239274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B29BCC6357D
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CB417365253
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9345032ABFE;
	Mon, 17 Nov 2025 09:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="wWBhIMQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2092FF664
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763372452; cv=none; b=s8ha1ulUsBuVMp+2urnHZdAWx/nE8wYRqvvJwTJXHl0hxj1ztC4CMsndrMOJ2wGtfu0NPRF+rEd9+d0cbf0lSNtEOuge284cowKBokqKNjOlsZCaHDv0ZiDo4ex+gb02cGPK7iC1Ujl5pB9jgSxr8OZ4WMJt/ruQPxjbJj/AaX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763372452; c=relaxed/simple;
	bh=0uRA3fp2t/Y8f/4SnhskMOoR8H6ms6VaEKgrS143ZBM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HmUkD+c6TxuHa51z048jqhH1etC0SXLvz34Cwp3ExMnCSEDfn+YKFT87Qkya0Q/EU0o2KYE9t/euUMaytNexCWPuDweqvcZ49w+1kAXlhi3XBPpjklxvbujA/Rovl3pFcmv8bSelZYSnwi4mCP2HXo1dX9Tplvnn2/UM66QLrSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=wWBhIMQT; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7ba49f92362so2824079b3a.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1763372449; x=1763977249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tvj18FuIz0t2FkyZpu6/3sZk/6oMLpGNjr6BxbnNu90=;
        b=wWBhIMQTp55f41WSlSYx0broloqO+0wNe4CZr8xwE2PlFAhYPkK1ti3/Ek+iDiX+8n
         2qdPIptSw575zntlrzHNlBqTj8DzRjlyiuQevgWmqLnCGKTNXtaq8Jsm0enXpKEqfY5q
         QG+TZ0mTal1Uv01QQpDnXBEBd76golABJMPzrE+WVc/uf1lQLbFf7QJyzNnUskH25Vzn
         ZxK9ESgxHlDFDI1lzuyWqRO8YmcaGjxEYmei0BdFyBN7jIC6NAwG0otqVONtz/Tgx0tY
         y8UnYM+3Thidp/0eOggVKheikyklUHfKTVxvtHuGTzz4AmQPcfxHn0bUjNRnRWrJh+Lm
         uPJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763372449; x=1763977249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvj18FuIz0t2FkyZpu6/3sZk/6oMLpGNjr6BxbnNu90=;
        b=kVgojl4dOk+ztOV+t+fJojxys+Dh5NFTUuEejfPIqvrc7cxq4IadlOK23ac2F8MQRQ
         bAUEsTBe7+q31exFtFlSmirQJ9p17KhrocG/hk+iu7FJ0AXmluL3VHQIxsH1cxbXV83l
         kU0L+L5QPu+sMld7W4LyZzpzMD8XC8uYcT6gPFP86pmcZw8KNo9qZHucAFkfMrs3dv3G
         ID75VcpWcNUU15+II8YTLk7+5dOlv9Gj0r/il7Df0OxR9RReZSdWieHucVSuhTDRQSPM
         tSb+DvouCIuMklUlplgMY/u555du3f26WRe8gqcnYcZEfp0h982ekZORAcZRKBI/ssf/
         yS/w==
X-Forwarded-Encrypted: i=1; AJvYcCUP1GMpeFqGgqY+PFCmFkQocKsm6pNTKJTDhpFBqgKJffmyqbF9Q7iQE0iwr0JEb6htJqDqRHywpIlU@vger.kernel.org
X-Gm-Message-State: AOJu0YznZPUwWGl9+jsXLC372itpMoBfkvLt6Su/NMzwswDfRqLuJyjw
	JgLStvrIgDDuqNYRvMsrk3WQRdtfVFACIhibwUhUBVYP+brbnMmDJOFpIWqUjS/8vg==
X-Gm-Gg: ASbGncvenw1wrxy2wRijaA/rfKWcPQa3YDPcK02vnGeMT3JQcYn/wUqfB8WW4BYPBeY
	lw2ZOg6zOXCRqo43AgoTgzkHK20qxOQ2kYqtI/bOp11S6shBp0slThkvsDiuRjlyifmrU4iJ8eH
	cvAvKn90lSL+p4e7sprKPliHfeVTVXrwYxnOBNVoJP3Cvjzmp6mJBkODZHdld+my/7cnQWzeeo9
	aitK8X2rk3q8lw3Z6n0aAhAKxuRNrwS+nwBQsV5WjkdlvdUGT4mo5hNHsjFwXww+n4PVEm47rCh
	XqckoJ9pU/q3o7zmBsjd/IcWqHeOWsnfUG7cQ/X5kbcwmPNfu0GsPmvWW0MJgggcCYCh6pz45RZ
	5QbZ5TyXWD0Ekr8qzvEzMusNDrNW6iXas4vDRuLOmY+3MAUO0okdPugm2whh3Wxzdw0BFwh7K5p
	KWyyLdZ0NRh/aFuE7E2QDQjhNTQ0wj5dZS0SbcKtQGH9jjCOvKYIdn63CVocwDGThmo/Y7r+9Wn
	IqmH4ViI3tv6eOKsVp0nbXDGVieRual49btVvPndHDGjK4emMWDoDlEhi0P8fEzceXfogPqRzRd
	VDtbsuKIByDC2tKn
X-Google-Smtp-Source: AGHT+IH37Ti2rPCcU4pAOmYWgMQd1s8YDoVHPGcyxMts6z75uOU6H3LDQVOqcNsZLR1JdSnNfXIVMQ==
X-Received: by 2002:a05:6a00:2ea6:b0:7ad:1907:5756 with SMTP id d2e1a72fcca58-7ba34972361mr13110293b3a.12.1763372449220;
        Mon, 17 Nov 2025 01:40:49 -0800 (PST)
Received: from sw-TUF-Gaming-FX505GU-FX505GU.. (2001-b400-e2ac-65d6-eb05-e285-77fd-2924.emome-ip6.hinet.net. [2001:b400:e2ac:65d6:eb05:e285:77fd:2924])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b92782d390sm12606095b3a.60.2025.11.17.01.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:40:48 -0800 (PST)
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
Subject: [PATCH v6 1/2] dt-bindings: input: i2c-hid: Introduce FocalTech FT8112
Date: Mon, 17 Nov 2025 17:40:40 +0800
Message-Id: <20251117094041.300083-1-Daniel_Peng@pegatron.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>

Create new binding file for the FocalTech FT8112 due to
new touchscreen chip. Confirm its compatible, reg for the
device via vendor, and set the interrupt and reset gpio
to map for Skywalker platform.
FocalTech FT8112 also uses vcc33/vccio power supply.

Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
---

Changes in v6:
- Remove the commit description for the incorrect section.

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


