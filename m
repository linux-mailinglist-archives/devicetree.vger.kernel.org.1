Return-Path: <devicetree+bounces-72868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B168FD354
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3BBC282BB9
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76171940A2;
	Wed,  5 Jun 2024 16:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VM5N2x7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2592C18FDB2
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606636; cv=none; b=CeGjfqxEX/LEBsMGjdgwSZBU0btiM6wCo1vbCLm3QywVZJcxRhDmsPE5Mz/RPXEwAHvFo40LGABQHSV5W4uTmZJnBIXY1hXq000dciqCiNnivZp4/3VHMzUTExmnI38B2XOyHVqm9f4SqPEiuOpbjtbzu3SbJ+zIS4dYEjgbi88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606636; c=relaxed/simple;
	bh=BSIqOQaxOzjUIk5apjG41ZEKjBKX+tFf1yQgW2HoS6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mzMlsh26/001Vj6rG4Lid+PngtkwLXXZQwmToRQ6B/SROylJsDfmWQ6BzR3vA/CIXH9rK9XuTlUuR+ZeiM7xvreoL+zb8r79r0EhuhVyuOdhTl8xIj6LqCbWJgxA/7mivzi8YqyFptTmdRL0KcJakxcFE6IQOF5yjfEsxuvsI7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=VM5N2x7a; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42155dfc484so496225e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 09:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717606633; x=1718211433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FnwDnTQx6H9wiFtKdOz7+ENUTkoOw+p0OFwBtnq+RN8=;
        b=VM5N2x7aG4DSQ7PapHDQcmoabSUlZIuGP6uC7JN8x9wHQyd/5DQnkhOghYpjEMEjfS
         XIqWlZfAFxj62B8+4YcA0jM2jpn8tZFvMP8a2dNJTH7w1cCkUXyFn0UggIOJjLjme5dI
         4Qoh5DdclbJJl3kojnwvhsBALQT+kf2smy42q9gIjkWbN2tKUnJcu+iJDKzSw1iBkkxj
         0g8mH6qd9xhYN1/pcwnIKD3yJDjZ4BG+Jma0VIJp7xHvgWBrKIYjMQwgWOCtH5VcfYla
         5m7zXrmsZNTsWSUlFLahChzxA+5dpva0iChwGkZ6937W59PqdH+EibJoerrkWEZQTnxC
         yzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717606633; x=1718211433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FnwDnTQx6H9wiFtKdOz7+ENUTkoOw+p0OFwBtnq+RN8=;
        b=GQYfvkIko/jmFPIFWDijWuMPv3LW+ZWzqjCH+3LhN4NGrhdAbOq7yn2epBWslwxxCH
         ZMU5KX9jzZ0zoZ8Rd/QwOFJx+CGaJ1olPzwMRZl9+O2FqGWlZNp4Idf2zkdUYs62TH41
         hq0Cir86HMOandFrEELQF1/zQvuY4GkatLzn7YsEFXkjdGJBL33xHbzqjvOzLbtV6B8P
         lYDxlY0ZpZF7e2IVdgG3ncnI85D6NynK9t1EN5NtCa1esejM5wmGqgAEYydd8ku7vvHv
         JZvjtEizYfe93b8E92NuIZSdmd3tL3TRX8NuM9oNdVYrD6hjJ6GCdJZRbDM/9WEG20JV
         Jr4A==
X-Forwarded-Encrypted: i=1; AJvYcCVaFzxhWGhX7mQMv4Jd3CxHzScX4VLbsBGeqOjI7baK+dWqkCDVktfkYcvcXFglQ7N7q/+6umGsuWBEyhA72xrexMBx9Ns93nkg7w==
X-Gm-Message-State: AOJu0Yw/n28t1QIm+3JM9gBgi/kFeJp3MsDot1uQX5/SHncN1PywnOWO
	bx9FAQ9Q/0b8Ic7H4vKju1C0BzfYHP2Aa2+GEQ88MeZjlOF2LjozwT3Q5wpw5RE=
X-Google-Smtp-Source: AGHT+IG6qPlThXhjufx2MnMTCu/VEZRluZEv4YL2k1M/ysuyxcZrap3eHjsGoVVcC9g7hOwVuzhHlA==
X-Received: by 2002:a05:600c:3b86:b0:41b:f788:9c0b with SMTP id 5b1f17b1804b1-421562dd249mr26125505e9.14.1717606633565;
        Wed, 05 Jun 2024 09:57:13 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:d3dd:423:e1eb:d88b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421580fe343sm29099175e9.6.2024.06.05.09.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:57:12 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 05 Jun 2024 18:56:51 +0200
Subject: [PATCH v3 1/5] dt-bindings: remoteproc: qcom,sa8775p-pas: Document
 the SA8775p ADSP, CDSP and GPDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-sa8775p-iot-remoteproc-v3-1-a437355b8c7f@linaro.org>
