Return-Path: <devicetree+bounces-238558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 088DAC5C52C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 25FD0351AA2
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C54F3081B4;
	Fri, 14 Nov 2025 09:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="gR1zIbKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8BD306B2C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763112678; cv=none; b=iCGq/L5Ho9Cz5M00MSU+SDDOtADpJZ0sfxUueJyK2w9V7EAKA8O6kFOlpumM505rmqddTET7VZmzJkurxNVJr6a4rQwedzXeMRUokGLhHhnFxGspLJLVKar7P3YZrlgrH6vShBq3IXVb4IYMIpTE2Vq/y8WGoCWRG/Ec7UbZmg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763112678; c=relaxed/simple;
	bh=q0tdVNOipK0Zpcd1nOMTcB1YUnAJWRHGAYSLJd0+tUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aGhSdQ88xBv0t+gA1AxqgkRQwt5ePEEfwmoVRemZaoUFKxqDYExrsKeVq+u7wcozHi+8HjyOvaXEsMTG++4U2q32//1UjntZJKNX1kZc9r85yNZn+PcoeNAKfRnOJehRXO+2uXz8f9jRa1lTaNsRYGv9f2Cbjh8p6m6f7moMXuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=gR1zIbKF; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b72bf7e703fso293466766b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1763112674; x=1763717474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X8JMr12gzEjNmdYRXSFO9HGUKWRef+CBtmkwn83lm74=;
        b=gR1zIbKFr1KabG/XKfdccpKKfRFNJifMWvqmFXIV3ZEyufzgwaU7Ise51Xkyy3X6g9
         Zm9Uc6pMtIP2sUanbr8ubnYuVIA1CC5pUWKDOtcDQZXBmDUhYI6WYRCFYe/tePmW+KbX
         5j1BWQfNpIVT6Dmio90Vv6hlnaxbOH73WkGZDSUyynIyRe3ibsPO9Zxs4O+gUiCEx+zH
         ngNrf+NEhTPU+pCRBadJP18IRrZa4XJpVOE7M5Vqg3JM227S2UlvyaK1UQxZsp4Ulcq7
         n1UWAYWzxUGL+PtN63Asj8rJlll03aTdRsf/7gds+Rp9h1qY9zm833wu8lL90EdQWGzo
         erbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763112674; x=1763717474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X8JMr12gzEjNmdYRXSFO9HGUKWRef+CBtmkwn83lm74=;
        b=P5dQ1xDRQhu2zzovSIor/wKYVO7Ae3BOvQlTqeW0uPFouAZtxLIwloIbGklhaG4Cuo
         g5A8AGfdzjCMkyFXpM6SxVq5xMD841yYa8yjnSNO2Cp0qujd+YE4/vNN8J9oA1BtmQoN
         QZcocjGYfDyabfGcMQKRbaoWQfD+gnWeEzSqcGlYiBC8wgw8Zb58qhvhz1nAL8eI/+ir
         NkYfL0LWD99b7B4Ypy6h/mmqwCJkQYKLixkL9pOpv5hkfHc3u6h4bMX5O3qp1BbTySws
         XtctwkVSbivNYdosf46rPIb2YkRquQ5nE1xbcD47VvL3sdlEB2DADd4ZYRAokxOgTJLS
         f6xw==
X-Forwarded-Encrypted: i=1; AJvYcCVEMFkHOdN1VpZwTfKAxikIljroJ+xOlu16nHkppBhn6hXLMnKjoGA8LOUDkLKbz2cAKm7XT4ryg6dV@vger.kernel.org
X-Gm-Message-State: AOJu0YzF2vx0KyXWeptIwjaeALGNKLkYmW4t/oIVV6wLdREELJDJr+97
	6sdSD11INS/e4uojGGn8H4nnYN3Jx3nNB5LkRSYSKc+l2xj7aF+1ZIhKBacpo70r+hw=
X-Gm-Gg: ASbGnctd0xlfDaV0CyFUlp6bxfWnEvygs9qGs7KXwl2q+ItdJnlExblP2kRckdwEkAQ
	Rkpa/nu2moQmyaEbk8RbGOp7g7vg2xukPS2EJRUeybtt+OQuOHW99Vsv9W2DgzT+p9MuSvFajSM
	C0frMHBMdnWv4Mml28nvvrLOBgAfysPxlwfsisc2swQmQ/UCvXmRnn9n3LfGuR2Fl4DFcG9sLq4
	6Jyu+PCkhIaDZFR59YVfyg2nI+wDjb/PLZqni1akE9WNdGdceQAnSTYo3DxvgIdYx+gCaItRZKN
	t659BZiz0vcZwNnC6YHUgU4HO2aFwzxqYo3e0LuiFyclX85OVEDmHVlQE99jH17zmItvhtjXoxs
	QqgzwOY3Dj1K55t9MbcIRuzRKdfvBsRfhWPZdBJhX40wjIPsU3kWJSLPwWclsxrs0dCIYrcM9+E
	A31JfsPzcgx6II7gEKls+vTY0DDTzn9527V9L+FfKqa0Dwv3elxYlHXLorlgM8BYL1TuNiI49wm
	ume5geklc5Fkx4Hw0D4nzKIOMnMQ765xw==
