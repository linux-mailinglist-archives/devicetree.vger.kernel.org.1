Return-Path: <devicetree+bounces-4697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBB57B37AF
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:16:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id D70FBB20BE6
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656C9521D5;
	Fri, 29 Sep 2023 16:16:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A055C11C90
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:16:54 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 717691B8
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:51 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40537481094so147241055e9.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696004210; x=1696609010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H6c/rs6jB3aMqjmJKuUrCClcqTF3WAZZDBGZ7tftjkA=;
        b=hY92OqVQr+ZfwFKd1o+nXmKgEHveeIxBwq/fm/B8YYtEGoOwoU1ANoQrjYU9NZYhpx
         UrsKI62HbEH8ysIRjM1oZiEsMZSDPLRbwAFfqTkVKIYr3sHLmE22v2a35Ki2or0a+rSX
         MHJlw44nQireQ9kak8v2TDEWBArrj+DrZYjU65w55Xr3ddOkTwawoudPkVwpwhxraENd
         01bXrLgx1gn/6Us2u6h/akPcyRuPslOMmBlpWO86+QV4Xkn+NWOc2PJ0Z8KkdcPp2QFC
         mjz1LIWr/SPd2xBVGziUpoEZqybenJQRTW2sl2qpFrb0IqEkc/I+PoVH8H0QMzp7mrRg
         6M/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696004210; x=1696609010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H6c/rs6jB3aMqjmJKuUrCClcqTF3WAZZDBGZ7tftjkA=;
        b=QOtirwWb1LCVkbCAGCAoGXfO7bLw8FGJW5IU9Vfoc7tZ3Esng55Eykr26e9pSLT556
         UteQBGbYE906AuV5TueAaA8qzIQ+gBB6z66Y8WV7sDxG/p6RPuZtd/+2lZFZ3X21Hs62
         3sA0VWdyHvlqAUA9Zu7qGxbFvUk7m8cn4lDI/H/3hbPUDTJf4+y8/6LhzXr3dqsF/wYk
         /uKDAZg6fshjmDKIxjPErdE4prMwAwOoKWhZPm6Cd4IJs27BJy+CaEns/bddTomq++Sm
         nlDV01WvzhDEeryN97yt396QhxSCGhmtt4R6JJPkfYFrU1OXunLcdqIE5TEWUf+0uSX6
         xbqw==
X-Gm-Message-State: AOJu0YwmOxD4R6f0XYmBl2Phtyz6ljFnk9ebDoHaHaU9JpquB6DT8tQ5
	tSw/72aZaV+nAPyIn3VTgdcYHQ==
X-Google-Smtp-Source: AGHT+IFnWBnJtlPvqMUCRo4ORFYlchXTqDfFCkv5g4n1DcCAAvbigOpXJk39mgpCAARmjx/c4QxnpQ==
X-Received: by 2002:a1c:6a08:0:b0:405:3455:d603 with SMTP id f8-20020a1c6a08000000b004053455d603mr4411205wmc.17.1696004209374;
        Fri, 29 Sep 2023 09:16:49 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id x15-20020adfcc0f000000b0032330e43590sm10226848wrh.22.2023.09.29.09.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 09:16:49 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Fri, 29 Sep 2023 17:16:18 +0100
Subject: [PATCH 2/4] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230905-caleb-qmi_cooling-v1-2-5aa39d4164a7@linaro.org>
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
In-Reply-To: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
To: Andy Gross <agross@kernel.org>, 
 Bhupesh Sharma <bhupesh.linux@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=6892;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=zW3HWrMT85pnatyJIPEtqsqc6tm+j8grjbjQ5daBbLc=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSxH3n8/Dnpsxq25YX+tV/74oXvzm8P4mukVFu0KyW/O
 Ld95tfsKGVhEORgkBVTZBE/scyyae1le43tCy7AzGFlAhnCwMUpABMxsGT4K9DGYOn04evGZQ/v
 2LXxsZQWBb9dxilYvuibj4OcCrvESUaG5vTa0tDtN7Ty+vqa9n5fE8uz7tBEQ8+pe2/MepTGf+j
 UGQA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The cooling subnode of a remoteproc represents a client of the Thermal
Mitigation Device QMI service running on it. Each subnode of the cooling
node represents a single control exposed by the service.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 .../bindings/remoteproc/qcom,msm8996-mss-pil.yaml  |  13 ++
 .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +
 .../bindings/thermal/qcom,qmi-cooling.yaml         | 168 +++++++++++++++++++++
 3 files changed, 187 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
index 0643faae2c39..9d0398764a31 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
@@ -145,6 +145,12 @@ properties:
       and devices related to the Modem.
     unevaluatedProperties: false
 
+  cooling:
+    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
+    description:
+      Cooling subnode which represents the cooling devices exposed by the Modem.
+    unevaluatedProperties: false
+
   # Deprecated properties
   mba:
     type: object
