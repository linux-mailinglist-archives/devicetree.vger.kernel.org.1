Return-Path: <devicetree+bounces-36162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA9D84011F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 10:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62D17281C84
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 09:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0881F54FBA;
	Mon, 29 Jan 2024 09:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gohl4MEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125BC54FA3
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706519803; cv=none; b=cblJI3ypHV8uHInqpsHMSuxxNI06fsqGFvG0kObBEUDbWte5sMRnG7hxLfLslVuM2J+eJRi3HUPftZwdgGnOKcuE+P1km6ZzwCCx9XYYmKMpUeST7swo5ItGiU2Zh3wVvL/j5co8bV2VSGA7UYKMy0rI/sUpVV20U7nHn+Jzl+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706519803; c=relaxed/simple;
	bh=sfk9uxvNPIwk9f8d5iBn9m2N4nTZgMQFpRmAil1gnVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hw3dosLdRffpPh3oK9nWA8DQdYljvBfr1rxWAUVsF7hgaAK5Psp9H4/BYBRYqqq3nHZsz7Co/nUoKi6eMj9rV87qOHAM3T+LtMz85W4IzvUGycqEKBk7dTcC8+uUXGaLqAG8foVxMi+yRdem7QXP2EJ99Vi5wysCJq998XnTDxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gohl4MEJ; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33af40493f4so151732f8f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 01:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706519800; x=1707124600; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31dDSPmTEwAk2xBEYscYsgGP3NvqtS1pbeFP7C1NdB4=;
        b=Gohl4MEJ1wLaXfhRCstcd9o+zZYxyPCDy5wfkkf14TYL8eTUB6UPbT8obfYCtcrB07
         zXcu9CMHWqqEz3tMlBhpRbTS5MIeEF5ldMDfcjLJaggk5z2+LkXnzKQQQQC8lA2IQE3e
         H/IwbCIhZowWE+OvIc8Np/AQXQK+4uMF7ek94xH+t7F0RxFwTRrTCHmaMSd1dynpwTtP
         GTiroX3xCCjoTuucUfSfB1OAHMQviXQynWoBQDLE+PnRsNUXGij7J+7dfb9zvuv8MwH6
         1b3jjajbdkNbri8OC1k2M+WpfCaMlOE04Dcj5F3wOBZAIuxACRNTULMD6hHp4mbQHzYx
         Msxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706519800; x=1707124600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31dDSPmTEwAk2xBEYscYsgGP3NvqtS1pbeFP7C1NdB4=;
        b=vloVCyFnQZO9vVwrFqXYSF5xdqFIA6ltea/ET3HHNsfTg4kDCIRd+Hpb+9gAG6WtQI
         8hZYsU4Wo3G39eiqr7kjjHr+mNwrLrItTEYqvHNLEpB2xlGjQAzanpCiv1HPGivqPdgk
         pqqXocegPaq4rYbpB0aqqKMSZ0dNrR8an2Y77L+bwnfKNPkpN+PMzNYto+SA9U3jHAZ+
         3pGG0Ap5+nEMyJXJSLVf6k1ZHW1IYurBymGOkUpEDOyWWHOQwV9vLthL6u+zuebqt+vi
         eeHXN7a5/1dtXuwrVY78ebN5sAzaUdTGrpQ9dtZVs+4EXqxVjzvXDI332+QyI9QAbG6I
         nfaQ==
X-Gm-Message-State: AOJu0YzNyw3Vu2i9/Ed/lliL5zrM3ZyUclXxIj5StWp6Iy5NbGZ0BKDI
	s0ZDJbVXd7YeXAanwip6v68SCvF0lMKjJKTWg07da5oNK+tjhKDn1dJHH0Ujnps=
X-Google-Smtp-Source: AGHT+IH+eedCDhIoIGezbPQMLLaP+RRaKCkk22bZNI0sIzzYq+Mu4gSqDnNnJ7z94dcUpePMMobwyQ==
X-Received: by 2002:adf:a446:0:b0:33a:e6f2:4a37 with SMTP id e6-20020adfa446000000b0033ae6f24a37mr2588040wra.63.1706519800276;
        Mon, 29 Jan 2024 01:16:40 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id b7-20020adfee87000000b0033aebf727b2sm2818198wro.60.2024.01.29.01.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 01:16:39 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 29 Jan 2024 10:16:35 +0100
