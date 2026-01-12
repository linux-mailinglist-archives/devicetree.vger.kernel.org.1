Return-Path: <devicetree+bounces-254138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D633D14929
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:54:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39509312B18F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7373803DB;
	Mon, 12 Jan 2026 17:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Jo0Qxd+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D4E37F741
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240008; cv=none; b=c1CbKhVZdQ+zKhoaxyI7jXXcwDQZhtW+e3SeVqZTC43kq4lpX0yEMHR7D4aULNP2rRThRM84mOQj2G99na0Y/kwzihGfBbgzgAeMi66IPsj1a2sqVSiLYyGbqvqPHls2kHuxCvB+k16AN7tCiwfop6beN/s7RwqPTUa7ZzeGe7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240008; c=relaxed/simple;
	bh=5I7PkElvI/QDjLf0Z/OEy6DcC7qQ3z0STtb9p1MBJUQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=El+vikoVnrISCkBVftlmqVcaoFUvXQEYLNLEyN7LOS1fJuYznSQsnjIwUsQt9F3gyQ9po+XwznUxqRaGpTsF5xcn/R1Lxdux1ofnI06M073vUVlAbzbaaRUKFLAEqDMaaYMNk3AQr2l/5NBir+j8ASpIurlDV2dU2dO3/ghVY+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Jo0Qxd+Q; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-65e943048afso2285535eaf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768239999; x=1768844799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ntRRDJ0mhGxRxJjOCnV3YMsjSIA0lMGQZKt83lwpVw8=;
        b=Jo0Qxd+QnbCd3qu/JOWm6I387Yztrw6N4IC6jyYKVD62PnkRO2npwbzU5b6RPrfpOS
         /1a6xbaHTPsERIdqgby+nn+ACXvIxaor6APIxbk3A8qnFUXNIfU/rZETUUNYzmmQCE69
         yhFlylBLCBDqczUDOwy+YxwMqXpfyFpPhgaWBrRSSWo+pN993QPTUPicmEh8syN+wpYF
         z+zDtaTKMuygK4yghAzlB+HLokckbR38bFJ+i3sE/qHwyRI5eWItLA1X9f4IsbNJQRre
         5PbJ3LUhpWUyEyeIU9HD+pTRheUbkq+9gvoYYtUqwgo5YHhq7WXY4ZIQtxVQl5YeXrUG
         YSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768239999; x=1768844799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ntRRDJ0mhGxRxJjOCnV3YMsjSIA0lMGQZKt83lwpVw8=;
        b=a7ttNcrfMTMMbNKX55E1ATEu1sLlbiwYWiH1ts97HSROks+0aZF3S3Mu5NwMgqaCXh
         Dyeq77q0L/A/UG1LgumqXcjd+LX8jLpFr2Yb2KzzIFAgKtsuvOsC3nxSt1A0I99GQd0O
         NNhDQHebAEc2WBi4ei/n/QRwbnGzzgIlgOJLzOIE17rQMciMKwCMmKfnYsiWu5Hk06Sw
         uQ0s0oF8EKJUeV37YkJScfPOhcoSb+ywkr6yFDD6rPWD4BK/sHFpPh1V6A0IlM0sZ6uF
         yWH0YpCL5JYZDggCfi4289b/eeEweA7SOelCoiPzRey6Z6xM6g73dLB4y7V/1sNXrFbJ
         i4hg==
X-Forwarded-Encrypted: i=1; AJvYcCW2CEKq//gPfyiqIZ7SIWOxmNOkHDiQqq+cZCyxyOUArP7+5VraIjioucGHrW/+9wRN4gpYJc0JLBo4@vger.kernel.org
X-Gm-Message-State: AOJu0YxCA1sPCX5/HWee1Ee7UaIG5/Pc4duu3vS8lKnubiDQJkiZUymg
	y0w6l3FhhW4DcHoVQlKjgHpHLoyreSnS5g7HJ0VnUmm0mmo2LnwDvFKQzdCTCGqiTdM=
