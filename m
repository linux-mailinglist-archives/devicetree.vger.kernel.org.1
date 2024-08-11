Return-Path: <devicetree+bounces-92739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B70D94E29E
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 20:19:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FC1A1C20959
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 18:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E62616C684;
	Sun, 11 Aug 2024 18:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HuPfEq4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BD8168488
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 18:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723400251; cv=none; b=MAwXqb896G/xB6vcYKh+n0v7ESm2ivB7CuLjU5EDu+SGk5oSqB+/xHX1LHHv73i1/tX0ZmwKREB+BL7ZKphFrinN0BTXXunxpLGkp+YIpkObw0Xw40Ae1/TWzbp09uVdbEoLYnbaSwxRV+YzWDNxJkNzt41gmXAX7LoEmKQe6vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723400251; c=relaxed/simple;
	bh=ODWT4GHR30t+QnDSZHKStQSpKmwtKvyvXE4vBLxh1WI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Guj3SvDKvc0Qq43W3PQSJA7fIWHG9p+YxLumip3XJ7p/Geulen5fo/MpILma5jy/bD/dxuK3zgSvL4y/fKWUZ2Db5lz5+fL0+oIlCtmZoQuzHtVk7n+CuA96Fw/0XauLigcv2JY1zsmsDchC7isyr1MLJEdVHF56DuYyBFK/FgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HuPfEq4S; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2eeb1ba040aso49705021fa.1
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 11:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723400247; x=1724005047; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4I1MOs4RlICrHo6+3Xh5oqbsEAM8Ad9zumEnWMGczaU=;
        b=HuPfEq4SaME+5nj4Fmxk01qrRVZjl8QcCBy2LWHT/Sy+SEHwWtjZeE59Am+Ri1Fmzg
         cYCc0OmtE1mQXkyghQX1pQPI/jK1B2HnWHdMfIFvoLpna+lIKyFhWYWrHTaYceZgq4+f
         JKVFCm1bdjOmUN8VB8bLEGMuprVc6m/Eib2QDJS3X2+/9WNxgvF9LdTPS1F/6pUsDQ8i
         MhIoF/sAOIfXitKtnm4OpdyCK3oXMi3wuKDMqP/079/BdBAECmf9rkqOZMeb7RyTG6mF
         dLgGTAr+oBxEMnLgPNtnWLllqnY/wQIE1E3BlVpGLbO2QeYyXE8BQMHQeyG1XsrkN1aq
         nLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723400247; x=1724005047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4I1MOs4RlICrHo6+3Xh5oqbsEAM8Ad9zumEnWMGczaU=;
        b=EPeGa0xBStVlB8a21H8domFmWWw2fXfd2nAhAWZp2lV+9JpOkOfAJOxTVsyFlh/Xde
         7Ah83ZJT4+iSnajPTIBOB6sNRdih0MP6U3ULC91bRDB5Ydj85dru/O0o72RIIqdKp5H8
         bE93hxBH5YDyo4ERrNlbsnu0fGXsfrlInMH3QFcFFwl6NA8+ngGGPycROhWypbCyx78J
         0EnwTcqVnu8VbJKKYXKz35HlV0KfkrTVjGF4WRcBcTm2yWwIagG7C83y2heCk+qkstq1
         xoQe540Pm6efp4qRAu9ABQSmd7q8X1D0esqTSBDq1laImjOxd6CfFX8m0svO0oY/jTKh
         eq6A==
X-Forwarded-Encrypted: i=1; AJvYcCUZz56rkL7cgFr2217o2lYSJ46edA4aaLj/N08QBWpu4n9vIeHvqEYusaryBcja2VZAtO6pqiaGnY/kFJzKHGrox95fkWwFQ5YD6A==
X-Gm-Message-State: AOJu0YwvTn5STX12nT1+3NsCj/nQbDxg0+EtmUNgrUk1SEUcALlG4KJL
	IrHX/qN6Vx6MlPFWt5uHBSX/rFeM/dTgvCC4ZGOQzu+JGMgzqqgRxZYzveHwyLQTNC3RIb+Q2I2
	I
X-Google-Smtp-Source: AGHT+IGZk8tSp6TCMLyX7Nh8mlsOe+NTSYoLKUIveF7rdM/yJGip844M6WYN5Bdk4so7A4B+EQy7Tg==
X-Received: by 2002:a2e:b4b6:0:b0:2ee:8ea4:d649 with SMTP id 38308e7fff4ca-2f1a6d0d517mr51105321fa.16.1723400247459;
        Sun, 11 Aug 2024 11:17:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd1a6032c1sm1610593a12.92.2024.08.11.11.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 11:17:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 11 Aug 2024 20:17:08 +0200
Subject: [PATCH 5/6] dt-bindings: bluetooth: reference
 serial-peripheral-props.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240811-dt-bindings-serial-peripheral-props-v1-5-1dba258b7492@linaro.org>
