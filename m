Return-Path: <devicetree+bounces-248529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D0FCD380B
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 23:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCD41301F8E9
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 22:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8221B2FE582;
	Sat, 20 Dec 2025 22:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HcqPRXlz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A6B2FDC47
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 22:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766268221; cv=none; b=rZXQC8RCf4TfAsVwLmngXzRRtNxDTL1Yn4GUdyj/F8jmpW7FG2OnWYKo1jzidCXeyU8iiCITTlVwpSo597HGZ6r2KOxiglSbjNpKwvoO33IYebnTuHqDazc+c/sSiNAMwVHXXg5LDUHXrFONmiI5yAPkY6ZYMoi/CN5UDh0Rzjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766268221; c=relaxed/simple;
	bh=GSKFnpxSXVsqbfKAdV5IWaf20H7hq0L5b5alyeT5tf0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gL/bCkqWWFlZEzW5KeK4PE7wA0iPaRqbuVlTUiaHm0XeUnmhOuS+WY9q4iqE1S8SMZhjpChLhhstT4kLI+vyVncsO4m2kXlEaUflA8A0FhB5V9H5o8Q0tU2n6ziYit3C1iBwSUasc7xPMYk9dQ0OS5V64ByuvRQ8etLhMVkCZ0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HcqPRXlz; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0a95200e8so26762465ad.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 14:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766268219; x=1766873019; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o1gn5oD3hXl18WHBxvxdIuEL4NyVJgXGPq7DVV2iXzI=;
        b=HcqPRXlzcLiLSnpkZYR80HR1Khm+awopq/tERVYRRjMpeaI+F9j5Obi3Pu65DBljlt
         7GDOOUeyb74ZT01RfTyPVH+5h+/1miBQVwayQfXbOm4PFhEvZT7EsR2bldloU9L+o1TX
         wOQrsAJNznO0bYLnDMKLePjek/Ql8tZHBLrbx6UomNAsfVSaUszB+6KPGXkcRkauhYuZ
         NonkUPL8HAprAzQFHIHX1ys3XtZfBGTL5RPBQ6hpFHvPAMb9FhCzFncnEEamejXx8HyT
         h6NQvJOdmjS6UESaakSWF3b2/jaybd1p474GG6cuImAr31aioQ/1mZN99I9XGBY9wkS1
         GCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766268219; x=1766873019;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=o1gn5oD3hXl18WHBxvxdIuEL4NyVJgXGPq7DVV2iXzI=;
        b=esB6XLsl88b3b9/QRT/ZL6FYw47JOAQFuEe9uFtP9WfU0RdV2R1m/xY9FjI4rK0qP7
         9L84KIgGxWZAi1WnRqHTxg6/G6d+lQTKh3LlJxOikv1pMYDUg1mTZNOtF8JG3VW4x1QP
         GQAJqHK8uIrIKcmsHht6l3/NZ1qguljxZ32OXZCFG2tASLsnwLAwUG95W/RktB0wJhk7
         Da6VFf2f2jx/fMX74zE6v7Yvx47SdTcoxE0q7nqxKou0q61h4hGdDB3fYYmsiTa/zFTZ
         9RfHGRdbLSO29evABnF4b1qgbvtN+RUBe87BZYdRwk0pnlYS2H7yEQjzZupHHqJPs9iI
         BD9A==
X-Forwarded-Encrypted: i=1; AJvYcCUQT9HmFZbjgZoq6Jsb5DzJMzbpd9SbvU2MMI9YojYLzxuRHRi5cDTqvLzcAU8zAyo/Q/1y2wP/w43F@vger.kernel.org
X-Gm-Message-State: AOJu0YyMDADFFww3L4fAIixvlHiQGlWOOZU6/rBh0UEXnFJo3ZKl310W
	6Rqk6uj/484CSziPP0QEXkTFKonSUNY6XUQUx6bmy5MYJdN16KyERRMn
X-Gm-Gg: AY/fxX4xjWEjd4Q+fiIRKNL/Z29jFtpOMuslfSqIAlqXDB6bIYmhP7i6YNPbJun/la7
	fSxv+JnSYdrLQg3AGhlF2SA/Z/HyaWKzhfYlgwq/tufPcCrciO+5wb2lGxHWVn/wJESQWYa3c33
	hgekPYhhD6jed02HYGtZIGQ1zUV2inItZTYmy70Nw1hqiYjWJ/0Nv5/CfOUrYn3E9HhonjcMDRV
	hLKJeakwNf+4himOehUTK/+jR3lbCClgCvLw/q0G8C3LjXH4TZkYQWCNcXT1MeyDy9Bn1GAFu2u
	t1MUoKc9Yw0RURMepZX8YiytNkgxZRFAzZoJ0M8pORoxtkDLDXp2unQHrwwAwIliDua1lritYiC
	L81gyciK2cpW2cUVVexMvf7gM+nT7hLffZg0MSyoCN9g18PfFCejBrZ2TX5ye21czW+vGRX20gR
	VdiUHVRMRlLqw=
