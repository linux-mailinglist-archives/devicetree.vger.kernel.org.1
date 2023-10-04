Return-Path: <devicetree+bounces-5706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEFA7B7896
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:20:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BA0A21C204F7
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5F26FCF;
	Wed,  4 Oct 2023 07:20:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B4D6FDC
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:20:17 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ECF4BD
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 00:20:14 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9936b3d0286so321322266b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 00:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1696404012; x=1697008812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTpsAPBi5GKu/J1Fc/6++nPykYaaAvbzc3zwdXb4wDg=;
        b=pqMVwO9Zp+hquPo4VkRW1t87EKzJ2jjJu27JTgi/oMKr/Cbd03x6tE/PM2R+ZNG6R3
         wdAbx1vkBh5zUsGdeABbIatwQnsTti1dCQPG2pA/1UTnUVsrkwd7TqbMOqbBkMIyeDX0
         iA+FPMrJLfgpJdZa4uH8N52cCIqfeJ1mFtsil5+PpDm5p0ia0WADG2fqiZLLPJYxFWj7
         fAsH4o09YUB2WPGdnxhNsg3zXxYRVQgpZJoEwspD5iSQ7N7FsGL7Aj9GA/hHCvo2K2Ri
         qifTjlBM9obtIUjT4CABfWk3isWmcHclKwUDoJvSidzWWsSK55QbNZNwhH//8sZtyUDC
         znEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696404012; x=1697008812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bTpsAPBi5GKu/J1Fc/6++nPykYaaAvbzc3zwdXb4wDg=;
        b=m86jrfrlrCY+yaY0fFUEpM18q9nH9xaxahfxw0E0QyTmN5NhZaAUBs8N78nJSSHHR4
         fHSpyN/XIvIpgE1XYoTa98UzXaismV4FNjWvp4aQchKFxxcRtS4QvRu+PRE2cAqPDmjt
         BRsy6RnLVPjmr1mdCeMug42iirphMuxih3Cyq4reaDOCKLgYADoP68xZCG8FngxY/mIQ
         HckkTnfsZkUOGYVcwViDcWxZbgZJFafv2PUugA8VnLDqIQdDHUYVTDOzAN8Gk+0qUb4l
         oBBbh3KIMJJ/S6UHHKauozQbyZrZeSoMAB7zbiyI6su9tzO3QwfqawxSvwLCUUlYn/oZ
         n6Hw==
X-Gm-Message-State: AOJu0Yz2viuZ2sx4aDokBe1lpf9QV/bXN4mOe94sP8gwiR2jinGxXqAD
	4e52RAmVB28JIZy6rlCNBh03DA==
X-Google-Smtp-Source: AGHT+IFhzJQFUC8Ywe5pnbymojVwOeQD6C6f3/FA8U+MP7KdSZHH+Cb1O6x8LO6gixC/otHBghhk2w==
X-Received: by 2002:a17:906:8b:b0:9b2:b149:b81a with SMTP id 11-20020a170906008b00b009b2b149b81amr1684846ejc.64.1696404012705;
        Wed, 04 Oct 2023 00:20:12 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id o13-20020a170906358d00b0099bc8db97bcsm2265910ejb.131.2023.10.04.00.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 00:20:12 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 7/8] media: dt-bindings: Add mlx7502x camera sensor
Date: Wed,  4 Oct 2023 10:19:46 +0300
Message-Id: <f46aac5e44fcf2ea94fa9d4ed883a6e397f66686.1696347109.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1696347109.git.vkh@melexis.com>
References: <cover.1696347109.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add device tree binding of the mlx7502x and update MAINTAINERS

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/media/i2c/melexis,mlx7502x.yaml  | 126 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
new file mode 100644
index 000000000000..7b86b6c5b151
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/melexis,mlx7502x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Melexis ToF 7502x MIPI CSI-2 Sensor
+
+maintainers:
+  - Volodymyr Kharuk <vkh@melexis.com>
+
+description: |-
+  Melexis ToF 7502x sensors has a CSI-2 output. It supports 2 and 4 lanes,
+  and mipi speeds are 300, 600, 704, 800, 904, 960Mbs. Supported format is RAW12.
+  Sensor 75026 is QVGA, while 75027 is VGA sensor.
+
+properties:
+  compatible:
+    enum:
+      - melexis,mlx75026
+      - melexis,mlx75027
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: Clock frequency 8MHz
+    maxItems: 1
+
+  vdda-supply:
+    description:
+      Analog power supply(2.7V).
+
+  vddif-supply:
+    description:
+      Interface power supply(1.8V).
+
+  vddd-supply:
+    description:
+      Digital power supply(1.2V).
+
+  vdmix-supply:
+    description:
+      Mixed driver power supply(1.2V).
+
+  reset-gpios:
+    maxItems: 1
+    description: Reset Sensor GPIO Control (active low)
+
+  port:
+    description: MIPI CSI-2 transmitter port
+    $ref: /schemas/graph.yaml#/$defs/port-base
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            oneOf:
+              - items:
+                  - const: 1
+                  - const: 2
+              - items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+        required:
+          - data-lanes
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+  - vdda-supply
+  - vddif-supply
+  - vddd-supply
+  - vdmix-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mlx7502x: camera@57 {
+            compatible = "melexis,mlx75027";
+            reg = <0x57>;
+            clocks = <&mlx7502x_clk>;
+
+            assigned-clocks = <&mlx7502x_clk>;
+            assigned-clock-parents = <&mlx7502x_clk_parent>;
+            assigned-clock-rates = <8000000>;
+
+            vdda-supply = <&reg_2v7>;
+            vddif-supply = <&reg_1v8>;
+            vddd-supply = <&reg_1v2>;
+            vdmix-supply = <&reg_1v2>;
+
+            reset-gpios = <&gpio_exp 6 GPIO_ACTIVE_HIGH>;
+
+            port {
+                mlx7502x_out_mipi_csi2: endpoint {
+                    remote-endpoint = <&mipi_csi2_from_mlx7502x>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 < 960000000
+                                                   904000000
+                                                   800000000
+                                                   704000000
+                                                   600000000
+                                                   300000000 >;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 49cc44fe8ec4..c9da47ff2652 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13562,6 +13562,7 @@ M:	Volodymyr Kharuk <vkh@melexis.com>
 L:	linux-media@vger.kernel.org
 S:	Supported
 W:	http://www.melexis.com
+F:	Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 F:	Documentation/userspace-api/media/drivers/mlx7502x.rst
 F:	Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
 F:	include/uapi/linux/mlx7502x.h
-- 
BR,
Volodymyr Kharuk


