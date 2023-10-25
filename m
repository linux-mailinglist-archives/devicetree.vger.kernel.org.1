Return-Path: <devicetree+bounces-11606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D737D637A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:37:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67467281CDF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7EB41A284;
	Wed, 25 Oct 2023 07:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JNsFAoZi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D6CF9EB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:37:27 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E1A385D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:12 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40850b244beso42376075e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219310; x=1698824110; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FeVaWNnyeNRSIzE+gpNieFC+q7WQJWKZkR02hpS08iA=;
        b=JNsFAoZiFDLQX7G2YXJfrHGgV50FR5iQTffYjY2CUt+SUoQ9Yuh6qAYX0UQjoVAyPq
         O12vmjnP932eaj5RXEbkyajDE6dPul0Zt3pPGP6UHQsgkuwb6knkRb+dOIJO/JychmhW
         hbr517fzU0s1I2a+9ao7SMUDyeXK53k6f5lR8ycLBs9Iz7rDeK+1DJZyZ1vkSxMs8Nds
         wLZvsybqUm9yhrC5ui7d8qtGEszyeCtBBQqaDu9BAo9e2ipLaJD5Lqxr+H8i5/ffVe7W
         yvi99yOAEF6KwftLnpUlN7AdKdn9RF1ZhGKvA8gjMWRHUb25eE0KwJUJQ/Az1VcV0MOL
         yN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219310; x=1698824110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FeVaWNnyeNRSIzE+gpNieFC+q7WQJWKZkR02hpS08iA=;
        b=krc/wSCZNEkRnH/nATAB23dTNccJbhcl9NhXEh4q9hKVWJJ+gUWijrUJQnT6mNeKDT
         8iPiL+coNC40irtq4Ky70up0DPT2I4Fmyi2N+QJYmA60vjmpVMbCozvDDp7UGv8ZKiUX
         PTW56gQTL6+HzeTsNSGO4J++J5pj0+1b/anHA4+wThXZuo3hwQktkk7FNP6bv1VkRhK/
         D0zQyITmjnbm4MiR9Jpc4r4wusEsCuDEKO2hlB0tLG6TNhkZMIjBBv1wcEZt0L20WIrO
         3UXXZigD+nKchk4+sxEKtHhJRU4PY1ACn3gf3t9ucHB8vSriZf8qt7WF52herza4YDyD
         jveQ==
X-Gm-Message-State: AOJu0YymyMFSDOaZnk0np9UuAEzlItZczisMzblOCgOgKIz/ZD5CY3g2
	IHEaZhQydsQqMQZ9agWa7fAnaw==
X-Google-Smtp-Source: AGHT+IEoONYynpBbhg6LTU7YNc9309l0erhRMfCJ4DvMaMUvjthqw2ltUmMX7x/deOmgOiYmoeIoQA==
X-Received: by 2002:a5d:654a:0:b0:32d:95dc:c065 with SMTP id z10-20020a5d654a000000b0032d95dcc065mr10482391wrv.19.1698219310309;
        Wed, 25 Oct 2023 00:35:10 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x18-20020a5d60d2000000b003248a490e3asm11449058wrt.39.2023.10.25.00.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:09 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:01 +0200
