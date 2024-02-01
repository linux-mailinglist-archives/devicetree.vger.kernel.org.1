Return-Path: <devicetree+bounces-37477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 212E3845247
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 08:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6104288EC4
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 07:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D66158D72;
	Thu,  1 Feb 2024 07:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YB5fZFhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D154D14C5A2
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 07:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706774303; cv=none; b=gGiiUEfcvzFBjDxqrNsdcD66V0Pw5wvfiHNpWvxYGN1D7gnCN0Txy1isvxbMr3Qs0o/wRk2gXy8XtbdByPu9o8d7nVu/aPlz6Ru1mEfN+dRY6/f9KqcjVAtFL3bAz1R0QXAPNkpBtwrylz+Bxub/DaKh9NbmkIArh0dgp4Kig8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706774303; c=relaxed/simple;
	bh=wQsrpi2iCXaSVmqWas5NAQRZ3c6lQifMJrV5AQVFk/M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=HM/IRH3OU1MD+kQ6LGF6UCfex4zRHeFFCAS1bgmIs4gQGJF06IU4D/su54rtxzq/wXsDPeu17DHzwY2ahzCFjp0M0Rp8A81h/8vSXs8/KzvElAm2ZjI0zPtDoY2IB8vo2hd9LMLGV0nBpZHoFK+NKNTxkQ2KxNNLoW9Ek8+/Zfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YB5fZFhS; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a354408e6bfso291806466b.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 23:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706774300; x=1707379100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LduLrqiP7dtetr+KwRnIehEaoUzJG6/in4vCG2UOBPU=;
        b=YB5fZFhSy0AKu4gfJgsEVs0buhNHfqgFYTRovtSHqvl04rfMnbms1rOBCFkGx/GBS0
         YdGHfqVytCy9wlQP4QvF1unKRv617PA9ryHWkgSY72xB13UW1UBMn+ZH7kJqqW/GtsN6
         9K8Ap0i0/Fgcf1OPT8RbhaYDh6uPboh/ogdwJf8EOnbhzhcLbDO9x69oScMVMpcjbeyt
         5w0pszSrVy1sOELdAZ9RybdhkERX5rtsvjfzPrnpjoSf5+P4w3WLRS3RBfoCSUaj8NiE
         izjGqg5cjCC2fTTphyRoJFTqnbq0QkTxbT7ZJvkkgc6niZZTnzfbQALJYsA8j9AhNg+N
         QKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706774300; x=1707379100;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LduLrqiP7dtetr+KwRnIehEaoUzJG6/in4vCG2UOBPU=;
        b=jsnxQpRtELWstqCbxZMfcHEbMAuhv7WfXPtgTt94ZEnakhHgNWTrXcM/Q+FsWvPJ6N
         fCE0XSmoI3RRXr4YLR2/GLwjLIc46XVnK+jcOAm1ZHmUeQ3zOFmOe9A6WREnEVp/n252
         /g26uhE6Fh65HoyMSiyP4PIWMNIWffvSEDa2i7qUzejrgAaLpHJnN8nG+KeLne+1J4t/
         acWptJLrckxV/psp065ta/crKABbwNFWC6AkEwb9Z3nIpRYKH+NJwOoM7gAk2Ny0tOv6
         wSmkEs96RT4DuCvw8NuY3rOSd9Mn0uVkIDlMw2AB4RmewOOh+XbsjC/lf1KoazTux55M
         QJSQ==
X-Gm-Message-State: AOJu0YwtTdOQ1Vb4SZkbP/7G9naII5JqfZPb7p/sP6PHi2upO30Qkfut
	142BBQ/e0ateLHixJtPVmsdf5PtSHkOreUsrWb1DfS0R+CgMqCkmJyZNQX942uo=
X-Google-Smtp-Source: AGHT+IECKYAvoDMyGIfvVLUm6LuAcfOkeMGeLZNE4ITmEfX5iF0Sq6907zXF+PsqCyodmqG2MrxPjw==
X-Received: by 2002:a17:906:abd4:b0:a31:8944:2cf6 with SMTP id kq20-20020a170906abd400b00a3189442cf6mr4044034ejb.8.1706774300046;
        Wed, 31 Jan 2024 23:58:20 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVgSQ9XgRJE+RFswknpX22fCpybmWpZpJKdtYuTYPPxBN3LOWTaQbUB56Ect+Tr8YcrGGU5wQUKNuyj8QaTSokAbasE2jnYopfEfsc6T+NDzXBhcRBhwYJnq1W1hM6hamuxLfkSEdSlccZiX46xMi9hGUNmTNC4RLlvXLHyWjN95TzV/8tTiMYfz8OjNEK6uTmJa+GvTOrVzx8dPlMG7xvUnEoJ4k3ffVTyIiKAQz8I9+ZFXMIq4ugSPij6w7CuOWa8XRY=
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id f16-20020a170906049000b00a3161adb239sm6963383eja.158.2024.01.31.23.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 23:58:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Charles Hsu <ythsu0511@gmail.com>,
	linux-hwmon@vger.kernel.org,
	Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH] dt-bindings: trivial-devices: sort entries alphanumerically
