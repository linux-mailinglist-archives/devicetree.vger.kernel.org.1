Return-Path: <devicetree+bounces-86010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C44693225A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 11:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F113B2201D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 09:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6923A1957FD;
	Tue, 16 Jul 2024 09:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uQTSgASk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911DD13CF8E
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 09:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721120458; cv=none; b=eF2R0HZ1ZuRq6Yq9+85f2wGh0n8ggx96fVa6MPJ787Q+8v4NSS7DTkT/PyL9Tq3Q0ef5zxp/nKPG/tXcRz7kfgvv5YYZlbJQ8Y+o112X+E29fb+fp0MX9FRdL2THRegf+G2u1pwC7K5lSxsoR/LCoKkf4B0siunJ/fTw6b6rQSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721120458; c=relaxed/simple;
	bh=kMvlsHzy31bD+tkxP6TK51Gz+HLsC2XGrwhsJjRb0Zk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LEKHkXteCiQ8k+4O+QgUAd72U4dOugtmpIODG8/tnd4FSojR6VDDx30NGsFnDE/+PfZHztkFaCzKk6Oegxmcj8snltWFzl+9QbxuS2zON2GzY/2ZnHvCdH15sW2dKjpeieD8i2bSkCbbeR/RRfK1SdU6Ysc94b68+ig0o2BqdDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uQTSgASk; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-367e50f71bbso3470400f8f.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 02:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721120455; x=1721725255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xbEQC0Xl3QFDIRJBV+fNJ9ehNb0IYgGGn7Mg/g7ZnHg=;
        b=uQTSgASkkanR6sGNCo64lKk+9MMcRpt3fmr+Xf5EpaLjbCW9+b4hx2Mn6mXqN2O5VA
         cTiCNlEasOYOiuN6KE1QXrnGvYOmc7mCLh9b2A8ZJtrCU6Bw3UySFNx8Yfoo1lssDNnS
         riitucLqv2/akSD3RBaPx18fYE64DvmLh+664Y8VZE0LZEaqyDrudiTHkkx4vsDkFvbA
         rAilVdDmfOvvIBg5jJhvH7O/g3c4n3shpNS9p7WNCsREetE00D2GP89cSZwIj9I75YLC
         B6CinR+whGWJB8INTbDPBzlqGeUsHO1PcBeDR0RSm792ypmcwpRLDeRe8/gVsmz0qgur
         wV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721120455; x=1721725255;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xbEQC0Xl3QFDIRJBV+fNJ9ehNb0IYgGGn7Mg/g7ZnHg=;
        b=Twmu00a67EMsaJC331X+vwcYbKk63NBYFfeoso/g+yykWGZApKWWdvFipWEw6m4ojJ
         xVpQc9Z6hc1RrYLuwGkwNGt0JEED+NbME2A84EALXdXGH8OQ3/KQOVvnYcT/JBpsCTwV
         zD0rW/xlB/kvDqQh3nvFRZ3Mh/X5yfBH4oYpcj+3wX79XeBsz2gFPxb6LXWbZJStDmm2
         oFwRQ+qx6gqEafjFMnUxjTrr6qP3N45ClDZCawqZfr7Ka8jq5bAfAhLpCRrK6jsM9ClC
         dChOZPXqVk/tiqM0nSesPG+sJriYj4ovQGQAkd5A4xZxKElyGJh+mY0UQBmBm+KsXgF2
         m28w==
X-Gm-Message-State: AOJu0YwdfoMPrKWCVue2fcGj74wUWSrPjw9TuSAgZLpesFiZ7UfedgJv
	H2GkrB8yxfErO/ntWeWbiQo724jBAXY5zLAzfPHNXG09xV7BpihTM6Yd104LDVqkeuPrCUpTJRx
	m
X-Google-Smtp-Source: AGHT+IG27clWzSV6W8iZaTI9YjO6zoit2okTMA2etw6G3YpXIOmBPezlqo50dPpTno+mPQIphFBs9Q==
X-Received: by 2002:adf:fe46:0:b0:361:bcc5:2e26 with SMTP id ffacd0b85a97d-368260d4ceemr946401f8f.19.1721120454694;
        Tue, 16 Jul 2024 02:00:54 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccbe9sm8325078f8f.59.2024.07.16.02.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 02:00:54 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: clock: qcom,qcs404-turingcc: convert to dtschema
Date: Tue, 16 Jul 2024 09:56:20 +0100
Message-ID: <20240716085622.12182-2-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the bindings for the Turing Clock Controller on QCS404 from
the old text format to yaml.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
v1 -> v2: rename file to compatible string, remove label in example dt,
          add acked-by tag
v1: https://lore.kernel.org/all/20240715084313.14098-1-rayyan.ansari@linaro.org/

 .../bindings/clock/qcom,qcs404-turingcc.yaml  | 47 +++++++++++++++++++
 .../bindings/clock/qcom,turingcc.txt          | 19 --------
 2 files changed, 47 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,qcs404-turingcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,turingcc.txt

diff --git a/Documentation/devicetree/bindings/clock/qcom,qcs404-turingcc.yaml b/Documentation/devicetree/bindings/clock/qcom,qcs404-turingcc.yaml
new file mode 100644
index 000000000000..033e010754a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,qcs404-turingcc.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,qcs404-turingcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Turing Clock & Reset Controller on QCS404
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+
+properties:
+  compatible:
+    const: qcom,qcs404-turingcc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-qcs404.h>
+    clock-controller@800000 {
+        compatible = "qcom,qcs404-turingcc";
+        reg = <0x00800000 0x30000>;
+        clocks = <&gcc GCC_CDSP_CFG_AHB_CLK>;
+
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/clock/qcom,turingcc.txt b/Documentation/devicetree/bindings/clock/qcom,turingcc.txt
deleted file mode 100644
index 126517de5f9a..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,turingcc.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Qualcomm Turing Clock & Reset Controller Binding
-------------------------------------------------
-
-Required properties :
-- compatible: shall contain "qcom,qcs404-turingcc".
-- reg: shall contain base register location and length.
-- clocks: ahb clock for the TuringCC
-- #clock-cells: from common clock binding, shall contain 1.
-- #reset-cells: from common reset binding, shall contain 1.
-
-Example:
-	turingcc: clock-controller@800000 {
-		compatible = "qcom,qcs404-turingcc";
-		reg = <0x00800000 0x30000>;
-		clocks = <&gcc GCC_CDSP_CFG_AHB_CLK>;
-
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-- 
2.45.2


