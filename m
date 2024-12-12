Return-Path: <devicetree+bounces-130060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A813E9EDCC0
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B82C81689D6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF5916088F;
	Thu, 12 Dec 2024 00:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="By/vuAI/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17972153800
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964471; cv=none; b=Y8ZyPO6pNX+5Icqo76yw7FzbHT7uG0CpOpm8b3caHcQI66IJBuiKVTigrUx+/FP+tOvyfd2J05iCl+NeMRrUXw8y2/7uTMBgfMlAhXOcv5wbB+hqdMybWpt+Dinzd+S2KQxSGX/aCHDYyBui5bEQ7ifr8b+NT+aarQt9gARfmNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964471; c=relaxed/simple;
	bh=KxG2H3oHtPjIV+VhCiilLtiyhUfg1u1AKb3+JTgTrMs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b7aa3UxXQQyg8qu4oTViGYhCWXnbXIxJ3RolfW+2sqxnIy4BvO4V+M8Iqid26fmZVH3mp5LeIwlE6iJjlJ2BhgGoJGuAA5D8OvzichHnCq0WTnm5QYjSxIrTnpVIp+LfmDqIuAPpcK+jRDikkaUPBn54nYSs0TD4aEL5PWp+xew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=By/vuAI/; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-434e3953b65so276255e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964468; x=1734569268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vFHKgaQUdzL/Q4nPVhlEMPI+GbJNKf55IgIGl/KzjWA=;
        b=By/vuAI/JvC4AssI7Y9TfppP+xN1c6D/OGqMvREbxE0HTIW3VGzWPXsfqybXwY0qhg
         V/mP7eODc10OJUo9zpNNoUl+44rKbSupxUO0Ku67HwGWo21Q2yPMmc3LONPoagnQsU5k
         NETlIEIWABQ6X3O1JwQ8SnpOKeIZBk/SoV9RL/3MwCf8oJD2YQgW1mGJcM3rMCaEdEVt
         4l5Qm663xU1pQGy9H/Cp0yht5efyziuKcO98Y7UFtFrvTYmekfGF/c4XkyHU8tdux3r6
         qmelpG04gYHlYq4EwHKliksPGGa4sT2xj6/GF3Mng3UNDbe53Zd1p6OtCTzBkARiD9NI
         uMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964468; x=1734569268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vFHKgaQUdzL/Q4nPVhlEMPI+GbJNKf55IgIGl/KzjWA=;
        b=g0XoqWSamuPxVJpDPIpBxXdYGegFaQuayRSYvpaJJ/hlQAUusNTD/l/3MwP8Xksubb
         wqx1EDkDN3dqYbtYVNaIZGcmNB14/+pmgxqZAcswdiVulP1HgArYLZTfUKbmLt/UE2px
         iVCkggjW8xNFLP6CRX6uujFcQ0xmDvM4QXJCs/IB2qaFcFKXmLdf7J3RdinZP0MZ2iAa
         mJmFctckTJ2uz9G4sFH8QGM/Xz7tkhEY/1uL6XB3JFAOOy54Q2ZWA/Ik06uhpMSaHKPH
         mVCsK12pT75qr6I3Y/vLkhlHdtolR+6BcXj/GmpJ8nnQ+XXBnNjbmz6MU7ow5Nx0dfNA
         ueRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCmAKa6+3DH2XdM98IKKphNTqYhsIbtZ1NOmJ78HSuxe8FajJGJ15P1CcQQmZsOwa9SSHpZTjmYDbS@vger.kernel.org
X-Gm-Message-State: AOJu0YxZATqm6HqAsjK6hIcb8UAvZPfFCLWqTDWOPJfkEyTggkbTMc24
	nXmjqne9+ewDEomjqHxdsDKnWg5KdI5dNZTOcfUIXNQSSOV7MSkt/VLko3PeyDE=
