Return-Path: <devicetree+bounces-222092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 045A6BA5D96
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:21:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C3C42A7432
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB89F2DF3F9;
	Sat, 27 Sep 2025 10:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LcR4V6GQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718F02DC762
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968402; cv=none; b=OFbK3HEgwl2G03kvKassKjrOIMzBRG05G3FVgzEarwslLl+WLKBVGmib+K6cgBivYIgvtNOdeNYpqfgJAdlBgNV5FQLvivm4vk+pIHwJSoUfxcLDxYODsqmIh88Ru64IzoIpyQchXohhx+43MPMCYWMJJ46w6/go8orDFOPG048=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968402; c=relaxed/simple;
	bh=gnOswjnbXmBMi405dgP0uHVoleNWn/lcXZxumvVI8g0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fmkv0mcjIB/oPc64VjOlwzESWqcKzCnTogzVZFfNxeFPdc1nYwL8kJLOUR4Eq1jp34QWkpbtntJX82DZA42mIBsqGVcTHCmDA7Nk6+pOh9b08Z9OlR/4LG37sEGnoe2RDMoSmhlGmDKKR/Lm7e1rHaklk1pMzLIpHaOZpNfPjPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LcR4V6GQ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e47cca387so4032725e9.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 03:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758968398; x=1759573198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uocL+F5w2WClnJd2wZcawwJDtccp4StZfUc4QhYk9C0=;
        b=LcR4V6GQoKe83eph8G2njkD1GuVDqlzFQXraTj4z95DcsUi1YldCVgkdQbk1wD9xpR
         JgWWBFYrjKkzk3hwRhVaPQEMhPpWCcbfX7CL7H1LQbWYdXDYUFfHn+xPt/3V4jD2P3js
         gNz6FpGd11raz87G8NbZ+ofyJyP2lDrJBAcdXaubxkIOUsZgopWvdpr0UFdVGsQACo9s
         4j4gOPGHcMip85WSgcUI+CXmxL+2p0aLw8TTJTJArhXvpyXfbBJ6wBL41DoWWD0N0wXY
         4kWkNw2hFTgIY0sXZTOPp/ACLJa5eOVUS9oOV/khhOBtDPum3bQQFXCpSZzyCu2fUWUW
         jb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758968398; x=1759573198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uocL+F5w2WClnJd2wZcawwJDtccp4StZfUc4QhYk9C0=;
        b=q0drtbTxCdX2fNG5S51B4oCO2HdIAUcEmxLN46dS8P2dpxhvYszbWz8X7uEix5RY5h
         h0e9eeTXzmJrJiq+iJMWuFX4D+oFJ5WGvRcyNs65A4UqjltK6KuM+KUyRclwEjYLfemG
         MqxFSIHyt/k+UndlQ8SavRKI/dIplqoUOZ3HpR5mMH+quhMdd0CE2YQ/DsWw6gbl9rIx
         32Gf8G45fihMbhfykSKNsBB8/qre+gc02hnfQXRIo7ObO4LQST46hV8wWVsasGYqE9rJ
         eNgQ6Lm8ONnyqcuVeanEzvJqgz0nY5XhP3d87yy0AnfBq1G+yfnTyUsY+QzWqO/NOK8D
         Kz+g==
X-Forwarded-Encrypted: i=1; AJvYcCWkj9sENe2+aNVr9KUnB3LoHHwEAv7saeRFMDN6pT2eHhqJ9ro+rm+FUvXOLuUJSDYxP1UPQ+jrEZmY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm0WQc8uGFzOH79t1FrNV2zvXPFBTrqUFqSTS7jFRTy0nWkqYY
	ZE9u8PnJUdaqruSm8sqdtdpimujfONRm+t3884ebjwDAMPPgajOi4xZz
