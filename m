Return-Path: <devicetree+bounces-232206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD0C158C2
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96CE5561134
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C57D34405F;
	Tue, 28 Oct 2025 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AWBEtfUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5DC342CBC
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665542; cv=none; b=e+mDEAFndiOaPKFERTllcrbxtdszBJze9SoLbS+1TSncIyXtgvniN4Mj1vxOmvAkft3BA6DbP1EJmPGgl5lNPj0kFWH+YEQy1qt5amp7KKZLm/O+18phUZOa1gHtwqvteDKIWlDrnCEwrRtbv1ggyYdws5NfZjE/uYYp8ebhJ68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665542; c=relaxed/simple;
	bh=1Pa8N091q1Iwvly7uDktHtvfsY9pYF9eldQYfV3KVgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uzmWGl0fqAqsPsj1Z/ih9UvKjGhBdT8moRDDXRI4Y0YU39jnvYhjC2Efjj+yZewgw/wciLCMSQm6blR+3iYHR8S8RgU2ilicod+unGVeZKO4cJ/TqNMaCT+3rIbUh6hTowsUtkMDIQFQuB+SQIAHSLmgkz0N+QyjO5JDMknG8iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AWBEtfUT; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4270a072a0bso1025881f8f.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761665538; x=1762270338; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y52k8g6s9KNZCHJowMgyK6iu0ZbWW1Jp428xl/ixOkw=;
        b=AWBEtfUTYDGgUmjRzy+ikHqXrwm1F7FePVvbjtS/MV82MtBjnwuOwBYFncu/qnl6LZ
         t+hau1kBg7DQ83xqKPF+ASFlTjSM4251ZWGsvY97LvW4Ii2XKnwJbGepezhK5iqyg8/A
         jksR6daDhnFomHPieilzObLnVT+eQXigfRtHj+X47Vzq6DbxiPFu3nPg6vG/wmOCIvbN
         QSqIkA6nbMDPMt7WavvC49Vqi1nnarPNFvDH+XvraW6gcHN3o9MEtOqLbSVue4rirEZu
         wSSWDTfUKJb8n7g3gX1s9H2uqIfMgy3uE7Gy3JUyc7MLXJTH5ERpmPSTKNEM23DMqkmF
         Nj3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665538; x=1762270338;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y52k8g6s9KNZCHJowMgyK6iu0ZbWW1Jp428xl/ixOkw=;
        b=TSJDslQKq2ibOCUy0HsnPcuT3q8jtLUsY+1dHkVYKS1/MTSsp8jBWdEZhXg4LxBcKF
         N0LJ49BynRs05eUgXH0GX2FYz/BYT7CHx2oqH0qNXmoeZFXNqowY9MG+ZAx/LksoIHw2
         C+hNGLycHNjlVq6mUPJBTx9Y296Rc1h332exZTfQd6U+7UsiGCrEnBvs+ep0squCFjRt
         OncAvNXfn1eKwTtvwhsxRs8xZAsGy7q5VKRkirRTscMLt8coygm9uaRbSnP/aD1btSbf
         Q87YiDU5UzQVJF8mhD0vkj6PTmKlwkgeThuvKVwxrqtSt1eNClVbtQqw/4UYVQPynUl0
         WGDA==
X-Forwarded-Encrypted: i=1; AJvYcCUFZIaaSgajQnF4XAkb0a/EbTdu9jdEEV+sWg/vL5LP9CLWBDhaH5ST2nMldzk8hyuMfhccUbF/Y+2T@vger.kernel.org
X-Gm-Message-State: AOJu0YwT3jWmopAHyoqanlm0+F3ILy8rBQiXnlRVyg87AEqsjrPC2LL+
	PmA5LS8h/GeffwsU+//yvgvLzYzp8hn2VmSb6U6/RL+MBplRJhf4KrWa5J/ZN3ksWy4=
