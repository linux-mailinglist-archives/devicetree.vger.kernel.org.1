Return-Path: <devicetree+bounces-136130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44251A04014
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24B1B1617BC
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32B811EF080;
	Tue,  7 Jan 2025 12:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+2rgvDw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0EA1EE7A8
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736254720; cv=none; b=nKBolAZaIo1M8HTjOj3wuV7qu+Ey/KecqOQf74hVxj3ICb8UkNhXACZjzCTXS0BytrdQy9M6Nu2ouRg8OVYKYsedphXF9/1ryH20UKhfqVmT7+c8CLimqYNmqdRH+7N8mSfR3kWtfGIB4jh+nQlzLoz1MxfSfsLB8Lu1PqzVuxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736254720; c=relaxed/simple;
	bh=OFxtIq84pjYYuzu4hf2cp7nadzLvsWbywncZgksHCVc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vf3Kb49qRb75qRqb8yUzQFTqyiuaMBpdAsRq/0gGdhDF69kYPxQP2O1vv2GQWqT8qXjF6TkwlRAm3uHgt/AV6muFOG5rKD0ubsQ41shyl7Fp3s1a7IqpT/FIPonsdiGIgujYj6Z9l524NNrl+/ZyTUlT2bXmf/kK+qqAbSLvVGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K+2rgvDw; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3862e570832so1756270f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736254714; x=1736859514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iVaSFtlZM3/VWeZtMCCVy8JYGseLcw26+eMrw9jztfQ=;
        b=K+2rgvDwaqTHMtpEBVR3OyFqqK3Z1i9/WqrXSyNPto7n3OZtLI9cnFy2lK/agLOW+H
         EuDCg983NkRPI1t5Tx/1CAEgzlKV4VH2HSb3a2qM0BLgoYvCBGOQVDWOCDlw5ceddmcK
         nGUxJSf1PJ6wWlCy/lva9tKKgGxrqUubBpCvW3OCodEys8rc0EKvXqBlW85QrSXVrUKw
         jhjr7nSpjW90qpnXrH4bG0+Hlfpl4++xAgF8dvUFwBhHC7LTh3xBkNhj41FQnzHmh5Ip
         yGHZNkmg+as9EXvPZfiLydMuk/O51Kj8MeGZJpnsJ7e69gQeoFWQrqw8+Pzje1q0yT7S
         JHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254714; x=1736859514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iVaSFtlZM3/VWeZtMCCVy8JYGseLcw26+eMrw9jztfQ=;
        b=v2pgO10HI1zs/itHuHCYbF1miF7nDAG+3S7Rtf3HaLfb/sZkjQifMtdTOjcab9fzgc
         l8yrD8TI4C1dAeF1ta4w/e1gdW5RJR/MJrdCvrvZE9ojnzjatIoXMminr8izyZAydcC2
         oYyIguoBnUvl7UPEI3yTkPlI4+T/UDRf65wGHuRZxsHsfo6c4ftB5tJqElzIj5AhoxGI
         wNA4pr8MAOv2SlsoiAO0Sbh4Qq4H6XlM0UWaKXM1yBhDVHkd9E5pMYy98OSvZLEpJa46
         T4gp7M61KMlxzNl1uTZIhyb4/4KOvM/2INGyZduESF7zRopnoTBOTxOA3F5KZj7RXdIW
         GTpA==
X-Forwarded-Encrypted: i=1; AJvYcCXlYmz/lrwArVKzO6KrwKYdrx6XBgA1v0WZo112XaV/LZfiiVQ2FV7bqOgNBXu1C0P0DB3RynLrb8qp@vger.kernel.org
X-Gm-Message-State: AOJu0YxbuTZ5EXiJastcf+kSbZUHuLJFYEENz+Frdg1nBqM3C77aiKPu
	JTo3dhlL9LKx77UKpDWodBa3ynr0AZQ3y8tCtquViQpcgQAGhVx9GWWr7Rb4jWM=
