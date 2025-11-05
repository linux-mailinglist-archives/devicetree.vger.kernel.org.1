Return-Path: <devicetree+bounces-235384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE30C37A92
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 227734F4FEE
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383D0346775;
	Wed,  5 Nov 2025 20:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="anF113TB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B8333291C
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762373659; cv=none; b=PZuxowvdwOtI3rZDR671qeiHMYHP7epvzbmHf3T5cSRwQIaB77CVj1bYuuIhBH4PEdBLIaSbfC5+vTeD2+yaISZ2k3DkkwglHau53zkvTiv9ZPlsWAL0+xi+AOBOu9GttEFKkGJqaWxgz6UhxKLSkdM5Y1izPH+v0V2lFnlM0/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762373659; c=relaxed/simple;
	bh=Ykvay+KbmIz4mfBpsW6reUfGaWR/oBY1ov+y0XO0Gi4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SUiHOnknriNNc/p7qlhh9OSVtlYd1wgyhu4L+MOgvvtqShnovkLhdMIAUahjoNBoPswPY5/9vX/pKkH2lffOv2Gg/4xut947Dts4DpPR9Tps0HAmwA7zkcy3s5hdh2/MHMz9abSXhqy8mPUwyCPu6ZyD15tNV4otSa5ipojakI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=anF113TB; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29558061c68so3014365ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1762373655; x=1762978455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M5UUjWOJCMb12I/BWzOWhp+eaG/l4rBJ5tx7KBsTma4=;
        b=anF113TBFdGCwBVy4exG+TjYZ8rzr6yppxd3TG4JUruavX8aRpZ5242FhEBoqvf9eQ
         iGRYFsr2GH9kpaZ1sCVXbQ1tZ/J8PBcpnjqN288VE7MxZY9J+ObQRdbBEjyj0E5rlZjx
         +YUtHGeTfnBNifJ3br6/rTX4suogwBQwF9YCMwRJc05La/D0un4fR42+XlbejBslkXm0
         CDxch6lWoPqKR7rpS5HyZmtwAOVAhGoBIvy66bJYdIGCW6gz3YUvIcpCCTPyvfNPh0ZC
         Hyg5Ge6AYsgTL9UWDwBvhkt0DDuXi1Aee+dqlfXqh1bPOsGjvo6eanPsCYc+F1q0i48o
         QOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762373655; x=1762978455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M5UUjWOJCMb12I/BWzOWhp+eaG/l4rBJ5tx7KBsTma4=;
        b=CgnHmrbfy2ZhymEFCZZNYD63UUN/ybQXbQ7up1rQjO2B9MqaG5sQ3osnkZRgKMy+zg
         qDfmifJnifSfLP1sCS5pntJab+3wE8RqPc3AWItTTnkWtRqF16IwL6kySvtQAD8l9q0s
         ijw2ucDKAUFDb3qEr7MabCupo7Y5KptIl9URqpioArtbGWryxtKiTU/ewBB+hMcos06z
         5sb6W9eNJ8SvViiSad7b5nBizK3EjWx0aZjfQU/FgTpskGLpi5GxLB2N9Tm0IbXfjCAn
         9ISInali829Z4LYQABbAlOYg6yZh7xI7pudZV0/6+uYNxuOVbW9MfFUjnM8T5VNKQvxK
         +Sqg==
X-Forwarded-Encrypted: i=1; AJvYcCUf3UJyu/0WnCqN8APq8uP107+pIY5lHRsNoSYkuf9VPkPxGUvAAQfE13PTeQIKm+GZEJTi6H+PeBxV@vger.kernel.org
X-Gm-Message-State: AOJu0YxjVAvi2RK5rmmgQdfHQ93VEVbCbNdKkwn0oRgnscBM4Mroggld
	ebYTAsCHvYzQmlObWsQyhh6TDPQMr6iTMFEdpKAiwmj2a+N95suvEb+rlChQx9LAejI=
X-Gm-Gg: ASbGncvoKlcu1TwIu3VsrAzqY3XutEVnkLAtIu7FZ+Khm1dEuNn9sp+HN73Ce9xrMUv
	drWTg43ZXHSfBkcEEXqaxoyyJ6K37GKcSQxtp4mJ+Avmw70gVOf7yIulDWK2NN+YwDdXBxwuH8D
	yzKxkBB4+1idHVAFMIz8AlT7UKy7la6mq6Nt8LjyNi7aSfXN6TSafJCB4dfPzViM1E0UHtFBwId
	hh6NsSkkkZacbZvapZLFT6LvXDlfMZFnuNB3xv4dLvNLhh/ZPr96HsquM+MZNQiJLds/KaQ0KYO
	Y2qkrJBmYay19xBS1GVycYTnrgDbRrH89gNkxDnXC1AnXiVRvaqTu//sh9TRQyBaBvUNtOs1vAp
	nFlsJOqhpMLEca7VLFCdmeOFBBRi+vCELVuTD2IIjrePz+W93Eh4meCieN6ftu9j9W8HTjx4DWw
	TXADDXirM=
X-Google-Smtp-Source: AGHT+IFsZQ3ivEoCdxUegpplY25ctIsfGAFJ5rAU93tEd/MzTCmdN2ztCF+pwuYG4rHstc9J65so6Q==
X-Received: by 2002:a17:902:d2c6:b0:295:1e92:6b6d with SMTP id d9443c01a7336-2962adb2866mr67889775ad.46.1762373655002;
        Wed, 05 Nov 2025 12:14:15 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:3099:85d6:dec7:dbe0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2965096b8ddsm4039435ad.5.2025.11.05.12.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:14:14 -0800 (PST)
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
Subject: [PATCH v4 1/2] dt-bindings: hwmon: ST TSC1641 power monitor
Date: Wed,  5 Nov 2025 12:14:05 -0800
Message-ID: <20251105201406.1210856-2-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105201406.1210856-1-igor@reznichenko.net>
References: <20251105201406.1210856-1-igor@reznichenko.net>
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
 .../devicetree/bindings/hwmon/st,tsc1641.yaml | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml b/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
new file mode 100644
index 000000000000..aaf244790663
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
@@ -0,0 +1,63 @@
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
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        power-sensor@40 {
+            compatible = "st,tsc1641";
+            reg = <0x40>;
+            shunt-resistor-micro-ohms = <1000>;
+            st,alert-polarity-active-high;
+        };
+    };
-- 
2.43.0


