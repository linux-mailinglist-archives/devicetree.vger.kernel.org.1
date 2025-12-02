Return-Path: <devicetree+bounces-243553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA7EC99D91
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 03:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 70B2B346019
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 02:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8A924A04A;
	Tue,  2 Dec 2025 02:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sx6YwzeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E44523ABA0
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 02:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764642102; cv=none; b=DIXpywRWIMPz+Dqzd4vQDpbtGMuO0avhLmWs8QN+V6U6TLn2o7yhoXRGATjAekBH46KSdnGbCGiOXr0SPEAZUe2nGEdzOT5jRmDxuFJtZm8Oyh3XwW1q+XkosVjbb68RxSs8dFuqg+VQEORDeHeF8Xsu/TAQowpC3kWDN5qi5zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764642102; c=relaxed/simple;
	bh=hQZOLk8i9DVbMZG4cJemIzrR34rWhbVDk46gXL5wP1c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d5Z3Q0BndfY8D4ZWdSKDuPBEroOXiSG01CgzDiEnjq3pd5oZzGs8UnzsnCa2Ufq6JzIkMvWVv5KecVguMmvgdCsgcgvmQB9va+EAWuj7Jqfo71rB0sv0Z/gsFOkxbVirCCxai2NZIzTpTnnL41XDVdsB3MgqzK2y2NNTapKyCYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sx6YwzeU; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7c6da5e3353so3001801a34.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 18:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764642099; x=1765246899; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=doomhoJuMMF1QAGOVBRmzRBJ94ihy9fy+VenqVEanXk=;
        b=sx6YwzeUVYadh0Q57SwMdDnFTueFYPjpPy19P7Aj3904i8KlIhg51jWTnnhMVhx1i2
         uwRh/jmH6NthheYjEZ2I/Wu1teDlaGsbxUxMSoopfppBX0UGFYmOhXRQXPXEZ6DrSbZD
         I6fm2OmtcrwdI/7R/Q0LXE1agCSL1AAeN1pTpfGMdiYAsQZTJANzQa2MISXgOezXZl6f
         g5vQguvBFq61poVABd3HBaWWhi0hzYcPYP/MGbDJVUaFa4yhCpK8av25RbDHtB36xzDa
         R1EygurEnRfmpzzjpOnx+Wlv7XRYGPnpNdRRmzKO+EP53dMweFAL+uk92AIzHbO6aKW4
         YpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764642099; x=1765246899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=doomhoJuMMF1QAGOVBRmzRBJ94ihy9fy+VenqVEanXk=;
        b=jmrpdMuyrW4doVXY/3XIHWUaE+klk3YFZP109OKJNdjuJuMBAWvfUd524Q5xh/Axal
         V+av5qzleBCZfK9TKdxh+xHJO87fXymrhZtxlT2BfFfje+IGUo4iE87/f58rHrBJZPsU
         glDFSwHvO5p2gRQw4AdO62t++kVxtFVyJncM+wqcIemSmUsdYfCfDMg0pACdJFhwtZYN
         iQhCcZbAzIZ5I09GYh62ALL3cXFpjyqJX7LvTcWWGd3M9KaNpw5700WLZB5HtYvQJZI4
         cD7sqojxTNKpfa9KgzEhiM25scZU1G6DC5mDAYx2SBRZ4xb4Vqh+Nz57Vsn1W7IhPjtl
         m9BQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8zFPi56RgUAblguRkSq6VlkLyOFYyCCZOeBjDwzw76UGK3wIosqtWeWpnykAH7yNH06FGx/6X+mmF@vger.kernel.org
X-Gm-Message-State: AOJu0YzTXa/oJPLRkra5O35KGfCaoXl9N4Ld+Ov/dgMxr5w5uyNY9+ud
	O01bQqTt+tjfa6aYEHk5Od+IoxwWzwyqGxDngbxWbG57I67YVk6QvAqMHBwqBjFlBos=
