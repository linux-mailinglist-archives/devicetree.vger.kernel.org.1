Return-Path: <devicetree+bounces-67639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DD98C9224
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 22:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B2EE1C20B1E
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 20:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B59660275;
	Sat, 18 May 2024 20:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xiKCOyZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4373053E11
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 20:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716062851; cv=none; b=tb3vVpJMBcYrCwzZii9e6g75LpvuQPlsQWIF262gJ0mpVQXPqSPha4npzYa9+Xq7VlFXP7pu5a8/MpMxAlvyoBw2Eny4lGbGivn4qz/lZ9y7paSo/f4kIkeF2QLVLdsxWWosT7jEycGUAWTjxS+8shnGZrOzNfJ7niMwAzpEVpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716062851; c=relaxed/simple;
	bh=15jEglbukv2ugS4zICaV+xZ4WeKIM9pGcVmSwBDonSE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QiUIr02+tmMlCux95Ua+GaiplZAXm8Ea+d+8BPf7VAU+FKTAD0aZjfgPAp5I6ubtspD+jkDC2Vbs9gUB3nMMacSd4cYlEhIBqdc9RcdG0VE2YUr7Bd677KOB8uGR8SPVjrl4aIXf2XD+jKUG4muG0f8Mx7l0P8EG3AHAfzW57lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xiKCOyZ4; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-56e47843cc7so5497451a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 13:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716062848; x=1716667648; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8r0qi9fgvEcatCTq39mBPtkcdMrmYE9qm2uVd5HyY2I=;
        b=xiKCOyZ4k/6CLPGbBYvA4MFwU12NDw5B7EjMpTxn8ZxFr1TbPoU7ryeTlpl0rNnHVF
         3/3XrSsvZg95BGqd1zwN4acqL8oF14mU6Ceu9P0A93I9LJJyUxWjY7cTeqv15EgUMVpV
         WaBkRIhcPV3OpW3tBHwxzph/Up9m2/xfRwBzc0r1WV4AsD1QtuWkM+niH9i9/miU6+Hg
         2bjErQpZ0YAXfOr+0ZdWP9Mx4x17GBRCnTx8uxWJq62SGH0WO/OPr4/dkMpU4PtWpdup
         2d/o9oFIDzrgK/mXnsZnBlh+0hSMsHzvpqZ4o4eudtf2Xiqns3Ls9TeZhfHMEXMhoTjg
         2daQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716062848; x=1716667648;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8r0qi9fgvEcatCTq39mBPtkcdMrmYE9qm2uVd5HyY2I=;
        b=W13mbGLEIcAkGLcoAViIEroHO0sPG0zV6CM+jsNbgGapvVmMyd+6vE0+E6cqeWjBOd
         02bQv5zGk+f0O4FCJO0MOYP/jn5IKr+DuWzxRXD9u0NZZWzcDxDWN5FwKBjxtO6AwmC7
         1snYPgWjvszTeJNMM/dJ7qWcelgiwnAen3pr3uyZNBYvW72E+G6nfVHZtChPz8G0ZTiS
         swNNworguRUa62W3lQkN+5i2cGlIr3Ygh21Zw7aLGSVyuogK/iYGk/rsVd7tljBr3aA8
         zi3pjD3zNUrJRIs5iU7uNjUyIwlxy2kgb2vxlYOv5cIfsaB1GcUY4vpgJfbeNFUXicZK
         ybrQ==
X-Gm-Message-State: AOJu0YzNmNfsvOffBiRGucRUFh+yCmiXK6x5e5xprOn929lcWFi17gCC
	MT3nhusMhlIkPleYwRB9nras5teLazZ4/1KkgKVChizNjgEVoj21RUdzu1tRt8oNOUgYDnVshDf
	r