X-Gm-Gg: ASbGncstoCGRJ9321G9khEmPQ02a99tSqptP1Bn2vuM6yfm0/jQnl1Scpx1gaFWR4RT
	cgB5SAjG92EdtgNI0bSK3r8Kd3JcozJe/78zVnocEDWv+irkGbk4/pokqtWO2p+SOwjUQnvqD5r
	E4ke+Wa4UUHZhMa0znvTULsH02WUhWTpouhpmjbiviCQ0MdEO5+B7tIDPrTR6ApjMykc7Hmsbqk
	DN7WbZLPmvWkSveSvDTxPNH8hv3ZLmCmSx5w7SLIeLxBpC7dTW2OliIrQV7OCxE5jvTz00B
X-Google-Smtp-Source: AGHT+IGqJQuuqk4Vhp5TZjFSvgTAdQ/xv2AVt/O10VN20Uow3Ku4n2wjK3uOgIBOBh22buJzPhpm7A==
X-Received: by 2002:a05:6000:1a85:b0:385:e1a8:e2a1 with SMTP id ffacd0b85a97d-3864ce86758mr3868050f8f.3.1733964468442;
        Wed, 11 Dec 2024 16:47:48 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:47 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/14] ASoC: dt-bindings: qcom,wsa881x: extend description to analog mode
Date: Thu, 12 Dec 2024 00:47:22 +0000
Message-ID: <20241212004727.2903846-10-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

WSA881X also supports analog mode when device is configured via i2c
only. Document it, add properties, new compatibles and example.

While at this, also adjust quotes.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/sound/qcom,wsa881x.yaml          | 75 +++++++++++++++++--
 1 file changed, 67 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
index ac03672ebf6d..e482d9dc0de2 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
@@ -12,15 +12,17 @@ maintainers:
 description: |
   WSA8810 is a class-D smart speaker amplifier and WSA8815
   is a high-output power class-D smart speaker amplifier.
-  Their primary operating mode uses a SoundWire digital audio
-  interface. This binding is for SoundWire interface.
-
-allOf:
-  - $ref: dai-common.yaml#
+  This family of amplifiers support two operating modes:
+  SoundWire digital audio interface which is a primary mode
+  and analog mode when device is configured via i2c only.
+  This binding describes both modes.
 
 properties:
   compatible:
-    const: sdw10217201000
+    enum:
+      - qcom,wsa8810
+      - qcom,wsa8815
+      - sdw10217201000
 
   reg:
     maxItems: 1
@@ -35,17 +37,60 @@ properties:
   '#sound-dai-cells':
     const: 0
 
+  clocks:
+    maxItems: 1
+
+  mclk-gpios:
+    description: GPIO spec for mclk
+    maxItems: 1
+
 required:
   - compatible
   - reg
   - powerdown-gpios
-  - "#thermal-sensor-cells"
-  - "#sound-dai-cells"
+  - '#thermal-sensor-cells'
+  - '#sound-dai-cells'
+
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,wsa8810
+            const: qcom,wsa8815
+    then:
+      properties:
+        reg:
+          description:
+            In case of analog mode this should be I2C address of the digital
+            part of the device. The I2C address of analog part of an amplifier
+            is expected to be located at the fixed offset.
+          maxItems: 1
+          items:
+            minimum: 0x0e
+            maximum: 0x0f
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,wsa8810
+            const: qcom,wsa8815
+    then:
+      required:
+        - clocks
+        - mclk-gpios
 
 unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/sound/qcom,q6afe.h>
+
     soundwire@c2d0000 {
         #address-cells = <2>;
         #size-cells = <0>;
@@ -68,4 +113,18 @@ examples:
         };
     };
 
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        amplifier@e {
+            compatible = "qcom,wsa8810";
+            reg = <0x0e>;
+            clocks = <&q6afecc LPASS_CLK_ID_MCLK_3 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+            powerdown-gpios = <&lpass_tlmm 16 GPIO_ACTIVE_LOW>;
+            mclk-gpios = <&lpass_tlmm 18 GPIO_ACTIVE_HIGH>;
+            #sound-dai-cells = <0>;
+            #thermal-sensor-cells = <0>;
+       };
+    };
 ...
-- 
2.45.2


