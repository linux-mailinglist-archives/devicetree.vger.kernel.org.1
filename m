Return-Path: <devicetree+bounces-244007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1A2C9EF89
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 13:23:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3B84B348959
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 12:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 837D52DF6E6;
	Wed,  3 Dec 2025 12:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="ToU+Q5gM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D465C2D661C
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 12:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764764609; cv=none; b=SRiawY/gQHGrwoVq2spxAf1zZt3K152aIQPQmFap8EiQ7EPMnTDblKf0uSdyyoKr77jM3S6UesUehmkc8g0k6QZjC7G0UW7wQSVeHJOYFEEQzYiD9fsPCvOJBoEaNVQSciH+QmN4JdnzB2y6+mf29sZVnaiWwLhHO85gVvqhlCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764764609; c=relaxed/simple;
	bh=hGmcm9QAZ9qqYKdmz2DQfIFan3a5wOxRVnlr9Q0TxhU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S/JqkcHPAACS0Nu3jWWguiDsv4SF3vXCK0MbY011Mmrxn/dFo6foEUru+mDG8edlp22/diUxwu/TsruxsneXSMbUHmRYr2rzAFGhBdcakHtiD97bMkImbI65ROiaRzsxvpJjv8jSIjCwVEn5pKjtQx2qBmsGkzZxBy8JnOLhPbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=ToU+Q5gM; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8b2ea5a44a9so592178085a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 04:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1764764607; x=1765369407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bQw2QNK0m7aXsFhROk4LDansnAN+1Su3gSOuHq49ol0=;
        b=ToU+Q5gM60eA6jBWYcbEwtlwBaYr0VyzYtcshynS3eyd2i39Z6PTh9cnnJZrPpJbd8
         nQNLO+/7Gv+U2Yni9xS8JDWIBIlRsLBOaGyeXETM0omBweC6qTRfjB916csq7Ab5nVpQ
         FDCx7/194GMJSFFf/wX6+ZtN0M22I2AclVu/f/ckzM4nCKnc2MsZdoFFTPqvsiKd070j
         DmT2r9Iq7dWPaQYnUW4Feo9rntnmDzqeTeJm+azS+10ZmbItOmJiLtDd1dS5lrTTV6Ou
         HHT1AY0ku5QdnH2Z5MlTZ1qxofNJLEimcJ2F1E9ql/vTakk+toTAc/kS93XiodvP7vKf
         JKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764764607; x=1765369407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQw2QNK0m7aXsFhROk4LDansnAN+1Su3gSOuHq49ol0=;
        b=m5YdHR+8xOrDL6E7p6xEFjyp4YbSU7NdWIWsIupBZoLuBMsuFM76M89rF0NnrmFImE
         VPyihWoKe4UrVn317MBNiWkftFZW5LTaclRZNrV1Jmq7h55ww85YS03BjtnkXeap+5Nu
         FYRFs7lNGlMbwCTKeK6ng6/93uwrEGiHZlzeCS1l8g/oGE4X1owql7PTJ8d+3PnBONzQ
         Bvr8Uz+fbUO156+eqOZma4L1ZO3eexkTsZXHajyh96Gyk6s4qbXjGa+Ji2rAQG9nys+Z
         b5WpPQ9pMc58AaDMiBK3n/9AJGiUEIOusE+TvPjD7mQUgCid9wKMoAnBWiIFOPMvnXNC
         XLtA==
X-Forwarded-Encrypted: i=1; AJvYcCVHS8uANQJ2ax2/FNS4Wg2OEtUAjHKeJ8LEKODW6lvg1XWlFuZUafx3ouN105S0+oPfop15XGn42GsP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6nFzQCgg/mqnLiOA2nXxpr70Plx/My+8OanFf4IgHUlA9QZtq
	j7aGnc3MqzFzDiMp1NNq873v3TheAUNIrB0PFkbxsCCT4d+RSprFu02FpiHTiqlX5n9mm+fptGI
	7ZcC1Zk8=
X-Gm-Gg: ASbGncufHMLjGn1NIjcQWeILJjXmfJIXHhBIWmXIzRSMkARKTdxO1LSPcrQny73QBfx
	1/26NSjJzB6oTEKuGGb1IZaMwaNYj/GSEmCtR8vMDa0cWOlkUnmPm70J32nT/B3qhcvQC8vP574
	ez9ptfXSkIHXWPfw56tZxheCbMYqmWoOo++nJRjpnPNRtYm7kUKOrCv0zMEIVfYuP8Fhl/5SAbc
	bdV/p/nIKypPCtOWvl1+pnCEBqbm683yzDc6xoq74juMyIFODTt7cPSQIHaCsSmpiXE6i1/89yZ
	rrQnbQt1mQDvK81JOEv++AyYBC6kSlxnYZhJ8DvCJcVvQbf4JhRZhwfsFo39vjiqYz8ASGq/rY8
	8462zcQzH4ndgjmrS4EiKEMBg7OO7M+TVJW8PtVPgW0oP2gPw6ZQy18pnPws9uaXFWUdZz1zc2P
	FQr2sJMqtUn3ujhmvGVwPO/5kNGjrOhSOec1EELDszdkhA
X-Google-Smtp-Source: AGHT+IFBqItcO02HwRqZQ09Eftjhy8B/A1LUHr5yIyZjuhioLZT8jA3EARqXdnEATjeL7hbCsn7I/g==
X-Received: by 2002:a05:622a:d05:b0:4ed:423d:48ef with SMTP id d75a77b69052e-4f01f697666mr4823071cf.40.1764764606528;
        Wed, 03 Dec 2025 04:23:26 -0800 (PST)
Received: from fedora (cpezg-94-253-146-247-cbl.xnet.hr. [94.253.146.247])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4efd2f9a755sm115214351cf.3.2025.12.03.04.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 04:23:25 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	nicolas.ferre@microchip.com,
	claudiu.beznea@tuxon.dev,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	richardcochran@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/4] dt-bindings: usb: Add Microchip LAN969x support
Date: Wed,  3 Dec 2025 13:21:29 +0100
Message-ID: <20251203122313.1287950-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Microchip LAN969x has DWC3 compatible controller, though limited to 2.0(HS)
speed, so document it.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../bindings/usb/microchip,lan9691-dwc3.yaml  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/microchip,lan9691-dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/microchip,lan9691-dwc3.yaml b/Documentation/devicetree/bindings/usb/microchip,lan9691-dwc3.yaml
new file mode 100644
index 000000000000..7ffcbbd1e0f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/microchip,lan9691-dwc3.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/microchip,lan9691-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip LAN969x SuperSpeed DWC3 USB SoC controller
+
+maintainers:
+  - Robert Marko <robert.marko@sartura.hr>
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - microchip,lan9691-dwc3
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - microchip,lan9691-dwc3
+      - const: snps,dwc3
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Gated USB DRD clock
+      - description: Controller reference clock
+
+  clock-names:
+    items:
+      - const: bus_early
+      - const: ref
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+allOf:
+  - $ref: snps,dwc3.yaml#
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/microchip,lan969x.h>
+
+    usb@300000 {
+      compatible = "microchip,lan9691-dwc3", "snps,dwc3";
+      reg = <0x300000 0x80000>;
+      interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&clks GCK_GATE_USB_DRD>,
+               <&clks GCK_ID_USB_REFCLK>;
+      clock-names = "bus_early", "ref";
+    };
-- 
2.52.0