X-Google-Smtp-Source: AGHT+IHq2wXI8+sl3brXpkHT8REvcb99HRHtlliE2n790sCVIY8XwlHbujd7ntvN4tpiCxDHn0zeBA==
X-Received: by 2002:a05:7022:e981:b0:11b:9386:a38b with SMTP id a92af1059eb24-121722fcdadmr7816422c88.46.1766268218815;
        Sat, 20 Dec 2025 14:03:38 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254cd77sm25010164c88.14.2025.12.20.14.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 14:03:38 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: pavel@kernel.org,
	sakari.ailus@linux.intel.com,
	mehdi.djait@linux.intel.com,
	alex.t.tran@gmail.com,
	laurent.pinchart@ideasonboard.com,
	hverkuil+cisco@kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] media: dt-bindings: ti,omap3isp: Convert to DT schema
Date: Sat, 20 Dec 2025 14:03:25 -0800
Message-ID: <3c5a55cc5873e8d16bd25c5968a0d8b36e180325.1766123192.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1766123192.git.alex.t.tran@gmail.com>
References: <cover.1766123192.git.alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert binding for ti,omap3isp from TXT to YAML format.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 .../devicetree/bindings/media/ti,omap3isp.txt |  71 -------
 .../bindings/media/ti,omap3isp.yaml           | 182 ++++++++++++++++++
 2 files changed, 182 insertions(+), 71 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/ti,omap3isp.txt
 create mode 100644 Documentation/devicetree/bindings/media/ti,omap3isp.yaml