References: <20240605-topic-sa8775p-iot-remoteproc-v3-0-a437355b8c7f@linaro.org>
In-Reply-To: <20240605-topic-sa8775p-iot-remoteproc-v3-0-a437355b8c7f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, kernel@quicinc.com
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5070;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=0+JwIJdldFzT04512cdTXO+7/QWlQIQzg2TkjearKW4=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmYJjlQ8WCR02WHrCJhRdJMFAjWeASD3N3l+VB2
 tkjcU0Y0waJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZmCY5QAKCRARpy6gFHHX
 crHhEAC6GS5hkNdvel8qjVq8YEV83Bvz7uM10o/s3kkpT5RVFBJ6skFdao7IEpqaCIkWv6lrWRY
 8QgFb5CQViTqbnmUTDz3tTZx0JlFKmP3979a7hjaGMJljwZQJ+0lMYoyZD2iqklYOvyAI38lVwq
 gz5tTIH95MXKRmBirfCyYD1144uz3xEDWLCEV3u28MmuWzF+Hdu/E4ltkw0R9uvvr+gQs06ZTfa
 1HMcmyqFdgM8hlFmKr+/y798fNCvFzBeX+n6Cn37UGoeSz4uzLR4B+u4wPtyVushax6w3C5XDHt
 9EpYhYg4wy96Mnn/zu0owEWotw0doOTsBEbT/QJTm+dQSgF4bPAIQfQQMOEJ8yo76Vxdbi3DZCx
 JVtEr+FQUv9MjbMWGZtHhcv9/wkZiNzEPE1nNnrAC4OC0tKFKeGOY5F25RVwgwohHXMd2JzvN45
 XEJxnY0KlAPlUtzIFqexy4xG5/Opsd/WIzhZVNacIvo+C3zjMwt0Hz2Msf/MJV2YwmP2l9XPk9J
 6ap+H1IcOlwe/dZKR+iE9hCcI8Z22F4vecM0lIRiPgQ+WmLWlbb3c6wFlJtCTICxiTvJAWEHfvX
 L9JG3f40yZ1pfNMlzlSFMDwCot9ph54yrhzb9zf0ZJ2effg6RhAX7hP9lH2UKk4mx69T3h+GhtG
 1bMo+Ah9CSHpPWA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Document the components used to boot the ADSP, CDSP0, CDSP1, GPDSP0 and
GPDSP1 on the SA8775p SoC.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/remoteproc/qcom,sa8775p-pas.yaml      | 160 +++++++++++++++++++++
 1 file changed, 160 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
new file mode 100644
index 000000000000..7fe401a06805
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
@@ -0,0 +1,160 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/qcom,sa8775p-pas.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8775p Peripheral Authentication Service
+
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description:
+  Qualcomm SA8775p SoC Peripheral Authentication Service loads and boots firmware
+  on the Qualcomm DSP Hexagon cores.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sa8775p-adsp-pas
+      - qcom,sa8775p-cdsp0-pas
+      - qcom,sa8775p-cdsp1-pas
+      - qcom,sa8775p-gpdsp0-pas
+      - qcom,sa8775p-gpdsp1-pas
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO clock
+
+  clock-names:
+    items:
+      - const: xo
+
+  qcom,qmp:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the AOSS side-channel message RAM.
+
+  firmware-name:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    items:
+      - description: Firmware name of the Hexagon core
+
+  memory-region:
+    items:
+      - description: Memory region for main Firmware authentication
+
+  interrupts:
+    maxItems: 5
+
+  interrupt-names:
+    maxItems: 5
+
+required:
+  - compatible
+  - reg
+  - memory-region
+
+allOf:
+  - $ref: /schemas/remoteproc/qcom,pas-common.yaml#
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-adsp-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: LCX power domain
+            - description: LMX power domain
+        power-domain-names:
+          items:
+            - const: lcx
+            - const: lmx
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-cdsp0-pas
+            - qcom,sa8775p-cdsp1-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MXC power domain
+            - description: NSP0 power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mxc
+            - const: nsp
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sa8775p-gpdsp0-pas
+            - qcom,sa8775p-gpdsp1-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MXC power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mxc
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/mailbox/qcom-ipcc.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    remoteproc@30000000 {
+        compatible = "qcom,sa8775p-adsp-pas";
+        reg = <0x30000000 0x100>;
+
+        interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+                              <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+                              <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+                              <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+                              <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "wdog", "fatal", "ready", "handover", "stop-ack";
+
+        clocks = <&rpmhcc RPMH_CXO_CLK>;
+        clock-names = "xo";
+
+        power-domains = <&rpmhpd RPMHPD_LCX>, <&rpmhpd RPMHPD_LMX>;
+        power-domain-names = "lcx", "lmx";
+
+        interconnects = <&lpass_ag_noc MASTER_LPASS_PROC 0 &mc_virt SLAVE_EBI1 0>;
+
+        memory-region = <&pil_adsp_mem>;
+
+        qcom,qmp = <&aoss_qmp>;
+
+        qcom,smem-states = <&smp2p_adsp_out 0>;
+        qcom,smem-state-names = "stop";
+
+        glink-edge {
+            interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+                                   IPCC_MPROC_SIGNAL_GLINK_QMP
+                                   IRQ_TYPE_EDGE_RISING>;
+            mboxes = <&ipcc IPCC_CLIENT_LPASS IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+            label = "lpass";
+            qcom,remote-pid = <2>;
+        };
+    };

-- 
2.43.0


