Return-Path: <devicetree+bounces-160153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCCCA6DA67
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1EC71882115
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0621725EFBF;
	Mon, 24 Mar 2025 12:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XlmsQXd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390BD25F99C
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820749; cv=none; b=KioYlQppCM4qzusx58OPZPkcENP5lzGdnFfrt2AXuo67LBm7JJT2JqCxrbVbZUfjawa+EICv2TdoOzdR+Nb1isP43huOs4Rpkqv2WkRO4+iauvtAUiluCGhgHMQtzNime1Ct99JZtFiZDU9qHh9tjlmCJP77D4/dk+n5nOVTuuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820749; c=relaxed/simple;
	bh=chitrqrnSa6cJWsoZBuUNvscJvUlLOoj3Yo6FWLqkkY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N0ud5apHDTWHWji8/HX8WeTLMzm5JtFXOsPp3LXOMjWFKMMXBb2bRi4Z6iG5NDaGu6jE2u7XXF0jRnCpQB148X8m/Tg3bfs58YKKjtyV72d6CC+9rWEIwxqL8dld/8GXuZcEXfe3ustz5n8fzQ6jieGYJEeQG3TaGsEuAopeky8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XlmsQXd0; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf89f81c5so4548965e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820746; x=1743425546; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LzQkT2/vQ7md+WCBkEBxd0za9gJ+1+dJS4YU8fFuils=;
        b=XlmsQXd0Wz8I4pY28KoUIEZVjuQWPht89M9yhZJWoiSOrQfNeCq6o2Ud458tOG0gFy
         joJFaZ22O432JwXVbvpUevrP0qAaInsUOgflWn3vFNO69sprFJuyJTBBhM/auan/W7GG
         MbuT+0aDtE5+RlKEeu2hocC4zw4tLPCr+NmjmU7CaxS5FYjynOrW5vwytgz1aKZqgHhR
         HmX13ziOEtf7N5pG0pNmrLaCN5SC+arCQhuaaS3rajzmJRN1wkZVzl1WdYRpnZu8jQqb
         79qTUm8Qc6wAJHqcqwI/5XUylUoS1mOlX+fTnvV20/uigUhLXO+RLGQ9D2hhKH5C+ExF
         oabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820746; x=1743425546;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LzQkT2/vQ7md+WCBkEBxd0za9gJ+1+dJS4YU8fFuils=;
        b=Oj0NpicBY8PfulTkVTkq3uwTit5g5loVnRqSqWQm82DIgbXTttBHMpOCMi2T6JTBP7
         KRtfUk/y+ObXc58RvP2Wm9SlM0SGkFYfHp3GJJddQ5ev16w15eg7LDE/dC44sWfTLThW
         r390r1YWAZpIMp4hYYh9lJE/Ir6sv05KZ8bZ+fAFPBJjWRZZ/NbrgEh07I5hmKsv0FF/
         x0XgcaP9fz1qWEWPg/sr66Pwpe1v71l7xq+VfUXsHGZA+uK2LW0MU3Q4p9dYeiGrFC7L
         TotagQlMX301xrPgYmyX2Fmc0zrb+HH/DYkraHLcat1wEKVQlR2RnI86AxRTr95EsweD
         Deyw==
X-Forwarded-Encrypted: i=1; AJvYcCXIzKIeXtzIGF31hheL14rzSea7v4dzrTWa2yCzILNnw8a4DPw/vIFM4qp9CJMM8NRi4jdlydXsGxUX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvv1tjGHElcleVd/Un/iGsIabLzmotJUqFo+VSNO0z7pYOM6QG
	Es0uh7Kk3c3E0NTmNlReicRS0UGb4xr3oaoY0wP44oTWexydvz2WIdNQsQ4NoK0=
X-Gm-Gg: ASbGncuyIPuYFRaZg+7lo/IVM/rwKoCd212FIj3eYg2NA19+YhA7u9KynNqkmaLH4PQ
	ZHlup1vQ0xGqX0pZ79Bhioije/95gLsa6Vmt8PpZqNR9mgcizf7gpGeuxyKBg9mZt+6Xs1nlQ+Z
	uJ3znuwLEFtUhtYipw9zKRIaH/YE2Kt+5iZ1G5o760JO1OzgCbaCRUGbm/PiEBSEdr85WUmNdvp
	YwFNN2Lyl+jlmQXkctLifKdIC+/pYhYRLGJ/gj0nxk3IyugtDCOISh2m3CK870tzX/lTTJf5yux
	bVXXu9cISNEbbGbHbSY3+TSBkQQkicxQdIsoMPFLD0Z9ESTSDdUP1U+E3Q==
X-Google-Smtp-Source: AGHT+IHigrY3PHOFldlCzJ8vlwnInEATFLh/99kGQvln1Q9qBXvO1GQ8JqQwrXTWTD0MPZYBaFhJrw==
X-Received: by 2002:a05:600c:c08:b0:43b:bbb9:e25f with SMTP id 5b1f17b1804b1-43d50a526bfmr48046505e9.6.1742820746484;
        Mon, 24 Mar 2025 05:52:26 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fd277d5sm120614535e9.19.2025.03.24.05.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:52:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Elder <elder@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: net: qcom,ipa: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:52:22 +0100