X-Gm-Gg: ASbGncsUczlXlXhy1KPmj0eLepdSbaEldB9Eqi0DHsFBMoRuu8q/CHzBdqushxQC2Sg
	qW34OSWYB9AWhM2xaa/NMlIhY/qUuLjN2x0bNI7/9xbee8JnvLwTxCrK8PVymUUd6ySvlG3GhI8
	3XENqv6XsMUiIZ1EnFxJDOyxmN3Z5fcIXmpMiiu7HeG4CdyVC2bgTFhnofQYtUGTcf7gbacJ77N
	AFm5wsHCm4g7rcG4W5lR9KgXb348amIrpmot0sgTYJn8mloWUkDl+AnGULY3/18D/z+2/I3OAFc
	D4AbzxrU7XN2tC2qUjC82gxFfY6dOcpdp3zY/iF3xrGpoCubkaz3hiy9YMiQnFTWWmx4Mjp3t+U
	Vrh5cAgLZo4B4sbOEwFnXe+fRh3A0QEsS1GPb1OMPLGIc7necFGxVebZPQRWGR8R08cg8J/v2Dr
	hXyMnkSVJguxgY/QBr
X-Google-Smtp-Source: AGHT+IHyi3rZRAb/GJvnuN1suTcwEaMFYGAGJ2Y96rbFsJ628WIcAr+ju+iMuPYaLm34C0lvej1qSQ==
X-Received: by 2002:a05:6000:4285:b0:429:8c97:f9c2 with SMTP id ffacd0b85a97d-429a7e892edmr1891839f8f.10.1761665538135;
        Tue, 28 Oct 2025 08:32:18 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm20844417f8f.28.2025.10.28.08.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:32:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 28 Oct 2025 16:31:52 +0100
Subject: [PATCH 03/12] dt-bindings: bluetooth: qcom,qca9377-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-bindings-qcom-bluetooth-v1-3-524a978e3cda@linaro.org>
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
In-Reply-To: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2962;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=1Pa8N091q1Iwvly7uDktHtvfsY9pYF9eldQYfV3KVgg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAOHzm67Hlk4zrsMlfjiXuKuQqsVq/jMgmzPDh
 swAY0w4IKuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQDh8wAKCRDBN2bmhouD
 10gLD/0aoo1WIbSW1udGX6A46/Tu3oJuXscSyS6hCQkL+WQvVRrBfrX2AbWw0a4VqDKe8IiYMEM
 92faX3b0UIXyaxU8rzKmi6q6USfmvyfm5gzb4xdFVpdphC5jaiI2+nFqgeKdk7T8wdU7folsIcC
 A/WcOCIFAbrA/7WsbpD9a8akAiGv9izdtKoqWVrIxiUlMjCGB+NbQNHho77t+dqMQgWGFhS1Hpk
 jZvlb3DsBXI/juqrSde4t78D7Ddvj7sbcvdC0WzcbCK3z/zXj349M25n53V3l8FB7apk0o9XvqT
 xNcW8mEzkh3ERX5B7YyCFNipl2okysP7BO5riATgdn5KL7su1iXYs9fqffAe9t7I1Er9GEd0alU
 BZBqYb09qoWcSXDQgT1BsTA8IXS5hEkVDBdmPyFX+pYUpao7umOE+csgjhh6R6bago1VKaOJUx6
 LSFDZQKXeMsjEeynVm5ok2VQAsKD3g1yKuhGQGKoSM6TxENbqOXYYX9mOsMxxuqh5463HatxrtZ
 HJR8WgU4aDOASt1W97//cvk7AePbE8+DQ8Jn/63uxtq4sRg+P11XkC1a9bf9pXKBCQSSUIIrh4M
 8cwEe9GoN9a3c07ktcE+WsMsGZHMflt4t7mncDQtZMIamMf1B/vfxcDpxQ4Ja0TNbGlHl2ZVnN7
 DLuqNM7iYHFCJLw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,qca9377-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Existing binding has incomplete and incorrect list of supplies (e.g.
there is no VDD_XO) and Linux driver does not ask for any, thus keep
this state unchanged.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/net/bluetooth/qcom,qca9377-bt.yaml    | 58 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml |  1 -
 2 files changed, 58 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml
new file mode 100644
index 000000000000..3fe9476c1d74
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qca9377-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCA9377 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,qca9377-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  enable-gpios:
+    maxItems: 1
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XO supply regulator handle
+
+required:
+  - compatible
+  - clocks
+  - enable-gpios
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    serial {
+        bluetooth {
+            compatible = "qcom,qca9377-bt";
+            clocks = <&rk809 1>;
+            enable-gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+            max-speed = <2000000>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&bt_enable>;
+            vddio-supply = <&vcc_1v8>;
+            vddxo-supply = <&vcc3v3_sys>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 0e67abfc8528..c8c0fa52d98c 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,7 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,qca9377-bt
       - qcom,wcn3950-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt

-- 
2.48.1


