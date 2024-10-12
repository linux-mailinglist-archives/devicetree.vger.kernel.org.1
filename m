Return-Path: <devicetree+bounces-110660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5DB99B5B1
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 17:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1D3A1C21AFF
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 15:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CA6199240;
	Sat, 12 Oct 2024 15:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w75+xHPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA6315B0EE
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 15:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728745378; cv=none; b=MOWMbWGTfkxbaXb4hDO8aAkFzd4BiEbsTUVo2oqRL0R6kxlAxyMW21JDzX8xYNOv2ylhp8fm9oRkCJ2iB52SiteT0UsMff0pefD2e28iknzs7GcY3l4e3wrLsB+25qu4swRlO5kjqK/LyJODIhLEiiIAGPbi+7/aWvtwSC1RUg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728745378; c=relaxed/simple;
	bh=7/wKzul0scp9pQ5g512GmaXU8tMjoZV1C9VucuWy3qk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HW0+7vE6ls1gTOmNf1dN0ikmIrc5RPcj1rdD+XBZCHaoeKKMaF44+BpQaO+DIJRskaNJyuwfJhsx/1ZTjZWjT6hkVOvnj9ghNNTsUA18UDN6IZHaYfs4bJZ2P3uy3PGm6ILb7PC9fAJ0TcjAnPD/wsLAro2S+cJXED8LGan5cRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w75+xHPy; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a99c0c203f0so217877366b.2
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 08:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728745374; x=1729350174; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/n15P79kGSTnE8MuMR1LpYchP7c+rsbkgGOXacYIjPE=;
        b=w75+xHPyM+SsvqQDYnR9xhf33oIwBwh90IqOep83B+c3wdkSkIvNKDjff4rTGZYVYq
         bW+IIETSHq6zzzkV8WdxvdNtOSE0ZnrIA59b+boe2WXY3pcrZ6Rg/9rC3cj6MjF06o0v
         oZblIQ75+hrH5R1cD6q147ZVkzKFYax5mE/QJ04vmGc4EoVcoDIrJa/G4EpG5CzZs/DV
         GfkcsOAFHOwWqDyur0IqjxduwMgDIEGj6vUeToRFeesh/kzBxTtkprhwBXl+2HI8jwxu
         pIQDrpHx5zZyg2YcinCIS5hdVXMGUAo0UzLE1pwNJD180ziPZ6OIe5aPDnn6DOhitodo
         QI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728745374; x=1729350174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/n15P79kGSTnE8MuMR1LpYchP7c+rsbkgGOXacYIjPE=;
        b=Lk4mAKtK10y45La+rrGI9+2SM6H85k4dfzeMKm4Uyfff6oCKNDygcFxwT3z9AIwOoZ
         zSjctWLqxjbRqAylBYLQ7Fp3eZXx4xlgqCU6cqNIMJWp//7/tBMHcHIsTqOg3o61XBvr
         RXZoo/a+XullXq50VjkPjDPG0fLM6CSgn9HykTYeIjw3ny75wTdB6T8v05/bKSo2+4RY
         SuWYLgS42q56c9rjswLcCB3nppIBndEF2+7jAqn0lMLNd3X/lR28iQ4j2r+zObKXirss
         ba7g+/LvhnDN4xunXfzHjEC5np+YdO3cyL6qCUZfbxeJHhZgAORHLbsVleedRorAHfty
         QCyw==
X-Forwarded-Encrypted: i=1; AJvYcCV+CgxrobD4YS62/8+3L04UpONj0lLKwvNM7tHrfR/8Y5iWlPkuLA2Rg+On4yimNtpT3SH1Z1cYmRZA@vger.kernel.org
X-Gm-Message-State: AOJu0YzbTIvn6y9V41ZNt5rv40x9bTlrMjrKx1/baIO3giTB6n06qFM/
	MzGD6zb3TEk5riN1PCRJ5SQ4bBQkFWEVpaNbmF/1KKaA5lyhPNcaccGLBiXk0qc=
X-Google-Smtp-Source: AGHT+IHziNZj9PpTrQmX1i7t/EH8XoqG/RaNoa4pDWvdo14/Czfa5WvohIYfJG1PE2K4Y5haJ2eqOA==
X-Received: by 2002:a17:907:d17:b0:a99:ee42:1f38 with SMTP id a640c23a62f3a-a99ee421fdamr208327366b.31.1728745374508;
        Sat, 12 Oct 2024 08:02:54 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99f148b224sm63730166b.50.2024.10.12.08.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 08:02:54 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sat, 12 Oct 2024 16:02:50 +0100
Subject: [PATCH 1/2] media: dt-bindings: Remove assigned-clock-* from
 various schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241012-b4-linux-next-202041004-i2c-media-yaml-fixes-v1-1-a2bb12a1796d@linaro.org>
