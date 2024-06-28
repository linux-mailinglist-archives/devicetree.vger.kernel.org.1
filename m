Return-Path: <devicetree+bounces-81378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A337491C180
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A6911F26433
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7211A1C231C;
	Fri, 28 Jun 2024 14:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nIH4fxeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D4C1C007F
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586123; cv=none; b=hLZejwaZqF/SGedfYtFhW5MTqA6xIqWFc5MXbBUeQACCY8zz+oXv6gtWVh5P67D8hyhIeds8ysoRIWm9dm2pBVl+RpZpg5g1JjcSTsV0OUjKs/kiT2+mMnXnzkLGbrXn3xQux73/5gemO2CUF78zrSfSPVSNtNxSNleNe6IJs/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586123; c=relaxed/simple;
	bh=Q/6aXC/8+GSOxHhveuvUiLB8+gebFnjISImR+2r01po=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IRmIeSNu2Et1r4tgdUttKTpEx6z65t5e+iVZSuYG91jkY6Kmzeed7vxIgOFgawRW+86SetR7m4ouHWBXhWnbrh4ZFm4eVc3E4F0DdXK2yWsHu6LtfFwVjnE600kJZPgySS0xbNuO751GjX3fUhRf/Ti/b7N5mHg3U+oYoBp6jNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nIH4fxeq; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-424ad991c1cso7124345e9.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719586119; x=1720190919; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sYMEI/fziuNXffhOeErHosHLEBtp7W0eQI99xejXllE=;
        b=nIH4fxeqVNrqVL1Sv/VDbhWkEAVwTL4ZBqGZcjJwp6+XrWD7NPy0qP0WbL8ekFc1jW
         pfe+Pi+pw89o71JqvJURQroufVsSoOO9/IIoeETfevG0AReqahlcY6QdwMoObkKaLGN9
         cEl4YGe0D3DMILEztWd9vqrBBixVMuA0mqjOUeWYDCwvhJonAbnbx28PZ2SkQolCJpgB
         tPyB83h+zqQ+OOcNADgIVSI0EH43IuKh9irvrOyOGY1Rgh182hGUd87yPySiRB40P7iW
         ret4AXNHZkxilVgEOHGcJRXvJZK6dV2YTpzImPorNZR38Zv0nNTDXjvhKeCiBxuRk0Hd
         CbOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719586119; x=1720190919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sYMEI/fziuNXffhOeErHosHLEBtp7W0eQI99xejXllE=;
        b=pgUDZuVG5nDNynU2jgFM76C8lANLyXR+utKOIRnSO5n1zs9g8OBZVnvlhzUycWo1Tx
         T6naFNz9RGbXbPwFfsFHp21A+rW2H0Ox1Lb3jbpbGvaocdF+PFw0KY7uYCNDKpRTndF5
         hoZRJGR4lETHu2cLRH7JiY+pxRtsXJ1+ZUD4veK3urUKL057F+LFYD1oK/p+yNMARadc
         1j1FUa1J3zqVuH3b1KFzDcdUgy6eLscPPhLB6Vp1SNNe7NGDc+tngT61vi/qNeyym4kE
         3b26spWfj5DQ1tUR01IgNBDlQaJYB9pAjbpn4/3UNaYFhbuoaP83NpDUUBRYYxQEseF1
         iZEw==
X-Forwarded-Encrypted: i=1; AJvYcCXFQcvxKl21QWJfy/DohlcvdcnD8RAcJtvjsRBbR/zJRmtfTwelgoHoY2Ie7Y/TjA1Stf/WJVhH+N+6anc9SN/I4TPgGYaIZ7ETmw==
X-Gm-Message-State: AOJu0YzujTb2E38VzWkWuIYIJd7iwUpX33dY9P8rmBETjZSB779vIrOX
	JE25AyaLFrkNIotqELXrQwM4xwduh+ApGhl0eDVQq37ZIjeiFS/rthH1qexKFtA=
X-Google-Smtp-Source: AGHT+IFILz3MnOibJoF9YCDngKCqMwgGJJf7k5UXTYf47W6qKWVOpX3CUieTJt0QZHxktYEMu+FDvg==
X-Received: by 2002:a05:600c:4306:b0:424:aa86:cc2a with SMTP id 5b1f17b1804b1-424aa86cc80mr85713655e9.20.1719586119386;
        Fri, 28 Jun 2024 07:48:39 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af55c0asm37972575e9.15.2024.06.28.07.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 07:48:39 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 28 Jun 2024 14:48:21 +0000
