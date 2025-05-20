Return-Path: <devicetree+bounces-179009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8EABE571
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:03:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EE3B4C704F
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B25025DCE9;
	Tue, 20 May 2025 21:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v7eAYllx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD877253928
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747774882; cv=none; b=EPyeOltaB5VZhCfNAAwepwwQwvYQKSYJbtrB3tvEfW74YAKuVYh/FPlFtilGqrQulaBgpdYJSayFxSQuCPfE0PW5GTFDIPeA6WKoFqtVN7kDxaXn5YaAzChhP5QhRVDM3SYb8T86mQrCA7UVEnBXf+tWX71Rk3odpC8ZPQ/n+CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747774882; c=relaxed/simple;
	bh=MNb997VY29duTYbBSnjPo0xjIEdAwYnJg6KevBR2KJk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uhx5c2287dXmgUND1lScTbtU57FaRJo0rk5b8b32AuoicA2hsAP5EWckvZnbqP6hIBgXs1aHkVoyS33noL0vZrT/6C4oyhrnIa16D+oGgziM398MxSX6dSRNzQEXsApSYsLyff7mldm7i7VjEkyEMh7sVljn9Ll9E92AhQ7fGH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v7eAYllx; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2d4e91512b4so2118652fac.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747774878; x=1748379678; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1AHx1N9kF4xQ7AtLhfpX6F3+VzX1t8msVEo+Vi5+ENw=;
        b=v7eAYllx0ujUgJqAy9LVHphZOanWxQSdhGhUqK+mslOznSk1qMITa8caP9qw9nW0fj
         WRIGal/UYWPzPNOpFX424JASq3NkhzQ3ywARdcsGkgmk6ENtyNb/s6Q328jtf++B+2Uq
         7SxZwVdwPCDZCH+IielplsVYf/YaQFdW16En/hfJnDFaPpTTKWEZ/8X8UxkmQvFQARtO
         On1EHSdlKaEW9YUYHG7PR4OIoy576hqzmKMvvhnTAoidT33EUOK4ZcDugISZIZoy5laU
         p5T5y7CAyhT/aIbGrhI7TumgP5cRmwUEuZ2seS3vNF7RQpzmBnJPVPSts0L3N33v7y7o
         GZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747774878; x=1748379678;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1AHx1N9kF4xQ7AtLhfpX6F3+VzX1t8msVEo+Vi5+ENw=;
        b=OZHhJKpf/DAvcr1C0KBvJypx8oZ9Y6JanCIA2YF4kHOOyRgNwbFVhjaL4hur5Txt12
         RM2DLTQkwCOlTm0F2vyW5R8FT42qJvz8WqPBBr+u7NTFnDMzmMFb9ZngB2PWFONl6blI
         vF+q9B3znmnuv5/2e5kgahPW52J3m9DqaIAfWcgD5x7XjtoRjOLs7v8ptzdxz6vvOJVs
         +2buJ0QlYB4FLM8ceA7itQeoVTfQoNLphkFvCUxlOXpLsbLT5rnhe0tQI8skErZl8cL6
         Jgp4/pDGBXAOvkdCyj9S8rFWhGvneeBIMNP6+oaoRNTNWXFT7JEJ2n175ag1no+nJ+mm
         /XVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmueBV20BiQhausMsRXXspLn6WhFUHwaX59nfUapCjP0Q5bewGl21KPVKKUnLH24CpCx7B0iX+X9VH@vger.kernel.org
X-Gm-Message-State: AOJu0Yww0JBsl508COIYkHYlCEcGPut0k8No4Iu3RgjDQy4Pka2NpRWf
	Ge+X4owir6HLzi/5KgxnKWLdgdxt9k+pjGeefetDquGhf5nqbGc2TxSstiuiGiZWgzU=
X-Gm-Gg: ASbGnctnJAwO6K5b2iUKHPIuH+IqrFFigFPiRLUBajIhUJYfXu4gSSATDHT11u4x12B
	yzVAX6JPjl+ir4kIgs3IPMud8lq5HGwSAwsAZkZjp6DleHPKLU8NEG/N7FnsfVoqAvFEUTqabWe
	DUzzyy7+fUiBINTz+mZR3rbv5izfTF2fNp/z0OAnnk2ek4UXGsfnvb1Xd3csBOpCYVd5uks5nXr
	2ApnSNUb3GW+k5adPjVakSo5jS4SX8uopJGcNLhyNQu6+j6iCYWcwK3gBW9bDpDNAKZoHrnTCIK
	VEd8Y9Azb1v/47v9FbxwvsiuVHFsqnQO2rODM5GvfWHPRrUpPAaQ0QKk6rUpqHy4FPQ=
