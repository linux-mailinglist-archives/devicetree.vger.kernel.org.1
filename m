Return-Path: <devicetree+bounces-83432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 289609285D4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 11:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C8D81C2515F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159011509A5;
	Fri,  5 Jul 2024 09:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KDWew8uD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8266E14BFBF
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 09:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720173134; cv=none; b=ln0WEIcdww5O9ZOPldgCJCKqlxf0wGzYpd7wmztXPssMkszyVSxFqSxXPG+PMoDRsBwIsJLIVGSeA4sz5dgriqXYh3X4f5i0wDiGfz8rt5ZghIiSrhWnIzii+s2K4S28+omtY+1Yak2YRdZ1WpYYAxfbWoXgmjZ0SSVBVi08Mz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720173134; c=relaxed/simple;
	bh=9GRX79mD0Qnp5m87TzZAuzLxfukwJoqm8reUPg+HeMU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EHUFzmcvE8Bs7ehtNEJ5cGNGC/o+TD+b7T+x6e03rfFNZ9WNMWDJ5qD8MtvleUJcuRs3EFEV24D6/ih9FvUJK42FchanjNX4sGX7PjrvWYse2ZNXGn5BRJ6SaxlUkEIUazmj81fx+9GKZT93OaP9f0+ODhqMN0Lx6T2OAgPQnKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KDWew8uD; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so17711151fa.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 02:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173131; x=1720777931; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RpMYuJ0dfGhKXJajPxXWJEOB8SeiMwwjEYPx0ijTq+w=;
        b=KDWew8uD78xFmnNCe/CMXE9uP420IjdZfzHYW77fF7qEE+L102HK1K0Y75Z+sTqGpf
         3LdreEEMT24Y1xEUyPYnPTdD3fP+NrTwb+Ki+YHehMuxzadgxHkmm7Dp8ZjhX+riBhNJ
         sGeVW71G60TqgmX7VTUykNukzwJLtgnw1H5T+6VPHhnBT5/bnRiOLBO+UOyvGs6QIDP1
         WRqxsepF0KO8Y7VVyL1UhL6EU4UxQxGi0dvQ7nv7yRa+cNjCK0EGy5EGv37Ttl6TVi9A
         a4PgjKim1R3iFGy3VnW9XHrqV5V4RZXAZon6nfQo0/Fe0IWD3lOOil81lLuuJv3qmHuV
         nfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173131; x=1720777931;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RpMYuJ0dfGhKXJajPxXWJEOB8SeiMwwjEYPx0ijTq+w=;
        b=JECavZVDPALADyGpqUe8X7Upw23MgzVfnZPFL/B7yJPvbBK83o6x/8hm2Z5QtLas3T
         VKeqYHE4VHyfrcW3nqnQz0DTeY9Q3NabjFu/5wEpZ2PPMjkykengeBfklQ7j4TA2YvsR
         0NY7BP0xSnj8EmtHXGqBK9z5aSwsi71QeYQgxUV4mT6L6PW4AixzI5a7nMiHUZljmfHH
         p0a+Gy2urF5+pjZ3VcJk2/UPFRNJUjWKkPn6IDFiBIXwndHEuFFvTUdZN4FP6UbxWAAq
         QNEblW2qaxfuyY82zSyD4A9LpRJjA2NiGxIUJM1a1n4kwaCLDbJ1T/YgpxNzAP8pM/1j
         +8hg==
X-Forwarded-Encrypted: i=1; AJvYcCXbTovFt4i7sJdwOaSruqhAwP4xJTaWJqXn0X9rHWf+2V82IAf2ZzgESWlvrphmYG+gQ/5wK+3guuFLEBlVcXyGFaHceJ+2YpJ80Q==
X-Gm-Message-State: AOJu0YxK/kct09usK549FpOabR1zV2ESRlMyAZtpk27fuKaJE07VooxI
	dTyXkbWGeJCHrXrrqkU7xml0voIFFNaANySpya26QTeHbS1vYn3XWnnJoExWh4E=
X-Google-Smtp-Source: AGHT+IETSHLx2zzowgiEOGpjYLxdVdv6J8fsjUHUvaJDxS3VDywKP7ENhmO8Keeop5zSaLogLiZsxg==
X-Received: by 2002:a2e:a913:0:b0:2ee:81eb:6bd6 with SMTP id 38308e7fff4ca-2ee8eda3d7amr34978111fa.23.1720173130803;
        Fri, 05 Jul 2024 02:52:10 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:28 +0200
Subject: [PATCH RESEND 09/22] dt-bindings: thermal: qcom-spmi-adc-tm-hc:
 reference thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-dt-bindings-thermal-allof-v1-9-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1582;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=9GRX79mD0Qnp5m87TzZAuzLxfukwJoqm8reUPg+HeMU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8IraTqSs9zXCQgTjfReqMGMnHrccOsUqjqdv
 h2tuW/AYMiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCKwAKCRDBN2bmhouD
 10Y6D/9oTPxkLaWQSK0Zutky2g8bfWF3Az9HX0SCfqtcHP1CTgFWvKUJ847L7+6zScZ+CkBfFKv
 74RhKFt0yJxG2d3fnk7z8XGYmbGYt4RB5IlopZ8xL5OH2iOJJmqUgNJ9jQokzSn2fivLfETFv2v
 00+6DiAvmoeeQcuZ+T+YRa8k221r07QK8lwh8Q8qNb0J5rbPYV9H7erdx2/zEPuef1LPpjTxvMR
 7efX5o+RlrlMV101gkvXPBFHcwuVvinQti39t8Sqlg8/YZRHhdk6PebYXx6/pekO6RVb5R9RcW1
 9rte7VUPRZT6CF7ILZy7L+fwAzdABfwK5juqSR0moG0u93xOFyTPeHFcP+6EI50hNu9ppYkZwL+
 GCbM8fC78oWlP7PX3CKB7O4GZXibSRrqXOqu34x2Ya8ebcPzwLzeF2cvISfTrx+t+ahXqBzobtg
 OYwxf5+mcHZf3kNRX9SCcNAhxafXerYoic7DFHWiUh48FK66YajdrdSUaArj4cfb3opaG6Rn1Bm
 sXqZqDgDXm5ShGfuiEDgfQLJyUepKi66yBbRCfvtDW/fKh8C8ThwCmUABgYuHRRo0wEXEabBqMq
 0t7TUagrvO/jtIMGA87RSODLPAMc/yPKID9WVovTujYV6RVTkXoz21dYbpnKF095/Vyy5TwKmth
 GnOo7hn3HprgNhw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml          | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml b/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml
index 7541e27704ca..bfad8130a042 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml
@@ -8,6 +8,8 @@ title: Qualcomm's SPMI PMIC ADC HC Thermal Monitoring
 maintainers:
   - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     const: qcom,spmi-adc-tm-hc
@@ -20,9 +22,6 @@ properties:
 
   "#thermal-sensor-cells":
     const: 1
-    description:
-      Number of cells required to uniquely identify the thermal sensors. Since
-      we have multiple sensors this is set to 1
 
   "#address-cells":
     const: 1
@@ -106,9 +105,8 @@ required:
   - interrupts
   - "#address-cells"
   - "#size-cells"
-  - "#thermal-sensor-cells"
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