diff --git a/Documentation/devicetree/bindings/media/ti,omap3isp.txt b/Documentation/devicetree/bindings/media/ti,omap3isp.txt
deleted file mode 100644
index ac23de855641..000000000000
--- a/Documentation/devicetree/bindings/media/ti,omap3isp.txt
+++ /dev/null
@@ -1,71 +0,0 @@
-OMAP 3 ISP Device Tree bindings
-===============================
-
-The DT definitions can be found in include/dt-bindings/media/omap3-isp.h.
-
-Required properties
-===================
-
-compatible	: must contain "ti,omap3-isp"
-
-reg		: the two registers sets (physical address and length) for the
-		  ISP. The first set contains the core ISP registers up to
-		  the end of the SBL block. The second set contains the
-		  CSI PHYs and receivers registers.
-interrupts	: the ISP interrupt specifier
-iommus		: phandle and IOMMU specifier for the IOMMU that serves the ISP
-syscon		: the phandle and register offset to the Complex I/O or CSI-PHY
-		  register
-ti,phy-type	: 0 -- OMAP3ISP_PHY_TYPE_COMPLEX_IO (e.g. 3430)
-		  1 -- OMAP3ISP_PHY_TYPE_CSIPHY (e.g. 3630)
-#clock-cells	: Must be 1 --- the ISP provides two external clocks,
-		  cam_xclka and cam_xclkb, at indices 0 and 1,
-		  respectively. Please find more information on common
-		  clock bindings in ../clock/clock-bindings.txt.
-
-Port nodes (optional)
----------------------
-
-More documentation on these bindings is available in
-video-interfaces.txt in the same directory.
-
-reg		: The interface:
-		  0 - parallel (CCDC)
-		  1 - CSIPHY1 -- CSI2C / CCP2B on 3630;
-		      CSI1 -- CSIb on 3430
-		  2 - CSIPHY2 -- CSI2A / CCP2B on 3630;
-		      CSI2 -- CSIa on 3430
-
-Optional properties
-===================
-
-vdd-csiphy1-supply : voltage supply of the CSI-2 PHY 1
-vdd-csiphy2-supply : voltage supply of the CSI-2 PHY 2
-
-Endpoint nodes
---------------
-
-lane-polarities	: lane polarity (required on CSI-2)
-		  0 -- not inverted; 1 -- inverted
-data-lanes	: an array of data lanes from 1 to 3. The length can
-		  be either 1 or 2. (required on CSI-2)
-clock-lanes	: the clock lane (from 1 to 3). (required on CSI-2)
-
-
-Example
-=======
-
-		isp@480bc000 {
-			compatible = "ti,omap3-isp";
-			reg = <0x480bc000 0x12fc
-			       0x480bd800 0x0600>;
-			interrupts = <24>;
-			iommus = <&mmu_isp>;
-			syscon = <&scm_conf 0x2f0>;
-			ti,phy-type = <OMAP3ISP_PHY_TYPE_CSIPHY>;
-			#clock-cells = <1>;
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-			};
-		};
diff --git a/Documentation/devicetree/bindings/media/ti,omap3isp.yaml b/Documentation/devicetree/bindings/media/ti,omap3isp.yaml
new file mode 100644
index 000000000000..3f3b0c0f46e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/ti,omap3isp.yaml
@@ -0,0 +1,182 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/ti,omap3isp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments OMAP 3 Image Signal Processor (ISP)
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+  - Sakari Ailus <sakari.ailus@iki.fi>
+
+description:
+  The OMAP 3 ISP is an image signal processor present in OMAP 3 SoCs.
+
+properties:
+  compatible:
+    const: ti,omap3-isp
+
+  reg:
+    items:
+      - description: Core ISP registers up to the end of the SBL block
+      - description: CSI PHYs and receivers registers
+
+  interrupts:
+    maxItems: 1
+    description: the ISP interrupt specifier
+
+  iommus:
+    maxItems: 1
+    description: phandle and IOMMU specifier for the IOMMU that serves the ISP
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to System Control Module
+          - description: register offset to Complex I/O or CSI-PHY register
+    description:
+      Phandle and register offset to the Complex I/O or CSI-PHY register
+
+  ti,phy-type:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      0 - OMAP3ISP_PHY_TYPE_COMPLEX_IO (e.g. OMAP 3430)
+      1 - OMAP3ISP_PHY_TYPE_CSIPHY (e.g. OMAP 3630)
+
+  '#clock-cells':
+    const: 1
+    description:
+      The ISP provides two external clocks, cam_xclka and cam_xclkb,
+      at indices 0 and 1 respectively.
+
+  vdd-csiphy1-supply:
+    description: Voltage supply of the CSI-2 PHY 1
+
+  vdd-csiphy2-supply:
+    description: Voltage supply of the CSI-2 PHY 2
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Parallel (CCDC) interface
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: |
+          CSIPHY1 interface:
+            OMAP 3630: CSI2C / CCP2B
+            OMAP 3430: CSI1 (CSIb)
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              lane-polarities:
+                description: |
+                  The lane polarity (required on CSI-2):
+                    0 - not inverted
+                    1 - inverted
+                minItems: 2
+                maxItems: 3
+                items:
+                  enum: [0, 1]
+
+              data-lanes:
+                description: Data lanes (required on CSI-2)
+                minItems: 1
+                maxItems: 2
+                items:
+                  minimum: 1
+                  maximum: 3
+
+              clock-lanes:
+                description: The clock lane (required on CSI-2)
+                maxItems: 1
+                items:
+                  minimum: 1
+                  maximum: 3
+
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: |
+          CSIPHY2 interface:
+            OMAP 3630: CSI2A / CCP2B
+            OMAP 3430: CSI2 (CSIa)
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              lane-polarities:
+                description: |
+                  The lane polarity (required on CSI-2):
+                    0 - not inverted
+                    1 - inverted
+                minItems: 2
+                maxItems: 3
+                items:
+                  enum: [0, 1]
+
+              data-lanes:
+                description: Data lanes (required on CSI-2)
+                minItems: 1
+                maxItems: 2
+                items:
+                  minimum: 1
+                  maximum: 3
+
+              clock-lanes:
+                description: The clock lane (required on CSI-2)
+                maxItems: 1
+                items:
+                  minimum: 1
+                  maximum: 3
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - iommus
+  - syscon
+  - ti,phy-type
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/media/omap3-isp.h>
+
+    isp@480bc000 {
+        compatible = "ti,omap3-isp";
+        reg = <0x480bc000 0x12fc>,
+              <0x480bd800 0x0600>;
+        interrupts = <24>;
+        iommus = <&mmu_isp>;
+        syscon = <&scm_conf 0x2f0>;
+        ti,phy-type = <OMAP3ISP_PHY_TYPE_CSIPHY>;
+        #clock-cells = <1>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+        };
+    };
-- 
2.51.0


