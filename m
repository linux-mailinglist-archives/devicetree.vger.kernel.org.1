Return-Path: <devicetree+bounces-14750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3DD7E6639
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04C4228117D
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DAE810A1A;
	Thu,  9 Nov 2023 09:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D8UWIU2i"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD2010A19
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 09:06:50 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B0C61991;
	Thu,  9 Nov 2023 01:06:50 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1cc2f17ab26so5328555ad.0;
        Thu, 09 Nov 2023 01:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699520809; x=1700125609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z5YF1mhym/Q5SMEev62zt7snyiNJO7d0PvYNhuYeeqE=;
        b=D8UWIU2ic9yl7l6HYdH/gLRQqAZjK6EQxAkzqOOoVv1HQ561KBQ5ragKkGqnDpwxpA
         TJafyVeJN7R3ZipQGqAznrm+Vn2MQ+GIGGZ0P9/8QsPC3AhEmKFwfFwbJn86OVYBxEsD
         rsY7SENFg+o6NNOeLikcBPaBWdQdNjwazvhyQL9AYiGfv4paGD/U1nU7ciWHf/nzhtlL
         LvVsyBEClC+eBGHvKmssr0INE0k+0dD/H0PMnJ9OSkcMLdf8T1zfgci2gJ+rxtBt+W0U
         WnNTuMRxUHiSpZacQHC6u97iBgc4c4GvFc23G1E2Cv+yJFuRvcA3y05AWwAhIClz06LX
         RMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699520809; x=1700125609;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z5YF1mhym/Q5SMEev62zt7snyiNJO7d0PvYNhuYeeqE=;
        b=ANmJqZdXwEGAYXFx8R3LJMFvqXuxlGRnj1HoRnKHelG74lsHYK3wk8YSTE96/2XAdC
         lvuWXXlhjuX9guZMfZ2B53sXia4Dnh4IUIthCMCxna81zVPHCj5oqxtxKvLQW4wNIIZl
         ZAgJX0ZurDVUjEFbRwzqGIeCvMAwr7E/jX0QKcrjynpJuDbMq3S0objy9//vZuR/gKub
         1HaWZCb8y749SSsfk5KGfnzalR4rHSFHvE07CnHYAiZWSWa0usHtGLfmNoKdlsRBFncw
         1Oei4Ba+5iaoEYwqh1KGpok8Z8mjGiWtfQuHLGrNOaUvo3TLOKI8sRqOnOPkEdEb9huO
         JKSw==
X-Gm-Message-State: AOJu0Yz/8tEllXGYaT+01Km2b7PZse72MMR6bLs0Inj3R4py64PA2Tir
	0N15FiHQlQS8nCL7QJr/swiDxh+E3zwzgoAJ
X-Google-Smtp-Source: AGHT+IHpxuw4Y0T35Aw4w3pOI3If9f2PAE66GTL8rfrzRIIwH9aos1ks47m6+jp20RSPJRwFSOKbmw==
X-Received: by 2002:a17:903:2447:b0:1cc:2f9d:6e9b with SMTP id l7-20020a170903244700b001cc2f9d6e9bmr5530340pls.20.1699520809131;
        Thu, 09 Nov 2023 01:06:49 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:2353:8963:b940:1ac0:2fbc:6b6])
        by smtp.gmail.com with ESMTPSA id jj17-20020a170903049100b001b06c106844sm3036318plb.151.2023.11.09.01.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 01:06:48 -0800 (PST)
From: Anshul Dalal <anshulusr@gmail.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Anshul Dalal <anshulusr@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: iio: light: add ltr390
Date: Thu,  9 Nov 2023 14:34:53 +0530
Message-ID: <20231109090456.814230-1-anshulusr@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for Lite-On LTR390 which is an Ambient/UV light sensor that
communicates over i2c with an address of 0x53.

Datasheet:
  https://optoelectronics.liteon.com/upload/download/DS86-2015-0004/LTR-390UV_Final_%20DS_V1%201.pdf

Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
---
 .../bindings/iio/light/liteon,ltr390.yaml     | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/light/liteon,ltr390.yaml

diff --git a/Documentation/devicetree/bindings/iio/light/liteon,ltr390.yaml b/Documentation/devicetree/bindings/iio/light/liteon,ltr390.yaml
new file mode 100644
index 000000000000..90c20076b6c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/light/liteon,ltr390.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/light/liteon,ltr390.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lite-On LTR390 ALS and UV Sensor
+
+description: |
+  The Lite-On LTR390 is an ALS (Ambient Light Sensor) and a UV sensor in a
+  single package with i2c address of 0x53.
+
+  Datasheet: https://optoelectronics.liteon.com/upload/download/DS86-2015-0004/LTR-390UV_Final_%20DS_V1%201.pdf
+
+maintainers:
+  - Anshul Dalal <anshulusr@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - liteon,ltr390
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description: |
+      Level interrupt pin with open drain output.
+      The sensor pulls this pin low when the measured reading is greater than
+      some configured threshold.
+
+  vdd-supply: true
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
+        light-sensor@53 {
+            compatible = "liteon,ltr390";
+            reg = <0x53>;
+        };
+    };
-- 
2.42.0


