Return-Path: <devicetree+bounces-226795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D12BDB8C5
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 00:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6D251355436
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 22:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBB430E85B;
	Tue, 14 Oct 2025 22:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LMj8g6F+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43F02D46D8
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479392; cv=none; b=pqhn7gK5lgK4lh6yzbEYMjnFKF41YGY6wq5KU3StSd3Hxtzf2+HPdjee1PeJNq4Kos63AN3stwXKVUe68iWQ2veZ2NvOJWnLdR29feSKCX0UtYjGDoXjvc+GUC991eAmdYlHc1IUJ3F5d2AJPfo/yhZ+8uXEUkdB9SJX3rL9UQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479392; c=relaxed/simple;
	bh=IHJ6jqS9j1TBQ/H15wgnAkkcZ2ZWT9EdgyEMDoCMZD4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nu0gAYpzQnnLFukOKr45b0ZQrXiBfWtBcqxsMDHfXIOV8oixYcJ26MDbEPG8OE3KF3GSXPkJQ0vo/XPMGW4/bKpJkYFPfo/zR63vW92ClF1W5wskJZZnHsE1rN73U7i89b4eT8f8/1Y+u7Zp2fuU6XcvXrBWT73CcFDiyn8HibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LMj8g6F+; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-74572fb94b3so3901933a34.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1760479389; x=1761084189; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SjdWBz3OHh5wnT6vj+9iQMxZ4HDopZIIFl/DtR5apKM=;
        b=LMj8g6F+EJys6gyHhDweuYb8zuMOHUjb4KtKHEmaeaQnCDGGMGH5DDC/4h0qBWbCrs
         b6nLUAyrQcYvWxFfRyOlkOD5qbhqFKR5jQofqhp3V9TOvGfN6WlAL97dN3E1Nn8UvG6n
         7ix3b6d+gPd88ERrJyQlj3TyDuXXIDI6CCR7H5o4mf/H7dct7KeDuclL2S47AAN+y68N
         pVl5wwDTxnTIHBXH7PxR8Q9is/tTUOxv40nz5GP4MJSKae5xCb8CjkaTB3gXhE79YCN/
         NePZS8ex2eGu5OVOIB37YMA6abNlbgRpqDqTrSOMFG5iK0nLZeYzoWtGMXeStpNltilq
         eUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760479390; x=1761084190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SjdWBz3OHh5wnT6vj+9iQMxZ4HDopZIIFl/DtR5apKM=;
        b=j2l0S4Hi0Byc/ZAVZeCs/RfUVrMLLo0Td+zvwhDZX1zg/fOVTOoPcLw1rzN36DqOkr
         2nkkY7aXK/yJe7ErMXfaqLCfjk/ZCNZMLqpfhUaYOwhkkUVUsJVavNd9ay/GcdZpZ3iz
         Z038v6N9d9NG1d6wggFOEyR7zK1M5tYP/QlwE1kxLB+jE70ftNcAsAcmb+3eXfgKgCBe
         zdgcGH/m0JKPgUP9wJrH9vjrWunfDriLPzbZ9jEZ/auDeY1Y8hSuVylpfTKst/mVwpu4
         YzV40CYMtb5O+pHMPtM8snRAkUvMfcsHgb/mXZoT5BIl9T6hLDnOO5H8ex407rQAK80l
         0NKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzLNJZjFvDL7GyIsWEDmGoHRVX0LGtHPGT1yLF7LIxFZqy38/MXwPCZyxQBEGD3qQSpKURbVFqqPBR@vger.kernel.org
X-Gm-Message-State: AOJu0YykFHka8OMNFLIb2S0NlrKoNmuIshh7vUNCkemcXtVwVJDs952Q
	9OzoZrMIWV3dD0eEY4Ew/fZDkwgtstocT3pjIwjQgGgY914/dwdTuXeiGLgZNUUFHcY=