Subject: [PATCH v15 1/4] dt-bindings: input: document Goodix Berlin
 Touchscreen IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-topic-goodix-berlin-upstream-initial-v15-1-6f7d096c0a0a@linaro.org>
References: <20240129-topic-goodix-berlin-upstream-initial-v15-0-6f7d096c0a0a@linaro.org>
In-Reply-To: <20240129-topic-goodix-berlin-upstream-initial-v15-0-6f7d096c0a0a@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 linux-input@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bastien Nocera <hadess@hadess.net>, 
 Hans de Goede <hdegoede@redhat.com>, Henrik Rydberg <rydberg@bitmath.org>, 
 Jeff LaBundy <jeff@labundy.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3093;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=sfk9uxvNPIwk9f8d5iBn9m2N4nTZgMQFpRmAil1gnVU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlt2z0gsr0SD/Kp48MRda2uW4w6aGAyHQFVSFBhvp5
 /2+B6HyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZbds9AAKCRB33NvayMhJ0Ua5D/
 9QQuGi0utHJMhmHSJkz+xlzV2PQTRs2tsxXsj3lyBcSQW/Y1Pa3ewATPTDTpFReuqcpgTcmbHXVci8
 CS6ywQl5cZrKYNoRCCj8Woq1Kgn4760k1WHonfHVXusdeT7AaiXARktGN3M73LM7sfIOVzTThNTDVo
 WUChfV/I9ElVJNQNO42O5/PmoG6is0lgJDisjN4qTx21i0jVxFWaBqLT+KNiGgyqyiQMXogkkMaZDH
 1iFgeHkpEgo0aWpsvn7RfPIyqMZMNfbBLlAnRBBODwhP19Yr++IL4qixQj6WLbBVAnQFm7SftvNyxl
 zJ7jMjeebn+m9rlCe6b5etvv6IKGISuucxNn3G5C2u7X9lXo7Kdr9/ouwb7Dq+mG8d/TdJfQJYmpXR
 O7l4ziEYukqAs0fuRRo76TK9LkyyLFgKKWJinOG1pZ9zbLBK+0jDbIm7tgLPCyT1M65H0n4zKyoP1X
 WwK9qzSsm27Vd4swbsQGMwC50nzFqPV2AkLleTBw5F95BERWPDi2vtvG+7ESf9uywNj2i8jtfGuvc1
 6a2fkVA3PMMVwMtiv6IrczvM5r9zHpjKWwamruBx3Q2XSught7SD/eDA1S9q/5yz9UfBzZj7Tbjw6k
 J79Nz2k064GJRoyH9Kr6afNKs5cRTh1VMSEymWgMp9DLQQjf6KXEzedvI9Iw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Goodix GT9916 wich is part of the "Berlin" serie
of Touchscreen controllers IC from Goodix.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/input/touchscreen/goodix,gt9916.yaml  | 95 ++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9916.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9916.yaml
new file mode 100644
index 000000000000..d90f045ac06c
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9916.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/goodix,gt9916.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Goodix Berlin series touchscreen controller
+
+description: The Goodix Berlin series of touchscreen controllers
+  be connected to either I2C or SPI buses.
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: touchscreen.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - goodix,gt9916
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog power supply regulator on AVDD pin
+
+  vddio-supply:
+    description: power supply regulator on VDDIO pin
+
+  spi-max-frequency: true
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - avdd-supply
+  - touchscreen-size-x
+  - touchscreen-size-y
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      touchscreen@5d {
+        compatible = "goodix,gt9916";
+        reg = <0x5d>;
+        interrupt-parent = <&gpio>;
+        interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+        reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+        avdd-supply = <&ts_avdd>;
+        touchscreen-size-x = <1024>;
+        touchscreen-size-y = <768>;
+      };
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      num-cs = <1>;
+      cs-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+      touchscreen@0 {
+        compatible = "goodix,gt9916";
+        reg = <0>;
+        interrupt-parent = <&gpio>;
+        interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+        reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+        avdd-supply = <&ts_avdd>;
+        spi-max-frequency = <1000000>;
+        touchscreen-size-x = <1024>;
+        touchscreen-size-y = <768>;
+      };
+    };
+
+...

-- 
2.34.1


