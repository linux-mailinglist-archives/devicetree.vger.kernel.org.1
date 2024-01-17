Return-Path: <devicetree+bounces-32655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 633998300D7
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 08:56:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6765E1C20A8F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 07:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53EF98C06;
	Wed, 17 Jan 2024 07:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CQxpxPMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83904C133
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 07:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705478186; cv=none; b=rgGyIJPH5deSsdRQVZR25MPZhjXo2tZgfVxWpibbrs/AxCC2Nl845UZvw22wIM9NoFHmCO2HOm52qjwwMufX3K/2TWWij3T6EEVyQ/8KJ9bMNr57D7QASJvmbkmv6TKUc3CbXjpjzq8FSGSxUyvavr02UW293nRcvnTd8Wzi8+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705478186; c=relaxed/simple;
	bh=euT1eztse3+e3ucSK90Yo+tK6NdtmOo21IkSrJO6XfQ=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 To:Cc:Subject:Date:Message-Id:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding; b=Ku2Z2WLPpds/hIVq+Tas+TvA8yMXqUKq4te8t/A2iE0g97d9C2WrvhSg2zKRP1+rOW728G8lPKc2Hi/hnAH2ALCAbsd4h+lLyLGCuoWaKlGo9SeHOHZYmO0EBSm30KoO7J6AQnibLPTyjc3/dcDINBfGCeybAzOnES7OReTUEpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CQxpxPMK; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-559d38951f2so699796a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 23:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705478183; x=1706082983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/FNavL/OTqrT8QuQmqYgzyRhF/X5aNJJnuSYES95gWA=;
        b=CQxpxPMK8II4oJF5x7J5sNRHwHg6S6UHF7Gs/mi08Smes6bMtOlgo78Dd60joaltGT
         aEgJHPg5GeQnN1BJAVqcjRKSrQ9qB0W+DXyMpuwtnBOuoW+ZxiyfFjH8T48UpRhoAyeN
         qWHZzI5MwI3l1F82l34B4Up6Zrb2+oOv8sprnuM698VzjLxPuYMmStnZIdx8aVjKcIvR
         sGLIIjyPqSWh3BMghqk2L8seYo1VPvVNPHEgf9pVvCqF2SMxteat+tz3G4mdn+IL/Zjy
         DNfa2LSTDRx3+NV3RoJ4fGxX9GCGURGq/i25KE38UfyTs2gzRbkV5tU8a9SKTgy7BNOk
         vrEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705478183; x=1706082983;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/FNavL/OTqrT8QuQmqYgzyRhF/X5aNJJnuSYES95gWA=;
        b=A+EkdV59I/Q842m1kD2T0lDFabMoU/uyyJGDith1+mx7XXaYqghhLx7Sk0GiMEkFJo
         KxHC8vI9a3UVyLGeIhJZpNdwlzpV7LRygQ0FjQtL1JBUwCqj8D2zjElfoGBjiZj9K9lt
         hbZ5DY048gdIhLJica7uHOU0GER78S6SlUNGqY8ZnOm/mAeDdCace5O+kRJjRfMwrnbk
         girJ6x/OlPi8Z6zc+lCFsvA76ZcE4kOXZUoouaIu1onzOYnqAGi6CNfc8EJFQ2wOrMHX
         DdedvlucCRZVLeononjuVOaDzHE5QziNmEoADPDx/a/ZUsWvS73NhPY0JVVZ3GiI6WfM
         QWFA==
X-Gm-Message-State: AOJu0Yy5ElADs9dyDRmcL50DYvbcmmoLwXEvVkRz9G+kfUcozUFgUiI3
	tvPLQ8Q3GGvznAxgliutTZgwfbzJKxkL/vXAYps64N8ltLlJzTlIXAFhpEHr50w=
