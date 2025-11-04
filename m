Return-Path: <devicetree+bounces-234534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5271BC2E9EE
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 01:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9CC2189A3E3
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 00:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3359207A09;
	Tue,  4 Nov 2025 00:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="obyEU/IY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11071E5B7A
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 00:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762216408; cv=none; b=VtCB0QE+QuyzVlFc85W09pDicD0R53/OjpENmqEA9kqYCXeMGLmVjPZCqJYgM/DfhWBgJ9McEHY+h4ebgTVADYuu8OcSDLOXfty8i3wPAgUUNNzeI0WTpFM9NHTUOL2fSi2XSNgYL4AZ5sWCbs3nkMQ8FDwKJ/LPCc50k6ZLw4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762216408; c=relaxed/simple;
	bh=jmST4cbclzkiAEDiwG2BErRGZct5eZ5VJ+6Q/QlBDqs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VkT2ALT/tOdbKeAW4S+DKwAiP+YgxDBIWtzCaJEr35TwXBqxtMWLRnKsendRSA1W63Lp/mbpJrbLnkZSTP4K8s8E90PafeHPAAjzZDFjQLHfx2BMYbfG20vkMOMlKErUkrW1ff5e8jLbdydFnpqS3iyABVvrTvyFYLsAg+BxUC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=obyEU/IY; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-78af3fe5b17so4708847b3a.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 16:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1762216405; x=1762821205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kowxeIsoBsM6IJaG5YMYXb1ynonjUIpE7aGx2hbnyfI=;
        b=obyEU/IY+FKe4TUfKRMQLRnLkRFx+e4EgyNgU1O+n62ZVTyR76BhrWuWMQu8ngU5ro
         JiyO35kcJW5nq3DdvIu381gfjbCbigzaDcjkeGQu6Cf6W7Mw/t1BULGVZgoA0nCNT8p+
         oWnO837uTI7UqfIGHEC5FgmEUTw2UmQVFloZ64o26VvlDBY4ob8mWcEplbl1OfvKeCtI
         EC3MLZ+CNvZtnWF6uA7E5yt91WS7nEKUCS6nuOvmvdnrUQvha+9Qv0A6jcmL5wWOSzKO
         IgJAq10u1KJG1mVWGe2djXy6tiUPQ9SvMnAXA2mPt+O8/HToEtZ41v7S0qZ+uaACulcI
         7g7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762216405; x=1762821205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kowxeIsoBsM6IJaG5YMYXb1ynonjUIpE7aGx2hbnyfI=;
        b=CB10V6hlU/gPBnB984YbB7DcIGqSnppizxP699JHFsMI7o//QwR0S2f19hYUWAbC/6
         C2aMcOtP6sYrmSRM3KEbEh7pBBWNon8uMkU2yT/8IbSw++3AmMVrfg/lOeBvNZxdrGWE
         dqhrFJ9yHEZBe4iIw5tq1zd0gmosZ/g3QXIWBR2jUI2LxvPFhcuPtSq+0gPIpJ8RHGCb
         EgR4BT0ge5ND+JgwK/kW9Z4cX1bDNyOcJhfdBGfbUfbLUvlU4A3LSnHLi+KybA9XFzWU
         3w9pPRkqJNmSANyYP1/enamRiTgrO2ksJSCsuAPHtIGnwaWjanu0PC2EfyotqjMZ3yyx
         KQ1g==
X-Forwarded-Encrypted: i=1; AJvYcCWOeVW/fsLpW+mKq++sWMpnxAAJ6oh3RuxHnh1+MnBLN8CHXwUmYrFZFyLNNEPsWHlXHf1BuXzcner8@vger.kernel.org
X-Gm-Message-State: AOJu0YxRNfTAALBTSaXoXalIuHiCWpwL4/TtmF+e5eLUBbcUXoNj9Zd2
	ACofV6yap0VFr2Xc2dtRia8OQ4H0bZy42WVPf4lpgqlhId8PREmivFT7i8nX9TKBAJ0=