X-Gm-Gg: AY/fxX4rwyFDg90hjsKTyWMPQThxMfZyPtOSb1xh4AKWeVPTMjQstnQrYzHLSi5FYRg
	YamVg5+X8vQEf+CBf/4pSLY8+ksCAj/9WDqmXGJ67WHIEVuv5LKKBP/repEFvNtpweConh2B60+
	fuosXhfyzXI3Po89i7xeH5McbQxV4p27JEHq/0DPqMTf5w6xzJwr8lYxLI2gjvNHZKXZycUb9WT
	STEY/pEgjuzLevoq5bGGdFuxD7a6FKEHErO/37jsjdu6bL39630VkfvWWHFAW1wtMxteC2zHnj4
	Qf5uTQ0PekPMKyXVDhHoW1swjPSptiSofN/w1ovcAhADBD8gd1vVKXlDeT73MbFtOF4o8CZtVZI
	fQXxAS8zZx+zgxpqdG6HFq8A21pdKpmgRQVb0ffW801dwVImbPXqGOFOyD+EbfUwPZ5MENKrA7H
	x7NFy9wnlAU8qedGQ=
X-Google-Smtp-Source: AGHT+IFiaftIJ69sOLPq3ixcNVR0VUuOj8vMlHN3HGEdK6z3xQM1GDjxG/0H1AEb4SaXoGIQ8FUbfQ==
X-Received: by 2002:a05:6820:4806:b0:65b:c34c:456a with SMTP id 006d021491bc7-65f54ed5f4emr5816630eaf.8.1768239999314;
        Mon, 12 Jan 2026 09:46:39 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:6b4b:49b3:cce5:b58f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4de40bfsm12126941fac.5.2026.01.12.09.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:46:37 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 12 Jan 2026 11:45:26 -0600
Subject: [PATCH v5 8/9] dt-bindings: iio: adc: adi,ad7380: add
 spi-rx-bus-width property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-spi-add-multi-bus-support-v5-8-295f4f09f6ba@baylibre.com>
References: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
In-Reply-To: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2044; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=5I7PkElvI/QDjLf0Z/OEy6DcC7qQ3z0STtb9p1MBJUQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpZTNmhb/Q2l8V/klQBRsZZvQgnvEbEu3F7DNir
 ZbPmDGx0ZWJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaWUzZgAKCRDCzCAB/wGP
 wOnlCACQpsbU1N9NI9THXrV1RGljiU/Rj6uCF+ihMjA1olcu6cpnG/ygNiLcTzRZ7jTYF5inudI
 /U9nmpXb3/9Ir2GaNyVjo0DGTwL1K58GdcAPdwMnOTjflSQ8rTzO+dzrYmHQx5FuYFp6HkVqVIG
 LXg00DeQHNcJlgMBDo4RWqDC4oHX3fAvs32nMxGkR3/WAu2GINNyCnaz/V2dxaObp8anjy1Bq3p
 grreHoX3to6eYu4kpWxhd5hcbTuUx6+VtdY6vAwbEXdhsbFK8byzwqg5j7IaecX3eQHU0AGTJpd
 iLSLhGyXE6MJCBTYuRUPsXfH3q6E/6uRbdrNcD9PhRLMEuZj
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add spi-rx-bus-width property to describe how many SDO lines are wired
up on the ADC. These chips are simultaneous sampling ADCs and have one
SDO line per channel, either 2 or 4 total depending on the part number.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
v4 changes:
* Change to use spi-rx-bus-width property instead of spi-lanes.

v3 changes:
* Renamed "buses" to "lanes" to reflect devicetree property name change.
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index b91bfb16ed6b..396e1a1aa805 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -62,6 +62,11 @@ properties:
   spi-cpol: true
   spi-cpha: true
 
+  spi-rx-bus-width:
+    maxItems: 4
+    items:
+      maximum: 1
+
   vcc-supply:
     description: A 3V to 3.6V supply that powers the chip.
 
@@ -160,6 +165,23 @@ patternProperties:
 unevaluatedProperties: false
 
 allOf:
+  # 2-channel chips only have two SDO lines
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad7380
+            - adi,ad7381
+            - adi,ad7383
+            - adi,ad7384
+            - adi,ad7386
+            - adi,ad7387
+            - adi,ad7388
+    then:
+      properties:
+        spi-rx-bus-width:
+          maxItems: 2
+
   # pseudo-differential chips require common mode voltage supplies,
   # true differential chips don't use them
   - if:
@@ -284,6 +306,7 @@ examples:
             spi-cpol;
             spi-cpha;
             spi-max-frequency = <80000000>;
+            spi-rx-bus-width = <1>, <1>, <1>, <1>;
 
             interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
             interrupt-parent = <&gpio0>;

-- 
2.43.0


