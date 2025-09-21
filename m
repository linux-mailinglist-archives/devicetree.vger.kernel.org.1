Return-Path: <devicetree+bounces-219702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4B0B8DC3E
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 569053B5520
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCA82D8DC4;
	Sun, 21 Sep 2025 13:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wv/ipY9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9772D8DA6
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461680; cv=none; b=qXctfWr3YoModaWiiFIO9Ku+Mc8MTZ6OazP5MsLp2AMPtNi/hVyISrKyNbMbOa2y6hOx4cMfabPPKB6O1lIbeBf2EDiGREkSMbjSUFKTWOZQgecE7HD1+FV8yTIB60B2MaNLas0qAiF1OBo4enbxA7GLhgPYmBk59nRcdXKwhXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461680; c=relaxed/simple;
	bh=NFyeB6ju9m115L65OhNjR32f5T9X8J1/wrM7Y8OOye4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K9L1uWawk6592orjVaHotvmS7ZobMa5gyQRpF03Pw6Cx6T04fSUKIZShM6DcvEmOLwk93bhlaQojH8BB0vlSqM1JpLGnSxpMygY8vXapW4r3NGOEmxwjO3o1UCdh39DB5Ny7qd/GBY5ZSIN5Z7AStc43DoWDGiDQx+bHnD8GX3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wv/ipY9k; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45dd505a1dfso24250025e9.2
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758461677; x=1759066477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g7ht9dZzFF99ls4xm0VOmGwJPt2OOFyLTtvr3hHqcHc=;
        b=Wv/ipY9kQrmTIxnnvN2kubGSmrKTrbPVJlOCn47e0bWs68yF2wAI1Zl5HHoRhc0K7b
         xbu84q+Z1ymKKwGRHM2HRbklKPxvXfy4Pm0zJd6UGjtdTvE9tCU225047aBEi/gAPzJU
         pInnLsA4vgqGon7h2iRrczpb9aHc/jUrxyYD1hKalIGX5IyHeUUnFfogSLShbNYG+KTb
         3+N+BKTSpbgZ6lfLlyPyrEcl9YPgFfmowdpDo/o2zYHTyFGgLmd3dQC/l4QsS5zzblQY
         W2DUmjEUFrnGmSV4BfmZUfYcKpIqTr3y3hdBzY/cn8urqkbvYPuVLg8nerEJDxShRb5V
         p6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758461677; x=1759066477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g7ht9dZzFF99ls4xm0VOmGwJPt2OOFyLTtvr3hHqcHc=;
        b=FBX8TNO1p5PKwyyAIjFdjyXEG9AF7BqRA4oTudaLQl/hzsIE2c3Qij6QYpw8lotTvj
         SuWbf/1exIWzluZPAsEsMsHjsA3lZI0r6lAt45CpMVL4phVpU5OFYMAg0K8Rv49H/NM6
         4RTBqvCn0iP6NsqqYuFYLA7wlRMSgkJGQAdrIzh7L/EjmCGxB2+/J1Lcn1iOOafFphh3
         ygZHqGf2fgx3TZeVNzSVj7DeEp/0gRjeUHl7pysJH3TvRGWDi4Lf0+yWosEpVqgcLZRt
         ZeKpXFVUl4RWr/XwBw0cPHPEzN58C+JSYHSO6RC6I7GLxJFn63bafDExbct1dkGqNZhu
         qXqw==
X-Forwarded-Encrypted: i=1; AJvYcCVDG2kKF7nbdwZDI/CwdjXGbsAg2ieqsewoadeH/+qvTjctGYrc6yujPn9I2jNm8Z5xqaeM4t+6t5dU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3cYDZ9LFc3Qwg52n6hIUrEseNVgTRLmOFjZom9JhzWICQvx/3
	y04Y3bYkNvub3VaVCxdTN7ZvcFVzmXFJ964dBo6jdWsvTYNPX0Q9fnEy