X-Google-Smtp-Source: AGHT+IE1xUkgbFQC35Y0QlpuBNk/KGJh9mJSWSstsMo6EMLXlxglnHtNEPMvXcGpOG0aLqcmyYuNcw==
X-Received: by 2002:a05:6871:4e82:b0:2d4:c55b:199a with SMTP id 586e51a60fabf-2e3c836ad78mr9977999fac.18.1747774878651;
        Tue, 20 May 2025 14:01:18 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c0b2e1a7sm2348470fac.48.2025.05.20.14.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 14:01:18 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 20 May 2025 16:00:45 -0500
Subject: [PATCH 2/3] dt-bindings: pwm: adi,axi-pwmgen: add external clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250520-pwm-axi-pwmgen-add-external-clock-v1-2-6cd63cc001c8@baylibre.com>
References: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
In-Reply-To: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2239; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=MNb997VY29duTYbBSnjPo0xjIEdAwYnJg6KevBR2KJk=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoLO2PpGPGzaFtijjrIrK2whRmAsYzrmMYRTHdz
 Qnt2RGu0laJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaCztjwAKCRDCzCAB/wGP
 wGlqB/9qdtBuXL9f7pR4TQ9l8Xk5M/oD9co95D/ekxp3EZ/YS4c9MiCwA6UslD5WSfEBbWSK3L1
 j9CJDV7A0PdO6b4M2KK/Af/BoMC4QiaoSqcqgfwKGSpDfW5CA08/7kyZ9ZkmqnF1NBJ00tr12lu
 B7Vym7rS7ZTZvyYmOwX6670IeV9dsTBP/pF6XLcRSbleiL9SpGl2TTjgIM+m8OC24NcDMd33AGo
 XU80Dv7yaRBOK6r2Hrkqqh50lYJfXLs/TDNUt7zBaEK2msYeW83ZasSXcm8W8v+0LtY7t+IKnVD
 NZU832t2I5jatD9Qck1y685jQuTdG1NIncQiWAhmItJ7Gzh5
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add external clock to the schema.

The AXI PWMGEN IP block has a compile option ASYNC_CLK_EN that allows
the use of an external clock for the PWM output separate from the AXI
clock that runs the peripheral.

In these cases, we should specify both clocks in the device tree. The
intention here is that if you specify both clocks, then you include the
clock-names property and if you don't have an external clock, then you
omit the clock-names property.

There can't be more than one allOf: in the top level of the schema, so
it is stolen from $ref since it isn't needed there and used for the
more typical case of the if statement (even though technically it isn't
needed there either at this time).

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 .../devicetree/bindings/pwm/adi,axi-pwmgen.yaml    | 26 ++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
index bc44381692054f647a160a6573dae4cff2ee3f31..90f702a5cd80bd7d62e2436b2eed44314ab4fd53 100644
--- a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
+++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
@@ -16,8 +16,7 @@ description:
 
   https://analogdevicesinc.github.io/hdl/library/axi_pwm_gen/index.html
 
-allOf:
-  - $ref: pwm.yaml#
+$ref: pwm.yaml#
 
 properties:
   compatible:
@@ -30,7 +29,13 @@ properties:
     const: 3
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: axi
+      - const: ext
 
 required:
   - reg
@@ -38,11 +43,24 @@ required:
 
 unevaluatedProperties: false
 
+allOf:
+  - if:
+      required: [clock-names]
+    then:
+      properties:
+        clocks:
+          minItems: 2
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+
 examples:
   - |
     pwm@44b00000 {
         compatible = "adi,axi-pwmgen-2.00.a";
         reg = <0x44b00000 0x1000>;
-        clocks = <&spi_clk>;
+        clocks = <&fpga_clk>, <&spi_clk>;
+        clock-names = "axi", "ext";
         #pwm-cells = <3>;
     };

-- 
2.43.0