Date: Thu,  1 Feb 2024 08:58:05 +0100
Message-Id: <20240201075805.7492-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Sort entries alphanumerically.  This was a semi manual job with help of:

  cat Documentation/devicetree/bindings/trivial-devices.yaml | grep '    - ' > old
  cat old | sort -n > new
  diff -ubB old new

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Charles Hsu <ythsu0511@gmail.com>
Cc: linux-hwmon@vger.kernel.org
Cc: Guenter Roeck <linux@roeck-us.net>
---
 .../devicetree/bindings/trivial-devices.yaml  | 73 ++++++++++---------
 1 file changed, 37 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 5b52950e6bfc..41982a41398a 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -28,6 +28,7 @@ properties:
 
   compatible:
     items:
+      # Entries are sorted alphanumerically by the compatible
       - enum:
             # Acbel fsg032 power supply
           - acbel,fsg032
@@ -49,12 +50,12 @@ properties:
           - ams,iaq-core
             # i2c serial eeprom (24cxx)
           - at,24c08
+            # i2c h/w elliptic curve crypto module
+          - atmel,atecc508a
             # ATSHA204 - i2c h/w symmetric crypto module
           - atmel,atsha204
             # ATSHA204A - i2c h/w symmetric crypto module
           - atmel,atsha204a
-            # i2c h/w elliptic curve crypto module
-          - atmel,atecc508a
             # BPA-RS600: Power Supply
           - blutek,bpa-rs600
             # Bosch Sensortec pressure, temperature, humididty and VOC sensor
@@ -115,20 +116,6 @@ properties:
           - fsl,mpl3115
             # MPR121: Proximity Capacitive Touch Sensor Controller
           - fsl,mpr121
-            # Monolithic Power Systems Inc. multi-phase controller mp2856
-          - mps,mp2856
-            # Monolithic Power Systems Inc. multi-phase controller mp2857
-          - mps,mp2857
-            # Monolithic Power Systems Inc. multi-phase controller mp2888
-          - mps,mp2888
-            # Monolithic Power Systems Inc. multi-phase controller mp2971
-          - mps,mp2971
-            # Monolithic Power Systems Inc. multi-phase controller mp2973
-          - mps,mp2973
-            # Monolithic Power Systems Inc. multi-phase controller mp2975
-          - mps,mp2975
-            # Monolithic Power Systems Inc. multi-phase hot-swap controller mp5990
-          - mps,mp5990
             # Honeywell Humidicon HIH-6130 humidity/temperature sensor
           - honeywell,hi6130
             # IBM Common Form Factor Power Supply Versions (all versions)
@@ -197,6 +184,8 @@ properties:
           - maxim,max1237
             # Temperature Sensor, I2C interface
           - maxim,max1619
+            # 3-Channel Remote Temperature Sensor
+          - maxim,max31730
             # 10-bit 10 kOhm linear programmable voltage divider
           - maxim,max5481
             # 10-bit 50 kOhm linear programmable voltage divider
@@ -209,8 +198,6 @@ properties:
           - maxim,max6621
             # 9-Bit/12-Bit Temperature Sensors with I²C-Compatible Serial Interface
           - maxim,max6625
-            # 3-Channel Remote Temperature Sensor
-          - maxim,max31730
             # mCube 3-axis 8-bit digital accelerometer
           - mcube,mc3230
             # Measurement Specialities I2C temperature and humidity sensor
@@ -241,8 +228,6 @@ properties:
           - memsic,mxc6655
             # Menlo on-board CPLD trivial SPI device
           - menlo,m53cpld
-            # Micron SPI NOR Authenta
-          - micron,spi-authenta
             # Microchip differential I2C ADC, 1 Channel, 18 bit
           - microchip,mcp3421
             # Microchip differential I2C ADC, 2 Channel, 18 bit
@@ -259,40 +244,56 @@ properties:
           - microchip,mcp3427
             # Microchip differential I2C ADC, 4 Channel, 16 bit
           - microchip,mcp3428