X-Gm-Gg: ASbGncs9N7ijGJJN4yazBGBagBJ8ZBqybTcMml4LBn2i70aBzvEWhnnEzCgSJ58BiSf
	kzeui6/5/cIB2MWZ+tirl7wpdYD+rLE7+VHCDr90B7PWZiAAiBBct3vQhNOx2n3KqnvyiNwyLXg
	B5OYiRqR9tkgLk/5flme9FqiFBQoua+QiHD9Np6aaZwqeVpYANiD1a7Jli0QSTcOTIuY/DX7KcD
	ZZ5Vfk5tlphe5T/2VuBpiwHD/6qY40gR4AUNrBVOwdYSqnwV5Jzne4SULneJT2NaW3bwZMW3PAP
	/q78ocslE1y7NLbJihIolq2QZQnOl3ThwOSiAcwvD2enPDNZJSIx2k2m9YFGTTLQTlTv0I3DnT3
	4BpsofBzLuhZ4HfpQg/LG6qdVeLXkMqL7VGal
X-Google-Smtp-Source: AGHT+IET2Tr0s3n8VDek3rlo7bkHPvQJdlDvKrOgoXx4qdDl/ZQ+KDgju6tIIVWGP2X02sVMgrwrgA==
X-Received: by 2002:a05:600c:c176:b0:46e:32a5:bd8d with SMTP id 5b1f17b1804b1-46e32a5bdb6mr89196585e9.3.1758968398332;
        Sat, 27 Sep 2025 03:19:58 -0700 (PDT)
Received: from builder.. ([2001:9e8:f11a:4416:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e32c31df7sm53416435e9.4.2025.09.27.03.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 03:19:58 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Stockhausen <markus.stockhausen@gmx.de>,
	Sven Eckelmann <sven@narfation.org>,
	Harshal Gohel <hg@simonwunderlich.de>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v8 8/9] dt-bindings: i2c: realtek,rtl9301-i2c: extend for RTL9310 support
Date: Sat, 27 Sep 2025 10:19:30 +0000
Message-ID: <20250927101931.71575-9-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250927101931.71575-1-jelonek.jonas@gmail.com>
References: <20250927101931.71575-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adjust the regex for child-node address to account for the fact that
RTL9310 supports 12 instead of only 8 SDA lines. Also, narrow this per
variant.

Add a vendor-specific property to explicitly specify the SCL line number
of the defined I2C controller/master. This is required, in particular
for RTL9310, to operate on the correct SCL for each controller. Require
this property to be specified for RTL9310.

Add compatibles for known SoC variants RTL9311, RTL9312 and RTL9313.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Tested-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 .../bindings/i2c/realtek,rtl9301-i2c.yaml     | 39 ++++++++++++++++++-
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
index 274e2ab8b612..17ce39c19ab1 100644
--- a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
@@ -13,6 +13,8 @@ description:
   RTL9300 SoCs have two I2C controllers. Each of these has an SCL line (which
   if not-used for SCL can be a GPIO). There are 8 common SDA lines that can be
   assigned to either I2C controller.
+  RTL9310 SoCs have equal capabilities but support 12 common SDA lines which
+  can be assigned to either I2C controller.
 
 properties:
   compatible:
@@ -23,7 +25,15 @@ properties:
               - realtek,rtl9302c-i2c
               - realtek,rtl9303-i2c
           - const: realtek,rtl9301-i2c
-      - const: realtek,rtl9301-i2c
+      - items:
+          - enum:
+              - realtek,rtl9311-i2c
+              - realtek,rtl9312-i2c
+              - realtek,rtl9313-i2c
+          - const: realtek,rtl9310-i2c
+      - enum:
+          - realtek,rtl9301-i2c
+          - realtek,rtl9310-i2c
 
   reg:
     items:
@@ -35,8 +45,14 @@ properties:
   "#size-cells":
     const: 0
 
+  realtek,scl:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The SCL line number of this I2C controller.
+    enum: [ 0, 1 ]
+
 patternProperties:
-  '^i2c@[0-7]$':
+  '^i2c@[0-9ab]$':
     $ref: /schemas/i2c/i2c-controller.yaml
     unevaluatedProperties: false
 
@@ -48,6 +64,25 @@ patternProperties:
     required:
       - reg
 
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: realtek,rtl9310-i2c
+    then:
+      required:
+        - realtek,scl
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: realtek,rtl9301-i2c
+    then:
+      patternProperties:
+        '^i2c@[89ab]$': false
+
 required:
   - compatible
   - reg
-- 
2.48.1


