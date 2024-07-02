Return-Path: <devicetree+bounces-82446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE1A924667
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:34:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 303361F23E04
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2411C8FCA;
	Tue,  2 Jul 2024 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MMQfxXhx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1D61C004A
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 17:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719941653; cv=none; b=CYM5dUKePmntcUQ8oJBgR3gyAzOq1S5tYiK9UOtQydtzi0QUbeBr8LTdNcOodJr4r4E24RsUMiu+fNleJxL36q69kCUjkBTWp3HhgpvvxoX1P2r4G9N0nyAdU7tR6vmTYUEL/6aoIDKpDAcFtYOFY1VL5radim+lHmbUHyy2EX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719941653; c=relaxed/simple;
	bh=rhz8IsaaVIFnTZZrBz6KjBh9OTq7v6hGHb8ljoHazaw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q/Kf7GS9G8jRol/8KI2ZXKyIB3gmNMNkUGK4eN4B2QjFsPIhI40N8Hknu3eeh3UQaHL5Ij0JS6dvJz86rbLp2zGgLMe+miFTUS3aKwG1giYUJXqIHX3mUrs8mLoa6yxN7Z72+zQu1lsMyOzj/XgfWTouSLP1NvFJUZmcaX2RVr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MMQfxXhx; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52ce6c8db7bso6915683e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719941648; x=1720546448; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W4PsgI6ViSPMjJzEXz9ZwZPETs75x12HxOOvUnLBogs=;
        b=MMQfxXhxHILGpuIKp7BXBARHk67TYPEtouN+SIQNb/okU9lwCsaVwPUui8IJdSAnwq
         eELlxHmR7iXrka7txLZRSn4LI9QY+6s3uf7QoQicsEjT8zkdWIKf7Y5R3oGsWyMIhgDW
         NOdTRaM/dyhHjsDtVv6JTsl1HPbeBA5ilCvMN4hSenQ3nPqjZR9JC9Vg6fCJ+ydiR5fs
         B3Xbyskyg5ffV8ONLy1CuWbsLLm89Md/CgQ8tSxYhgl8Kocmi/9xWyMjbKkc7hiZbiss
         GjNj8dxHP2FtztI9SQLm54lmwW8KGpUbxQqnaFFHm4qMxC9EaEx5gCFD7grgZxyqYiv/
         NdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719941648; x=1720546448;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W4PsgI6ViSPMjJzEXz9ZwZPETs75x12HxOOvUnLBogs=;
        b=AEgYpep9nv8Ub/2f685a/B/hMzsUq/8yY2Dspc4Hls3LQ2lNLmfUedf+4ka/RO/Beu
         WQYuaHj+96F8cMIqVYxBc/9bLvOx7H4vXEPwN3QMxMikrd2nRYKhs1UQ8ejQnxsz3zO0
         Cf8TscbSlIotsJ05TfQIbyNzkVm1Zn9kgojC24BHjiwTDFGeFNaLgHihSbDgxWW4i74H
         j+5Fxc4VRqDFfFiGWux7WN5YZEiEnOzI1JUbXndav0LE9ZtuynmjbKMfREvExZ3rtzle
         1T1gJ+eWQGy0iv/UWBX7sa+uy2aI95B7x1HVJ0+p0/4PLI6qrAcl68ScWdTZXUDFv+tZ
         915Q==
X-Forwarded-Encrypted: i=1; AJvYcCVQdKMxaBgm6sz+tnbK0rCY3fyZDlBB6+rAjvqUf7RnJyPgZKdMfiEzd/YKoSEd6jHElgHFN4RIwYbLyJpTv25Y8+x0feUhGslzWQ==
X-Gm-Message-State: AOJu0YwZaDdpA1Ou7eIGUvweaPENrT7fKS9VSLe/Owma9riTcajrEPZP
	/nXYjyT9+9TIUgXy6UrGj/BuC6p9siMy3QfOa7/0g4E1+LIMqvtfff6eOP1L8RE=
X-Google-Smtp-Source: AGHT+IGTeGpFakXpFvB+K8s+jVCiEGTABpmrQyZUGoo7/gqdCCvxwaVwIzDm28ZLP34Gl/f3b2j9yQ==
X-Received: by 2002:a05:6512:3c9f:b0:52e:7a8c:35a0 with SMTP id 2adb3069b0e04-52e82651c44mr7961021e87.7.1719941648256;
        Tue, 02 Jul 2024 10:34:08 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af59732sm207594485e9.11.2024.07.02.10.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 10:34:07 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 02 Jul 2024 17:34:07 +0000
Subject: [PATCH v3 3/8] dt-bindings: iio: adc: adi,ad7606: add supply
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240702-cleanup-ad7606-v3-3-57fd02a4e2aa@baylibre.com>
References: <20240702-cleanup-ad7606-v3-0-57fd02a4e2aa@baylibre.com>
In-Reply-To: <20240702-cleanup-ad7606-v3-0-57fd02a4e2aa@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0

Add voltage supplies

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 76fd6df5f9ca..bb716182db63 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -35,6 +35,15 @@ properties:
 
   avcc-supply: true
 
+  vdrive-supply:
+    description:
+      Determines the voltage level at which the interface logic pins will
+      operate.
+
+  refin-supply:
+    description:
+      The voltage supply for optional external reference voltage.
+
   interrupts:
     description:
       The BUSY pin falling edge indicates that the conversion is over, and thus
@@ -106,6 +115,7 @@ required:
   - reg
   - spi-cpha
   - avcc-supply
+  - vdrive-supply
   - interrupts
   - adi,conversion-start-gpios
 
@@ -130,6 +140,7 @@ examples:
             spi-cpha;
 
             avcc-supply = <&adc_vref>;
+            vdrive-supply = <&vdd_supply>;
 
             interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
             interrupt-parent = <&gpio>;

-- 
2.34.1