-            # Microchip 7-bit Single I2C Digital POT (5k)
-          - microchip,mcp4017-502
             # Microchip 7-bit Single I2C Digital POT (10k)
           - microchip,mcp4017-103
-            # Microchip 7-bit Single I2C Digital POT (50k)
-          - microchip,mcp4017-503
             # Microchip 7-bit Single I2C Digital POT (100k)
           - microchip,mcp4017-104
             # Microchip 7-bit Single I2C Digital POT (5k)
-          - microchip,mcp4018-502
+          - microchip,mcp4017-502
+            # Microchip 7-bit Single I2C Digital POT (50k)
+          - microchip,mcp4017-503
             # Microchip 7-bit Single I2C Digital POT (10k)
           - microchip,mcp4018-103
-            # Microchip 7-bit Single I2C Digital POT (50k)
-          - microchip,mcp4018-503
             # Microchip 7-bit Single I2C Digital POT (100k)
           - microchip,mcp4018-104
             # Microchip 7-bit Single I2C Digital POT (5k)
-          - microchip,mcp4019-502
+          - microchip,mcp4018-502
+            # Microchip 7-bit Single I2C Digital POT (50k)
+          - microchip,mcp4018-503
             # Microchip 7-bit Single I2C Digital POT (10k)
           - microchip,mcp4019-103
-            # Microchip 7-bit Single I2C Digital POT (50k)
-          - microchip,mcp4019-503
             # Microchip 7-bit Single I2C Digital POT (100k)
           - microchip,mcp4019-104
+            # Microchip 7-bit Single I2C Digital POT (5k)
+          - microchip,mcp4019-502
+            # Microchip 7-bit Single I2C Digital POT (50k)
+          - microchip,mcp4019-503
             # PWM Fan Speed Controller With Fan Fault Detection
           - microchip,tc654
             # PWM Fan Speed Controller With Fan Fault Detection
           - microchip,tc655
+            # Micron SPI NOR Authenta
+          - micron,spi-authenta
             # MiraMEMS DA226 2-axis 14-bit digital accelerometer
           - miramems,da226
             # MiraMEMS DA280 3-axis 14-bit digital accelerometer
           - miramems,da280
             # MiraMEMS DA311 3-axis 12-bit digital accelerometer
           - miramems,da311
+            # Monolithic Power Systems Inc. multi-phase controller mp2856
+          - mps,mp2856
+            # Monolithic Power Systems Inc. multi-phase controller mp2857
+          - mps,mp2857
+            # Monolithic Power Systems Inc. multi-phase controller mp2888
+          - mps,mp2888
+            # Monolithic Power Systems Inc. multi-phase controller mp2971
+          - mps,mp2971
+            # Monolithic Power Systems Inc. multi-phase controller mp2973
+          - mps,mp2973
+            # Monolithic Power Systems Inc. multi-phase controller mp2975
+          - mps,mp2975
+            # Monolithic Power Systems Inc. multi-phase hot-swap controller mp5990
+          - mps,mp5990
             # Temperature sensor with integrated fan control
           - national,lm63
             # Serial Interface ACPI-Compatible Microprocessor System Hardware Monitor
@@ -323,12 +324,12 @@ properties:
           - samsung,exynos-sataphy-i2c
             # Semtech sx1301 baseband processor
           - semtech,sx1301
-            # Sensirion low power multi-pixel gas sensor with I2C interface
-          - sensirion,sgpc3
             # Sensirion multi-pixel gas sensor with I2C interface
           - sensirion,sgp30
             # Sensirion gas sensor with I2C interface
           - sensirion,sgp40
+            # Sensirion low power multi-pixel gas sensor with I2C interface
+          - sensirion,sgpc3
             # Sensirion temperature & humidity sensor with I2C interface
           - sensirion,sht4x
             # Sensortek 3 axis accelerometer
@@ -374,8 +375,6 @@ properties:
           - ti,lm74
             # Temperature sensor with integrated fan control
           - ti,lm96000
-            # I2C Touch-Screen Controller
-          - ti,tsc2003
             # Low Power Digital Temperature Sensor with SMBUS/Two Wire Serial Interface
           - ti,tmp103
             # Thermometer with SPI interface
@@ -397,10 +396,12 @@ properties:
           - ti,tps544b25
           - ti,tps544c20
           - ti,tps544c25
-            # Winbond/Nuvoton H/W Monitor
-          - winbond,w83793
+            # I2C Touch-Screen Controller
+          - ti,tsc2003
             # Vicor Corporation Digital Supervisor
           - vicor,pli1209bc
+            # Winbond/Nuvoton H/W Monitor
+          - winbond,w83793
 
 required:
   - compatible
-- 
2.34.1