X-Google-Smtp-Source: AGHT+IFVw6W18ObaGtKJ10Xcu6/Wv8WS6lJaqKvbaiYmoVzwfv2DfFS03nbiscfYrjzyMjgufvOJfQ==
X-Received: by 2002:a17:906:794b:b0:b6d:9bab:a7ba with SMTP id a640c23a62f3a-b7367983f21mr198473566b.42.1763112674394;
        Fri, 14 Nov 2025 01:31:14 -0800 (PST)
Received: from [192.168.101.179] (2001-1c04-0509-ec01-156d-fa6e-7f19-0b67.cable.dynamic.v6.ziggo.nl. [2001:1c04:509:ec01:156d:fa6e:7f19:b67])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80841sm352104366b.41.2025.11.14.01.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 01:31:13 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 14 Nov 2025 10:31:09 +0100
Subject: [PATCH v2 1/5] dt-bindings: interconnect: qcom,sm6350-rpmh: Add
 clocks for QoS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-sm6350-icc-qos-v2-1-6af348cb9c69@fairphone.com>
References: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
In-Reply-To: <20251114-sm6350-icc-qos-v2-0-6af348cb9c69@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763112672; l=3585;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=q0tdVNOipK0Zpcd1nOMTcB1YUnAJWRHGAYSLJd0+tUw=;
 b=FAC/10Tl8wr016SZ4IcHv4CK42tFzSJwEkm8di1F3bIXqCBdcMAPpX8vgYbP1x+OpJTVeyIQL
 wYRjI9Mf+M2Cq785SPpuAuPbLGIfZNanyu0KKe2VDC7KeR5gqXvFHK3
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the clocks for some interconnects to the bindings that are required
to set up the QoS correctly. Update one of the examples to aggre2_noc to
have an example with clocks.

Also while we're at it, remove #interconnect-cells: true as that's
already provided from qcom,rpmh-common.yaml.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/interconnect/qcom,sm6350-rpmh.yaml    | 65 ++++++++++++++++++----
 1 file changed, 54 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
index 49eb156b08e0..2dc16e4293a9 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
@@ -12,9 +12,6 @@ maintainers:
 description:
   Qualcomm RPMh-based interconnect provider on SM6350.
 
-allOf:
-  - $ref: qcom,rpmh-common.yaml#
-
 properties:
   compatible:
     enum:
@@ -30,7 +27,9 @@ properties:
   reg:
     maxItems: 1
 
-  '#interconnect-cells': true
+  clocks:
+    minItems: 1
+    maxItems: 2
 
 patternProperties:
   '^interconnect-[a-z0-9\-]+$':
@@ -46,8 +45,6 @@ patternProperties:
           - qcom,sm6350-clk-virt
           - qcom,sm6350-compute-noc
 
-      '#interconnect-cells': true
-
     required:
       - compatible
 
@@ -57,10 +54,54 @@ required:
   - compatible
   - reg
 
+allOf:
+  - $ref: qcom,rpmh-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6350-aggre1-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS PHY AXI clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6350-aggre2-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre USB3 PRIM AXI clock
+            - description: RPMH CC IPA clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6350-aggre1-noc
+              - qcom,sm6350-aggre2-noc
+    then:
+      required:
+        - clocks
+    else:
+      properties:
+        clocks: false
+
 unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/qcom,gcc-sm6350.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
     config_noc: interconnect@1500000 {
         compatible = "qcom,sm6350-config-noc";
         reg = <0x01500000 0x28000>;
@@ -68,14 +109,16 @@ examples:
         qcom,bcm-voters = <&apps_bcm_voter>;
     };
 
-    system_noc: interconnect@1620000 {
-        compatible = "qcom,sm6350-system-noc";
-        reg = <0x01620000 0x17080>;
+    aggre2_noc: interconnect@1700000 {
+        compatible = "qcom,sm6350-aggre2-noc";
+        reg = <0x01700000 0x1f880>;
         #interconnect-cells = <2>;
         qcom,bcm-voters = <&apps_bcm_voter>;
+        clocks = <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+                 <&rpmhcc RPMH_IPA_CLK>;
 
-        clk_virt: interconnect-clk-virt {
-            compatible = "qcom,sm6350-clk-virt";
+        compute_noc: interconnect-compute-noc {
+            compatible = "qcom,sm6350-compute-noc";
             #interconnect-cells = <2>;
             qcom,bcm-voters = <&apps_bcm_voter>;
         };

-- 
2.51.2


