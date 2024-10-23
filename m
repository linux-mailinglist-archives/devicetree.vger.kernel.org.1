Return-Path: <devicetree+bounces-114913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2839AD60F
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 23:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E3DA1C218E0
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3F92003A5;
	Wed, 23 Oct 2024 20:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FDB43yQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BC9200135
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 20:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729717182; cv=none; b=tvVLXAGTv0kF/z1vL39NZCHIGJ0JMW+1akIHVv4avlU/N7Qpaf0psPgvPU/6K96T5lcoNpGgSrb8DLetypT9gq0PMPPd8+WapoqkqG9GHC/PLMH4QlQOyG9olHAKbQgK4L84n11OWJP4W51UISuc6+eEvoDXRYaN33qzTGolY44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729717182; c=relaxed/simple;
	bh=XvhHcdhZNewBCwkuETIKrCtDTE++Iy/v8VbbBamPFVA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QRqI8lNWbqLOu75eHkWKgteWc8e/EYfLxcn1UxfEdIyAA3dJ6H+UnUbfOd6pM7PCibORYkSnyU2z5QaqI9oEjirfWcRsavpZqR/0Mw1gXwlP2q/4Cd1DsptSQ7X4y7HMiAh8zFjIZU4aG1HwcPuxADnk2uH+YBJka+Wd9F2r6uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FDB43yQ4; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71811c7eb8dso144678a34.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 13:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729717180; x=1730321980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzgfL+AV5snNpAB4GWcpJiVSPKw5F7YZnAnm2zxfdrA=;
        b=FDB43yQ4dKyoM2oGw6QJlSQFE9zZtMkCkFUQR2G4wQXFkIK0lNO6OMTRP2st3/seNJ
         Wu4aWHTbbm2u9YmkOlXMHebys4vxshrSZ0u3+jgpMw5+ebjPS43qoWAq953KWcJRXoOb
         DMjX/kVbwV8qAIlN44v1epAoW5K0Wn+dkVxoDeVMIZM/MqEU/gAwSvRxzjZjB+Q86o5I
         x286JZxvOZZ8K7rbYfr1sJvaUFIjtM1uHGjUfrKYJS8Skzu4QmHWq9Xr6DpbOOwnMNEy
         CjxfzjUWLBmD5xg6QIenOoGG72Hoki3D4B8n3VnjtOk8CJi5XH/pSPZW+l9RJVs9GS0w
         +/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729717180; x=1730321980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzgfL+AV5snNpAB4GWcpJiVSPKw5F7YZnAnm2zxfdrA=;
        b=RzBCd6i+ADtYAGw7T1pQPtYArUNNM2/e/Lzp6HWFawl9MwqK1+BOEqb7+VAVCdAuTc
         WXjq9Y0SRXY37zbMnIxOqKR1GpZnqk8W0zC11BoklmNWoRIB5TIF0h3Twu4e0LVEj+Ov
         6fL0PGMrujq+vXz/js2QubkHf09xwY4JpN3rUi+aRWI6gfa3ylX2zG1OGF43/j35M0d0
         ZoVfl3SZ1gzYUcOW1bjkOUSVWs2TeEst4TXk32NCv1zBQYxXcjlHWVJRA6QcJ3cFKn/2
         T/g49q/cyrf2TVbP+81YIflWzoufdc42OoMwK6hpjXkf9URrRtLz28SbVFny5QA43x2/
         jsvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeNtKmVOriZH5KiwH3lEXOwcfnrbfpeqjincqToDxmYS2e+n1krBPATgdq0lu2pTTheplFUcU8CNkQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyAaJteJtfjButGJ1JvqJ3o0Ousz38pr1GZRQK1S2dxza4Fy8dt
	Cw70tnfme2IjGvn+bViDYuZTb3F19KSIyMaSRB8ugTRKOGU6EgQMV8WOKUSrdng=
X-Google-Smtp-Source: AGHT+IE+6Nj92WBf/zIljLQ1bBBMRAK9IBhUxA+iPkC8EABeTSSfuFXQ09Vz6VR//yZpf5hYdMYS7g==
X-Received: by 2002:a05:6830:3c03:b0:703:7827:6a68 with SMTP id 46e09a7af769-7184b37dd63mr4026236a34.6.1729717179926;
        Wed, 23 Oct 2024 13:59:39 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec02c2c157sm52730eaf.44.2024.10.23.13.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 13:59:38 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 23 Oct 2024 15:59:15 -0500
Subject: [PATCH RFC v4 08/15] spi: dt-bindings: axi-spi-engine: add SPI
 offload properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-dlech-mainline-spi-engine-offload-2-v4-8-f8125b99f5a1@baylibre.com>
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
In-Reply-To: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
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

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
v4 changes:
* Dropped #spi-offload-cells property.
* Changed subject line.

v3 changes:
* Added #spi-offload-cells property.
* Added properties for triggers and RX data stream connected to DMA.

v2 changes:

This is basically a new patch. It partially replaces "dt-bindings: iio:
offload: add binding for PWM/DMA triggered buffer".

The controller no longer has an offloads object node and the
spi-offloads property is now a standard SPI peripheral property.
---
 .../bindings/spi/adi,axi-spi-engine.yaml           | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
index d48faa42d025..5281b4871209 100644
--- a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
+++ b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
@@ -41,6 +41,24 @@ properties:
       - const: s_axi_aclk
       - const: spi_clk
 
+  trigger-sources:
+    description:
+      An array of trigger source phandles for offload instances. The index in
+      the array corresponds to the offload instance number.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+
+  dmas:
+    description:
+      DMA channels connected to the output stream interface of an offload instance.
+    minItems: 1
+    maxItems: 32
+
+  dma-names:
+    minItems: 1
+    maxItems: 32
+    items:
+      pattern: "^offload(?:[12]?[0-9]|3[01])-rx$"
+
 required:
   - compatible
   - reg
@@ -59,6 +77,10 @@ examples:
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


