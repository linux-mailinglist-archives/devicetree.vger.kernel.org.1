Return-Path: <devicetree+bounces-203792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BB2B2288B
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 15:32:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00838503D73
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 13:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E3427AC50;
	Tue, 12 Aug 2025 13:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="snffIGnN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E35E27E1C3
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755005094; cv=none; b=nQba0TMFjaFUfKLgzTPoyEwwfLxyle0p7W0Zk110AxdFUMDw2lbARlKEc8vQSNos2rco2UEDda3jGkVtUYPSAimxE18PvzmTcbi4FaTOLwedabKNX3MyfAF5wvx9F69t237SkVjH8vvzul3Bdt3ecik3PyRqoYUv9xYEDIGfENk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755005094; c=relaxed/simple;
	bh=Gf90/pHp5CpXSUGL2hjNMT/bBSAS8DnZpsS3Yd0qYoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=DXtYZ+7y8aVJc/KHgcCagd4ZN2GVsQ20cmY30bGhXG7LlN7UkU6Gog+aOdJVB+zB9eIp25bBvLT7QkM9MIXyKtbwcnj1Chx+lBQU3d3Br5LPJ6dCIg4BTJ49uAIXlUY4Vded20ByFjm7sSVBI5wkcDiIIyYscEd/IYI/wio7JBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=snffIGnN; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-af946c07c84so76906966b.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 06:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755005090; x=1755609890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F8RI+MamHncx3o1Ahq5d696tmTBIcFmRxxxMBZrqMbs=;
        b=snffIGnN0R22OEyqekU+W9Kd7HuKmerYXVz84QSaM8mCGf4sklNmngS2zaV2DHbe5m
         YUA77+M6zR6Ey2kS6yNCxFCtWsvowSvJFBTH/pxiCVD7Gz8Wgk/T27VU1OXaed7oiXH6
         Ps4hWvg9z118CkMpiD2iRhtQD71Zgl18PCVNNhbOjQ2m/P3eK9iZfdgNLxkb+SlBcQDM
         vuonm14w8KFHRhGWVsRI8ZeHsTDIyzYFQO9Nsw7wLCP8vV1jSZuPCr3K2xbM0iX6UsZm
         U4+HoV5wAjGbxfgTBkLGaEUybbgSuGBbQzcALov9t+c8CYIWV4wiFRD6DuK/XDN3qcpQ
         zUkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755005090; x=1755609890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8RI+MamHncx3o1Ahq5d696tmTBIcFmRxxxMBZrqMbs=;
        b=t9gqzPS4SyiDwlMZpZ+0tYAUvoJlujSkMGafTLBMQm0ID61/bW3+oPFu1n98Lmb7zf
         ZKufkujGY00OjkQoZeBFVCl9p6fYKzZXGOtIuaNRYeSPr7v8EfjCbIqlcwhOis8d7Kdp
         /sGI8wromEOOWgxraFSUxtRKJjPFJLM04/OoOQjbMGEEp/Qq/Kbiu+HFamb2CUfOxJIZ
         OPaynaWxIdGCqGxHLqihVknIAgSEcvU5eSS58LvxoT03CnKf4boFzlQEaLus9n63LduA
         BuPqc/SJPBYcdcX+Oq/fzVRHU+bz59C0mNyxKh7ZdH9LYR+mFLQL5z6eNge8f1oAFmgS
         pRbA==
X-Forwarded-Encrypted: i=1; AJvYcCXXdshdUlqKkagGSCJkm6maU0kek8+2kdNqni+Ss1DzlJV5ktkxzHHXeef2Pwm5GtFCOoXF4pDU4OyA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhsk2VvRXWAzD/84jpVV0znjPIqUiNtNt5906qG9nH/j/81wke
	HCV3DPqYk3XSPbFBS//eV2JaPXXafNM5MD+nDhWHTLO1rSMSQ0mLXKvQd9NqwP7ichA=
