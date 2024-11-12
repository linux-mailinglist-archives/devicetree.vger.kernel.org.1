Return-Path: <devicetree+bounces-121231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FF09C5E22
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 18:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 666C51F2288B
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 17:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3751721500F;
	Tue, 12 Nov 2024 17:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K2Oz469A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113002144AC
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 17:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731430898; cv=none; b=cs+4BzO8KkwxdjgpIoIT25ZZdvftBWT08mF925Mu+ypu6xBsGHQt4y7e2DESVzjEnMY3hOiO/ASi73xIzyTYwYpRb60KDAzbrURlacczUv1CQgJDlDiKa+KgLHHhKwJayYqCItIveTnYvsNDDKfntriJRvYgzlwYWjSEHC2Dw7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731430898; c=relaxed/simple;
	bh=YrGT/WEwbK7dfG3C5rwOmY8DGyE1bgHzA976KZUL9LA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ORTh1xvE9h2D1v76z85fs4wBmY5/k8fX/XyLCoIcUsAEI8VPARUdFiYQJgXOa0NxNBXdk5Ib4w8M9FOM7CIl2fjzzAK4pmVt7SrWw9ge9UYVD5TBvhrH3tvYBN765VqdDKtj7BbTEiJB9Oz3EYiZN8eFB6JivPAej6XWCeWq330=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K2Oz469A; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43152b79d25so49650085e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 09:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731430893; x=1732035693; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uziaVaDQy8BngtJNOSr5NK4taaWrQXTvr9ogdh6p4dM=;
        b=K2Oz469AcorHeMz2SO8nb2dyP+iLTXqqnN1o7htz1M6tFHwaP66DjFvMBU5GyCrJTw
         Dcsn7L6zShSo/cmLoz+zI8gF7IxCofeXCvdUk2e5df+11Sb7Pl1YJvQxuoo8TOQ5QjiW
         2KCN1geYjipU4CuNT8jFFLQgY8Vm4rjjdx2WkIZpLpUS6VnkPkYBzQal36Bab7lH5xHr
         iBOhhuMaq+Q+8KgciLGg3ayH2DV+bCegGXPx1EUnBXHgGgYEo93V/GgVwJOdFY71zoui
         QXRSoJychEB54DwQmKZezFd1mXjTVmaIyJYMlFw15qWXAtLcynR224AkwtiYu+FMUpQA
         9n3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731430893; x=1732035693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uziaVaDQy8BngtJNOSr5NK4taaWrQXTvr9ogdh6p4dM=;
        b=mjjBUZYW/VX2/DknVJOnvsTLLH6i4XjK1sp8yFETBk1PpH88eHger4p9NUhX97Izet
         AaIT5FJgpVfRuWVA2XQdUV465/iA5D6YTJvclbRF04aN7gPs0jMMBvyxXcngL+QHJDPq
         4gDNiOBCaipY6eocMkyYyPwaeF0Pco4S/nY8tOdowK4lQwRvMm3l1jLT/X9RqT1w/RPE
         BCf1MfjVrMmm3w/LfAd0vrL2pULvAUhTidEI34FwTOGJX2r/gtcaj2RUpIgB8tDnnvyc
         u/5RKvJ0codVtqkbdx0hnZzeMU+nt9AHBs2viyxas82ekE86gxFTq5oKcUqBdPpscrXx
         RJzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKaaHDV/ztruidVhoKQ0B0KWhIABGiG1btHzSNntW2PlZxxHM7sedoQ1ZYwuSHu0v5rL4giPB9Qu5+@vger.kernel.org
X-Gm-Message-State: AOJu0YzmcoqDnYhDIFl45ImnKC2mAQZnPLPQnb0MteoZlRbnroWfuanQ
	yKtdqDXc+wGZy7aMMLqLW+BG79dauTsaoWRgq/Cdo7zO+4FhgY6OJOJvuojJcZA=
X-Google-Smtp-Source: AGHT+IF4QB/2TjfUIR+6ZWX1pn7J7TNSNjSlmlqayg7VpkCyq6znrpxb5ljyhp4vt2yRgukJ8sW4dQ==
X-Received: by 2002:a05:600c:354e:b0:431:5863:4240 with SMTP id 5b1f17b1804b1-432b751732emr141608445e9.24.1731430893070;
        Tue, 12 Nov 2024 09:01:33 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b053051fsm215018895e9.6.2024.11.12.09.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 09:01:32 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 12 Nov 2024 19:01:10 +0200
