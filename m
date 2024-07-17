Return-Path: <devicetree+bounces-86346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE28933ADA
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 12:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A4F11C210F9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 10:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A99EB180048;
	Wed, 17 Jul 2024 10:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GiMGFTh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D442917F386
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 10:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721210777; cv=none; b=RY2j9hHkdLSm6ec97eDFVQU9i23OXAz4uc+QLIfwD4bPnvS4DKY71gybKmErn/MDQHSNh25Nibe1BYy365b976uPoRMB6wv/wWzNPXypNeX70OU1P7GUULxy2ExgZgDS3azyKIC3onXYwWkMoGT6+ygIEsX4fMBTy/+Rih2ZZ4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721210777; c=relaxed/simple;
	bh=euXfg7HYC28cRCFsrCOw0XPz5Yc9gWEUSR1RJDIDDWY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u7lIwypfH8S+IRWGoCqNhPb9kNK9CMsyzC0A/13rLA+/PwBTqKz8lOt/pJxSaVgYtl03EjYmcgnHoMxrxxpjDHN1bXRJ206YvqZyvwaMl+fpD5x2c5s+VnHJhYRTAjBpdsg+0Ljl7oVAwGLJLKeEvzILI3UHdQIEtNl8LXsI8DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GiMGFTh/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52ea3e499b1so7504602e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 03:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721210774; x=1721815574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qdywHCpErhEdHKCAH1TVR2EgQSrjfvRUWI2cgY7PlTU=;
        b=GiMGFTh//fcRUkUouNx7abWpZPAwjUO5Op2/p4HkxOAoJDRf+UwRjNdAJE0wxnBSoY
         FVanc0JhT+qz6ciyHOgaEw/c7Id2dL+LCsZaceiZBJg7YOtyDoC7n1hisl48qwKe9Oty
         Xr4ZkHywRBHEgk6nIdtVTQ2CCg66zrVNFsYy1i7vTaHUss3zHUSXlcQsh2hT1fM9FzA1
         gLO9z/RZ93u7zG1fJXq7wT5Xek/BZfZ+rFG6ctUBfgf9sa6XaXeDRVbsfr6FpAGDc7lE
         7LSUgCCE6WRPANiBScZy58RUPA8n2BoBCqUVkpm6Cc4e2j4vAUHyncxMn0WiFtqgItTu
         gt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721210774; x=1721815574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdywHCpErhEdHKCAH1TVR2EgQSrjfvRUWI2cgY7PlTU=;
        b=aZ9Qcu5P7Z67aUq5H2p5toDsf4BPZEE7LDntKu3d3pdUeNJpdcyGnVxBs+w4ybx92d
         DNRIi2tW2ci8rS27J2gsU+EEsPUGNAhFwvJG+vld998kZ2ikCW4QWLL73IXl3O1L15Iq
         52Dua25cEgphB6KTi+HgAakyCxZVVLyFWfcztQtczj1pTYcJh14ZLo14ZdKMlQ70ogjY
         vOsTh3KmhNzSKZ0I2VdxE1kWMnYxVWu8rYx/2s4a8zVt7JkyEi7WHyzjKanblsRv38f+
         77w2AGKJvEbkuMGdW9PEXuTZy/fLl/xwsLBlgBHLZn1yzu7D24k/8Gb0E7zKvKiTLx3O
         e7Ag==
X-Gm-Message-State: AOJu0Yy7zV3r8mM64YAztXIw6+5OsVUn6dldzXx46tV1SmKleJH4wdjS
	4l6EeasLhlQ35Lbm18IFQUU/ScMAxftqw1jlKZS3PvlXNPQTSkPjvSMT9Y8zW4rkFTJ5sXUY3NY
	C
X-Google-Smtp-Source: AGHT+IF2wNc6IOzLFvdUXMOWee8wruo61zvxPq7WkFVhPdniwc3ixyjq4vufUinAsSzoZC2ko5egWg==
X-Received: by 2002:a05:6512:39c7:b0:52e:954d:359a with SMTP id 2adb3069b0e04-52ee54111ddmr879701e87.43.1721210773583;
        Wed, 17 Jul 2024 03:06:13 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e983e7sm163259245e9.23.2024.07.17.03.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 03:06:13 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	de Goede <hdegoede@redhat.com>,
	Jens Axboe <axboe@kernel.dk>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: ata: qcom,ipq806x-ahci: use dtschema
