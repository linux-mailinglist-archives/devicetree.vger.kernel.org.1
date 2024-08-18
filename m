Return-Path: <devicetree+bounces-94545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6BC955DEC
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:29:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48BFDB211D5
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F091E14D2B3;
	Sun, 18 Aug 2024 17:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TErJa4RF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7514A61A
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002122; cv=none; b=oKioqHPk/SBGvGb6GGxBTxeSUkX6QQ4sV5/YerMfFlV1q9gSh5sOIvOL5aagj6mTqDd/ujPXoQCHM21jxOuOYcA/IvcZ8gCRGw1WbDTcPtVwzWR7snFUxrnzadAZgAuda8qNpPXvW2kfl52eN5SUBRVre3hV5lMDDx7wQC59ljU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002122; c=relaxed/simple;
	bh=AbFEOueyTkApHOCZ2VmW6GfqYLBCyUHUN/YS6oy+fCY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IndAh3B+UPyYgaZ2rBFK8P9SOgQ9W1x0aY9wwWJyo7wfdxR0qxb0teKqCHBWGFelvJMSbwoiGnkYDjPGtJfy9oY01qUVzsmPQu6NTIrZc2qu6h60arpWvvc/MZ7vjopAcsB7K2r/CcfZU/TDhUK1gw5vKMtgnIeTllY7bHPdVZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TErJa4RF; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3719753d365so1551436f8f.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002119; x=1724606919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PMnjAah/UWroMhE148PgxhjcZt84A7eF0pUsqexp/xQ=;
        b=TErJa4RFXpz8hZ6AySjZ6CD05IoJYIKFwn3YMVSscnsy90+DTS5HtzZT77ZjxQcQLa
         QD0Lgq6Kx+u5c8z/sX2PO7WLisafhKxhXHI3e0BlwETyCy6ar1e64GjsyDQq9JzVGI3J
         uUoFh5G9yfXf2blnZqxth6UEUPxWiqba3EqKuh94AC/SHhl5Ok4pL4e8AbpVm9D9pnBL
         vziNOp+8/h6fF+yI/mThOn1YYq4/Tic42Hwc5DeIlSFBpMvWyKs/g9WsQiH79mYM9My5
         ezklLBKuSOiCUp1wJONp1Y/soNOB+uoc5qhjup/BqCTXGgLBD8iqbUrpOmE9x1oYieVE
         jMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002119; x=1724606919;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PMnjAah/UWroMhE148PgxhjcZt84A7eF0pUsqexp/xQ=;
        b=EJ0HHjyL6UGpOHcdZAuqXb/Ffs6JqEwK2G4I7DKLYZtIAKptFYAH9J7BKxETtwPlZn
         0YE/kZ67GyitoPwCeMhMDIXH0CMVhhU98/4tpxwV7GmgRkpq9e7g2MqHfEg2GSh27rTp
         e+fPuQXa4DwpAL8hRF5PgDTWIh/Hs9ou8hPRDgCruhp47TgumDZP8ySKIk6P1nDbaCZl
         /Q+vTrpqwBTAIb6+grQLC1iKzHVsmv/YQIf+N35skNFlxo0HP5qksgxUZ34ay9wb42K5
         rMcCFMXd7WCbTzXZDPqnIbvzmoBV9UnqYgQJUdXKqhxc+pl4W/AzGanl4RqMkIalr5M5
         PYtw==
X-Forwarded-Encrypted: i=1; AJvYcCV1LzMzVy+tFbHdNFiEALXdcAuDsQkT6Y3GkI9lzh/KSt8hxVC7edOq2g27lMIcKLLckpCG0MODP+QT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+bc1MWfyZo9NuK8LHeVc/LeQped+VTAqyWPRoQ4++zf32NDon
	xw/aQ9L2oim/Mhe2sPChpvW9xqXGJv/Kx/kM0zRduRIB94ErN2xiXachn9CF0iQ=
X-Google-Smtp-Source: AGHT+IHKIKkAiJcdyepoCL+1/HhHa4+A1IIkB0xWHjT0oRr8pb2bKGRlOXa3/rVSag8EpoJHu5jWLw==
X-Received: by 2002:adf:b347:0:b0:368:3b21:6643 with SMTP id ffacd0b85a97d-371946a1372mr5523675f8f.48.1724002119278;
        Sun, 18 Aug 2024 10:28:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898498casm8461112f8f.42.2024.08.18.10.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:28:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: socionext,uniphier: add top-level constraints
Date: Sun, 18 Aug 2024 19:28:35 +0200
Message-ID: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clock-names and reset-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/socionext,uniphier-ahci-phy.yaml         | 8 ++++++--
 .../bindings/phy/socionext,uniphier-pcie-phy.yaml         | 8 ++++++--
 .../bindings/phy/socionext,uniphier-usb3hs-phy.yaml       | 7 +++++--
 .../bindings/phy/socionext,uniphier-usb3ss-phy.yaml       | 7 +++++--
 4 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index de3cffc850bc..e34b875a1bb8 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -30,13 +30,17 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 6
 
   resets:
     minItems: 2
     maxItems: 6
 
-  reset-names: true
+  reset-names:
+    minItems: 2
+    maxItems: 6
 
 allOf:
   - if:
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
index b3ed2f74a414..9fc0e87c508e 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
@@ -31,13 +31,17 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
   resets:
     minItems: 1
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    minItems: 1
+    maxItems: 2
 
   socionext,syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
index 2107d98ace15..25c4159f86e4 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
@@ -34,12 +34,15 @@ properties:
     minItems: 2
     maxItems: 3
 
-  clock-names: true
+  clock-names:
+    minItems: 2
+    maxItems: 3
 
   resets:
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    maxItems: 2
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
index 8f5aa6238bf3..1f663e9901da 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
@@ -35,12 +35,15 @@ properties:
     minItems: 2
     maxItems: 3
 
-  clock-names: true
+  clock-names:
+    minItems: 2
+    maxItems: 3
 
   resets:
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    maxItems: 2
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS, only for USB host
-- 
2.43.0