X-Gm-Gg: ASbGncu1LdxcQhlcv0dBvmQ0jvRgOFpqsGe8c8Xh2wReo5898v4hfl5UTEAxs4K7tap
	ZgGLsZ66laumlG6Vr+IVJttr1GcFqlzje/FcXfmMLGVTkNRSGoNJgZmSXRmah7UPQYGVVbdrzA2
	7LUcoJvrYjl0EPhqfkh3R26AZ36ZtRgZYv6RfS+3pXAI/0s9x9h3Xy7fnSETutDHfZEtRDZuThB
	iFqzaLozKkraAh5GGGYl9Sk1R8sh2GZ+toBQ9fCYQk6Azv7qUtW27K2rr4c1Tm/pOw7TQQ=
X-Google-Smtp-Source: AGHT+IFPBeJaMEFcgs9P5ku/eO7a9THMpLvlhXfK01aXSRTSwOvnAsWvnf3VluFuAxi1Ku/w/nWpEA==
X-Received: by 2002:a5d:5e09:0:b0:385:f479:ef46 with SMTP id ffacd0b85a97d-38a223fedbemr21216203f8f.13.1736254713733;
        Tue, 07 Jan 2025 04:58:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8474c2sm49738610f8f.55.2025.01.07.04.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:58:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Michael Hennerich <michael.hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Trevor Gamblin <tgamblin@baylibre.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: pwm: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 13:58:30 +0100
Message-ID: <20250107125831.225068-1-krzysztof.kozlowski@linaro.org>
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
 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml | 8 ++++----
 .../devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml         | 8 ++++----
 Documentation/devicetree/bindings/pwm/brcm,kona-pwm.yaml  | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
index aa35209f74cf..45e112d0efb4 100644
--- a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
+++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
@@ -41,8 +41,8 @@ unevaluatedProperties: false
 examples:
   - |
     pwm@44b00000 {
-       compatible = "adi,axi-pwmgen-2.00.a";
-       reg = <0x44b00000 0x1000>;
-       clocks = <&spi_clk>;
-       #pwm-cells = <3>;
+        compatible = "adi,axi-pwmgen-2.00.a";
+        reg = <0x44b00000 0x1000>;
+        clocks = <&spi_clk>;
+        #pwm-cells = <3>;
     };
diff --git a/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml b/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml
index 119de3d7f9dd..44548a9da158 100644
--- a/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml
@@ -35,8 +35,8 @@ additionalProperties: false
 examples:
   - |
     pwm: pwm@f0408000 {
-       compatible = "brcm,bcm7038-pwm";
-       reg = <0xf0408000 0x28>;
-       #pwm-cells = <2>;
-       clocks = <&upg_fixed>;
+        compatible = "brcm,bcm7038-pwm";
+        reg = <0xf0408000 0x28>;
+        #pwm-cells = <2>;
+        clocks = <&upg_fixed>;
     };
diff --git a/Documentation/devicetree/bindings/pwm/brcm,kona-pwm.yaml b/Documentation/devicetree/bindings/pwm/brcm,kona-pwm.yaml
index e86c8053b366..fd785da5d3d7 100644
--- a/Documentation/devicetree/bindings/pwm/brcm,kona-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/brcm,kona-pwm.yaml
@@ -43,9 +43,9 @@ examples:
     #include <dt-bindings/clock/bcm281xx.h>
 
     pwm@3e01a000 {
-       compatible = "brcm,bcm11351-pwm", "brcm,kona-pwm";
-       reg = <0x3e01a000 0xcc>;
-       clocks = <&slave_ccu BCM281XX_SLAVE_CCU_PWM>;
-       #pwm-cells = <3>;
+        compatible = "brcm,bcm11351-pwm", "brcm,kona-pwm";
+        reg = <0x3e01a000 0xcc>;
+        clocks = <&slave_ccu BCM281XX_SLAVE_CCU_PWM>;
+        #pwm-cells = <3>;
     };
 ...
-- 
2.43.0