X-Gm-Gg: ASbGncvqPNq2a4E96lr/cjnjB+JCxF3qYdg0PxKsAgvfmFA+Ag4M5cSX8CR2n8CR4w1
	YqT/KANrGjQzH9TAW1UrcCHY/B8iJwyDBVp/wOTKjtj2FdJQ0bUmQouFMUOocGnyMseyMDs56oO
	4ZFnAliQhyeDpXNFFWF+O2q/lMJ9aWQ8Cr1+gX6ShXR5y0eniaAG9LsdZoVQQtPxlQtSewXQIor
	INZ6Z7sojqf5H+uzBM//PKrleJ2A/T1KQj4fJ1F+l+ts6VE/LKJiVbPiS2fLHURSaha+cGbTJ7D
	W6nX/d40Udpdi89HdiMzAuO0UUcGY/O/ZlwE1ZuiEJ7wHj8p0fHKKghh6XbIqvGfMoJ55FLvkAm
	0Z2nrrPZ9rvKXhOmO7lccNyTaPQ6J7RLsd27a0FGM
X-Google-Smtp-Source: AGHT+IGnRb6YhgM63CbQqsRad+5cVyjz8UjWsrBeMNcTbyxbeMaAOqC7gtJWMChqRMi7YfK+Dhb9rA==
X-Received: by 2002:a05:600c:630d:b0:45d:d9ab:b86d with SMTP id 5b1f17b1804b1-467f2cc87c4mr93954475e9.31.1758461676624;
        Sun, 21 Sep 2025 06:34:36 -0700 (PDT)
Received: from localhost.localdomain ([78.211.117.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fc00a92sm15910316f8f.63.2025.09.21.06.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:34:35 -0700 (PDT)
From: Antoni Pokusinski <apokusinski01@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux@roeck-us.net,
	rodrigo.gobbi.7@gmail.com,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	grantpeltier93@gmail.com,
	farouk.bouabid@cherry.de,
	marcelo.schmitt1@gmail.com,
	Antoni Pokusinski <apokusinski01@gmail.com>
Subject: [PATCH 1/3] dt-bindings: iio: pressure: add binding for mpl3115
Date: Sun, 21 Sep 2025 15:33:26 +0200
Message-Id: <20250921133327.123726-2-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250921133327.123726-1-apokusinski01@gmail.com>
References: <20250921133327.123726-1-apokusinski01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MPL3115 is an I2C pressure and temperature sensor. It features 2
interrupt lines which can be configured to indicate events such as data
ready or pressure/temperature threshold reached.

Signed-off-by: Antoni Pokusinski <apokusinski01@gmail.com>
---
 .../bindings/iio/pressure/fsl,mpl3115.yaml    | 63 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  2 -
 2 files changed, 63 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml

diff --git a/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml b/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
new file mode 100644
index 000000000000..9e21eae7acc7
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/pressure/fsl,mpl3115.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MPL3115 precision pressure sensor with altimetry
+
+maintainers:
+  - Antoni Pokusinski <apokusinski01@gmail.com>
+
+description: |
+  MPL3115 is a pressure/altitude and temperature sensor with I2C interface.
+  It features two programmable interrupt lines which indicate events such as
+  data ready or pressure/temperature threshold reached.
+  https://www.nxp.com/docs/en/data-sheet/MPL3115A2.pdf
+
+properties:
+  compatible:
+    const: fsl,mpl3115
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - INT1
+        - INT2
+
+  drive-open-drain:
+    type: boolean
+    description:
+      set if the specified interrupt pins should be configured as
+      open drain. If not set, defaults to push-pull.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pressure@60 {
+            compatible = "fsl,mpl3115";
+            reg = <0x60>;
+            interrupt-parent = <&gpio1>;
+            interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT2";
+        };
+    };
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index f3dd18681aa6..918d4a12d61c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -113,8 +113,6 @@ properties:
           - fsl,mma7660
             # MMA8450Q: Xtrinsic Low-power, 3-axis Xtrinsic Accelerometer
           - fsl,mma8450
-            # MPL3115: Absolute Digital Pressure Sensor
-          - fsl,mpl3115
             # MPR121: Proximity Capacitive Touch Sensor Controller
           - fsl,mpr121
             # Honeywell Humidicon HIH-6130 humidity/temperature sensor
-- 
2.25.1


