Return-Path: <devicetree+bounces-136134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA1A0402D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FC123A88E0
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DED51F1905;
	Tue,  7 Jan 2025 12:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q3gQLIvz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A722C1E0DE6
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736254736; cv=none; b=TDYROz+z9DQK9LkLP4Yl/BvJUAOfA+tGm0DAs5Lm2EDfiQtmkJ8yUG061UXuW5YPej6F1a+9BtdNZAmUTI6sjgMvwi/4kyI2IcwxOzPdxQZwPosvYxdg/PQqFUOvw2SANC0Y/8VwiqeJOa5XaQmbTPJRfYf9HkUnLM2CtvFkz9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736254736; c=relaxed/simple;
	bh=t4rRBQmo5PbKUK/M1fQaSIj1hFg+1lZQQrb46lNPPHc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LV4hYfu4r1Ya4Y/BYlIKfLDlVK0jW2oEkBothCG8vSyAozecM6p3DPf1oaauB+9VQlReCfwGmmsPxxmm6LqKHH8Hm1mQ/ohVW5JJqQSILOWC2qwvtA1jEy+SLFYn5xT4K7tmkwiwYKAIJuD60TW0vEwspWbTH/q8GzPw75DpC9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q3gQLIvz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4363298fff2so22088345e9.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736254731; x=1736859531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j2sxL0kyOnJtbxiCpqFSPJaxyhbxDHZZxCjJuwsLyyM=;
        b=q3gQLIvzqKpsU+ebJNrK0cXH4fHM3ljbfxNpxJ+4XFa4hrP7eq1Z3unZT2J4OspZoQ
         ZIGushmnZSHCs+OvF81FeuMV5fdPdSsAAf9anZiUjDuUzrw1nAGkGrewg+tym+Fdwlk3
         k42LtBtcqG7p3KGOhMiiCZhHS40f+rfArAhYT6fGG3iZv9w24YfLr4Pj9PkAuTjI9y/g
         XlFd/jL45mFh9U3MYLIi7ACphpJFLlVvFlGL2JLNa8sMNhESoYcXY6/zxw8y4xDBUH+x
         DAv2s+cdodOeRpYIeT1in2aU7NkzmhSHpWcKdtWWKP8wxVk+iKDM5LJrnNQYsB0ib2Fs
         w+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254731; x=1736859531;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2sxL0kyOnJtbxiCpqFSPJaxyhbxDHZZxCjJuwsLyyM=;
        b=NK0C04mp4iXgIncdyjhiS4Euc+Jmc6yB6VR5xiiKSe0m6+C6kp0Ys8i18R+6E1730G
         +e2g0lUihkP6yDVOPr3flsOpmO0uOBHhBuDGxi/ewppMGE94v65892o2msN8VMk+xwzy
         yhuSMjJecnUtYzxH03iiMcVpgr6R2cf0G0gEyt6OiVF4wuvuhLqhf6+nXKWhIUnLNKoM
         ayk4K+ktM0kk8jarwTK+JVRML3UNHCqv0VmWcJOwZS8/y/qmbq6vko98tySTwGX6OMkP
         KO068/sc67QwWjDAPoj33qnNAeE6uZ2eaS+qqh8cIgMUoiv5XF+Lj5fvseoq8ltNwrSM
         K7WA==
X-Forwarded-Encrypted: i=1; AJvYcCUW/qayR0ISPSNxOHutCw/pxUhdo4l2KnBozWC9+ip+hg9KH3WPf88EZPH2qvM9QkrB6vhSOWZtk97T@vger.kernel.org
X-Gm-Message-State: AOJu0YwibRV4XfrJpGwse/h+/xrHve/yT+o8fDHoELgywMvbCM+S7GRr
	AeNA37bXcaUKPIexm+r9P4kmpepXAUWFvsfVFhn+Z1mwRuiTAwmUv3V7/f5X4ig=