References: <20241012-b4-linux-next-202041004-i2c-media-yaml-fixes-v1-0-a2bb12a1796d@linaro.org>
In-Reply-To: <20241012-b4-linux-next-202041004-i2c-media-yaml-fixes-v1-0-a2bb12a1796d@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Martin Kepplinger <martink@posteo.de>, 
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 "Paul J. Murphy" <paul.j.murphy@intel.com>, 
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>, 
 Tommaso Merciai <tomm.merciai@gmail.com>, 
 Martin Hecht <martin.hecht@avnet.eu>, Zhi Mao <zhi.mao@mediatek.com>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Mikhail Rudenko <mike.rudenko@gmail.com>, 
 Ricardo Ribalda <ribalda@kernel.org>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Umang Jain <umang.jain@ideasonboard.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Dongchun Zhu <dongchun.zhu@mediatek.com>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Todor Tomov <todor.too@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Remove extraneous assigned-clock* from media/i2c/* schemas, retain in the
relevant examples.

Link: https://lore.kernel.org/linux-media/j7kgz2lyxnler5qwd7yiazdq6fmsv77kyozdrxf33h54ydakjz@uqjhwhoyv6re
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml | 8 --------
 Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml | 8 --------
 Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml | 8 --------
 Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml | 4 ----
 Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml | 4 ----
 Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml | 4 ----
 Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml | 4 ----
 Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml | 4 ----
 8 files changed, 44 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
index 60f19e1152b33128cf3baa15b8c70a874ca6d52e..d18ead8f7fc43bfacc291aed85b5ca9166c46edb 100644
--- a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
@@ -28,12 +28,6 @@ properties:
     items:
       - description: Reference to the mclk clock.
 
-  assigned-clocks:
-    maxItems: 1
-
-  assigned-clock-rates:
-    maxItems: 1
-
   reset-gpios:
     description: Reference to the GPIO connected to the RESETB pin. Active low.
     maxItems: 1
@@ -82,8 +76,6 @@ required:
   - compatible
   - reg
   - clocks
-  - assigned-clocks
-  - assigned-clock-rates
   - vddio-supply
   - vdda-supply
   - vddd-supply
diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml
index 1f497679168c8395a94b3867beb49b251ef621fc..622243cae03caa5d14aa312df40ef5907e190d2c 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5648.yaml
@@ -20,12 +20,6 @@ properties:
     items:
       - description: XVCLK Clock
 
-  assigned-clocks:
-    maxItems: 1
-
-  assigned-clock-rates:
-    maxItems: 1
-
   dvdd-supply:
     description: Digital Domain Power Supply
 
@@ -68,8 +62,6 @@ required:
   - compatible
   - reg
   - clocks
-  - assigned-clocks
-  - assigned-clock-rates
   - dvdd-supply
   - dovdd-supply
   - port
diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml
index 8a70e23ba6abed67d8b61c33bd7a261089bddda2..382d7de7a89bcea11be384a2a3800512994f9346 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov8865.yaml
@@ -20,12 +20,6 @@ properties:
     items:
       - description: EXTCLK Clock
 
-  assigned-clocks:
-    maxItems: 1
-
-  assigned-clock-rates:
-    maxItems: 1
-
   dvdd-supply:
     description: Digital Domain Power Supply
 
@@ -68,8 +62,6 @@ required:
   - compatible
   - reg
   - clocks
-  - assigned-clocks
-  - assigned-clock-rates
   - dvdd-supply
   - avdd-supply
   - dovdd-supply
diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml
index 79a7658f6d0547e4d6fb2267e5757eedf49fd416..38325cf318f7bd2cd60a4c7bbb6a65b54b855e26 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml
@@ -27,10 +27,6 @@ properties:
     description: I2C address
     maxItems: 1
 
-  assigned-clocks: true
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-
   clocks:
     description: Clock frequency from 6 to 27MHz
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
index c978abc0cdb35cfe2b85069946cf1be435a58cb8..f0f9726a2add89492b8c56e17ed607841baa3a0d 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
@@ -24,10 +24,6 @@ properties:
       - sony,imx258
       - sony,imx258-pdaf
 
-  assigned-clocks: true
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-
   clocks:
     description:
       Clock frequency from 6 to 27 MHz.
diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml
index bce57b22f7b63bd73f08d8831d9bb04858ef03e0..872b8288948b2bba743f2365a55165181df156ae 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx334.yaml
@@ -24,10 +24,6 @@ properties:
     description: I2C address
     maxItems: 1
 
-  assigned-clocks: true
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-
   clocks:
     description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25MHz
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
index 77bf3a4ee89db3b5d16149470c0380ef8f1aeac1..38bd1c7304a59bb5fea90954c1e4e626a7c86f2f 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
@@ -24,10 +24,6 @@ properties:
     description: I2C address
     maxItems: 1
 
-  assigned-clocks: true
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-
   clocks:
     description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25MHz
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
index d9b7815650fdb890418fc96c828acc9147dfb6e8..ece1e17fe34553671e61c965eb1833c5eb08131b 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
@@ -26,10 +26,6 @@ properties:
     description: I2C address
     maxItems: 1
 
-  assigned-clocks: true
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-
   clocks:
     description: Clock frequency 6MHz, 12MHz, 18MHz, 24MHz or 27MHz
     maxItems: 1

-- 
2.46.2


