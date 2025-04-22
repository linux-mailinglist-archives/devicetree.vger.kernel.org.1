Return-Path: <devicetree+bounces-169540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6020EA97419
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C1A31B61F83
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3F22980AB;
	Tue, 22 Apr 2025 17:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=conclusive.pl header.i=@conclusive.pl header.b="Jw2SoAzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294D229617D
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 17:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745344784; cv=none; b=rRNc3jxB4j3udpGNDGqmMDriXoyH0/H7Zh469mvwS7il4O4+wnBoUQEURAN+bXjP7Crq8ARh6gg0kpBb79Efva5BpVI84mNz/kHFcUrXod+fS+m6f+wuQFmAr7oZvl+AFHrBFHieDXZ/Pbi1WmkUEZp+GOkijFmP7H2OX4tLmCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745344784; c=relaxed/simple;
	bh=rX4pZAx+Fw4Z9aS7brID/2V6XdrCArIiB7uoJZcdUlQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i/8US4MIbYoLuWDyr5AGryNtE2pYUICPAj+UxCEQ+qTNLLNp7g1YTaiGo6zfqj4uS4Dv6m327pFSd88kEka+0GDk80vpNoTrFjQWNrDawLbZlrA4rzNoPUZn9XuvGkk4cBasumr9bXZPtqpq+r6rtFP8G7XYKgMkNm/gWOJsQRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=conclusive.pl; spf=pass smtp.mailfrom=conclusive.pl; dkim=pass (2048-bit key) header.d=conclusive.pl header.i=@conclusive.pl header.b=Jw2SoAzL; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=conclusive.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=conclusive.pl
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-acb2faa9f55so653571566b.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 10:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conclusive.pl; s=google; t=1745344780; x=1745949580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EsoqhQJqReGblLVET6rA99edyyj8MD7IJfz2aWYWya0=;
        b=Jw2SoAzLD0Ux3rSnqVrTEAPE7WXaDzdhOAAOCq/bNU/+JscOL6pMXRYeIXwAbET/h/
         Knn2hxyAVlGe3GsfgR7ObUoihLgzvklcbSME5ETE7cFIsyKktuoYyD9RZat9YrKopSfK
         8tJo/Z5r4dW1y9g8vjZdfvNd/UoNZy9AW/zQUVgt0jziPy/u7lRwAA1RbRdNCMn30+1A
         OCHEuB+tcY8kx9ojykrs7tJgqafO+tgCKhdVZqoJgOhBJ5W67yQ7NvrFwCgC2bo+v8g/
         PMNV18vvFyikDIDDNhKo8NGMH/rIXxcLgn6Pe0ZGwnaOsaymK481O69uu+SJjIxG55P5
         hKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745344780; x=1745949580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsoqhQJqReGblLVET6rA99edyyj8MD7IJfz2aWYWya0=;
        b=CO+O5As5zFmADLx1Pc8rgDqU20lkr3I0DhuN4vqmmJOpzVBGl+SdwmPh/D8+X44wFS
         LzMYJ7pid1Q4HVI//rLDxlOSnNLD6rN/dbOuZOXEzxcF+7/SIAW5iL76vYLEA7LEOSHA
         KVs5ThEwG70jf7CV0MxvM6Ee6WQI5Gxo2TCRwHh4uOAdFHxKwCZT1r8Cm84Hv+j4wp40
         6VP0KBGvigCOHfyAEsZovKTSWIuW1CyfZ2utdldk20e8u7JDi0hR+1ots0eIZymi+K9T
         azjPznxe1qXUYC4O58WgULy7S8AOs0OUglGdBpXRMsDnVCaRPk4RxZHAzDkJnzvQ4k6W
         nU7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWwvtl7n12jOg3j7Mf8Lf9uS3Ja02UVtiurd3O3zMAQSNu0Ic9u7KijmTtho17hLM/8qrGHsJTV65kP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9jYiPwVbCkcb3IxeBriCDS5wHfq9epdzeMP7/rZkTkuC7Br6O
	+txuqcTUCZ9gyNSje3QPRgIiKwaVJooWowz5F6KfGOgG95/yhk8glgXZPjOtItU=
