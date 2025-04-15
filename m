Return-Path: <devicetree+bounces-167141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8196A8986C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 872D83AD9A9
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EEBA291140;
	Tue, 15 Apr 2025 09:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="N3aFnQd7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8767128F529
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710161; cv=none; b=Zgd6f9YUrASCz174arfUlonU4m2yvEu8KKhN/vjXAM8CYOwyRsLN5rP5Sl8eqmYeOFIoopNpX6PUGFihB2MKP8+nxL3UUb7Et7b9dm+EG2FXoOFXCRZqTszrS45RUaQPOXnz1r/1oenWZJ0w1tSy6mWbWbgHdRByXFCfaL5bmAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710161; c=relaxed/simple;
	bh=u/xh1SzwJolarxDS+l2/MHtZxOawnZxq4T8iPrK6eHE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Coa4MivPunLBAuQnWXDP0Aw6M2+IMxqf85uUYSQeJs7IB4MrPd4Ydfdn8dgp3HMlKTZNaxQ5NKBGGp3uzIyt9Z2pfcFtXYW5QlZzEOXJ1ono1jLKxrWoHmnalSeLGiJ4CpIy9jbmpF00map4mBOlg0uDXXjsETlyi6KAazj1iBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=N3aFnQd7; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-ae727e87c26so3581528a12.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744710159; x=1745314959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WqjBaj3EhtrpvOSdInIc8UJK8DAPvGXIW4PIR9rJ1xU=;
        b=N3aFnQd7apItLEn/o5GVf0a0Dki9x0VLj/8ukbraPcyNNp6c08gDCZ2cFscSP+oLMC
         ztKl/Tq3mZUAfcNKyKYsVW6YD3blqimcOgFdtmbOHVQ1nRQbwUE/6ycKOot1PHj+OUB5
         l4s7f7p+Z6hFrxLH/RxV9H75k2uwSBc9RRCy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710159; x=1745314959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WqjBaj3EhtrpvOSdInIc8UJK8DAPvGXIW4PIR9rJ1xU=;
        b=gPdfUyZi1MzNVk53Q/8aRJeJOq2qa5LDuQgDSVPLRDDJMUHcIapn3uZGk9qHih6Z3J
         F+zicSsyd/3/Pw03G+6bEpuNkds7vqm75H8AHvc5hqqCDb0PeEOnLOTOm1bXsYr5bpPg
         EzPsKS4GHttLnsQBRDjxVFdahT962G1LLogsQAxzogfhvr4ank+bdKteUISYbtWxh4RG
         YvJdSIA8x0BN9JydjDfHPRX/gbThKC9x72I3q9E7J6H8JL0X0mUpwWaEUwKMksY6hYky
         gsZ8zz3fART/X5Gou/p3E/6SW1j/ELeZQgjN1xpoTLpokHkx9lDPF9Ew2/Mzyy9mubYL
         OpNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf4g79VnNaTFTf7MsqmTCbSlY1p2RZ+lCde/Zmo597iITkRgR144bxtPUJ5g5oY2jR16JM5q/QBOxN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf0DoBQi2VcdDJfYOzAt+qxJxmhoeupKHPTNbxUQJDGf3ibBja
	NXTdkq/uR0zMX1Fg78cUWY8kcj16PHCZ1MM34XkSC5D6a1XWcbigXFvSh0Apzw==
X-Gm-Gg: ASbGncuAMIKnThmPxN336bKOXanZOtPyUzdhxHckIcHk+IOLpf9GRD+voe4edOgAzsB
	BnjLWpUZbOHbsBZWUUlpZIOCaGfMwyXv923tnlcQl+CP7c6+KfPSKu6cG9QRCv0JGEW6P1B2TrT
	Q70NaRaY6QaBmqCD4j1jvTQ/6orhrjr082CEeAz+mXBuAmgFH7JzVOcVJf5yVY6FYQEf20WdBby
	mZ3RCp2kC7w4H00go4k7kSCpFz4rAM1lKHCo8zaP2qHPaTSO2ti5vy4gmwXYf/7slsNdigK4dT3
	hjlZkdu7yDMSB/IqtCsn9Wm1tTdWH0MSPZeiobnYoCtrl1Jh8zF/OpfpIEyCe5nC
X-Google-Smtp-Source: AGHT+IHTPefmEfMnTS/yOpKZkHtZEcW7+f3HO/Nzl4fBj1qjIetkYxcjVASlATaL9A0c6R8fuH9P0w==
X-Received: by 2002:a17:90b:274e:b0:2f9:c139:b61f with SMTP id 98e67ed59e1d1-30823670d71mr26179495a91.14.1744710158710;
        Tue, 15 Apr 2025 02:42:38 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:7d0d:86ea:ee84:cd08])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccca5asm113135215ad.254.2025.04.15.02.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 02:42:38 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: usb: Introduce usb-hub.yaml
Date: Tue, 15 Apr 2025 17:41:58 +0800
Message-ID: <20250415094227.3629916-2-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.777.g153de2bbd5-goog
In-Reply-To: <20250415094227.3629916-1-treapking@chromium.org>
References: <20250415094227.3629916-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce a general USB hub binding that describes downstream ports
and hard wired USB devices for on-board USB hubs.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v2:
- New in v2

 .../devicetree/bindings/usb/usb-hub.yaml      | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/usb-hub.yaml

diff --git a/Documentation/devicetree/bindings/usb/usb-hub.yaml b/Documentation/devicetree/bindings/usb/usb-hub.yaml
new file mode 100644
index 00000000000000..34cd248fa43c2d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/usb-hub.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/usb-hub.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic USB Hub
+
+maintainers:
+  - Pin-yen Lin <treapking@chromium.org>
+
+allOf:
+  - $ref: usb-device.yaml#
+
+properties:
+  compatible: true
+
+  reg: true
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  peer-hub:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the peer hub on the controller.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description:
+      The downstream facing USB ports
+
+    patternProperties:
+      "^port@[1-9]$":
+        $ref: /schemas/graph.yaml#/properties/port
+
+patternProperties:
+  '^.*@[1-9]$':
+    description: The hard wired USB devices
+    type: object
+    $ref: /schemas/usb/usb-device.yaml
+    additionalProperties: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    usb {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* 2.0 hub on port 1 */
+        hub_2_0: hub@1 {
+            compatible = "usb123,4567";
+            reg = <1>;
+            peer-hub = <&hub_3_0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            /* USB 2.0 device on port 5 */
+            device@5 {
+                reg = <5>;
+                compatible = "usb765,4321";
+            };
+        };
+
+        /* 3.0 hub on port 2 */
+        hub_3_0: hub@2 {
+            compatible = "usb123,abcd";
+            reg = <2>;
+            peer-hub = <&hub_2_0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                /* Type-A connector on port 3 */
+                port@3 {
+                    reg = <3>;
+                    endpoint {
+                        remote-endpoint = <&usb_a0_ss>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.49.0.777.g153de2bbd5-goog