Subject: [PATCH v2 03/10] dt-bindings: iio: adc: adi,ad7606: normalize
 textwidth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240628-cleanup-ad7606-v2-3-96e02f90256d@baylibre.com>
References: <20240628-cleanup-ad7606-v2-0-96e02f90256d@baylibre.com>
In-Reply-To: <20240628-cleanup-ad7606-v2-0-96e02f90256d@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beniamin Bia <beniamin.bia@analog.com>, 
 Stefan Popa <stefan.popa@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com
X-Mailer: b4 0.14.0

Normalize textwidth to 80 columns on the descriptions.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 50 +++++++++++-----------
 1 file changed, 24 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 00fdaed11cbd..32caa9fc00e4 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -40,60 +40,58 @@ properties:
 
   adi,conversion-start-gpios:
     description:
-      Must be the device tree identifier of the CONVST pin.
-      This logic input is used to initiate conversions on the analog
-      input channels. As the line is active high, it should be marked
-      GPIO_ACTIVE_HIGH.
+      Must be the device tree identifier of the CONVST pin. This logic input is
+      used to initiate conversions on the analog input channels. As the line is
+      active high, it should be marked GPIO_ACTIVE_HIGH.
     maxItems: 1
 
   reset-gpios:
     description:
-      Must be the device tree identifier of the RESET pin. If specified,
-      it will be asserted during driver probe. As the line is active high,
-      it should be marked GPIO_ACTIVE_HIGH.
+      Must be the device tree identifier of the RESET pin. If specified, it will
+      be asserted during driver probe. As the line is active high, it should be
+      marked GPIO_ACTIVE_HIGH.
     maxItems: 1
 
   standby-gpios:
     description:
-      Must be the device tree identifier of the STBY pin. This pin is used
-      to place the AD7606 into one of two power-down modes, Standby mode or
+      Must be the device tree identifier of the STBY pin. This pin is used to
+      place the AD7606 into one of two power-down modes, Standby mode or
       Shutdown mode. As the line is active low, it should be marked
       GPIO_ACTIVE_LOW.
     maxItems: 1
 
   adi,first-data-gpios:
     description:
-      Must be the device tree identifier of the FRSTDATA pin.
-      The FRSTDATA output indicates when the first channel, V1, is
-      being read back on either the parallel, byte or serial interface.
-      As the line is active high, it should be marked GPIO_ACTIVE_HIGH.
+      Must be the device tree identifier of the FRSTDATA pin.  The FRSTDATA
+      output indicates when the first channel, V1, is being read back on either
+      the parallel, byte or serial interface.  As the line is active high, it
+      should be marked GPIO_ACTIVE_HIGH.
     maxItems: 1
 
   adi,range-gpios:
     description:
-      Must be the device tree identifier of the RANGE pin. The polarity on
-      this pin determines the input range of the analog input channels. If
-      this pin is tied to a logic high, the analog input range is ±10V for
-      all channels. If this pin is tied to a logic low, the analog input range
-      is ±5V for all channels. As the line is active high, it should be marked
+      Must be the device tree identifier of the RANGE pin. The polarity on this
+      pin determines the input range of the analog input channels. If this pin
+      is tied to a logic high, the analog input range is ±10V for all channels.
+      If this pin is tied to a logic low, the analog input range is ±5V for all
+      channels. As the line is active high, it should be marked
       GPIO_ACTIVE_HIGH.
     maxItems: 1
 
   adi,oversampling-ratio-gpios:
     description:
-      Must be the device tree identifier of the over-sampling
-      mode pins. As the line is active high, it should be marked
-      GPIO_ACTIVE_HIGH.
+      Must be the device tree identifier of the over-sampling mode pins. As the
+      line is active high, it should be marked GPIO_ACTIVE_HIGH.
     maxItems: 3
 
   adi,sw-mode:
     description:
       Software mode of operation, so far available only for ad7616 and ad7606b.
-      It is enabled when all three oversampling mode pins are connected to
-      high level. The device is configured by the corresponding registers. If the
-      adi,oversampling-ratio-gpios property is defined, then the driver will set the
-      oversampling gpios to high. Otherwise, it is assumed that the pins are hardwired
-      to VDD.
+      It is enabled when all three oversampling mode pins are connected to high
+      level. The device is configured by the corresponding registers. If the
+      adi,oversampling-ratio-gpios property is defined, then the driver will set
+      the oversampling gpios to high. Otherwise, it is assumed that the pins are
+      hardwired to VDD.
     type: boolean
 
 required:

-- 
2.34.1


