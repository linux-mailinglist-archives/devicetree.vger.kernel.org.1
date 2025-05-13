Return-Path: <devicetree+bounces-176771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E511AB5756
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 119BE19E4A0C
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F0820E03C;
	Tue, 13 May 2025 14:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rD2Kyfot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7124A1AF0A7
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147175; cv=none; b=Y5FyvQgiXt+7T3d7arXwv5qd5R9GiP9VafAdeH1QzJXIXKetLQEF+rEW963KRXzhyvXmcIjcmAZemdHMpufrbx8EPkkHLrh1TSqkUKox9hR3HNzXptE2ALHnMk8gmYk0CEn6pzvw3hlKw/ZC1RYt85N/qQ5Ts2JVX7NCKlE/Eso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147175; c=relaxed/simple;
	bh=CeLbNrHcpgobad+4p63N5uQpuqywMQB/SUmUldYn5UU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sHhzhdPK8dittwkmYJZOkxWejuJsRaBxxZmb84wYzbwfjp2M3fzR4gxRbkcKHewGYCK6O5RRtMPoiDiUsm0cp0Our3O4vyFr0LlaeVsbL7k2dIDQlBHEXxzpiKfsM9KAFVgdd0VyXLQ6y3JnFZheGSVSqkSqZbXLNY07yksnbI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rD2Kyfot; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54acb0a5444so714914e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747147172; x=1747751972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Ril6uuY7sDYo/3Zc1JrBgdRnjj+OY9LceWmMwrfigA=;
        b=rD2Kyfot7BWAnXwq2C4PCr/E5EFLg7Ryn6a+OpBRZMhETxYsDKykgm0XIjjmZ2S+6y
         wsccFKbCftZWJz6Riw9IB5/vDEP+qGGGGf0LHcB8jmbXI61ztfQHpUKTs03vYlskd+xu
         Lxlg9S3AEJHKAQBDiqNzADY1MioaTarQ+vf3QG9HioLJVN29GDxBNn5UJoV2/ooo5VP4
         kU5uJgPFa19pflTC1NLFQoFvv6Dt10hnBofhCr5+f13JHIDFO/08eQLSAn7zy0ur9I8I
         kxJFH8x85uIPkg9O0XTCqi5Hacucn8dJ16SHESOxyrBb5lYIgJPoN2rmuMMyRIj+B2FR
         76PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747147172; x=1747751972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Ril6uuY7sDYo/3Zc1JrBgdRnjj+OY9LceWmMwrfigA=;
        b=OlEDSxRbhFXjXPjR2NOOOuWri7pxQzhGFmgB5nqCsOmRsm39Fp2Z1UTHvRBw7F0C5t
         br9ftsFhhnCqBx3oRtWiQHiOnKNlPE9GotCKsIG1lFNfuadKqBTIzx+6v2NmOmmN6tmx
         AZEaXEqCSEkj5/uJJJ+YFQ4dnUe08FW+PaPMYzf2vzufUWoWu9PMTgs8CRpd2MzwQJ5S
         VILS8KJiwYBu3CzdOCrQc2gQ267MWt5Via8H4BQXXA06Jnc8PPryAq26g7vWqUKbzCW1
         UcU7Fkdkb8UzkvECyJaUeNU11LlUXUF90gY++eyXJVB5citUC1C2NzGIYIHnGLHQK8/l
         ikzg==
X-Forwarded-Encrypted: i=1; AJvYcCUZwZxIRaJGhZ/UcvD52SzNL+CydulyZKqbhGd7Qv/BVRMtVJF7+Md2uLAV85GVxDUrDckmIhKTsSLb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+EWigJcSwRkmWwVain/lq3wIbVvk/9XCEGHvsdILycI83hEtU
	W6eJfnCWnQgg1InObZnXYVP1BlOE8oaDQr+5Agxa0/HHZ+r39I2D80ILTnLfzH0=
X-Gm-Gg: ASbGncsc9/ytBzi5UJ4FVE3nst2rnRgReVgRkKCb5Vyfmpzaq48Qu2OBd1dz9jxHO7R
	jLtr02AzybfMKANl5E50MOIID7JCMbhlTy2J/r/LDxWyzh6Ho84XW/5FncSzx22XF4Rwdwsyqao
	iaqrJqFv2VxRCtlJkS7Iv7iOYdGFBDlXyMdajdrjckFr1uowVNCjDVgwIlA7xEpvXhqj7PQ89Ys
	hnS4rMQwZHl+SRBRIIMcGWMNMaQgv0XDA465bcvnixJTBgj48dACnc8j4fZp01rFJIMxDwOO2kX
	ID31glWxIOkd6LMQX/arUHiKf4LsEEAFln/AFJlA4gellxgr44EnIboUkBiSW+7rpPjr/1872kx
	BtnQZR96aXVeGEN/Vfu+NfgTNvxdAABJX06EuI92U
X-Google-Smtp-Source: AGHT+IHPIdVM+BZod/QjbcgdZNCqQf4/wvlVtT+Y4YCECyzxCdGP18TVKh1eHt35UgrNr84GxDnE8w==
X-Received: by 2002:a05:6512:39d5:b0:54f:c4c0:ada8 with SMTP id 2adb3069b0e04-54fc67d65a3mr2061782e87.14.1747147171591;
        Tue, 13 May 2025 07:39:31 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64cd015sm1893445e87.248.2025.05.13.07.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:39:31 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hans.verkuil@cisco.com>
Cc: linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema for CSIPHY IPs
Date: Tue, 13 May 2025 17:39:18 +0300
Message-ID: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
MIPI C-/D-PHY interfaces on Qualcomm SoCs.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
new file mode 100644
index 000000000000..ef712c5442ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI PHY
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+description: |
+  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
+  supports D-PHY or C-PHY interfaces to camera sensors.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sm8250-csiphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  vdda-csi-0p9-supply:
+    description: Voltage supply, 0.9V
+
+  vdda-csi-1p2-supply:
+    description: Voltage supply, 1.2V
+
+  '#phy-cells':
+    const: 0
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    description: CAMSS CSIPHY input port
+
+    patternProperties:
+      "^endpoint@[0-1]$":
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 1
+            maxItems: 4
+
+          bus-type:
+            enum:
+              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+        required:
+          - data-lanes
+
+    oneOf:
+      - required:
+          - endpoint
+      - required:
+          - endpoint@0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - '#phy-cells'
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8250-csiphy
+    then:
+      required:
+        - vdda-csi-0p9-supply
+        - vdda-csi-1p2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,camcc-sm8250.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    phy@ac6e000 {
+      compatible = "qcom,sm8250-csiphy";
+      reg = <0x0ac6e000 0x1000>;
+      clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+               <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
+      interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+      vdda-csi-0p9-supply = <&vreg_l5a_0p88>;
+      vdda-csi-1p2-supply = <&vreg_l9a_1p2>;
+      #phy-cells = <0>;
+
+      port {
+        csiphy_in: endpoint {
+          data-lanes = <1 2 3 4>;
+          remote-endpoint = <&sensor_out>;
+        };
+      };
+    };
-- 
2.45.2