X-Google-Smtp-Source: AGHT+IHZ7LpNoKqKOFo0lwT6GfpvlUHssOiVpCXLrPHhVFLIt2m/9etyIrgUMWQITv4qPN0OPi517Q==
X-Received: by 2002:a05:6402:959:b0:559:4572:72e1 with SMTP id h25-20020a056402095900b00559457272e1mr448379edz.16.1705478182863;
        Tue, 16 Jan 2024 23:56:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005593c83bdafsm3911729edb.45.2024.01.16.23.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 23:56:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jeremy Kerr <jk@codeconstruct.com.au>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	=?UTF-8?q?Przemys=C5=82aw=20Gaj?= <pgaj@cadence.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Conor Culhane <conor.culhane@silvaco.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Boris Brezillon <bbrezillon@kernel.org>,
	Nicolas Pitre <npitre@baylibre.com>,
	linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: i3c: drop "master" node name suffix
Date: Wed, 17 Jan 2024 08:56:16 +0100
Message-Id: <20240117075618.81932-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop the requirement of "-master" suffix in node names because:
1. "Master" word is discouraged and MIPI Alliance renamed it to
   "Controller".
2. Some devices can operate in Controller (Master) or Target mode, thus
   the name is not accurate in such cases.
3. Other buses, like I2C controllers, use simple "i2c".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml | 2 +-
 Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml    | 2 +-
 Documentation/devicetree/bindings/i3c/i3c.yaml                | 4 ++--
 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml       | 2 +-
 Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml | 2 +-
 Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
index fcc3dbff9c9a..47be5d9a32d4 100644
--- a/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
+++ b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
@@ -57,7 +57,7 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-    i3c-master@2000 {
+    i3c@2000 {
         compatible = "aspeed,ast2600-i3c";
         reg = <0x2000 0x1000>;
         #address-cells = <3>;
diff --git a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml
index cc40d25358ec..cad6d53d0e2e 100644
--- a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml
@@ -41,7 +41,7 @@ unevaluatedProperties: false
 
 examples:
   - |
-    i3c-master@d040000 {
+    i3c@d040000 {
         compatible = "cdns,i3c-master";
         clocks = <&coreclock>, <&i3csysclock>;
         clock-names = "pclk", "sysclk";
diff --git a/Documentation/devicetree/bindings/i3c/i3c.yaml b/Documentation/devicetree/bindings/i3c/i3c.yaml
index c816e295d565..c7900a1da8d9 100644
--- a/Documentation/devicetree/bindings/i3c/i3c.yaml
+++ b/Documentation/devicetree/bindings/i3c/i3c.yaml
@@ -17,7 +17,7 @@ description: |
 
 properties:
   $nodename:
-    pattern: "^i3c-master@[0-9a-f]+$"
+    pattern: "^i3c@[0-9a-f]+$"
 
   "#address-cells":
     const: 3
@@ -153,7 +153,7 @@ additionalProperties: true
 
 examples:
   - |
-    i3c-master@d040000 {
+    i3c@d040000 {
         compatible = "cdns,i3c-master";
         clocks = <&coreclock>, <&i3csysclock>;
         clock-names = "pclk", "sysclk";
diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
index 5dda8cb44cdb..39bb1a1784c9 100644
--- a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -43,7 +43,7 @@ unevaluatedProperties: false
 
 examples:
   - |
-    i3c-master@a0000000 {
+    i3c@a0000000 {
       compatible = "mipi-i3c-hci";
       reg = <0xa0000000 0x2000>;
       interrupts = <89>;
diff --git a/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml b/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
index 133855f11b4f..c56ff77677f1 100644
--- a/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
@@ -48,7 +48,7 @@ unevaluatedProperties: false
 
 examples:
   - |
-    i3c-master@a0000000 {
+    i3c@a0000000 {
         compatible = "silvaco,i3c-master-v1";
         clocks = <&zynqmp_clk 71>, <&fclk>, <&sclk>;
         clock-names = "pclk", "fast_clk", "slow_clk";
diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index 7a76fd32962a..c0e805e531be 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -35,7 +35,7 @@ unevaluatedProperties: false
 
 examples:
   - |
-    i3c-master@2000 {
+    i3c@2000 {
         compatible = "snps,dw-i3c-master-1.00a";
         #address-cells = <3>;
         #size-cells = <0>;
-- 
2.34.1


