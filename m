Return-Path: <devicetree+bounces-230588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E47EC04370
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:06:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 56FF14F3689
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D1E26E6FE;
	Fri, 24 Oct 2025 03:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OA4s985g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0168825DAF0
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761275167; cv=none; b=Qzay1c7Dq88OGDH8lkE+WlL4X5G/c5yau6ccZiNJMr2xNZMXICz6YFAJIYA9QreC0RfaP8WzLCyZRZx7th83F5hH3saoz2C8SS6KOJDmw6YHrlUVGr3cEt2uct6zDudteFRa7ugacuuQxDYcqDNgqxTPjwqWdPlGOOY3dkHPao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761275167; c=relaxed/simple;
	bh=jvSX3J8jPQqhJX2B4VHaOlDmkC/RiIzNCXzw8R80QpU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b3o9uOkKiPn+xcToCyPDLy3j+LH7KnYrMlJI2CeWy5nFQBSIPaHOia2h93Uk/wRCjBR5cF7VLe988H6mShy17YOXEwmIC14umg0JGxBDqbuwrRl0JiEbSkFxCuHnPbEL9pkGyw+v5c7e5A9JyDa4+H6SqVct/KYCXf5nSMMDGiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OA4s985g; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7a213c3c3f5so2052308b3a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 20:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761275165; x=1761879965; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0pQ7cw/eYIuJvEdOndGkOkiOfxNm4SkQwTboprdy7EY=;
        b=OA4s985glOXauQ5GpBVthfq0aQy7FjZhvCnVouepWCJw5PZRMv/icqZbB2c8GE4yCZ
         Kpi7siS+I3SwTS78MemLv9cEeoUdC97ghEnF0sKOQB6ChZomDw3TRnNlvlNuonSCyJyL
         pv1ZLNwAopfs3Z9U4pINYCWrZ4ZXrEXJ4avc95GNn+RdbzkrL0aPjrGh79m9Prq5+d8F
         BR+4xYkFBd4qFN2W4S5Cim/f5xYTZqKpP/2wqin3I0TrcjXw2HacoK9DhpB7eURFxSRh
         7pqAufitvsWuVD1dfOB86WZxLkrxQkQ0zTI/3/az2DU26EQznno2y/wNivdR7c3qSC7i
         lkkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761275165; x=1761879965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0pQ7cw/eYIuJvEdOndGkOkiOfxNm4SkQwTboprdy7EY=;
        b=WJz344do9HzMay4d3o6dZo22kR9FdwxT11YhhxoWK09HznZcBJF7YAZl7UQf++xGLh
         Gyb8lJQuF/tW6rS/6sGFyMMhfOPSA6Nnck1rX4PqsXjfBl9lVsaYvZGk3ijQEH4iVTFW
         Xi0+75qmY/9ECApmgwcb1Z7lJeNHRokph3y6QmpCkAdcgfJCivFJ/7lZ0owQ3Jlh6LV4
         7TcprLg75ACkoX1z+sCQxfEt4XFLvDoKzH3RSnIctquGVkVsU8R/JfYWf5ezhcPPGne9
         rDjja4k4pjoZhktOfsT2N8nAgi+wbQkyY7YGY0SLK/tm/rSR6Hngffip0kTK4ecbtxYs
         BLHg==
X-Forwarded-Encrypted: i=1; AJvYcCUfKz/5j1kUUr0zyr2KxmFEsbjFYYo2vWguWD91vO9H6UL6qLDMbjrFX551bYxM2isl6/LXYNCE1bxQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw85fOVDyvLw8VYSf4LaW3XwltPBy/rtoAmNtY3Bk0r4UhhNU+2
	8VGfkaa14uF8WN6neqrOD2NCjTHd6MqTOJBVPOY5myNJXVmKKYfDsD32
X-Gm-Gg: ASbGncuD1oOAbbOvWglU1v24GujzBLe4lUHAnv0QgQcH8jsnRcQxRwGd864rxJKA08W
	ged+Lkc0RGR0jxpsBhPktBhCh0L1O8t5dTK3Qa/pPy72v0/HoFGyE5WDB44JN9ZMXMwVX3Y0s1m
	fjQh2I6xvhEys1CbA3j8b7rSAiir+q2m2uyUUl4qvhqF7OsSxvz3MKslTosdWE4gXfuc1DmzS5S
	yuvGGQrizfFRf+Vn5sb9N8yw8u42h49zQ3/SAeKU1wMpLNdDgd36jkysUVBDGTjOk574+i+SAaR
	Ny4l8oEdIuYOk8cXK2P4Nnm7ZzORXgB4604LNtBPsaKmdyS/ylX57v5gWkezPwezZStt5k7On9/
	N/yA1uzvGL+PaZstc93/v81x2jsjiUymq6Q+FJmPriwvi/ZOHrJMKoY7ThcseIZ3aSvcuWYhMBN
	IdXo1er8jlNiR4CQfU
X-Google-Smtp-Source: AGHT+IH6m88GOzv4ruiUFmy0KxUAD5xi8gFnH40Y4X6IxplEL8oLQu8svkKTRzRK2vev5GUxpR773Q==
X-Received: by 2002:a05:6a20:3d05:b0:334:a2ed:5fa9 with SMTP id adf61e73a8af0-33dea180ff3mr788936637.9.1761275165082;
        Thu, 23 Oct 2025 20:06:05 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm3574172a12.7.2025.10.23.20.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 20:06:04 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Yu Yuan <yu.yuan@sjtu.edu.cn>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v4 1/3] dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
Date: Fri, 24 Oct 2025 11:05:14 +0800
Message-ID: <20251024030528.25511-2-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251024030528.25511-1-looong.bin@gmail.com>
References: <20251024030528.25511-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Sophgo CV1800/SG2000 SoC top misc system controller provides register
access to configure related modules. It includes a usb2 phy and a dma
multiplexer.

Co-developed-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
---
 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
new file mode 100644
index 000000000000..d044ca661fa2
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/sophgo/sophgo,cv1800b-top-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV18XX/SG200X SoC top system controller
+
+maintainers:
+  - Inochi Amaoto <inochiama@outlook.com>
+
+description:
+  The Sophgo CV18XX/SG200X SoC top misc system controller provides
+  register access to configure related modules.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: sophgo,cv1800b-top-syscon
+          - const: syscon
+          - const: simple-mfd
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
+  "dma-router@[0-9a-f]+$":
+    $ref: /schemas/dma/sophgo,cv1800b-dmamux.yaml#
+    unevaluatedProperties: false
+
+  "phy@[0-9a-f]+$":
+    $ref: /schemas/phy/sophgo,cv1800b-usb2-phy.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sophgo,cv1800.h>
+
+    syscon@3000000 {
+      compatible = "sophgo,cv1800b-top-syscon", "syscon", "simple-mfd";
+      reg = <0x03000000 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      usbphy: phy@48 {
+        compatible = "sophgo,cv1800b-usb2-phy";
+        reg = <0x48 0x4>;
+        #phy-cells = <0>;
+        clocks = <&clk CLK_USB_125M>,
+                 <&clk CLK_USB_33K>,
+                 <&clk CLK_USB_12M>;
+        clock-names = "app", "stb", "lpm";
+        resets = <&rst 58>;
+      };
+
+      dmamux: dma-router@154 {
+        compatible = "sophgo,cv1800b-dmamux";
+        reg = <0x154 0x8>, <0x298 0x4>;
+        #dma-cells = <2>;
+        dma-masters = <&dmac>;
+      };
+    };
+
+...
--
2.51.0