@@ -386,6 +392,13 @@ examples:
         qcom,smem-states = <&modem_smp2p_out 0>;
         qcom,smem-state-names = "stop";
 
+        cooling {
+            vdd {
+              label = "cpuv_restriction_cold";
+              #cooling-cells = <2>;
+            };
+        };
+
         glink-edge {
             interrupts = <GIC_SPI 449 IRQ_TYPE_EDGE_RISING>;
             label = "modem";
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 63a82e7a8bf8..bbc82253f76b 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -77,6 +77,12 @@ properties:
       and devices related to the ADSP.
     unevaluatedProperties: false
 
+  cooling:
+    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
+    description:
+      Cooling subnode which represents the cooling devices exposed by the Modem.
+    unevaluatedProperties: false
+
 required:
   - clocks
   - clock-names
diff --git a/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
new file mode 100644
index 000000000000..65b1c7b40c1d
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
@@ -0,0 +1,168 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 (c), Linaro Limited
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/qcom,qmi-cooling.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMI based thermal mitigation (TMD) cooling devices.
+
+maintainers:
+  - Caleb Connolly <caleb.connolly@linaro.org>
+
+description:
+  Qualcomm QMI based TMD cooling device(s) are used for various mitigations for
+  remote subsystem(s) including remote processor mitigation, rail voltage
+  restriction etc. Some devices such as "cpuv_restriction_cold" are for warming,
+  (e.g. by raising minimum voltage on core system rails).
+
+  Each subnode represents a control for a single instance of the TMD service running
+  on a remote subsystem.
+
+definitions:
+  tmd:
+    type: object
+    description: |
+      A single Thermal Mitigation Device exposed by a remote subsystem.
+    properties:
+      label:
+        maxItems: 1
+      "#cooling-cells":
+        $ref: /schemas/thermal/thermal-cooling-devices.yaml#/properties/#cooling-cells
+
+    required:
+      - label
+      - "#cooling-cells"
+
+    additionalProperties: false
+
+properties:
+  compatible:
+    enum:
+      - qcom,qmi-cooling-modem
+      - qcom,qmi-cooling-adsp
+      - qcom,qmi-cooling-cdsp
+      - qcom,qmi-cooling-slpi
+
+  vdd:
+    $ref: "#/definitions/tmd"
+    description:
+      Restrict primary rail minimum voltage to "nominal" setting.
+    properties:
+      label:
+        const: cpuv_restriction_cold
+
+required:
+  - compatible
+  - vdd
+
+# Modem has additional TMDs
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,qmi-cooling-modem
+    then:
+      properties:
+        pa:
+          $ref: "#/definitions/tmd"
+          description:
+            Power Amplifier TMD
+          properties:
+            label:
+              const: pa
+
+        proc:
+          $ref: "#/definitions/tmd"
+          description:
+            Modem processor temperature TMD
+          properties:
+            label:
+              const: modem
+
+        current:
+          $ref: "#/definitions/tmd"
+          description:
+            Modem peak current TMD
+          properties:
+            label:
+              const: modem_current
+
+        skin:
+          $ref: "#/definitions/tmd"
+          description:
+            Modem skin temperature TMD
+          properties:
+            label:
+              const: modem_skin
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    remoteproc-modem {
+        cooling {
+            compatible = "qcom,qmi-cooling-modem";
+
+            modem_pa: pa {
+              label = "pa";
+              #cooling-cells = <2>;
+            };
+
+            modem_proc: proc {
+              label = "modem";
+              #cooling-cells = <2>;
+            };
+
+            modem_current: current {
+              label = "modem_current";
+              #cooling-cells = <2>;
+            };
+
+            modem_skin: skin {
+              label = "modem_skin";
+              #cooling-cells = <2>;
+            };
+
+            modem_vdd: vdd {
+              label = "cpuv_restriction_cold";
+              #cooling-cells = <2>;
+            };
+        };
+    };
+
+    remoteproc-adsp {
+        cooling {
+            compatible = "qcom,qmi-cooling-adsp";
+
+            adsp_vdd: vdd {
+              label = "cpuv_restriction_cold";
+              #cooling-cells = <2>;
+            };
+        };
+    };
+
+    remoteproc-cdsp {
+        cooling {
+            compatible = "qcom,qmi-cooling-cdsp";
+
+            cdsp_vdd: vdd {
+              label = "cpuv_restriction_cold";
+              #cooling-cells = <2>;
+            };
+        };
+    };
+
+    remoteproc-slpi {
+        cooling {
+            compatible = "qcom,qmi-cooling-slpi";
+
+            slpi_vdd: vdd {
+              label = "cpuv_restriction_cold";
+              #cooling-cells = <2>;
+            };
+        };
+    };
+...

-- 
2.42.0


