Return-Path: <devicetree+bounces-103853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAEA97C6EB
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 11:22:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29B94284633
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 09:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F93199FDD;
	Thu, 19 Sep 2024 09:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DtjLHv9O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6480199928
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 09:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726737701; cv=none; b=pEEqARuAd4r0hbJ6jnPeXYaGWEKRm6noAnUsKP9LR2VxRiuUji/4/Km6X11u1MMk1/DP6WP2YXxgVjdbiEg4ZpQHVf0fayBqDBA2+od8DxttdjWl4oI3h0/uTOo9SbUBNSDHoknj9EKPp56BwWGMn1nWcGNzIODF27oviKXxGNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726737701; c=relaxed/simple;
	bh=rmWek2CE7WPljPSo+Uou9ada/0CF37ebR/ci1deBjQw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P7V8NWpZ51qaebKumBVnzrL3LKoJ0bR9/wX2B0GTVO/596npIg6q+h0O8TFoWk8HaD/DRv5W5stXRGeKkZ4RT3TqDqzxyl1V5Gt1jR7NBAKu8iER2Gy/jG6Ny9JIY3tWBQr0QSdomhOsG673Uo/d3DR0tdMCMfMEvDzALdoiZ+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DtjLHv9O; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f761cfa5e6so6365461fa.0
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 02:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726737697; x=1727342497; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bi6dudpwiT1wruYc8KetPgHF34XRCEstNIC9Mcn08hE=;
        b=DtjLHv9Ok0R4aIHxyMuBkP8LraJYEh7yG/o52UX1tidVBege+0FrDV8wKmPw17Iwd5
         oYobHesUlHNE8NGJZYDzR+slheh4nrwYxUnKV4fos8dTVVW+HiAwN+DAWEsJAbF7Ha2a
         V+TEEq01yIrac54AZWVi1+FcCt12+ut7zDp9sf/HEL9FYAFcEN/dNCvP14tOfmza7qIG
         wC5WQnI8pug1cEygt2xuBGeokXFBvBlPHDUgkIbKr/WPYmgarR2ZXYlOxHaN+bUWUYbo
         2P4NAhkXyg0kBxATKopyCupSMRQrgNVB2B1rj/5/2gJqXqdkvqO6kyTHz51naQhpkozY
         g/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726737697; x=1727342497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bi6dudpwiT1wruYc8KetPgHF34XRCEstNIC9Mcn08hE=;
        b=ZLi85Th/RTlvHJjkWO8jMXfSwowqZhY4QJLKIuGm97FFgdH/hY8ToMZnqXp0qmrjiS
         JBviMbjae1qDRhBDTYj1f72woTjDa46wdca9hgf+tIV8s7QqHfhaZ2YD5MDT+KW3Hj8t
         PJbYZkylr5HzGHwECAO7i2/e0j2Tuxj+oPnNV5/xwy7YZGVF0B1ASpF4E4gZiRNXQIqH
         H9SdYfs7BIUsnje7uPUmYSzpmRxuyWY6FaX7BR6OMIqGFEK6HfJba9WDJAfBDGB/MwV+
         7XaJldud7ORkDwzO66PamYlfgNjkFiqtpT8H4LVyZOvL0v+ixutf8fvVZF25Ae1y/gRK
         nhhA==
X-Forwarded-Encrypted: i=1; AJvYcCU0w82QP4fJFzu283XZPBNagmSTXlCIPmvZiHhC58AZJTjSoXnyBETJsqKaoSc18xGFGj6mWqnQIib0@vger.kernel.org
X-Gm-Message-State: AOJu0YyiwNRCgG4pyg9ebd3O6CGcqNipf6uYRWaaBdcMz89eUMOjxUZA
	xs6J15uGphaCHb+Oxnod9hN8gIEWEdMotm2HC4iKBF9s6xiFM/LZa3qOh9/ds0U=
X-Google-Smtp-Source: AGHT+IHyCwBaP2n+hEG21y4E73ikctDq544q5tnqdl4FFCfiMtCFgczBe46WG484l0Gqo1n7oWO3cQ==
X-Received: by 2002:a2e:4e02:0:b0:2f7:669c:93c1 with SMTP id 38308e7fff4ca-2f7919042b3mr86992431fa.14.1726737696632;
        Thu, 19 Sep 2024 02:21:36 -0700 (PDT)
Received: from [127.0.1.1] (host-80-117-99-70.retail.telecomitalia.it. [80.117.99.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e75468413sm16889465e9.45.2024.09.19.02.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 02:21:36 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 19 Sep 2024 11:19:58 +0200
Subject: [PATCH v3 02/10] dt-bindings: iio: dac: axi-dac: add ad3552r axi
 variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-2-a17b9b3d05d9@baylibre.com>
References: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-0-a17b9b3d05d9@baylibre.com>
In-Reply-To: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-0-a17b9b3d05d9@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Add a new compatible and related bindigns for the fpga-based
"ad3552r" AXI IP core, a variant of the generic AXI DAC IP.

The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
generic AXI "DAC" IP, intended to control ad3552r and similar chips,
mainly to reach high speed transfer rates using an additional QSPI
DDR interface.

The ad3552r device is defined as a child of the AXI DAC, that in
this case is acting as an SPI controller.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 40 ++++++++++++++++++++--
 1 file changed, 37 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
index a55e9bfc66d7..6cf0c2cb84e7 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
@@ -19,11 +19,13 @@ description: |
   memory via DMA into the DAC.
 
   https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
+  https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
 
 properties:
   compatible:
     enum:
       - adi,axi-dac-9.1.b
+      - adi,axi-ad3552r
 
   reg:
     maxItems: 1
@@ -41,22 +43,54 @@ properties:
   '#io-backend-cells':
     const: 0
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
 required:
   - compatible
   - dmas
   - reg
   - clocks
 
+patternProperties:
+  "^.*@([0-9])$":
+    type: object
+    additionalProperties: true
+    properties:
+      io-backends:
+        description: |
+          AXI backend reference
+    required:
+      - io-backends
+
 additionalProperties: false
 
 examples:
   - |
     dac@44a00000 {
-        compatible = "adi,axi-dac-9.1.b";
-        reg = <0x44a00000 0x10000>;
-        dmas = <&tx_dma 0>;
+      compatible = "adi,axi-dac-9.1.b";
+      reg = <0x44a00000 0x10000>;
+      dmas = <&tx_dma 0>;
+      dma-names = "tx";
+      #io-backend-cells = <0>;
+      clocks = <&axi_clk>;
+    };
+
+  - |
+    axi_dac: spi@44a70000 {
+        compatible = "adi,axi-ad3552r";
+        reg = <0x44a70000 0x1000>;
+        dmas = <&dac_tx_dma 0>;
         dma-names = "tx";
         #io-backend-cells = <0>;
         clocks = <&axi_clk>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* DAC devices */
     };
 ...

-- 
2.45.0.rc1