X-Gm-Gg: ASbGncuHhaaJnln5BYevF+Vn3AnQEaRDVZEYajNbjeiT5Fv1LuYCvQgdL0YpyV1u3yk
	VqyPcEqe3qw5xUOUaioDkVfJ5SxaZj2Gf65lr5aQJA5TTmH+RFRmlyotnZWUHFUQqQrhGtuE0xw
	mZauwLlkzBOzSzH4oQDcN3MyuK1TxUlnsaK8MLCS8SbWh5sbIhH7ULWvEOZGdv/Ch89yj1FhDyu
	Asl+NWM9gZPGsP2y/wsOZd6y8ctboK9qptsFzz+D8SR/GhMgh8Dziv3ntdmBJbH1PKYmNU=
X-Google-Smtp-Source: AGHT+IEzXNziYvB8cMSs56bRM+d+7RHATIssfR61yGfXU8wPeStQWQQ6p2QHKq5/TPazJN7kZIGr2Q==
X-Received: by 2002:a5d:47a1:0:b0:388:c61d:4401 with SMTP id ffacd0b85a97d-38a221fa14emr20278640f8f.7.1736254730828;
        Tue, 07 Jan 2025 04:58:50 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832a90sm49786756f8f.28.2025.01.07.04.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:58:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Puranjay Mohan <puranjay@kernel.org>,
	Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>,
	Sankar Velliangiri <navin@linumiz.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iio: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 13:58:47 +0100
Message-ID: <20250107125848.226899-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/iio/dac/adi,ad5380.yaml           | 18 +++++++++---------
 .../iio/humidity/sciosense,ens210.yaml         | 12 ++++++------
 .../iio/temperature/maxim,max31865.yaml        | 18 +++++++++---------
 .../bindings/iio/temperature/ti,tmp117.yaml    |  6 +++---
 4 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5380.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5380.yaml
index 9eb9928500e2..3e323f1a5458 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5380.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5380.yaml
@@ -55,18 +55,18 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
         dac@0 {
-           reg = <0>;
-           compatible = "adi,ad5390-5";
-           vref-supply = <&dacvref>;
+            reg = <0>;
+            compatible = "adi,ad5390-5";
+            vref-supply = <&dacvref>;
         };
     };
   - |
     i2c {
-       #address-cells = <1>;
-       #size-cells = <0>;
-       dac@42 {
-          reg = <0x42>;
-          compatible = "adi,ad5380-3";
-       };
+        #address-cells = <1>;
+        #size-cells = <0>;
+        dac@42 {
+            reg = <0x42>;
+            compatible = "adi,ad5380-3";
+        };
     };
 ...
diff --git a/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
index ed0ea938f7f8..1e25cf781cf1 100644
--- a/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
+++ b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
@@ -43,13 +43,13 @@ additionalProperties: false
 examples:
   - |
     i2c {
-       #address-cells = <1>;
-       #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-       temperature-sensor@43 {
-           compatible = "sciosense,ens210";
-           reg = <0x43>;
-       };
+        temperature-sensor@43 {
+            compatible = "sciosense,ens210";
+            reg = <0x43>;
+        };
     };
 ...
 
diff --git a/Documentation/devicetree/bindings/iio/temperature/maxim,max31865.yaml b/Documentation/devicetree/bindings/iio/temperature/maxim,max31865.yaml
index 7cc365e0ebc8..7c0c6ab6fc69 100644
--- a/Documentation/devicetree/bindings/iio/temperature/maxim,max31865.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/maxim,max31865.yaml
@@ -40,15 +40,15 @@ unevaluatedProperties: false
 examples:
   - |
     spi {
-       #address-cells = <1>;
-       #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-       temperature-sensor@0 {
-           compatible = "maxim,max31865";
-           reg = <0>;
-           spi-max-frequency = <400000>;
-           spi-cpha;
-           maxim,3-wire;
-       };
+        temperature-sensor@0 {
+            compatible = "maxim,max31865";
+            reg = <0>;
+            spi-max-frequency = <400000>;
+            spi-cpha;
+            maxim,3-wire;
+        };
     };
 ...
diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
index 58aa1542776b..fbba5e934861 100644
--- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
@@ -44,8 +44,8 @@ examples:
         #size-cells = <0>;
 
         tmp117@48 {
-             compatible = "ti,tmp117";
-             reg = <0x48>;
-             vcc-supply = <&pmic_reg_3v3>;
+            compatible = "ti,tmp117";
+            reg = <0x48>;
+            vcc-supply = <&pmic_reg_3v3>;
         };
     };
-- 
2.43.0