Date: Wed, 17 Jul 2024 11:03:06 +0100
Message-ID: <20240717100600.19005-2-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240717100600.19005-1-rayyan.ansari@linaro.org>
References: <20240717100600.19005-1-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove old text bindings and add ipq806x AHCI compatible to
ahci-common.yaml, as well as its required properties.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
v1 -> v2: removed assigned-* properties from binding

 .../bindings/ata/ahci-platform.yaml           | 30 +++++++++++-
 .../devicetree/bindings/ata/qcom-sata.txt     | 48 -------------------
 2 files changed, 28 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/qcom-sata.txt

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index 358617115bb8..2c8fdfc3df9b 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -30,6 +30,7 @@ select:
           - marvell,armada-3700-ahci
           - marvell,armada-8k-ahci
           - marvell,berlin2q-ahci
+          - qcom,ipq806x-ahci
           - socionext,uniphier-pro4-ahci
           - socionext,uniphier-pxs2-ahci
           - socionext,uniphier-pxs3-ahci
@@ -45,6 +46,7 @@ properties:
               - marvell,armada-8k-ahci
               - marvell,berlin2-ahci
               - marvell,berlin2q-ahci
+              - qcom,ipq806x-ahci
               - socionext,uniphier-pro4-ahci
               - socionext,uniphier-pxs2-ahci
               - socionext,uniphier-pxs3-ahci
@@ -64,11 +66,11 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   clock-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   interrupts:
     maxItems: 1
@@ -97,6 +99,30 @@ required:
 
 allOf:
   - $ref: ahci-common.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq806x-ahci
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          items:
+            - const: slave_iface
+            - const: iface
+            - const: core
+            - const: rxoob
+            - const: pmalive
+      required:
+        - phys
+        - phy-names
+        - clocks
+        - clock-names
+
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/ata/qcom-sata.txt b/Documentation/devicetree/bindings/ata/qcom-sata.txt
deleted file mode 100644
index 094de91cd9fd..000000000000
--- a/Documentation/devicetree/bindings/ata/qcom-sata.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-* Qualcomm AHCI SATA Controller
-
-SATA nodes are defined to describe on-chip Serial ATA controllers.
-Each SATA controller should have its own node.
-
-Required properties:
-- compatible		: compatible list, must contain "generic-ahci"
-- interrupts		: <interrupt mapping for SATA IRQ>
-- reg			: <registers mapping>
-- phys			: Must contain exactly one entry as specified
-			  in phy-bindings.txt
-- phy-names		: Must be "sata-phy"
-
-Required properties for "qcom,ipq806x-ahci" compatible:
-- clocks		: Must contain an entry for each entry in clock-names.
-- clock-names		: Shall be:
-				"slave_iface" - Fabric port AHB clock for SATA
-				"iface" - AHB clock
-				"core" - core clock
-				"rxoob" - RX out-of-band clock
-				"pmalive" - Power Module Alive clock
-- assigned-clocks	: Shall be:
-				SATA_RXOOB_CLK
-				SATA_PMALIVE_CLK
-- assigned-clock-rates	: Shall be:
-				100Mhz (100000000) for SATA_RXOOB_CLK
-				100Mhz (100000000) for SATA_PMALIVE_CLK
-
-Example:
-	sata@29000000 {
-		compatible = "qcom,ipq806x-ahci", "generic-ahci";
-		reg = <0x29000000 0x180>;
-
-		interrupts = <0 209 0x0>;
-
-		clocks = <&gcc SFAB_SATA_S_H_CLK>,
-			 <&gcc SATA_H_CLK>,
-			 <&gcc SATA_A_CLK>,
-			 <&gcc SATA_RXOOB_CLK>,
-			 <&gcc SATA_PMALIVE_CLK>;
-		clock-names = "slave_iface", "iface", "core",
-				"rxoob", "pmalive";
-		assigned-clocks = <&gcc SATA_RXOOB_CLK>, <&gcc SATA_PMALIVE_CLK>;
-		assigned-clock-rates = <100000000>, <100000000>;
-
-		phys = <&sata_phy>;
-		phy-names = "sata-phy";
-	};
-- 
2.45.2