X-Gm-Gg: ASbGncv27SnS5VxJ2V07t9MbpuKFC/8P/h/zHTJbGmyVC9eM6+Wo3eSzpZVvomSAdpH
	MMBdKQpZjrwyOrhcQhzrKKkmBEtJEmukJAL+Way/Kz+GdYljL2Zr+pXeS448VgbhhIC/rITyyM9
	RHQqlRA1cISMAIvBThEtgBQi8hR7fZl+X8n0NwgzdlxkUoFAQCt1x30jic9X/gbqXFnI4gtwPry
	2FXrhskV/AkNharCA9GHNJFOGTyCkhk0VGJq0guFUXd6+HEhwP5hGO1fPW7IVExzd3ZIBCqEwvU
	4BG/id8mA7kUG/NtFlYXpUpHq3Ww0JAc8J3613oCLeVv5sEr0qgYdnP2QG7JitlGcLauYb5q+Aw
	Vb9AvsERRfntuDpdEIRK0SQALsS3IIPTZ/GvZmGnam4XrkYbNS0f9rPzix+jVOG8NWCguMKoCOt
	M6FiZ6F3Pn9DnadRDT1w==
X-Google-Smtp-Source: AGHT+IHVIWBSA0y1P83cw1L08AqwpYVRKzgFYZZwfU98ZbJAsIFB6Q3vOEOtHFbXZCtKTvVXIwNvag==
X-Received: by 2002:a05:6a21:3394:b0:334:8f40:d6bf with SMTP id adf61e73a8af0-348cc2d2b76mr19149622637.42.1762216405308;
        Mon, 03 Nov 2025 16:33:25 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:6127:c8ee:79ad:a4c2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f9615c9dsm360123a12.36.2025.11.03.16.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 16:33:25 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net
Cc: david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org
Subject: [PATCH v3 1/2] dt-bindings: hwmon: ST TSC1641 power monitor
Date: Mon,  3 Nov 2025 16:33:19 -0800
Message-ID: <20251104003320.1120514-2-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104003320.1120514-1-igor@reznichenko.net>
References: <20251104003320.1120514-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for the TSC1641 I2C power monitor.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 .../devicetree/bindings/hwmon/st,tsc1641.yaml | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml b/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
new file mode 100644
index 000000000000..cb4e41f0f99e
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/st,tsc1641.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST Microelectronics TSC1641 I2C power monitor
+
+maintainers:
+  - Igor Reznichenko <igor@reznichenko.net>
+
+description: |
+  TSC1641 is a 60 V, 16-bit high-precision power monitor with I2C and
+  MIPI I3C interface
+
+  Datasheets:
+    https://www.st.com/resource/en/datasheet/tsc1641.pdf
+
+properties:
+  compatible:
+    const: st,tsc1641
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: Optional alert interrupt.
+    maxItems: 1
+
+  shunt-resistor-micro-ohms:
+    description: Shunt resistor value in micro-ohms. Since device has internal
+      16-bit RSHUNT register with 10 uOhm LSB, the maximum value is capped at
+      655.35 mOhm.
+    minimum: 100
+    default: 1000
+    maximum: 655350
+
+  st,alert-polarity-active-high:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: Default value is 0 which configures the normal polarity of the
+      ALERT pin, being active low open-drain. Setting this to 1 configures the
+      polarity of the ALERT pin to be inverted and active high open-drain.
+      Specify this property to set the alert polarity to active-high.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        power-sensor@40 {
+            compatible = "st,tsc1641";
+            reg = <0x40>;
+            interrupt-parent = <&gpio1>;
+            interrupts = <1 IRQ_TYPE_LEVEL_LOW>; /* Polarity board dependent */
+            shunt-resistor-micro-ohms = <1000>;
+            st,alert-polarity-active-high;
+        };
+    };
-- 
2.43.0