Subject: [PATCH v5 1/6] dt-bindings: usb: Add Parade PS8830 Type-C retimer
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241112-x1e80100-ps8830-v5-1-4ad83af4d162@linaro.org>
References: <20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org>
In-Reply-To: <20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Trilok Soni <quic_tsoni@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3582; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=YrGT/WEwbK7dfG3C5rwOmY8DGyE1bgHzA976KZUL9LA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnM4nixq6PvG7V/QXXBSKFVACKzyuCBX5+iG+7j
 GzeYxHaqbeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZzOJ4gAKCRAbX0TJAJUV
 VnJ0D/4rOo9lVXeTA6bmTT63M3vE7zXlTM41dYUZXiEjhyB5IkhPrPGuqXoUaqthC3chJEBQYDK
 ShG2d0d+IoMECDsbLnZ50gPdGjmORvJ3F00jUacV8m4rAn0tdhFtHELq8+UqxNVtgLi9+Wa0jtW
 eocwGI9V/YGCmHPR8M79COTdIWIjgQ/7HFx6GTdhalD5mudk/4Q+PxKQFickMOjlRxCQsgRDY46
 QXu8gjNI4T79xEQDkIyjzyQIDaX6GKnQzN18heqKIbeI55Fwlh6//VKyPPhaz+lndYqHGp7pgL3
 PXt7vmAEAK1XaEdK2PwOtPZdh3SUofQjpZPAWCJx+O8QaJ6aLDejobrTHBW8gI+vPYSrHp+6x6h
 C9hKo76RM7eAX6ouuirb0A5+UfEx1ZCY0aDEEVhazV/19GoqqvBOalXLkmwSQjXsSyDVmPvcMtC
 hzoDSX/mLF8++gJQPFI3SZNEhPYLk0BhEm8mk4ApXOb360oPBZUh4qwxHkxtMGN/EYY3RXS4LiD
 QHUP9ZD0DBEIXqs0mskVVciu/p8HDey0c0jvV8r/262DiU3T46fEJ0NUzrv8Sgt2BMr4SQE10ww
 96bpYjg7Chi5/wgugPF7P/QQpulMLLLywyAtywcpn2ZJCbNqX4ytyrUA49cvfG5g9bmaGtEloiU
 KabIURFMUDxCmUA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Parade PS8830 is a USB4, DisplayPort and Thunderbolt 4 retimer,
controlled over I2C. It usually sits between a USB/DisplayPort PHY and the
Type-C connector, and provides orientation and altmode handling.

Currently, it is found on all boards featuring the Qualcomm Snapdragon
X Elite SoCs.

Document bindings for its new driver. Future-proof the schema for the
PS8833 variant, which seems to be similar to PS8830.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/usb/parade,ps8830.yaml     | 119 +++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/parade,ps8830.yaml b/Documentation/devicetree/bindings/usb/parade,ps8830.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..2f20d20a2bdfe2499588dc621c14cd16ab159002
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/parade,ps8830.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/parade,ps8830.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Parade PS883x USB and DisplayPort Retimer
+
+maintainers:
+  - Abel Vesa <abel.vesa@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - parade,ps8830
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO Clock
+
+  reset-gpios:
+    maxItems: 1
+
+  vdd-supply:
+    description: power supply (1.07V)
+
+  vdd33-supply:
+    description: power supply (3.3V)
+
+  vdd33-cap-supply:
+    description: power supply (3.3V)
+
+  vddar-supply:
+    description: power supply (1.07V)
+
+  vddat-supply:
+    description: power supply (1.07V)
+
+  vddio-supply:
+    description: power supply (1.2V or 1.8V)
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - reset-gpios
+  - vdd-supply
+  - vdd33-supply
+  - vdd33-cap-supply
+  - vddat-supply
+  - vddio-supply
+  - orientation-switch
+  - retimer-switch
+
+allOf:
+  - $ref: usb-switch.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        typec-mux@8 {
+            compatible = "parade,ps8830";
+            reg = <0x8>;
+
+            clocks = <&clk_rtmr_xo>;
+
+            vdd-supply = <&vreg_rtmr_1p15>;
+            vdd33-supply = <&vreg_rtmr_3p3>;
+            vdd33-cap-supply = <&vreg_rtmr_3p3>;
+            vddar-supply = <&vreg_rtmr_1p15>;
+            vddat-supply = <&vreg_rtmr_1p15>;
+            vddio-supply = <&vreg_rtmr_1p8>;
+
+            reset-gpios = <&tlmm 10 GPIO_ACTIVE_LOW>;
+
+            retimer-switch;
+            orientation-switch;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    endpoint {
+                        remote-endpoint = <&typec_con_ss>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    endpoint {
+                        remote-endpoint = <&usb_phy_ss>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    endpoint {
+                        remote-endpoint = <&typec_dp_aux>;
+                    };
+                };
+            };
+        };
+    };
+...

-- 
2.34.1


