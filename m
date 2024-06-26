Return-Path: <devicetree+bounces-80125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96586917D54
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:10:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 196E51F23DAC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF018177998;
	Wed, 26 Jun 2024 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qpk6LJhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5748F176FC0
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396593; cv=none; b=uC0bJ2rX+isJs9BfUUrSiVlAvLhTHs9HoU0PKJ6kF09PIfGE9o9sxaS8EXltCUluDqNxAcWyIgFBaWzBAmbkowILEnIv4z8CtOQiGK9RTzOnlJkuwP0gTJJdi2zc2swjB2r7u/y6qZZRi7whzkHNqrOYtO3bqu6aijg8bvqPHxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396593; c=relaxed/simple;
	bh=cSD/jHQUP9UaTQwVe/lAb1jbbNkgxv6GNkc4nFRX3RM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qeFsRzSn9XkaBOCC1Nq5xKDf0Uzy774VocL5F8Gv/Eel1ZnZRSr1+N0I4MT8p3dGI42R1VlilWn8vOfi4t5UtuUcnoOFcdsxdDWRwaiKEqbIG7vLDL49d/Doas5vUD/yZ8y7NdX8efpzeAMIysJ3pQS1Te0naRZOb4oVYHe2Yaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qpk6LJhV; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7f3d2d441e4so15930739f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396591; x=1720001391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CoYyv1JfNQ5/bYMgeMIzJcXdRr3laILkHeyjJlFqVI0=;
        b=qpk6LJhVwPyii0IQOJMgq8BrR4hC/xKmQAHJLuu5UrS64QBVN+InHTYHn6lui7FC3E
         bGAVQ9BH1PfXPSuowbtbyrFeCVxA8qq0AiURnckd9CeRSeiiSgIPcUdJCq5ppZljzsnI
         4FU9coPQe8mBTwL4+Afk3xcQG18eBHdAPLdQRaxAdQfmVivzY3NbiFI4HcsdjekNOZPK
         1cY6mcyPxOEbLENf5RxFU2LA4qZ4zrxPBmudse8H6Qu66nRUxJSBK0xsbHj7CiZZg25X
         5Q9fIDbac+CVi0xQ8V3O+xz2LvJuV2STGRj4VgJ7yd1NGQMba28X322XWXexW9+UAwvw
         78LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396591; x=1720001391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CoYyv1JfNQ5/bYMgeMIzJcXdRr3laILkHeyjJlFqVI0=;
        b=oFgYizu7cW7RpzXoHofkUbz39nwcT+NHnM817vdUFwT1Cx3r3lU3BF2+QV3T646Gl5
         mdFQjpyVnp8Ew3Mj/Y4Fp2iIfeYGklxjjWDk8CoTmeXIOPqy6hLJ5Fi4B73iVl19an6I
         OECYkF1nB42IShRBxjUg+nA0SGFro3avV5lKv7QWH00Ld4VZNl74aa0eaeLhgbEd49/9
         UGMXOj7bgZ4BnwR5uE5yaEw+amcsE7rju+hUjygCvE7AK79VLWa6zY4CfMDQwJbY8BuQ
         w6g/bhoNzt1e83PZ8Y0jOi8hVwuxiswcO2EwLfifrMOef3uJtfroAjqF5w8gT3cOmnPI
         dzPw==
X-Forwarded-Encrypted: i=1; AJvYcCWrUVk4Hd87Qv4qnkObpwxfJC6GJxYy13bOvOgT8K6IdiMAGLR0uE+Y3d4ItjUY7zF1xmS+bJU95Xf+aAlk90zarRHBhMlklw/4mw==
X-Gm-Message-State: AOJu0YyGS7/tTGXt9eNcztE9quN5aNs/CoTI0hzO/Eq243HESErqCMLo
	NlprOD8SmJKBV3J+bgIbQwcdZ7JVv2CBG1Q5eTvQ7fs3qk/Gid+I3C5uI8fRslA=
X-Google-Smtp-Source: AGHT+IEV500RWvFhXGEtFcRDihdWVaS1stReWnk1RyeO62061c9eWBuqX0Lm7cIXGByHUT76RnLSyw==
X-Received: by 2002:a05:6602:3428:b0:7eb:4957:ea5b with SMTP id ca18e2360f4ac-7f3a7556c59mr1318193339f.11.1719396591627;
        Wed, 26 Jun 2024 03:09:51 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4b9d121859csm3079108173.137.2024.06.26.03.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 03:09:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 12:09:12 +0200