X-Gm-Gg: ASbGncsbHH+uOY+VIMoOG76W/qFM0xbLi10WURBtQpFfjNZ1MRkuOnlywbCokymo4LW
	aFoXaX6MZfNShi2ThFtEPbQ+xdnQppn8O8jUYKuylaLsvZPYKwAnPysCLQWnqkBkDCH1ZdxpMFs
	9SpsFK4pDpfGbrYqQGFt4olNe8MuaKMFIHm947MOwMhUYQu3vEapsU0ZxahJJx+aYcRPwIAmXmJ
	XswxVCVIRpBr09cWqS3MVZ2W+GoPdyiWT+7vkUgwISt9V+8uM7qWAHc7dydk8i5briZaUJGhMdI
	tbdShV/0lhtX9kT6b5+hZbofta8HNNw7dbXiaYoIvXAJeqrohtGseaMkmaKi30wyJ2N3/1fwaBT
	FmKdK+IB/bnu/O1YbVxQJFY7DH93iuazEHhLcXVVzuOb4
X-Google-Smtp-Source: AGHT+IEbGag45vPX20LYB1WfopE+qzWBntuEjRkdvpr5wWxVk98Pkdq2jfNu+AIQodZOnj6MJXuypQ==
X-Received: by 2002:a17:907:a44:b0:af9:6666:4acb with SMTP id a640c23a62f3a-afb8d2889e9mr47673066b.10.1755005090215;
        Tue, 12 Aug 2025 06:24:50 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c0a4sm2209111666b.109.2025.08.12.06.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 06:24:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: iio: Replace bouncing Analog emails
Date: Tue, 12 Aug 2025 15:24:46 +0200
Message-ID: <20250812132445.75398-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5871; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=Gf90/pHp5CpXSUGL2hjNMT/bBSAS8DnZpsS3Yd0qYoQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBom0CdLawzbdg5SHABJ9mkeI0NywQinQuUswts5
 DApnJGmm+CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJtAnQAKCRDBN2bmhouD
 12WbD/wKouB7wmK4OxH3waJb/3ZCqzLwwlhmFpjI4NuB+iQo5Fid4ueRvVHHg9NxUFXWSSK2VDg
 vGYLlAVkVQ+U6p2FxaXymZ5xEzJo4p6pvy81RWQ2x73nYMixgb+oVaarh37iQclF9HIBVI52gXc
 y8GuXHyLe6VVpvPkditS/yYIBqEEmU+RUode2LqB2F9uZbw68c7VR280C6P8PD0GIwEEtV90I4x
 5bnWwrR+BUUFw9APBMBIMg7ZGmT/H6m+UxuQErTykTCTnJVmnucXGL+EpoUjC3nW7Fy+i9gpgWa
 kYlrBTANxawQY/RTxkqtJAfz96sYlmB2SJa5sOFy0zGxt2AsxHe62yjsp8JCHdhHXdQ8zBxYce6
 3btPxFq7ZvEfIWhRB3waHQ+JK6Vz4AXdKI3uREoo9Kg9htXOJN4yZ0iYbQhkHqGHIfMBF6OxwDj
 07HDx/HGk0VHD3sQSkkn0lCMh+Gm/eD+AlM5gI4ipO4XXf/WDEf/sLOMgq1NkmflvEfCmIJUlnT
 r3BfLAmhYFbWsFqV8j5xRDP+feRfMq0DW5vBfkDqekDZ68aaIGprL9PusGpNupUOHyAvkUG5yvM
 7Cjq43BklNsp4bpUb7hDHTDxdQPDrqWcAnqoYfr4qdgWUsbNq5a5rv72EVz48qKRBE4wi99r13/ WdHa7GH2Nq+Ofcw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Emails to stefan.popa@analog.com and alexandru.tachici@analog.com bounce
permanently:

  Remote Server returned '550 5.1.10 RESOLVER.ADR.RecipientNotFound; Recipient not found by SMTP address lookup'

so replace them with Marcelo Schmitt and Nuno Sá (listed alphabetically
by first name) from Analog where appropriate.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v2:
1. Add Nuno, based on discussions on the list.
2. Add Rob's Ack.