X-Gm-Gg: ASbGnctaQb801fnGNem6gWYZfDGAidBHms4Olgy5/W0ADuv/uO5cTz+D86vmDiY74O6
	TpBWwGN2DGszGhEWRyANgKy7MT/6IjcEV3bVLZEvyflOQQsc3SB5P/vDlw7F+KIygtun7PDZzZg
	HSwKVeq3Qx3F/WBZ9T9MZJLv2SyRW1DRoYOP2FthfwOOvTgVk44BPaYeydfCcjfAOmzsQwVbTn/
	krbvI0zQapvwKCyOVtW20UAuGSxxB42FO/vEh3NO+ypJ2lcZGeKB6KHa3lCYYYC0woZRgf7Gh3q
	pLHrlGwH1ukljOrW7hhqhVQgvFg6Ek8WmRN0gzrtdjj0dItICwq4JD961iJh6oG+fAhctNZQ4IJ
	x0/QLPgN3r6ScFD6Nl/kLdbrIl3dvSmDGFCpE8ezs8cakMQZ5cZRzSd/2
X-Google-Smtp-Source: AGHT+IGYULH+vEt9jMeQ3wNinq+GIQBTNYo8odpGkZUDNsT8ayyDdjFDcErrGxKAs8sjUAHkp5uP/w==
X-Received: by 2002:a05:6808:211e:b0:43f:ab03:4707 with SMTP id 5614622812f47-4417b38f302mr11734631b6e.28.1760479389551;
        Tue, 14 Oct 2025 15:03:09 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:c482:1912:c2de:367e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4419895119bsm3593732b6e.21.2025.10.14.15.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 15:03:09 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 14 Oct 2025 17:02:15 -0500
Subject: [PATCH 5/6] dt-bindings: iio: adc: adi,ad7380: add spi-buses
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-spi-add-multi-bus-support-v1-5-2098c12d6f5f@baylibre.com>
References: <20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
In-Reply-To: <20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2035; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=IHJ6jqS9j1TBQ/H15wgnAkkcZ2ZWT9EdgyEMDoCMZD4=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBo7siH26/02TCQ8eSWEMletSTgpdB4d1Rg+3+M+
 jj9N7o11gWJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaO7IhwAKCRDCzCAB/wGP
 wJ/NCACX5YcnQ3hVfnY/WVicDwJ6ddQBIGqDCFDl4gjJg7mO3jmuS5JqPkH4fSTb2ZQpAom0wa8
 dg4w9CdovnLolP4ZaAEvLojW5Vs1qTlaRDWBhhAy89v4zSQuZUTcisgfnvSfQqCmvBqRe9C7sme
 3Yu/u3lOR/bNEVzWQO5qQtC/3N1cEl2J00l6I2q/9KInYcQuJajUYn9XC4C1ty6pfyOUY4rE+yZ
 ItqZCm8nKFk7i1fqf87XTtBcdlKtPR+8X3nbzkgvUm5ThdUbPiibPag93cIzWM/R4Mew+5nY4we
 /Ih3BMdxcX1ueqTvXXJnxV+kpvNzrhdyXKMqLxIBkIlYpRQj
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add spi-buses property to describe how many SDO lines are wired up on
the ADC. These chips are simultaneous sampling ADCs and have one SDO
line per channel, either 2 or 4 total depending on the part number.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index 8dae89ecb64d723dcf2b4af1e0505fc5db49595b..78002bdaa795800a3927570d639e7f8eda9206c2 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -63,6 +63,10 @@ properties:
   spi-cpol: true
   spi-cpha: true
 
+  spi-buses:
+    minItems: 1
+    maxItems: 4
+
   vcc-supply:
     description: A 3V to 3.6V supply that powers the chip.
 
@@ -246,6 +250,22 @@ allOf:
       patternProperties:
         "^channel@[0-3]$": false
 
+  # 2-channel chip can only have up to 2 buses
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad7380
+            - adi,ad7381
+            - adi,ad7386
+            - adi,ad7387
+            - adi,ad7388
+            - adi,ad7389
+    then:
+      properties:
+        spi-buses:
+          maxItems: 2
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
@@ -261,6 +281,7 @@ examples:
             spi-cpol;
             spi-cpha;
             spi-max-frequency = <80000000>;
+            spi-buses = <0>, <1>;
 
             interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
             interrupt-parent = <&gpio0>;
@@ -285,6 +306,7 @@ examples:
             spi-cpol;
             spi-cpha;
             spi-max-frequency = <80000000>;
+            spi-buses = <0>, <1>, <2>, <3>;
 
             interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
             interrupt-parent = <&gpio0>;

-- 
2.43.0