References: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
In-Reply-To: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Daniel Kaehn <kaehndan@gmail.com>
Cc: linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-sound@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4621;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ODWT4GHR30t+QnDSZHKStQSpKmwtKvyvXE4vBLxh1WI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmuQAqOJOTxfm6MHExpo3dgYQ9SqbgDR4o/cpL6
 8ITUCeJOmaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZrkAKgAKCRDBN2bmhouD
 1x0NEACAsDcv6D6/XYWk4Es7HPPW2CKoBfs2JObs/84LP24gWNYTG4vPD2kbpM8IEJAuwI2LUI6
 3+tUxQ80u2pm2yVqcooaCI9qGdr1MGrtbP74+dct5wdWzdu5B2eJO83Zu2YCClBQ5zdR/8SErcP
 5nNCKtK8GeOkcupUkK+IrP98Ahc4DwsR4oAP7kUzIMxD3i6sRFFCGHluLtn6MrgqDGqV6tDwucQ
 RyiE4kurOOLkY8+pMJZtzhAfS+i6JIqLgAEK7HJzod7wypE+i5Cd5zYpxSV2CTQ28MMZXdNx7ta
 bV8g0oByZxi2yOZdiTxOKVJQAC7kDT/WCkheov0k4mCdJ6vog4lj9EqHANJ7IqHAb7QcBK8uFRf
 Lx2UmPT9ZEjGUobHioIYbprCTADQLnsAQkvLAnoIiEZ9NjDIzDJcumx5/Cov5sfIl5OBwHLGMnx
 1R/C05mFXKulqUk6XuXRl/EQ4McsS1QlaA72sJo/ra+E3cXDSu42JuTzYZExbxLuGxEuwwAzcuH
 SD3EVCLnEXLRMbYRzaHsqhYnAF6HyShOi6zwXF8TRsN1nK+xBTbWUzq5HwzBZ9lAjfE+2Y+tPn2
 0Pl5cIPKBKY88wpKY1bQipWt4sQAKkJJmSnGDfAIIrTws2/S9aWvEsh8zxSQNNcnmvMbj02+C95
 ZnmGsbT4r2kWqMw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference common serial properties schema (for children of UART
controllers) to bring common definition of "current-speed" and
"max-speed" properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This patch should probably go via Rob's Devicetree tree.  It depends on
the serial patch adding serial-peripheral-props.yaml.
---
 .../bindings/net/bluetooth/brcm,bluetooth.yaml     | 31 +++++++++++-----------
 .../bindings/net/bluetooth/marvell,88w8897.yaml    |  4 +--
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml |  4 +--
 .../bindings/net/bluetooth/realtek,bluetooth.yaml  |  3 +++
 .../bindings/net/bluetooth/ti,bluetooth.yaml       |  3 +++
 5 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
index e49e4146736f..3c410cadff23 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
@@ -119,29 +119,28 @@ properties:
     items:
       - const: host-wakeup
 
-  max-speed: true
-  current-speed: true
-
 required:
   - compatible
 
 dependencies:
   brcm,requires-autobaud-mode: [ shutdown-gpios ]
 
-if:
-  not:
-    properties:
-      compatible:
-        contains:
-          enum:
-            - brcm,bcm20702a1
-            - brcm,bcm4329-bt
-            - brcm,bcm4330-bt
-then:
-  properties:
-    reset-gpios: false
+allOf:
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - brcm,bcm20702a1
+                - brcm,bcm4329-bt
+                - brcm,bcm4330-bt
+    then:
+      properties:
+        reset-gpios: false
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/net/bluetooth/marvell,88w8897.yaml b/Documentation/devicetree/bindings/net/bluetooth/marvell,88w8897.yaml
index 60b90cd62013..2fc36874deb7 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/marvell,88w8897.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/marvell,88w8897.yaml
@@ -19,13 +19,13 @@ properties:
       - mrvl,88w8897
       - mrvl,88w8997
 
-  max-speed:
-    description: see Documentation/devicetree/bindings/serial/serial.yaml
+  max-speed: true
 
 required:
   - compatible
 
 allOf:
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 68c5ed111417..67f95e60ed3a 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -98,8 +98,7 @@ properties:
   vddwlmx-supply:
     description: VDD_WLMX supply regulator handle
 
-  max-speed:
-    description: see Documentation/devicetree/bindings/serial/serial.yaml
+  max-speed: true
 
   firmware-name:
     description: specify the name of nvm firmware to load
@@ -118,6 +117,7 @@ additionalProperties: false
 
 allOf:
   - $ref: bluetooth-controller.yaml#
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/net/bluetooth/realtek,bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/realtek,bluetooth.yaml
index 993c607eaa49..7d567122bac9 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/realtek,bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/realtek,bluetooth.yaml
@@ -46,6 +46,9 @@ properties:
 required:
   - compatible
 
+allOf:
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml
index 1f507ddccc3c..290abc22e18a 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml
@@ -74,6 +74,9 @@ properties:
 required:
   - compatible
 
+allOf:
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
 additionalProperties: false
 
 examples:

-- 
2.43.0