Subject: [PATCH v3 3/7] dt-bindings: soc: intel: lgm-syscon: Move to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-mfd-syscon-split-v3-3-3409903bb99b@linaro.org>
References: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
In-Reply-To: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rahul Tanwar <rahul.tanwar@linux.intel.com>, 
 Amireddy Mallikarjuna reddy <mallikarjunax.reddy@intel.com>, 
 "Zhu, Yi Xin" <Yixin.zhu@intel.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3048;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cSD/jHQUP9UaTQwVe/lAb1jbbNkgxv6GNkc4nFRX3RM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme+jPipFbrcUkKVwnewbgvivyKt142GIXts2UH
 Sl79iiv+JiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnvozwAKCRDBN2bmhouD
 15DED/99VuG+osM5hju34/3Db9qPHKxklXrI4si79XiFua1YV/H57NmqIs9EsUZSKJ6GwjwvQwa
 xYohWS1lG91/2BrUnu7QF/ZLpFJnvK1INlBJBp+FbYwpO1Zw+9CionjNMmS96rG1/Ooq8KEiABF
 iycKZGpKvOs3BscZjRt/59vhuYQ0Z37w4M0uCq/yhnsEkzrQXsCNht7fA1OE4nza0ZZZ7mVqR6n
 3zTJds65wTZO7txj8XollTpytEbobEo1KkfTyuiyhlXnHNvAyBnr/iN9ir8QJcHI9Q/d+IXGe2a
 LO8JVMPHnUiwPfsx9/vnBd4ypxeV6D0unMhKc4hgJgqairKcilsfcFqLjo9cSpnPobYV01cssXG
 25zeAW9o3G8B2geGEBOCyRjKc2kYBF50qaW3fz5soOqs905+l8ItLUbQAy/cWY48krE3qy4XqND
 PLQfnOPuH5tYSbRjLyty/BfWCNWLI4kX9mRyWQ+poWIPz5K5brIK1uUf5M7bi4c2Z8840RDmdBy
 p9FV9nCSHVETJQZ6+34Xx1f4paHkux3LxO3Vsm3K62qM32hbHfav2HSnIA6K+sEZorXx0MavKY1
 /FullhERpGFOnV8cO8XOfHy75Ff2tEy1mDGkOhI7JAj22vPgWrsTvJ+cBDDxZfiZC9JgrwRux5B
 3XDhHQzntUpib6Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

intel,lgm-syscon is not a simple syscon device - it has children - thus
it should be fully documented in its own binding.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Context might depend on patch in Lee's MFD tree:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/
and also further patches here depend on this one.

We need to cleanup intel's emails. Does this bounce?
Cc: Rahul Tanwar <rahul.tanwar@linux.intel.com>
Cc: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@intel.com>
Cc: "Zhu, Yi Xin" <Yixin.zhu@intel.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  1 -
 .../bindings/soc/intel/intel,lgm-syscon.yaml       | 57 ++++++++++++++++++++++
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index af442767aa96..b9bf5bc05e92 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -77,7 +77,6 @@ properties:
               - hisilicon,pcie-sas-subctrl
               - hisilicon,peri-subctrl
               - hpe,gxp-sysreg
-              - intel,lgm-syscon
               - loongson,ls1b-syscon
               - loongson,ls1c-syscon
               - lsi,axxia-syscon
diff --git a/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml b/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml
new file mode 100644
index 000000000000..6951d55356d5
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/intel/intel,lgm-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel Lightning Mountain(LGM) Syscon
+
+maintainers:
+  - Chuanhua Lei <lchuanhua@maxlinear.com>
+  - Rahul Tanwar <rtanwar@maxlinear.com>
+
+properties:
+  compatible:
+    items:
+      - const: intel,lgm-syscon
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^emmc-phy@[0-9a-f]+$":
+    $ref: /schemas/phy/intel,lgm-emmc-phy.yaml#
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
+    chiptop@e0200000 {
+        compatible = "intel,lgm-syscon", "syscon";
+        reg = <0xe0200000 0x100>;
+        ranges = <0x0 0xe0200000 0x100>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        emmc-phy@a8 {
+            compatible = "intel,lgm-emmc-phy";
+            reg = <0x00a8 0x10>;
+            clocks = <&emmc>;
+            #phy-cells = <0>;
+        };
+    };

-- 
2.43.0