X-Gm-Gg: ASbGncv5ou+v27MdLH5ocLKaVy4jf0NUqxg5mRqcihuHEtoa4vrGt/41FAKrnRVnBKq
	ZUnTUoq9e3fU3PMWXrP7wnsygGMK3iJ6l1Uv3ZBg0nuYMkIQKkygkRufAvO94cfaaMm9M6DUM13
	kgIBffo97odIsvprQVp2OFMpluz3qYPTF5uoWp/oesdb7mdM4bmkoGMI4DZSe8cvY6JBHIyqBix
	9pLnWcNG24hfFawkJ4Kk1NQl9XZJFNiALrPgg2lD2I0URro8GG6ONVfbBDgTESIee2KGMpSRQCc
	3aTQbrNBSWRnhbQ4y/fYogvm4FXVADZkYcN8UPJE08yLxh6Tnr+iyq87Xh/NS9Wu5ss+1w04hMm
	pqJaflw3Sb6i203xMX2Ntf7con4sWdKe4Ip63DJ0J7O7jNdRJ+T9yoPf8jGNdYe+JEBCh4nYurF
	hK4JfFmoO6xC3NNQ==
X-Google-Smtp-Source: AGHT+IGYdhQZHjywqEbS7m4fq8WaqNIMbtnS2wILUvY6Euq1m9AKjcj01QT+B7Mu/1rPB/uVooCz6g==
X-Received: by 2002:a05:6830:4118:b0:7c7:10ca:bf with SMTP id 46e09a7af769-7c7c410fc5dmr19052593a34.10.1764642099535;
        Mon, 01 Dec 2025 18:21:39 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f0dca0475esm6651747fac.1.2025.12.01.18.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 18:21:39 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 01 Dec 2025 20:20:39 -0600
Subject: [PATCH v3 1/7] spi: dt-bindings: Add data-lanes property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-spi-add-multi-bus-support-v3-1-34e05791de83@baylibre.com>
References: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
In-Reply-To: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2378; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=hQZOLk8i9DVbMZG4cJemIzrR34rWhbVDk46gXL5wP1c=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpLk0D0p4cZWkK6Mc3W7w2xdA3t8b6/WIkrYxAg
 DacFRekNumJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaS5NAwAKCRDCzCAB/wGP
 wGUJB/4p+CRbrTI2i7n3RLRe0FCrdrtB2N75kINuMC6YnhaephfWlXEIEmICc09LUccKbGQrzdV
 J6q1bw4PL6rk4etxr6BUlabnejzYH7nObG3HJ913UwtN3kgWqjZy7+FipWVk5smwfZoT4wXymBk
 4uoHyvA8smaC+vj32EAEqZsWI+o62VXAz2aADlc6+TiSS7cjpwBhpOyZE3JqLVKFmb7evZNy9RO
 lbKnJAcApiJxLNMKAdR4x+/yYtll7JXEmnG5YiKYLSs0ZDvhxDQ3wdlfmq5ZvZA5R+EeZ1uWj/7
 nrFrKt01cX6eF55TD5ZS3V+GWn99HHgvHbDmZgbuLNGJ18X4
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a data-lanes property to the spi-peripheral-props binding to
allow specifying the SPI data lane or lanes that a peripheral is
connected to in cases where the SPI controller has more than one
physical SPI data lane.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
v3 changes:
* Renamed spi-buses to data-lanes to reuse existing common property name.
* Added to description to clarify index is peripheral and value is
  controller.
v2 changes:
* Renamed property from spi-buses to spi-data-buses to make it clear
  that we are only talking about the SDI/SDO lines and not the entire
  SPI bus (SCK, CS, etc).
* Fixed prefix order in subject.

This patch has been seen before in a different series from Sean [1].

[1]: https://lore.kernel.org/linux-spi/20250616220054.3968946-2-sean.anderson@linux.dev/

Changes:
* Added maxItems. (8 is the most I've seen so far on an ADC)
* Tweaked the description a bit.
---
 .../devicetree/bindings/spi/spi-peripheral-props.yaml      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index 8b6e8fc009dbdc80978f3afef84ddc688ade4348..a2d1b3d82799f6e93e274711eb57f3739eb8f405 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -89,6 +89,20 @@ properties:
     description:
       Delay, in microseconds, after a write transfer.
 
+  data-lanes:
+    description:
+      Array of data lane numbers that describes which SPI data lanes of the
+      controller are connected to the peripheral. The index in the array
+      corresponds to the lane on the peripheral and the value corresponds to
+      the lane on the controller. This only applies to peripherals connected to
+      specialized SPI controllers that have multiple SPI data lanes (a set of
+      independent SDI/SDO lines each with its own serializer) on a single
+      controller.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 8
+    default: [0]
+
   stacked-memories:
     description: Several SPI memories can be wired in stacked mode.
       This basically means that either a device features several chip

-- 
2.43.0


