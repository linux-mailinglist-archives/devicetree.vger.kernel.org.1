Return-Path: <devicetree+bounces-116313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4BA9B2873
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9C3F1F211B0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 07:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94BD8190671;
	Mon, 28 Oct 2024 07:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xv7pYnR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C27190049
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 07:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730099489; cv=none; b=i9v9h1kPJ0ImIdfkLPacKMYJIa+Dx7RoMxzURxklaInyMTBXKRZjWpdtLhVBd/Aj38wHUJh+628SWo2EKyNHrlaDxhrluP4zqTyUJqB5PI5K9AA3vbPIBGngOHQQW4WnUvR7s5z+Jf+WIfmiF/klVry3byqU7iAZ+/fXrAE6Py0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730099489; c=relaxed/simple;
	bh=NZDbzU20l/rGAlpGDhU1gwOCh0PzSI3BBlQwr/WhlWU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lfnTvOsf+XNnQJAmtABqtmHNjuqYyCEafZ65ILpDGGXlhgdHpb60c1KSguz5X7OiD07WoRWuDhvIu3IuFdMSaCmy3zeVbaKm1dh3EzoOKZ0MSlLiV34XatO6ercq7EXxJyU8a2tIsX2KjBJhxC0cRWI0PM8m3ZPNLGBCNwfJAH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xv7pYnR/; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d4ac91d97so3444566f8f.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 00:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730099486; x=1730704286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JUb570tUKACa8XabOgBL9RG8mj2LHtV2DgIpDsrIdTg=;
        b=xv7pYnR/QP13qwerhsagF5qiFSG3vAjjhaAJ9Z9IU6RSMSvzGZZrok0ynVoPAmb1k7
         I1fyYKEkkxWurnb58nuABDS9qdCH/+qP3yLgVVGspivGmitO7JP5kCdRfHPx79Nivjt8
         WCK26htZT358wrEZj8h8APv3QTX4bwqiUlPZFebjvmxmgARcwhNZ6sbk1w55kJmaHEEw
         L6UqLkrecAD63Kfe86i9E/8Ugln7VHoHYu/7bxX3T9K5qAdiFBTEyUW0RaeOfaPAY2GO
         4hB0lsSw/pv15j5HtAFvAvUxgnGDrhsYzDuRQlpEumJ1tyklF9LR5BuCtQWq9FaXTZZ1
         L/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730099486; x=1730704286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JUb570tUKACa8XabOgBL9RG8mj2LHtV2DgIpDsrIdTg=;
        b=FBOsKynUR3r98I/wQW3IW+riytppiqcscmq+a+tFKGGdm5t7MA94/oT9pDzuI9EZQF
         wce5jI0IYoDIrZZLzQMvaio/R4HWxAymSW9GucMHEQJoiieLChOSGjM81g7dMc9KytaD
         I/7KrkHI+RARJeQxqLKzC69bKzP0zJ0l4WJAtPt3Ks9R1zm7HVdDNV2DZgP3UItmnHHx
         wmQK1b+hxRfKCihEEexeEWoL+XfX3+0N4Vza10AUeP2Ost+1vWbqbCIHxYkfaEksQmVx
         sCn6agdHXhXZ/z4Q5UgyIog6riy9r8pclqbYLppeyll4Xlz+/2tkWZhvyhQ1sZRKpZbO
         qS4w==
X-Forwarded-Encrypted: i=1; AJvYcCVhMdG1yE9K8U5hVBIveFE5pA/R9KkJBrc7ChTVAk5A5cRAXRQDiNC+f5tx535NJV2wpBrVSnmX11iQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3vEKb+aYHyGRRqMbqx6teFLgE90Rw2yo/gac02SGF+pKcTkOn
	Bm2yzbMIowQOSEmQjqnIKdjCRRvxvdJvjkIvr7Q1vaU41H1IIRNPk9jsClrWNw8=
X-Google-Smtp-Source: AGHT+IG1rEbR3wWmOArcj3vZ7viWhOv6JbYzk/JrEFJn2eoVbUVOSacTDBn1DWnGKEpSmxmTCnlLBQ==
X-Received: by 2002:a5d:6b8d:0:b0:37d:4c40:699 with SMTP id ffacd0b85a97d-38061141816mr6779939f8f.5.1730099485522;
        Mon, 28 Oct 2024 00:11:25 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c236sm8615383f8f.35.2024.10.28.00.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 00:11:24 -0700 (PDT)
From: ahaslam@baylibre.com
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Axel Haslam <ahaslam@baylibre.com>
Subject: [PATCH 2/6] dt-bindings: iio: dac: ad5791: Add required voltage supplies
Date: Mon, 28 Oct 2024 08:11:14 +0100
Message-Id: <20241028071118.699951-3-ahaslam@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028071118.699951-1-ahaslam@baylibre.com>
References: <20241028071118.699951-1-ahaslam@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Axel Haslam <ahaslam@baylibre.com>

Vcc, iovcc, vrefp, and vrefn are needed for the DAC to work.
Add them as required bindings for ad5791.

Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
---
 .../bindings/iio/dac/adi,ad5791.yaml          | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
index fe664378c966..79cb4b78a88a 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
@@ -26,6 +26,22 @@ properties:
   vdd-supply: true
   vss-supply: true
 
+  vcc-supply:
+    description:
+      Supply that powers the chip.
+
+  iovcc-supply:
+    description:
+      Supply for the digital interface.
+
+  vrefp-supply:
+    description:
+      Positive referance input voltage range. From 5v to (vdd - 2.5)
+
+  vrefn-supply:
+    description:
+      Negative referance input voltage range. From (vss + 2.5) to 0.
+
   adi,rbuf-gain2-en:
     description: Specify to allow an external amplifier to be connected in a
       gain of two configuration.
@@ -47,6 +63,10 @@ required:
   - reg
   - vdd-supply
   - vss-supply
+  - vcc-supply
+  - iovcc-supply
+  - vrefp-supply
+  - vrefn-supply
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
@@ -65,6 +85,10 @@ examples:
             reg = <0>;
             vss-supply = <&dac_vss>;
             vdd-supply = <&dac_vdd>;
+            vcc-supply = <&dac_vcc>;
+            iovcc-supply = <&dac_iovcc>;
+            vrefp-supply = <&dac_vrefp>;
+            vrefn-supply = <&dac_vrefn>;
             reset-gpios = <&gpio_bd 16 GPIO_ACTIVE_LOW>;
             clear-gpios = <&gpio_bd 17 GPIO_ACTIVE_LOW>;
             ldac-gpios = <&gpio_bd 18 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