This change got agreement on the list, but still would be nice if you
folks Ack it formally.
---
 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml | 3 ++-
 Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml   | 3 ++-
 Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml      | 3 ++-
 Documentation/devicetree/bindings/iio/adc/lltc,ltc2496.yaml    | 1 -
 Documentation/devicetree/bindings/iio/dac/adi,ad5770r.yaml     | 3 ++-
 Documentation/devicetree/bindings/iio/frequency/adf4371.yaml   | 3 ++-
 Documentation/devicetree/bindings/iio/imu/adi,adis16480.yaml   | 3 ++-
 7 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
index 3dc973b98f81..a92e153705f3 100644
--- a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ADIS16240 Programmable Impact Sensor and Recorder driver
 
 maintainers:
-  - Alexandru Tachici <alexandru.tachici@analog.com>
+  - Marcelo Schmitt <marcelo.schmitt@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
 
 description: |
   ADIS16240 Programmable Impact Sensor and Recorder driver that supports
diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml
index 88aa67bf2280..0ba0df46c3a9 100644
--- a/Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adxl372.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Analog Devices ADXL372 3-Axis, +/-(200g) Digital Accelerometer
 
 maintainers:
-  - Stefan Popa <stefan.popa@analog.com>
+  - Marcelo Schmitt <marcelo.schmitt@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
 
 description: |
   Analog Devices ADXL372 3-Axis, +/-(200g) Digital Accelerometer that supports
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
index 7146a654ae38..4dd5395730c1 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
@@ -8,7 +8,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Analog Devices AD7124 ADC device driver
 
 maintainers:
-  - Stefan Popa <stefan.popa@analog.com>
+  - Marcelo Schmitt <marcelo.schmitt@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
 
 description: |
   Bindings for the Analog Devices AD7124 ADC device. Datasheet can be
diff --git a/Documentation/devicetree/bindings/iio/adc/lltc,ltc2496.yaml b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2496.yaml
index 5207c919abe0..eac48166fe72 100644
--- a/Documentation/devicetree/bindings/iio/adc/lltc,ltc2496.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2496.yaml
@@ -9,7 +9,6 @@ title: Linear Technology / Analog Devices LTC2496 ADC
 maintainers:
   - Lars-Peter Clausen <lars@metafoo.de>
   - Michael Hennerich <Michael.Hennerich@analog.com>
-  - Stefan Popa <stefan.popa@analog.com>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5770r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5770r.yaml
index 82b0eed6a7b7..091cc93f1f90 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5770r.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5770r.yaml
@@ -8,7 +8,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Analog Devices AD5770R DAC device driver
 
 maintainers:
-  - Alexandru Tachici <alexandru.tachici@analog.com>
+  - Marcelo Schmitt <marcelo.schmitt@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
 
 description: |
   Bindings for the Analog Devices AD5770R current DAC device. Datasheet can be
diff --git a/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml b/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml
index 53d607441612..2e1ff77fd1de 100644
--- a/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml
+++ b/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Analog Devices ADF4371/ADF4372 Wideband Synthesizers
 
 maintainers:
-  - Popa Stefan <stefan.popa@analog.com>
+  - Marcelo Schmitt <marcelo.schmitt@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
 
 description: |
   Analog Devices ADF4371/ADF4372 SPI Wideband Synthesizers
diff --git a/Documentation/devicetree/bindings/iio/imu/adi,adis16480.yaml b/Documentation/devicetree/bindings/iio/imu/adi,adis16480.yaml
index 7a1a74fec281..43ecf46e9c20 100644
--- a/Documentation/devicetree/bindings/iio/imu/adi,adis16480.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/adi,adis16480.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Analog Devices ADIS16480 and similar IMUs
 
 maintainers:
-  - Alexandru Tachici <alexandru.tachici@analog.com>
+  - Marcelo Schmitt <marcelo.schmitt@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
 
 properties:
   compatible:
-- 
2.48.1


