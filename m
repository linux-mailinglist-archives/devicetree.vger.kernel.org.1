Return-Path: <devicetree+bounces-162976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1629A7A7DA
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 18:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBEB33B89DA
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 16:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A46C125290E;
	Thu,  3 Apr 2025 16:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xDt2A21+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F272512FB
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 16:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743697232; cv=none; b=M3+5XyyZUmZOnLem+UzUvq8NFYi/ph9Go5oQ9fIn7XacFAJcAmjqcWVMPSrD80zNKDRHSSmMHY4R0LIKmJ/Ntbv0F+nbRaWZBX1Zh+tx3HWImphQ0I6Y/q3af2xUp9nnfoosyXt2RPtCTzA3GChMfbmHIyF48dv5mOq6P50bjyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743697232; c=relaxed/simple;
	bh=y6jJc1co+cMnmO+0c50zyxmtS2xiZOzUU9B4Zg2sVGE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z85snLDjNdATdRQfnGifpNuOy+GafqbGGrAkQynwcGEQZeSoSRK9PikZvawougkqtEHyg7CpwTRQ/GXPwuELE61ZUIcbFLSWj2P/Xfwfr6ZACkhYh/cT1JajA9A48kNVmIwTu6a488i5Gab50333OlZeTsvqzdOe6CbOSeBYqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xDt2A21+; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso1355292f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 09:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743697228; x=1744302028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vlc1Hnyb3hIBC0IrDjFsh/HKpKBN4tiB+sr7xPTIx5c=;
        b=xDt2A21+p2FAtFv7jrGYBNbvds47I8U012TbuSnDU+hywe9hGLXh974QfXaU7OPe7z
         zPtLVfokEAP93HHE7JpiWImURFRZdNLU/WsmBKvVBwh8Wsqz/RP8FDxo8mjF8T5aEiYQ
         RIrwX1y9V9oQSH9Uv+zZZ4SwSAK8e5OZopuFfJTMFVI2tGsaoqaIMyMAknrnxFvml5oT
         Z9RsP0I7gamKxYlq3bHA0ikW9fenRryPvFqruTH12U6ZX1/qppwDFpx6KmlExu1WkD4C
         8roYSyzrld0PdRIE5xkfEnhppN7cRB7So5r8Sd3olOV2jCWTW6cdObG6y+GxIwmGcX7s
         1TPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743697228; x=1744302028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlc1Hnyb3hIBC0IrDjFsh/HKpKBN4tiB+sr7xPTIx5c=;
        b=xRfYhNGZLjhrxSQTkA9bOiK77CIeqmlfm16DF5B//PELKwAnDIVpMwRAU6qg3HB1ld
         2NAVqWYgr0Cr1zbpFwp0DF0eqiunqQm1r1uAcYbB2qVrub52nXOvIAkwodLMoG7MwmVo
         qZicyRWXQz8AP08Y/8u/wxFz7OfeAmi2QrFn+nSatD6rIbxTl7J5xceucmKQsvNYceH6
         C/TiHUjct0nxVfUTedh6+Q6lzoOHwdHlrYf7x0GG5my7paalR2ti/egIkWFh9HkAlCX6
         Q3uqQFHhVJ73l7goH4g2X3jpPuh8K3+80cNZrKAUaU4EbyTmHtajnUKsRFYuunWM3VSU
         TRsA==
X-Forwarded-Encrypted: i=1; AJvYcCVITMXr4//Sz/LymGOf3FEImU2t7k2vx/JmsR4yaabX7ep5wvZ5C2CDfXEq2JcD+4PvkB+7TK/Dscpx@vger.kernel.org
X-Gm-Message-State: AOJu0YyE+mPDZT7Lk0VtlkcAMxlD6v5HaZjKVrai7ggsCEiQDguMYYca
	KatbFY0YrA6Vl+nb7w4nNKHmBqQ24e63DYMzcr8r9T2nNBmCc0iJqU19RWbMB90=
X-Gm-Gg: ASbGncsFmft8OoibbKi8k9FkFGrLdiaSXmbFxoJf1bUU/jf/hppjUatDHxxvIdX4Acr
	BhAzSl8/SP3zOWuw0z27x3HccGHntYAp4nIww8JJLwszgAh1cXfQCLwFndScKvamg14FmXIuHfk
	xcBPu0aTme+Ol4mrDov/FLK014spbVOvVuB8/UaIVQWe2/YWfAmS8RtGKpVbY5m0grDhFrucrHo
	w3uFLRW6LjfgxbzCiXs2q+0lRbw8nPubYJpeJS8YiObOxbiLLli5iQqOtfVdGzdEPn522vUt7Wr
	NGKyypPqE4Ls1RsAmD/OjndyXPJX28ruJ7QJSKTsSQf4I86nlX5/yh5Zn1D4f0U9CICwDmUlOOF
	zU4CyW+sVmxD25fy+Nxji/w==
