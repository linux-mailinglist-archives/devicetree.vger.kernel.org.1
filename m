Return-Path: <devicetree+bounces-17823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5669D7F43E4
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 112372815B4
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 181A9584FB;
	Wed, 22 Nov 2023 10:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="VKlD7j4R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 833A297
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:30:00 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id ffacd0b85a97d-32f7abbb8b4so4434102f8f.0
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1700648999; x=1701253799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9feGrtgxkTxJbOa4Vk9//3jntNv3ytgoDCgss4YnGjI=;
        b=VKlD7j4Re7x3tqxi5gIkYaSAWb5ySw/SImzpHTNtNgiY5sPl1GZFWDyx8Rs7at642w
         XAQ/wVby+EjOnEcn2q8wQdMvipBqUUhG+qNFLGsu91rOn+Xw+fr4Z+5p+Z/T8KelNAqW
         /d2qXZrRymqFp1S7T4xSLQiVB4PZdx6hgUkMHCUyxmk+Lz03hOP97GFPnLg3C66uEpSt
         vILpg7TkUHZzUdS4cuEET8Iq2nLXOMVRH29j0bg9PS79yEkFhGpG4+OemKEixpxIK+c2
         lGnNNVvk969jhy3wDTTB1ifllCvlsUfm4JagdZeNqitU4zFQ6LTQmy/PZySYs0BbmJwa
         e3KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648999; x=1701253799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9feGrtgxkTxJbOa4Vk9//3jntNv3ytgoDCgss4YnGjI=;
        b=A8CTrY9I/iiLLAiqKRJgi6cq1vhn9nYIeIK7dS/ys807WZvMcY5X7kvHQWr630Xty1
         j+EsdU68Sj+mMiv2MqVujpP2Km4b4H4hb2Pe2vOoCgU9mDYCf4CYYZ5mG43BAk0sJpyz
         l6FYgR0MeNKcnx4UFljlIrHADtzfNXJgMB4DDvnfzDVdOeALxHDHj6wkBnLYHyERonaX
         1KXmJnAW1e8Wa2d2ZAHAtOCJpPzaFPj3YJOnOxnHGH+pwyUDhTEGJOUBaE9nrRwsDV64
         qUe21hByI8YSbCYHwOrDZJDzGlivwHyPXhcw8b6zqkILy8Nh8X4d5bHPGOhce70IdBT4
         wdng==
X-Gm-Message-State: AOJu0Yy4asuTflAHqRSFO6JnIsD7Q/M+g1WdIeFhOw1HMxoOSMnfV5Xe
	aLPhcVWIoZ7AYeiQHv8aJNAqEw==
X-Google-Smtp-Source: AGHT+IFwH8apropXiRO6oy9qjpxN3mgJ1v/LqypvU7Rn8//ZDXTpyGL41zCRhAadaKue8OYvwfJUYg==
X-Received: by 2002:a5d:6d8f:0:b0:32f:92f3:dbbb with SMTP id l15-20020a5d6d8f000000b0032f92f3dbbbmr951901wrs.70.1700648998902;
        Wed, 22 Nov 2023 02:29:58 -0800 (PST)
Received: from localhost.localdomain (d54C3956F.access.telenet.be. [84.195.149.111])
        by smtp.gmail.com with ESMTPSA id f12-20020adff44c000000b003313e4dddecsm16652786wrp.108.2023.11.22.02.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:29:58 -0800 (PST)
From: Crt Mori <cmo@melexis.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Crt Mori <cmo@melexis.com>
Subject: [PATCH 2/2] dt-bindings: iio: temperature: add MLX90635 device bindings
Date: Wed, 22 Nov 2023 11:27:21 +0100
Message-Id: <2e8b4a7d3ef4bc1c53bd0a849e4c31eaf2477f6b.1700648165.git.cmo@melexis.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1700648164.git.cmo@melexis.com>
References: <cover.1700648164.git.cmo@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for MLX90635 Infra Red contactless temperature
sensor.

Signed-off-by: Crt Mori <cmo@melexis.com>
---
 .../iio/temperature/melexis,mlx90635.yaml     | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/melexis,mlx90635.yaml

diff --git a/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90635.yaml b/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90635.yaml
new file mode 100644
index 000000000000..96463121a806
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90635.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/temperature/melexis,mlx90635.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Melexis MLX90635 contactless Infra Red temperature sensor
+
+maintainers:
+  - Crt Mori <cmo@melexis.com>
+
+description: |
+  https://www.melexis.com/en/documents/documentation/datasheets/datasheet-mlx90635
+
+  There are various applications for the Infra Red contactless temperature
+  sensor and MLX90635 is most suitable for consumer applications where
+  measured object temperature is in range between -20 to 100 degrees
+  Celsius with relative error of measurement 2 degree Celsius in
+  object temperature range for industrial applications, while just 0.2
+  degree Celsius for human body measurement applications. Since it can
+  operate and measure ambient temperature in range of -20 to 85 degrees
+  Celsius it is suitable also for outdoor use.
+
+  Be aware that electronics surrounding the sensor can increase ambient
+  temperature. MLX90635 can be calibrated to reduce the housing effect via
+  already existing EEPROM parameters.
+
+  Since measured object emissivity effects Infra Red energy emitted,
+  emissivity should be set before requesting the object temperature.
+
+properties:
+  compatible:
+    const: melexis,mlx90635
+
+  reg:
+    maxItems: 1
+    description: Default is 0x3a, but can be reprogrammed.
+
+  vdd-supply:
+    description: provide VDD power to the sensor (check datasheet for voltage).
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        temp-sensor@3a {
+            compatible = "melexis,mlx90635";
+            reg = <0x3a>;
+            vdd-supply = <&ldo4_reg>;
+        };
+    };
+...
-- 
2.40.1


