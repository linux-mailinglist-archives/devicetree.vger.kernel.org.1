Return-Path: <devicetree+bounces-86618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9153C934FCF
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 17:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1F5E1C2185A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 15:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 989C3143C72;
	Thu, 18 Jul 2024 15:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f9oADOq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EEF13C9CF
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 15:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721316087; cv=none; b=galOudnj7ZJT5clHJlCqU0H7X8aa7XH6k8d3k6KZ22zm3BdIlSxQDSPAax/FRQpxPnJpSK8hfAPJqkCH4eSKkxT1OqA55WXjxTcRYCUjuwdXt6JNooRKTgTz+3lLVTrjB9yR0cBxm1XLWCb3pb8c7AtQbQb96aON5DLdvHzcaUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721316087; c=relaxed/simple;
	bh=70PitR19WRCz/nbwyJYX2RKRkC4CGZpC/tvMtuCqIzk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qaLQO3wwLCofVIvcpQ1LjRKlae9GWC8VjBkNaOCNXJ5aJXuhGyEAVleLWziV/bfF6dFuDKSmOGkzhglTvgpgUjFkC5y9GUgoqNboTiZ+H55vP+LyU/b8e896cG4kcwwDncpnaQG5SYuoTxTByWehy8I2+8ZnUjbZhVdR2niw4as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f9oADOq3; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42679f33fefso3905765e9.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 08:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721316084; x=1721920884; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=01aq1cVkSRPphmHwFGsfz4hmgt9ZxG3q0w3++dbLI70=;
        b=f9oADOq3DWuDNiQfFu8hLWR0nWb1Rxin6qf4Qxxdcyr/UydiyESwDzvNH/VtFhdy5N
         nypv2rYIZQp3gwtoo30QiPaQB8nKBxV+ZnblUv7G5q9hKJI4aWVRzId2/6ZcnVkoAjkX
         QAAC3L67aTknHzWQzMMD3E2iJi/bgOuEye9WujKvxc6FQUnrVpBnBXJ2M9R+ADKNmjdZ
         pAclu3fw0MRj1WNRlLZXLeF3lveFakn3UVCzKkXCp4uo+11dYMmLSOLiQ4DC4mw87jQy
         aCeQByMXyxBfpx/WuCwrTmHJgFvVDFFidlnaMd1BEhxHDjTiaCfHuZ+nS2h+VGiMCoIf
         mYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721316084; x=1721920884;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01aq1cVkSRPphmHwFGsfz4hmgt9ZxG3q0w3++dbLI70=;
        b=o8JG573qgJB/LmNbgEJwukmhcgZZRFk8mSQQowZKdR3GzPae+D1AEP6k6+i5EnMCKQ
         oblDclYJHl57ZqictFgCO4Gw4ozw4HYsJ51EUz0db1w7KHb9Ps/hC7ySinBPosGiqLtu
         q/3zamjQb5CpAx5JsYORkC399/UbiKslhGDrSlmenU4RpZ3DNx8kPO+0CtmWAg9inETW
         Dilv5VijGux1S7C++aFu7xCBqTzW6Wicp+v2JShNTHFnW/OXvGr5o4wFQ9lmWe/ZgAZw
         ZXEd56W74wfTcAAlikUFMt3DyPfmaQ4EWdutoV4GnoOSF20HxGf+T7qO+/jFZqM9JT2C
         k+YA==
X-Forwarded-Encrypted: i=1; AJvYcCURiBD0vJhNx4AeL8sB6Ud6YTbA7yJlcfPosx6obxtMc8UDDrlcwzebYQ6XMnYght9L0TqXuIZiyabp0DEqcYbiJ9PG+xvNwZg5+g==
X-Gm-Message-State: AOJu0YzJpmnp2o1UZZQYII8YuI1+Ij20+o91PE5+Trt9stTP/uKEPG/q
	sXMHR/cnARZx0TxNBzkmr5Tc2Lz1+OBpDIHz6WccvGEFHh3EAwT8f26O7NycHMY=
X-Google-Smtp-Source: AGHT+IGa7sOW1sm+Dva2TPPH9kAI3IA9GC3kahpHdg8EtXVApPet31ey/eHi5MaQBFwuaylh5qWEdw==
X-Received: by 2002:a05:600c:3b10:b0:426:6f38:8974 with SMTP id 5b1f17b1804b1-427c2cb5646mr38264235e9.6.1721316084286;
        Thu, 18 Jul 2024 08:21:24 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3685b326692sm1590366f8f.80.2024.07.18.08.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 08:21:23 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Date: Thu, 18 Jul 2024 16:20:34 +0100
Subject: [PATCH] dt-bindings: PCI: qcom,pcie-sc7280: specify eight
 interrupts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240718-sc7280-pcie-interrupts-v1-1-2047afa3b5b7@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMEymWYC/x2MSQqAMAwAvyI5W6h19yviQduoudSSVBHEv1s8D
 sPMA4JMKDBkDzBeJHT4BEWegd1nv6EilxiMNpVui06JbU2nVbCUlI/IfIYoqnFl1dTa9ctiIMW
 BcaX7H4/T+36IWQqbaAAAAA==
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2545;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=70PitR19WRCz/nbwyJYX2RKRkC4CGZpC/tvMtuCqIzk=;
 b=kA0DAAoWRqjRjlvEnYQByyZiAGaZMvOilltO35hsk32BjSn/bQSBoOL3hklYHPTkqSH6OZOU0
 Yh1BAAWCgAdFiEEw4L0rOu3QhLUt3rKRqjRjlvEnYQFAmaZMvMACgkQRqjRjlvEnYTQowEAkHG5
 GQLMNa0dS5EBYhjR6nwpefGqYsUe6v1UG2h6n/kBAI0GQ9b/NjWHm9AJwN8IcVxJBNcHrZumTEy
 tsLE6Ds0F
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

In the previous commit to this binding,

commit 756485bfbb85 ("dt-bindings: PCI: qcom,pcie-sc7280: Move SC7280 to dedicated schema")

the binding was changed to specify one interrupt, as the device tree at
that moment in time did not describe the hardware fully.

The device tree for sc7280 now specifies eight interrupts, due to

commit b8ba66b40da3 ("arm64: dts: qcom: sc7280: Add additional MSI interrupts")

As a result, change the bindings to reflect this.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  | 24 ++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
index 634da24ec3ed..5cf1f9165301 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
@@ -53,11 +53,19 @@ properties:
       - const: aggre1 # Aggre NoC PCIe1 AXI clock
 
   interrupts:
-    maxItems: 1
+    minItems: 8
+    maxItems: 8
 
   interrupt-names:
     items:
-      - const: msi
+      - const: msi0
+      - const: msi1
+      - const: msi2
+      - const: msi3
+      - const: msi4
+      - const: msi5
+      - const: msi6
+      - const: msi7
 
   resets:
     maxItems: 1
@@ -137,8 +145,16 @@ examples:
 
             dma-coherent;
 
-            interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
-            interrupt-names = "msi";
+            interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "msi0", "msi1", "msi2", "msi3",
+                              "msi4", "msi5", "msi6", "msi7";
             #interrupt-cells = <1>;
             interrupt-map-mask = <0 0 0 0x7>;
             interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>,

---
base-commit: 73399b58e5e5a1b28a04baf42e321cfcfc663c2f
change-id: 20240718-sc7280-pcie-interrupts-6d34650d9bb2

Best regards,
-- 
Rayyan Ansari <rayyan.ansari@linaro.org>