X-Google-Smtp-Source: AGHT+IHYo5Fh8uN/xyko3G4YCibRqXW3wNhGfj1zyXJfFmlF0vGP3d/kzuA9zoUUMBnFcRTEGNtfAg==
X-Received: by 2002:a05:6000:1887:b0:390:f9d0:5df with SMTP id ffacd0b85a97d-39c2980558emr6165869f8f.52.1743697228519;
        Thu, 03 Apr 2025 09:20:28 -0700 (PDT)
Received: from [192.168.0.2] (host-79-30-116-65.retail.telecomitalia.it. [79.30.116.65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c3020d68esm2197657f8f.67.2025.04.03.09.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 09:20:28 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 03 Apr 2025 18:19:05 +0200
Subject: [PATCH 2/3] doc: iio: ad7606: describe offload support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250403-wip-bl-spi-offload-ad7606-v1-2-1b00cb638b12@baylibre.com>
References: <20250403-wip-bl-spi-offload-ad7606-v1-0-1b00cb638b12@baylibre.com>
In-Reply-To: <20250403-wip-bl-spi-offload-ad7606-v1-0-1b00cb638b12@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 David Lechner <dlechner@baylibre.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2566;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=w5zBMxUGVFVM38xKlNKCXsl4+wSKfa1/lyF5d+5iMJo=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYkh/t5XJ83PG29IL4u3bpzHy2Bf3FG3VzvQ9eDNiRSL3m
 7e8qf3qHaUsDGJcDLJiiix1iREmobdDpZQXMM6GmcPKBDKEgYtTACbSbsnIcFh+1kOdKWcY9ZuF
 92WrKkzU31bfn7Oo99IhjnVygskH1BkZzqw5XCLo68rwcvWf+dqaRu6KYiwaT+9e7Jg1u6dO+PF
 LLgA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add a section to the ad7606 documentation describing how to use the
driver with SPI offloading.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/iio/ad7606.rst | 45 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/Documentation/iio/ad7606.rst b/Documentation/iio/ad7606.rst
index 930199e03c67f68296ec83176f9e4f82741fb813..5e02516bab406b6b13d2ebd13a33433e3e86d943 100644
--- a/Documentation/iio/ad7606.rst
+++ b/Documentation/iio/ad7606.rst
@@ -26,6 +26,35 @@ SPI wiring modes
 These ADCs can output data on several SDO lines (1/2/4/8). The driver
 currently supports only 1 SDO line.
 
+SPI offload wiring
+------------------
+When used with a SPI offload, the supported wiring configuration is:
+
+.. code-block::
+
+    +-------------+         +-------------+
+    |        BUSY |-------->| TRIGGER     |
+    |          CS |<--------| CS          |
+    |             |         |             |
+    |     ADC     |         |     SPI     |
+    |             |         |             |
+    |         SDI |<--------| SDO         |
+    |       DOUTA |-------->| SDI         |
+    |        SCLK |<--------| SCLK        |
+    |             |         |             |
+    |             |         +-------------+
+    |      CONVST |<--------| PWM         |
+    +-------------+         +-------------+
+
+In this case, the ``pwms`` property is required.
+The ``#trigger-source-cells = <1>`` property is also required to connect back
+to the SPI offload. The SPI offload will have ``trigger-sources`` property
+with a cell to indicate the busy signal:
+``<&ad7606 AD4695_TRIGGER_EVENT_BUSY>``.
+
+.. seealso:: `SPI offload support`_
+
+
 Parallel wiring mode
 --------------------
 
@@ -123,6 +152,22 @@ Unimplemented features
 - CRC indication
 - Calibration
 
+SPI offload support
+===================
+
+To be able to achieve the maximum sample rate, the driver can be used with the
+`AXI SPI Engine`_ to provide SPI offload support.
+
+.. _AXI SPI Engine: https://analogdevicesinc.github.io/hdl/library/spi_engine/index.html
+
+When SPI offload is being used, some attributes will be different.
+
+* ``trigger`` directory is removed.
+* ``sampling_frequency`` attribute is added for setting the sample rate.
+* ``timestamp`` channel is removed.
+* Buffer data format may be different compared to when offload is not used,
+  e.g. the ``in_voltage0_type`` attribute.
+
 Device buffers
 ==============
 

-- 
2.49.0