X-Gm-Gg: ASbGncuhk/1MXJpgo4UmHDpVvJySGen8lNd5pPkVKr2lYu3E+5Jz4EL8B3cLwJY8qH+
	+10sOLzkc4vHQ7LyPW+U5+Z+Oe4pGJgKFkiiCFCzMzTKNLNcB+qDSxBOOfvSMtq8NhzKO1vqBmG
	RJF7CeRQUq0rVF+1bYEB1XdvwQul5zudFr3hjFX4LSQIh69EDpIm2WVa/6QcSr/FRb6LJ/5tfOE
	1M8+WsFAOFD9TnoXaHWXWJKrDX3gMWmUcO3APgUTOFYrrhLcCrdJBbM3gOpIEJTISQYmTCdSld6
	dq/egJWF017k1c64FTBxleIoDLERD5MWyfJCTk4pHTQ6R+rIpQ3M2Gi7LbFMfO4l6/YqlhY4prC
	UDcMrHvX1
X-Google-Smtp-Source: AGHT+IFDevBClHWL43+s8ObNwls2JReJQHbOXyOW76f7cvBTjIZlKeT5m3zNvNHjFdlY+e7U8WVEGA==
X-Received: by 2002:a17:907:da2:b0:ac4:169:3664 with SMTP id a640c23a62f3a-acb74b7b640mr1311993966b.33.1745344780516;
        Tue, 22 Apr 2025 10:59:40 -0700 (PDT)
Received: from wiesia.conclusive.pl (host-89.25.128.123.static.3s.pl. [89.25.128.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef47733sm690208466b.144.2025.04.22.10.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 10:59:40 -0700 (PDT)
From: Artur Rojek <artur@conclusive.pl>
To: Johannes Berg <johannes@sipsolutions.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jakub Klama <jakub@conclusive.pl>,
	Wojciech Kloska <wojciech@conclusive.pl>,
	Ulf Axelsson <ulf.axelsson@nordicsemi.no>,
	Artur Rojek <artur@conclusive.pl>
Subject: [RFC PATCH v2 1/2] dt-bindings: wifi: Add support for Nordic nRF70
Date: Tue, 22 Apr 2025 19:59:17 +0200
Message-ID: <20250422175918.585022-2-artur@conclusive.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250422175918.585022-1-artur@conclusive.pl>
References: <20250422175918.585022-1-artur@conclusive.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a documentation file to describe the Device Tree bindings for the
Nordic Semiconductor nRF70 series wireless companion IC.

Signed-off-by: Artur Rojek <artur@conclusive.pl>
---

v2: - rename the patch subject to comply with DT submission rules 
    - fix a typo in reg property name and correct its indentation
    - replace all gpio based properties as follows:
      - irq-gpios with interrupts/interrupt-names
      - bucken-gpios/iovdd-gpios with vpwr-supply/vio-supply
    - clarify usage of said properties in their descriptions
    - add a reference to spi-peripheral-props.yaml#
    - specify unevaluatedProperties
    - drop unused voltage-ranges property
    - update bindings example accordingly w/ above changes

 .../bindings/net/wireless/nordic,nrf70.yaml   | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml b/Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml
new file mode 100644
index 000000000000..c9a41b61c624
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/nordic,nrf70.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nordic Semiconductor nRF70 series wireless companion IC
+
+maintainers:
+  - Artur Rojek <artur@conclusive.tech>
+
+properties:
+  compatible:
+    const: nordic,nrf70
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description: HOST_IRQ line, used for host processor interrupt requests.
+
+  interrupt-names:
+    description: Name for the HOST_IRQ line. This must be set to "host-irq".
+    const: host-irq
+
+  vpwr-supply:
+    description: BUCKEN line, used for PWR IP state control.
+
+  vio-supply:
+    description: IOVDD line, used for I/O pins voltage control. Optional.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - vpwr-supply
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    reg_nrf70_buck: regulator-nrf70-buck {
+        compatible = "regulator-fixed";
+        regulator-name = "nrf70_buck";
+        gpio = <&gpio2 24 GPIO_ACTIVE_HIGH>;
+        enable-active-high;
+    };
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nrf7002@0 {
+            compatible = "nordic,nrf70";
+            reg = <0>;
+            spi-max-frequency = <32000000>;
+            interrupt-parent = <&gpio2>;
+            interrupts = <13 GPIO_ACTIVE_HIGH>;
+            interrupt-names = "host-irq";
+            vpwr-supply = <&reg_nrf70_buck>;
+            spi-rx-bus-width = <4>;
+            spi-tx-bus-width = <4>;
+        };
+    };
-- 
2.49.0


