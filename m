Return-Path: <devicetree+bounces-268806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILw/KjQ+oGmrhAQAu9opvQ
	(envelope-from <devicetree+bounces-268806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:36:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0A81A5C3A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 281FA30ECBE6
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45E53815DE;
	Thu, 26 Feb 2026 12:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nhmeTF7s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD1937B3F4
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 12:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772109272; cv=none; b=rV4MpuLm0ZTdNchKJRLXBN4K651Ny38vCD3nuioOV8Iv17jEaz9E4ovEPuJ6FBi2U5AHl1NcRMeCYY15Szi5TbHsjt0yGLfXPVXcc60bI3CjZIPHwJ46ErBbECCo9iqqlGE+/O3I8Tekh3j4L2AoKcVPGKPxWnYJ7yq/IJwOmhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772109272; c=relaxed/simple;
	bh=Fb14ZMbHWSFCbI5l4Xnt+AafwH2WdWeazS5XcLdJBpU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bCSBOWIJkxoFqIpHbXkEM0xSHVFhctJdOCml4ZwZztHbfjcVndiaEc+kRU/5kEQTWkPmdLuVI4QiL2kA0moqzGOe4PABWY0VmkKjh4aXAy7PqDD1aedCqD8v2rdtOdUo5u7ci8hT8U0knivhKAkpph+vspQiYRCdvq/MPmCcVdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nhmeTF7s; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-436356740e6so843984f8f.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 04:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772109269; x=1772714069; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lD5KPsmZFgAJkA+qIS4dUtEngpbV+kIY4VWOK3YvjjE=;
        b=nhmeTF7s+VIRTEmh0Q9hYGs20ut0Po6s9KLxpUxTGqXmu22CW5DLAepfeL4TXl0ovC
         kVz6iAFVMrrmE+p+e6vtJl93XN/aIMS8OW8AgtX2bywzHqXAFCEXEEXaFqlmPgLxvbJ9
         fLjvyvpjDmxh2XYNbqeBVpHLBr4JwKKOSguTcJtPqVJGwipxmrxYQtwN92LOEv5Oe7sN
         8L43sgR98/o3igLdKrTQgfNpGlBibXBZRniIbweBpG6A/80PBlBkcJLWBOUNzF+CjRPe
         bDp1DJZNEe+nUxw3dCgAbqbj8Rsa3Pb7+1GHkVCfMtVx2zNbwmNSjHpMNqJZV90n2snT
         qG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772109269; x=1772714069;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lD5KPsmZFgAJkA+qIS4dUtEngpbV+kIY4VWOK3YvjjE=;
        b=nBa7O4y6xnAc942OrNxWHFUY4A4BMynqPf09Epk78rAneNHbSkwWGHOrE0XcV1oNeq
         o9x6pcybMGOOjjhFq0dQwUlOeU8aEeiDMk33DQnsfqvgW22pjDcLDKxw/9P+Mvfy9HRl
         7JFsBQC88CLxcsLdI97OvVgjHP2OJRFqoIU8hug2a8XDOtw+z5rKNyRYOpmdUZilo0cL
         JOvcESFm0CqInxvaUZVb8bKwmVg19YfCT4s9d5dVBNu2OiqBKgvYUNyfAVNFuaaEBxUV
         8gqZISTBQFfu3oyWmZU87ebDLOCJVrXRD4yhVxrEBny6BEEfMM8mZEMk4LA8PWuMWf3a
         /NRg==
X-Forwarded-Encrypted: i=1; AJvYcCUFrckMrFG+qNvI0LdaQGW9CKGATsq13fcL7wvGcFVPq5AOj9d/RsyvNDp2zFyK+XdJKBK3oBfxURXh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0EqNVQnLvAT8+kPrbDONnPKd7PPvT81naoc3h1IfJTZP7mG1t
	H3K817iSQq1ZJFKe01WH4WhMeMl9sb6orHBXtsoyrxEMM99FYCiPw0gIZSQ1KWRKqCg=
X-Gm-Gg: ATEYQzxKRfeOs1Nk41Ipyodh63Tx9fPHBnbDDOwCBd+gRGemngiaq/s1MHLBr40+T19
	uX2b2KvbxdX6JYvpRFY9LEQXTHZhTeV9C5BMrxI7rXBpRRxPy9VpLsyhT5zOMK0amonTr1MSFmC
	d37Quupec4BBkOnmOEu1ZqbcVqJ9TJ90qosZPDmMdfWmHmCnIqxbuMMpB8eLRlwrt96IsSEsTM+
	WV11EB97tV8TqOJD6glE92RMeP5fkShVhzFSktdmPXtFKFWFi2Ggdf69Q4jYbi2px7v26y66RI6
	0auwP0QFTvvShwczwR8FhuyNiHr3WZ4pTrmGgst6/gwr0sdEQVpTU8sNarKIQpTC+jkGgSk6bqz
	wT5k/3hKpW+jh6VNOmBz/L+ETQSpBw4kSAlA3KFnrz2yVRk1w/3RV2O4kr1cE53+Ozlco9ypiLs
	TPYxhkvDihdW814/7mbfkJWANSgBs9Ezsnk8+RlRaAOIOmzDbCM+AfuiLESVkIbk7T
X-Received: by 2002:a05:6000:25c3:b0:439:704a:9838 with SMTP id ffacd0b85a97d-439942a422fmr7535125f8f.19.1772109268652;
        Thu, 26 Feb 2026 04:34:28 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d40004sm40800663f8f.21.2026.02.26.04.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 04:34:27 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 12:34:25 +0000
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
In-Reply-To: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4179;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=Fb14ZMbHWSFCbI5l4Xnt+AafwH2WdWeazS5XcLdJBpU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoD3UAtH5OWrfI2Nzrg61AauaeQ+EKtK0s9CRd
 kFZkDKQz5iJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaA91AAKCRAicTuzoY3I
 Ooc3EACde/1mls/OZ5YIwdSIyNFbLxLe5xeEYl95RXJBrTSIZdPMcNOq1M7juovHYI2ium70DLp
 Cw32/JoAWQHmfsJbxP4oD+602/FOCAj6RY6K6vK8Q+ToMZRcPzLrObmIrUZnvbfFJXuyk109z3K
 wht2iAsbOxuoRIlXMhZFBxjY2hLztnkOplXlU+Z2g+KPvHbzC1B0XIRjjmkBcAucxm2VQC1TxYR
 dp+Vca9vg+sS+r0IpEGmy6cHgmlF/AWK9O0DfaXgJiHArOn86noGlOFn1JclG/iQo09OV96YHzC
 5Qnfyu9jH0abLcoN+pTKEZJ4RxbwlDrs6L5z0nOc8WOwXfBdkUtSWuBQ2MiO2QixvGiktksQBDy
 vgYP/adlK39lp88AInfn3kZo3nW7NkSrxa7M+CTNLYWih8dxe+Rqj0yKR818/HUg4+P1u7ULTp8
 VVO5+HPU8pEAXgNJTPlCgYrkkpkWEf3BMd/to651taRP7VG8zOU30VVzsME0ZSXHYxDqXIhRcJQ
 UtawfKc/f9cfLAKciY27ZAkYWPU0AhxdifCAN3AhCeCKRoCS4v4dkyQ2qaBxhQ6FU/arLklyQ/X
 +9HA++9Yp/01KmkXRfsubndsiohiesUI5vI7hsMGwSCRaN7/jnFUo3Ozfc/KHtghn3BZzpYX8L/
 OlQKy+tem1ap41g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-268806-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ace4000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 2B0A81A5C3A
X-Rspamd-Action: no action

Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
PHY devices.

The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
have their own pinouts on the SoC as well as their own individual voltage
rails.

The need to model voltage rails on a per-PHY basis leads us to define
CSIPHY devices as individual nodes.

Two nice outcomes in terms of schema and DT arise from this change.

1. The ability to define on a per-PHY basis voltage rails.
2. The ability to require those voltage.

We have had a complete bodge upstream for this where a single set of
voltage rail for all CSIPHYs has been buried inside of CAMSS.

Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
CAMSS parlance, the CSIPHY devices should be individually modelled.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 +++++++++++++++++++++
 1 file changed, 114 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..c937d26ccbda9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI2 PHY
+
+maintainers:
+  - Bryan O'Donoghue <bod@kernel.org>
+
+description:
+  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
+  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
+  modes.
+
+properties:
+  compatible:
+    const: qcom,x1e80100-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: csiphy
+      - const: csiphy_timer
+      - const: camnoc_axi
+      - const: cpas_ahb
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  vdda-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - vdda-0p8-supply
+  - vdda-1p2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/phy/phy.h>
+
+    csiphy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+                 <&camcc CAM_CC_CPAS_AHB_CLK>;
+        clock-names = "csiphy",
+                      "csiphy_timer",
+                      "camnoc_axi",
+                      "cpas_ahb";
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+        vdda-0p8-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+    };
+
+    csiphy_opp_table: opp-table-csiphy {
+        compatible = "operating-points-v2";
+
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            required-opps = <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            required-opps = <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>;
+        };
+    };

-- 
2.52.0


