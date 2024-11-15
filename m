Return-Path: <devicetree+bounces-122268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B39CF5C6
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 21:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A58C283567
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBDF1EE02D;
	Fri, 15 Nov 2024 20:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EGIhGVzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7865B1E767B
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731701942; cv=none; b=OrQJyhFYB9oSrYOIzzTWT1XIVYIDgyFyfgjxUAoKm5SfAcC9dfbWnDfarfnXbbD8hW5Fe37kCEJK/1pmsjaXda877v4jEU4qPswKwvjS+AgALZOQtN0BSBf8+Pj/iOWdN2Yz9ZIKRpA9QdnSF3Jf7HjdaG8zTZ0LFTM6lULQKOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731701942; c=relaxed/simple;
	bh=n3gvwTh1zq8LlUg6hocRmmA4Ouflzb8V3XorZLtL5w4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V+PUziwN2jvl6fiVhNKnnXpkdrjW9ZKRSXLJnSpIBvMUiLTQbw+CFAWjOkmPpl1wkpkjACI7hRKUmXprlQyZb88oM5CS3rD5kXyRHGNnWDzK1lhWG8SZUgpKs1nPoVjoeYrDmFQTapehrjyF6eDAnjAttoCsA8hezS3aLgadDFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EGIhGVzr; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5ebc9bda8c8so1095051eaf.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 12:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731701939; x=1732306739; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unmeYdeBn+D1ZmpuSEm58bDvDpLySt7nxP95EdRhLZ8=;
        b=EGIhGVzrPnCQqFzGqlEBlsPSFk2yk6HjE8FrCX7NpXMjF/X4qu3rwygcOVjNR+m2k9
         SWU73rXaSRVJ4zC4imZuBukk/aLKZLsY5EjXmOHRbCEmacq6pDRBneVzmpAfXm/D6Do6
         grgBZlAJuktmg/mBOhesZOEBvimhZpdxSHtrslhvAc4yP1DOALdtr/BXRu23gGAGPf2P
         wtLRO3pFcNpA+ct3K7V3G71KmMwPuC8spJpfRMSQF3PbM2RPZ7V/6EVQMlpPhD+0R/ot
         gvaNFfQx8L/1pltZ4QGGsBJ27yDC0sLzk3AoyFGFVuVCORCIuRNeccqC+lfVRcp1ac51
         vJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731701939; x=1732306739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=unmeYdeBn+D1ZmpuSEm58bDvDpLySt7nxP95EdRhLZ8=;
        b=KaLX0k49qTuQYPZHBjxYryeaSStRlUYJi6zDgr7Zfs7lzxP8SAkFQUL/GfSLn2yU/Q
         N/ebeein3ZOJjR0SQHSReKnkfoFbEJDg7+m7pW4G1KAC+okc9j8ePWVDiSziMX7sxTx6
         nrBhXzTXISvuDlHjImIxCjC6KOTsMN9wkPi23gCIPT/qhvNQ4CXksyIyC7bFIF5ixdVn
         AHF0Jd8+2XJg1WH19wmdOwlA3yKAUARemJEEIFi58MmTMI36ZCCGnTGWgz5GSbXFQW0Z
         oDG+fY1MNiQOIY5miNHpIHUK8VOEXZd+sFY5GjG003zPgWVZXoIfjRxHqTkSa9+803ae
         QQSw==
X-Forwarded-Encrypted: i=1; AJvYcCX6swT/EPWNtmZaVuXXSG6fgrguH1zjIgNswhsyT5KQPE54amvMkqn0JrswynM6CEvitDEHQVszDCom@vger.kernel.org
X-Gm-Message-State: AOJu0YzhIgD8DloctMPiZkc7gc5zW5JA5G1gS8dMisDZSKeYaLUV9V0c
	qNArdWpYQsVPNnLod0wL7R9eH9YAVG0Kb/XgEB+0oHsXqgU7+H2KeTJL98TBDBg=
X-Google-Smtp-Source: AGHT+IHeF5FoHsWnd/xYfNXHiRj6XV96twgJUsRypMRtTcUzak6K6jO+tc0oO8DmmLcbRnoHfwfN1Q==
X-Received: by 2002:a05:6820:983:b0:5eb:6a67:6255 with SMTP id 006d021491bc7-5eeab2c11ffmr3502045eaf.1.1731701939465;
        Fri, 15 Nov 2024 12:18:59 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a780ea62esm748978a34.5.2024.11.15.12.18.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 12:18:59 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 15 Nov 2024 14:18:46 -0600
Subject: [PATCH v5 07/16] spi: dt-bindings: axi-spi-engine: add SPI offload
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241115-dlech-mainline-spi-engine-offload-2-v5-7-bea815bd5ea5@baylibre.com>
References: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
In-Reply-To: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

The AXI SPI Engine has support for hardware offloading capabilities.
This includes a connection to a DMA controller for streaming RX data
and a trigger input for starting execution of the SPI message programmed
in the offload.

Each SPI Engine may have up to 1 offload. The spec actually says that
it could support up to 32, so we are using an index number in the
dma-names (e.g. offload0-rx) to allow for this possibility in the
future.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v5 changes:
* Also document offload0-tx DMA names since the hardware can support
  that now.
* Limit the number of offloads to 1 for now since it would require
  significant hardware changes to actually support more than that.

v4 changes:
* Dropped #spi-offload-cells property.
* Changed subject line.

v3 changes:
* Added #spi-offload-cells property.
* Added properties for triggers and RX data stream connected to DMA.

v2 changes:
* This is basically a new patch. It partially replaces "dt-bindings:
  iio: offload: add binding for PWM/DMA triggered buffer".
* The controller no longer has an offloads object node and the
  spi-offloads property is now a standard SPI peripheral property.
---
 .../bindings/spi/adi,axi-spi-engine.yaml           | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
index d48faa42d025..d703b47eb498 100644
--- a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
+++ b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
@@ -41,6 +41,26 @@ properties:
       - const: s_axi_aclk
       - const: spi_clk
 
+  trigger-sources:
+    description:
+      An array of trigger source phandles for offload instances. The index in
+      the array corresponds to the offload instance number.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+
+  dmas:
+    description:
+      DMA channels connected to the input or output stream interface of an
+      offload instance.
+    minItems: 1
+    maxItems: 2
+
+  dma-names:
+    items:
+      pattern: "^offload0-[tr]x$"
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
@@ -59,6 +79,10 @@ examples:
         clocks = <&clkc 15>, <&clkc 15>;
         clock-names = "s_axi_aclk", "spi_clk";
 
+        trigger-sources = <&trigger_clock>;
+        dmas = <&dma 0>;
+        dma-names = "offload0-rx";
+
         #address-cells = <1>;
         #size-cells = <0>;
 

-- 
2.43.0


