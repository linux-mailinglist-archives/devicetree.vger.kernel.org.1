Return-Path: <devicetree+bounces-115315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B55E89AED89
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 19:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 749782827A8
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 17:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 570711FAEE7;
	Thu, 24 Oct 2024 17:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NPsDTjQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20A81F6697
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729790246; cv=none; b=MxOn5v+6iq01lcMUsJ6YS3HiiGFmawGtFRSIu2Rm+B0OUVO5wPQ9gTJpIttjbkeTtgxOrLYswbVBxnq2eBP63JtTjGRocGcg7XBfmc6E1uN8MZnZREv6Qd9XIwUawkJYolVrs6qM7Q2wgYQDmFnRPZ0CUajPFlIFcJCPzvCqJcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729790246; c=relaxed/simple;
	bh=zlE41GBJu59TMSD2fDX4lXwHPLrJK2KzJ136R6Krqkk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JKNAnO3kmRBQ9wowpvD4wcFVK2QKsibvreWp/RB+/rXhy8URdgMmpjNHouJkyAAdHJU4IzGwImbNfxiVb6sjQrrr8wTfaSEZp4tNrfklrAGDQLwkXSMA8hBadDwBHHZBNhyNhwSraFjjHcf4kVJSVDhhx9uwGvEKL9WMvMT3l3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NPsDTjQa; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43152b79d25so11215295e9.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 10:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729790242; x=1730395042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CLsiSxWUPNvsZJPZR5fuMuMm4AIy+Kqvu4+UUkiUfo0=;
        b=NPsDTjQa6OW72VRwsGf3gVnPe78T0KCjvQHlSobUYsR6UIkDm3dPcvdKUiZteJyrii
         u8n7jRjs+1wL+7jVawbxuUpYY1t9om7eSd1fdwm7KgrTvJ4RYQ4/GeCwjqCwalJaB5i1
         2xZKlGI09ysJIK75inN6xD1KWlPhnY+ckWccjp0bZPOrge3h6o42OW2kvyhZ1ixo4KB9
         pZnaRTRhifOz47qeF84xX8cP2Njm0izGzRDO4T62PwmQYJH5GXzlUsSxa5Q0lhut3dww
         TKmdbrtGt5RDL3Z/ovs6Tgh23WL0CWv9ZGlSZOeVWIZhl/GdV7caZd+qEX9eD2q8Q4Ch
         IcQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729790242; x=1730395042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CLsiSxWUPNvsZJPZR5fuMuMm4AIy+Kqvu4+UUkiUfo0=;
        b=Ks4SMc11F7oYEnVutCkOY2ZeMM9sDcWuQSmr9Hs7bZcMsebgip5JB+hn0/y57zlZLX
         xBF+K5+mz8kxG+A2LmgDtb2REdagIkxeuVdYEOk9ZUgjpi0SByeOJzssYc3hrdX5QGPw
         jw3/L8SlTRStY/fl/3iodHzn+cnHD6fmye/F6AWpoX9Qv+roOdtIEpeLtCJ7ga6eKlVc
         cDC2tFocPtCPeQnCinDQhvw9shKKAdCxla+lOswac9YYWV45FjY1RAtRRM/8kDT0c1g+
         wpDho0N8Tgp/kcuYVRqLK0+6hyhLFfVTcHhaqNZxcRYm1CEx9/nuYQ015p2O0pliyRgF
         JBOg==
X-Gm-Message-State: AOJu0Yx0xk4bsWgkwWO00x7oxxwTlwCeg3rd+1ZM++nJgjPWAeYRsIch
	sMqsGsEEdysTPxoZFysiZL+kJFrk/5u6d3/ImzRJ8zZ3fkL6XU2tg65AgsbjkfY=
X-Google-Smtp-Source: AGHT+IESqW79443CxQLiMuKk/NV5ULmdPHVLHkIii+DlSoOtgBD+H4mKhpphtCgsNAV0EifFLKqvCQ==
X-Received: by 2002:a05:6000:4581:b0:37d:41df:136b with SMTP id ffacd0b85a97d-37efcf06102mr4256968f8f.13.1729790242259;
        Thu, 24 Oct 2024 10:17:22 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a57e0fsm11777830f8f.47.2024.10.24.10.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 10:17:21 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alexandru Tachici <alexandru.tachici@analog.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: iio: adc: adi,ad7124: Allow specifications of a gpio for irq line
Date: Thu, 24 Oct 2024 19:17:03 +0200
Message-ID: <20241024171703.201436-6-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
References: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1935; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=zlE41GBJu59TMSD2fDX4lXwHPLrJK2KzJ136R6Krqkk=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnGoESlhys6gUhgUbMHsAanellCVG+8TzzyJ0E0 jiGKoMP0P+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxqBEgAKCRCPgPtYfRL+ Tuw0CAClZUazIjN2cewYqGTKLizqs9zQh+P7XJRvejAaYL8Z/B3f0m4q92KzoxSW0rkLKg6sui1 NvTiYzU+uPbgAZ5XJKP/S4H+iBnuze/9NoxQ+uDfK2h9YqRwjM0GjTbNy35+PajWxD2wguAfkAw rgaFL+c6FvhMzc/n0di3C1mnQ1we1eM+SvU/SxXBNbZTyhrnOtX721r+L0KrvdF/BDmtjMLsrUI 1sbMTeGq5VGTfLHJBb7B8SOqmmJKEq1gPcYKMuHDAlI4HBgFleRQ/s+B5gg0gS09d0o8c96lTTH 5vmGLVP4Ri6Ky3cTE16LoiTkQdH+5RVohU3lGH8Xpu1lLCav
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

For the AD7124 chip the logical irq line (̅R̅D̅Y) is physically on the same
pin as the spi MISO output (DOUT) and so reading a register might
trigger an interrupt. For correct operation it's critical that the
actual state of the pin can be read to judge if an interrupt event is a
real one or just a spurious one triggered by toggling the line in its
MISO mode.

Allow specification of an "interrupt-gpios" property instead of a plain
interrupt. The semantic is that the GPIO's interrupt is to be used as
event source and reading the GPIO can be used to differentiate between a
real event and one triggered by MISO.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7124.yaml     | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
index 35ed04350e28..feb3a41a148e 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
@@ -37,6 +37,9 @@ properties:
     description: IRQ line for the ADC
     maxItems: 1
 
+  interrupt-gpios:
+    description: GPIO reading the interrupt line
+
   '#address-cells':
     const: 1
 
@@ -57,7 +60,12 @@ required:
   - reg
   - clocks
   - clock-names
-  - interrupts
+
+oneOf:
+  - required:
+      - interrupts
+  - required:
+      - interrupt-gpios
 
 patternProperties:
   "^channel@([0-9]|1[0-5])$":
@@ -119,8 +127,7 @@ examples:
         compatible = "adi,ad7124-4";
         reg = <0>;
         spi-max-frequency = <5000000>;
-        interrupts = <25 2>;
-        interrupt-parent = <&gpio>;
+        interrupt-gpios = <&gpio 25 2>;
         refin1-supply = <&adc_vref>;
         clocks = <&ad7124_mclk>;
         clock-names = "mclk";
-- 
2.45.2