Subject: [PATCH 3/8] dt-bindings: display: msm: document the SM8650 DPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-mdss-v1-3-bb219b8c7a51@linaro.org>
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3887;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=A8kBi2PrODlpOXZ493WRi1fPCLR+VF/HPHoWKYNttUE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUmzT1vJJHda3TnDlgizA2nyQee2qiYeQfMv3gj
 b9KHq6WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFJgAKCRB33NvayMhJ0YmOD/
 0Wy6xv8g7QDKWntJIJYjxPBFwl9LLdnNGSqpTiVNiq3N2NjSJqCz/6aBrvNuko5n2A1BkrPW0bkN5T
 HcBeeU6VPjvMhILDwzAgp85FVmE9UdwjKpjhJ5XLETt7Ds4Ib3orhz6jvFzEk67mtSzO0AO/U8YVob
 ZbvGRM9cuW3SJbB/LkgZAbZRf2M/Bb8EDA+zbiPtBnewMPH1El0mItaqn9t/YYgL3Dw+LwuyziSO2L
 +K3JdM90d0zBQWG3huUV8/wAUSFQtrSSTnEiLrLgRdjzg6zNnKfVe0UU80cuXJvNafb9lBn/RiwDEp
 0NEa1JGd8nedr22ZPDJHAatQMe+gSeizmOZCgf5bGYrarFQSvO2/9Pk3xrY3eRZ6NQoPRIy8iJAwH5
 HGSTrWIsFGg6VKDMh5QT+izBqdRSV0THi4wZpxjeoYqItPLYOfqkkVcPCCaM39ol1kAXiUOd9KDNbQ
 4XIw2ymN/fejn7/M4cGIORldAgzHP4DM49RvMXJBfjLM6CckuMmJpoy7KJzWFZ6ptpySVlSH1Ipyps
 46xfd52NZEVQ7AIt+G7h9e3uugYgQYF/2DcmDfbGHs/wKPRCsNkfYrKcl75y/USDZxCXcyKLTd4jIE
 4XISf78x+oEHdsTKDrJamtofLsiveiFShHPqRemtvXg/5hfW8+n/YXUstxjA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DPU Display Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      | 127 +++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
new file mode 100644
index 000000000000..a01d15a03317
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/qcom,sm8650-dpu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8650 Display DPU
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+$ref: /schemas/display/msm/dpu-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,sm8650-dpu
+
+  reg:
+    items:
+      - description: Address offset and size for mdp register set
+      - description: Address offset and size for vbif register set
+
+  reg-names:
+    items:
+      - const: mdp
+      - const: vbif
+
+  clocks:
+    items:
+      - description: Display hf axi
+      - description: Display MDSS ahb
+      - description: Display lut
+      - description: Display core
+      - description: Display vsync
+
+  clock-names:
+    items:
+      - const: nrt_bus
+      - const: iface
+      - const: lut
+      - const: core
+      - const: vsync
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    display-controller@ae01000 {
+        compatible = "qcom,sm8650-dpu";
+        reg = <0x0ae01000 0x8f000>,
+              <0x0aeb0000 0x2008>;
+        reg-names = "mdp", "vbif";
+
+        clocks = <&gcc_axi_clk>,
+                 <&dispcc_ahb_clk>,
+                 <&dispcc_mdp_lut_clk>,
+                 <&dispcc_mdp_clk>,
+                 <&dispcc_vsync_clk>;
+        clock-names = "nrt_bus",
+                      "iface",
+                      "lut",
+                      "core",
+                      "vsync";
+
+        assigned-clocks = <&dispcc_vsync_clk>;
+        assigned-clock-rates = <19200000>;
+
+        operating-points-v2 = <&mdp_opp_table>;
+        power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+        interrupt-parent = <&mdss>;
+        interrupts = <0>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                dpu_intf1_out: endpoint {
+                    remote-endpoint = <&dsi0_in>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                dpu_intf2_out: endpoint {
+                    remote-endpoint = <&dsi1_in>;
+                };
+            };
+        };
+
+        mdp_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-200000000 {
+                opp-hz = /bits/ 64 <200000000>;
+                required-opps = <&rpmhpd_opp_low_svs>;
+            };
+
+            opp-325000000 {
+                opp-hz = /bits/ 64 <325000000>;
+                required-opps = <&rpmhpd_opp_svs>;
+            };
+
+            opp-375000000 {
+                opp-hz = /bits/ 64 <375000000>;
+                required-opps = <&rpmhpd_opp_svs_l1>;
+            };
+
+            opp-514000000 {
+                opp-hz = /bits/ 64 <514000000>;
+                required-opps = <&rpmhpd_opp_nom>;
+            };
+        };
+    };
+...

-- 
2.34.1