Message-ID: <20250324125222.82057-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/qcom,ipa.yaml     | 124 +++++++++---------
 1 file changed, 62 insertions(+), 62 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index 1a46d80a66e8..b4a79912d473 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -210,70 +210,70 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
-        #include <dt-bindings/clock/qcom,rpmh.h>
-        #include <dt-bindings/interconnect/qcom,sdm845.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interconnect/qcom,sdm845.h>
 
-        smp2p-mpss {
-                compatible = "qcom,smp2p";
-                interrupts = <GIC_SPI 576 IRQ_TYPE_EDGE_RISING>;
-                mboxes = <&apss_shared 6>;
-                qcom,smem = <94>, <432>;
-                qcom,local-pid = <0>;
-                qcom,remote-pid = <5>;
+    smp2p-mpss {
+        compatible = "qcom,smp2p";
+        interrupts = <GIC_SPI 576 IRQ_TYPE_EDGE_RISING>;
+        mboxes = <&apss_shared 6>;
+        qcom,smem = <94>, <432>;
+        qcom,local-pid = <0>;
+        qcom,remote-pid = <5>;
 
-                ipa_smp2p_out: ipa-ap-to-modem {
-                        qcom,entry-name = "ipa";
-                        #qcom,smem-state-cells = <1>;
-                };
-
-                ipa_smp2p_in: ipa-modem-to-ap {
-                        qcom,entry-name = "ipa";
-                        interrupt-controller;
-                        #interrupt-cells = <2>;
-                };
+        ipa_smp2p_out: ipa-ap-to-modem {
+                qcom,entry-name = "ipa";
+                #qcom,smem-state-cells = <1>;
         };
 
-        ipa@1e40000 {
-                compatible = "qcom,sc7180-ipa";
-
-                qcom,gsi-loader = "self";
-                memory-region = <&ipa_fw_mem>;
-                firmware-name = "qcom/sc7180-trogdor/modem/modem.mbn";
-
-                iommus = <&apps_smmu 0x440 0x0>,
-                         <&apps_smmu 0x442 0x0>;
-                reg = <0x1e40000 0x7000>,
-                      <0x1e47000 0x2000>,
-                      <0x1e04000 0x2c000>;
-                reg-names = "ipa-reg",
-                            "ipa-shared",
-                            "gsi";
-
-                interrupts-extended = <&intc GIC_SPI 311 IRQ_TYPE_EDGE_RISING>,
-                                      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
-                                      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
-                                      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
-                interrupt-names = "ipa",
-                                  "gsi",
-                                  "ipa-clock-query",
-                                  "ipa-setup-ready";
-
-                clocks = <&rpmhcc RPMH_IPA_CLK>;
-                clock-names = "core";
-
-                interconnects =
-                        <&aggre2_noc MASTER_IPA 0 &mc_virt SLAVE_EBI1 0>,
-                        <&aggre2_noc MASTER_IPA 0 &system_noc SLAVE_IMEM 0>,
-                        <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_IPA_CFG 0>;
-                interconnect-names = "memory",
-                                     "imem",
-                                     "config";
-
-                qcom,qmp = <&aoss_qmp>;
-
-                qcom,smem-states = <&ipa_smp2p_out 0>,
-                                   <&ipa_smp2p_out 1>;
-                qcom,smem-state-names = "ipa-clock-enabled-valid",
-                                        "ipa-clock-enabled";
+        ipa_smp2p_in: ipa-modem-to-ap {
+                qcom,entry-name = "ipa";
+                interrupt-controller;
+                #interrupt-cells = <2>;
         };
+    };
+
+    ipa@1e40000 {
+        compatible = "qcom,sc7180-ipa";
+
+        qcom,gsi-loader = "self";
+        memory-region = <&ipa_fw_mem>;
+        firmware-name = "qcom/sc7180-trogdor/modem/modem.mbn";
+
+        iommus = <&apps_smmu 0x440 0x0>,
+                 <&apps_smmu 0x442 0x0>;
+        reg = <0x1e40000 0x7000>,
+              <0x1e47000 0x2000>,
+              <0x1e04000 0x2c000>;
+        reg-names = "ipa-reg",
+                    "ipa-shared",
+                    "gsi";
+
+        interrupts-extended = <&intc GIC_SPI 311 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
+                              <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+                              <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "ipa",
+                          "gsi",
+                          "ipa-clock-query",
+                          "ipa-setup-ready";
+
+        clocks = <&rpmhcc RPMH_IPA_CLK>;
+        clock-names = "core";
+
+        interconnects =
+                <&aggre2_noc MASTER_IPA 0 &mc_virt SLAVE_EBI1 0>,
+                <&aggre2_noc MASTER_IPA 0 &system_noc SLAVE_IMEM 0>,
+                <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_IPA_CFG 0>;
+        interconnect-names = "memory",
+                             "imem",
+                             "config";
+
+        qcom,qmp = <&aoss_qmp>;
+
+        qcom,smem-states = <&ipa_smp2p_out 0>,
+                           <&ipa_smp2p_out 1>;
+        qcom,smem-state-names = "ipa-clock-enabled-valid",
+                                "ipa-clock-enabled";
+    };
-- 
2.43.0