X-Google-Smtp-Source: AGHT+IEHCODDjaPwTArsRQrvZfZuNbb65R3cbwTxJ2J4zkECbd7xfSOjCeOgjtDNlQG9Z6ddQ1GqvA==
X-Received: by 2002:a17:906:f296:b0:a59:c833:d272 with SMTP id a640c23a62f3a-a5a2d5356eamr1746724966b.13.1716062848416;
        Sat, 18 May 2024 13:07:28 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b177desm1248364566b.207.2024.05.18.13.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 13:07:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 18 May 2024 22:07:16 +0200
Subject: [PATCH 1/5] dt-bindings: soc: ti: am62-system-controller: add AM62
 syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240518-dt-bindings-ti-soc-mfd-v1-1-b3952f104c9a@linaro.org>
References: <20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org>
In-Reply-To: <20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2432;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=15jEglbukv2ugS4zICaV+xZ4WeKIM9pGcVmSwBDonSE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSQp5hw6p1m7pWomaToge5nIi+Ug1KhR9WOA2h
 UZfcB8EesSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkkKeQAKCRDBN2bmhouD
 183OD/0SrGw4HcmmjCKMp5SxWOAs4UO9Zbob0YY5sB/vdCccrQGo1JM9+dk3xfOSg2Nig4wGxPJ
 sYs7qxUt1FLNfHjp+d6W6dHvDLY4arH3NtRMG6eNZ2pSOUIVu72CV17ulvxMStmyujiYMURB7JY
 F4vqZOVZYZLP0sjd5s8ln8fjqPvLJeUyP7/+QpOfSYGc17KwSz7mgeqxi8gRCDS3Ffsb91edCLK
 UjTfgPzOYNyHt71iCB4aNoqv8jCq3ucZ0fdndynFuSQ8fy+cGh6Umidu2+f6nxKc8A2UgNUPQOt
 Fu1UXSYfZCdHwlKCR8EMbiPYNor+vus0DHXUu/Tm8DW6NTlL6//XVeRuQYtuzzRhvTiEcPH7GMa
 FS1qHlcqYYVQ4P3KQgCY14EKZJNoGpeOwFpKgk0xxF92DC17qoNE5WTzKmdFFbqUF9BSZ1l5Cuf
 z8cfKZPpILqsN3Aojl1rE2I22kh/Tpx50OAIR2PkGWItOiN9jGgg3oVd8WbJHoBAm5eINK28tif
 FelHsnjoc/4s78p0YmU+cqNEH5UXoZuceESe3owCejzKUjLhDOcN6SZZQboRz51KqJa7CEg6RLb
 ucp7sMl0oXfBdjfrlVS3NhBffRy+o4tu/2PUFPvCn3OsqcDt+7bXj0AfMflF6sKXLRQUsVHSElN
 2AX6WUoWdUXWukQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add dedicated binding for AM62 and AM62A wakeup system controller
registers, already used in the DTS to properly describe their children.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/ti/ti,am62-system-controller.yaml | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am62-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am62-system-controller.yaml
new file mode 100644
index 000000000000..d3bd67717999
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am62-system-controller.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/ti,am62-system-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM62 System Controller Registers R/W
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - ti,am62-system-controller
+          - ti,am62a-system-controller
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+patternProperties:
+  "^chipid@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/hwinfo/ti,k3-socinfo.yaml#
+
+  "^syscon@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/mfd/syscon.yaml#
+    unevaluatedProperties: false
+    properties:
+      compatible:
+        items:
+          - const: ti,am62-usb-phy-ctrl
+          - const: syscon
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@43000000 {
+        compatible = "ti,am62-system-controller", "syscon", "simple-mfd";
+        reg = <0x43000000 0x20000>;
+        bootph-all;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x43000000 0x20000>;
+
+        chipid@14 {
+            compatible = "ti,am654-chipid";
+            reg = <0x14 0x4>;
+            bootph-all;
+        };
+
+        syscon@4008 {
+            compatible = "ti,am62-usb-phy-ctrl", "syscon";
+            reg = <0x4008 0x4>;
+        };
+    };

-- 
2.43.0


