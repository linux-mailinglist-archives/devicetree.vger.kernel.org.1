Return-Path: <devicetree+bounces-250523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA29CE9B9D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:03:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC9183016B8B
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63D221019C;
	Tue, 30 Dec 2025 13:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IYvLmr6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD671212FB9
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 13:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099780; cv=none; b=aJIUxdHgS4ShFrpdndZVKWvCJQeKZ0CPenv4fiBNc7znARU5kVmwU4bRt4NRFaDb81b9KVpOLFHFYueiTwgoB8GAQ0oFvwy12wsuFkHs+byR53CP67nu82B6tGHt04Eo0Z4micFBZ4zZznKIzjJ3/JARm0u2zw7ozrOFMtHOJDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099780; c=relaxed/simple;
	bh=SVJlcDayOcdOuFmlxFZIJno8JEUkvS2rwI28zFq/GdM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AVdtNC5GstGE+XfrbnojERcpMESeE95fklchU+/IJoT4BsvH5h2C91BNeYmTzXXV36iRyJH2uwsLHsK4GlvnXLk3f5jaCPwvtV7tRWGjN8Xzt+GtXf4DPaHEm8d5cnllcyOYbwP0XkDJAblxYbI/dY7IkqH526bqZGK4miUpSuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IYvLmr6W; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0b4320665so152050515ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 05:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767099778; x=1767704578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSJakbOsK6HuPfvndjr4pklixI6V6EaaZEWI2YnlWqA=;
        b=IYvLmr6WkDXnZXu+1PZPZwoX74HMI+IjjSlk6sYwxa9MNFuQ4egJOr/UUoCoabdAaL
         w7dDoHPk1HXwVzCDhF1KJWR8K59EZCmUZj4LmuItJKiEOX7zyFsFeaAOZzPspLQaKlOO
         /tU0msYVgZnPr+XBGJv0G4jrrL0uC0Cep1oJfI6cn0da8ReV+4d4ixPgNO4q94RX0673
         cFNvC8xwZb1VRkYV1jx3diq6+RvwpNdLjsQTHAhimvAyV9YpB+f6ENTsgXQnAuYZz9Hl
         uY62Z5KyDNfVokZK88bmO5AgngmFGNBqGAT1GlbIsbzSsG970/xAeR5fxRObwUk+5oiV
         W+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767099778; x=1767704578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jSJakbOsK6HuPfvndjr4pklixI6V6EaaZEWI2YnlWqA=;
        b=BGgflJVu0kwR5AprHrhVSmKEQI8bKDRZFraPYhkqM4qos7T9mzuQlAD9zmMhjeAwl1
         uRBsKr0dgD/m00awgbpBXv/7HBbS4FvMUQN0E+VZ9znhpbuIukZvsXTYv7e+10Ou4vfc
         45UVL1mGYm4QALOwHC6Rg1BHCRYnSIWmPy5OCDD0XU4DXH+KnN1NqDhiJ9Gfim6Zhq+o
         Ox7BgNgJ5lbY0KZZVi2aSKv8756AZ3UvhNs0KKMgJfUd/CCs9PedtyGQmii0FN97BpYZ
         ybBeA0FtLPss4jqOGFPmg8lVRsMa4TmsvsiEIbixb4/BNn+Xsc7KXvD6u9X1gyA2DhiX
         craw==
X-Forwarded-Encrypted: i=1; AJvYcCVgi8jZ8u/Njx1nHhr6zGJLxu6S2oQ2BICqcnMiGik3OnA1uNlNramXaGJQZvMTJlP41NjjTs0zkwhW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe74gPFJRknAYFDdG1h3+KJOyEmeMsxvdLyDS5K0DGF4o5/hNG
	akPRZQmw0ppuyZhEr2jCDrpq7WDdBXiDgIbAOsy/A9UNfYMw9yQ8QSNo
X-Gm-Gg: AY/fxX4tldfHCAnufjAPC4I31Cngwz0GGoeTXxRjTu1KqNTlxeIjyWIivg8cdykKQoI
	ZNrUSNDcGQM/tkr8lqhXS1uyr2+KeJrJfUunEigSt/6ktQZ68LbAgZFOG6NW+JT01ehnuDuShHU
	aV6Ad8+3vS5wa/4n0KGlDenpVU78YJEciWdOWD+u8rsX2BqP+p5pwC1kiTSKZ5b3Y0SMyGk+v//
	FAmczMIml7xX95jmQdwCKq34fXBC2r71Ct4LnprYMZ4MzuEEwpnE6TWkmE5oYoKJcC7godYIar2
	ATUGBIJ1uc/vxtOhhMIwBoaSrXmBq8QssgoVZCTJQQFTM+nKZNGwhRu8H21nB+iXrQItxGSbV0p
	BDBb5qpvJ59ShNaulWvoiBSHv1KS5oWVyM68zFM1YOZB0bdPkYw6yBZa2bFPdUEuuWZGBetp9vW
	oOxi04ZINLfQSqCk3p6s4oVh2mS9vh2SQw+vLb
X-Google-Smtp-Source: AGHT+IHZerZ0LNO2PuMFv7iW0Mjil2vz3+YsCHT76XvPfMWbN4zdO9z4ljPoono1/dOsj9Os3Y/Gyg==
X-Received: by 2002:a17:903:249:b0:2a0:de4f:c9b with SMTP id d9443c01a7336-2a2f222b700mr347394015ad.4.1767099777888;
        Tue, 30 Dec 2025 05:02:57 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d6ec6bsm296003075ad.87.2025.12.30.05.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:02:57 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v10 2/5] dt-bindings: backlight: gpio-backlight: allow multiple GPIOs
Date: Tue, 30 Dec 2025 18:32:24 +0530
Message-Id: <20251230130227.3503590-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230130227.3503590-1-tessolveupstream@gmail.com>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the gpio-backlight binding to support configurations that require
more than one GPIO for enabling/disabling the backlight.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 .../bindings/leds/backlight/gpio-backlight.yaml      | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
index 584030b6b0b9..1483ce4a3480 100644
--- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
+++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
@@ -17,7 +17,8 @@ properties:
 
   gpios:
     description: The gpio that is used for enabling/disabling the backlight.
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   default-on:
     description: enable the backlight at boot.
@@ -38,4 +39,13 @@ examples:
         default-on;
     };
 
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    backlight {
+      compatible = "gpio-backlight";
+      gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>,
+              <&gpio3 5 GPIO_ACTIVE_HIGH>;
+      default-on;
+    };
+
 ...
-- 
2.34.1


