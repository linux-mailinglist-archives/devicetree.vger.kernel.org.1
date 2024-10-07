Return-Path: <devicetree+bounces-108608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B88999931CB
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 17:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A03F28428C
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 15:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66831DA116;
	Mon,  7 Oct 2024 15:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KDOt4GXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838821D966A
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 15:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728315949; cv=none; b=kCPOmFPgdVI5+VlCltlhfV2jINB6oCNCWU1fgBfVmghARUr/zqdHXX8ZoYAgb4ATjgu4L1/8QK0PLMjGVKX/9MTR6LbZssEu+Sjy1e9hD8WMCuVo6n2g7AiekVbB+xWdN0qZ1a61pGbUVo/7/LAs5OHxN2VfwunWVBeVpXRAGr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728315949; c=relaxed/simple;
	bh=+4xKkJnQqVu7uiiyn2Kxt0tvZkLS+cNdyJZUR5y0ym0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ckOKrmfeO3/IR4QdCBoqHCMWgusflIn5FTuef079KNzHx4zw6sAO0EDLihHq8tOLZMI5EW+LxLGXdn0/Hp7onEzQJvWVNx4iGd+J5NRbVIH5t1raqRX5J5MPp9JeqhiJlK/TjAdzBNMlIZW9jeYVp+GBNbabzRJBYWmrs9d2mkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KDOt4GXg; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cbbb1727eso46571385e9.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 08:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728315946; x=1728920746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2N3r/AZHZIBAky01wN9j8Ij5Fk065LyhFYbUy+uaF2c=;
        b=KDOt4GXgmNLILzBh1cFROmBEVG9oAAMjjZK+f0JDkzsPDoBJDzRNvg40zhWtYQsIzP
         5+WFjMb/Wy5h5+hid0D1saH0bmtub0PJtYBwTQtCS1ND+dYfvRwftff0kds/cKnsaYiQ
         xBlPPv2y46M213YLK9fKLlljUCEdzG9t2DGg+ftWxBqiyjdn7DOTicV7lird1mNBYrhR
         3wIYX8bi19QcqZi2mDSI1onnZ/pTdxSGY8FUuCscse6GMkuLvpyfDPLF4Iu2trbzDAsf
         +/FzKRq0SWd4PQtWdxc3bnF/QR7UvgW5zUGWRHyOAU8yAimxVhZRCcsR0Ol7iCRiwakN
         c6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728315946; x=1728920746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2N3r/AZHZIBAky01wN9j8Ij5Fk065LyhFYbUy+uaF2c=;
        b=Oe0NwgR071wiuDTTpSseOiQFJj+xI8wO7i7hK2WDFODDRa5pPosZL0A8aC5WNvIF7c
         ThiD9F8WhQSFjw+K1smTDS1GH72SoTJqCvh4ZP7k8K0zi1kWc0FDY7SQqUe6GQHvKicO
         kI3gaG11h+7FIlK/9mdJ5mAHC2p0Wv4pz+lnlJFrI+BWrWly52PGeOSbAN0Z9fFEof6j
         jU3/RjbPtN+tJ87uF4OjEqkQLoNXyvK2aJxyvw9Sv8i8rSgGeUyAPC1yVrIU0HqhVDaV
         5Ct02pukUz3E2aznpl2dgePwNHUACu3++GtnISXVxtDLwQczXxX7DkPcwMc+UYN18Tvz
         TeNw==
X-Forwarded-Encrypted: i=1; AJvYcCUrekG/y7wBJ1X71AUJbyLHGy5RV/DPlvgJ+q/56HB+se678JpDfITc3aNhHs1WzyJsSv3tE1YSjHL5@vger.kernel.org
X-Gm-Message-State: AOJu0YxAyYo2EirHtIjRvtVNzrCXY13Fz8SzpJ8p/P0IFkQ8F+3RDdr0
	7e0FxRuE2AI5cXzwE/BqWF5RfZlzMtth7qIlQ2+Emu5CQ/m46UzsiERCCR2F2AHQuvf7wy1kfDR
	Clss=
X-Google-Smtp-Source: AGHT+IEDWpQdUChMZda2za516f28LSsRDgkuitm2dp+DyXfGHYdrbMiUC8uCMuYFEG24q7l2cl7vCQ==
X-Received: by 2002:a05:600c:468f:b0:42c:af06:718 with SMTP id 5b1f17b1804b1-42f85aea086mr90117135e9.28.1728315945926;
        Mon, 07 Oct 2024 08:45:45 -0700 (PDT)
Received: from [192.168.1.64] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f9384f648sm17645555e9.20.2024.10.07.08.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 08:45:45 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 07 Oct 2024 17:45:45 +0200
Subject: [PATCH 2/6] dt-bindings: iio: adc: ad7380: fix ad7380-4 reference
 supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-ad7380-fix-supplies-v1-2-badcf813c9b9@baylibre.com>
References: <20241007-ad7380-fix-supplies-v1-0-badcf813c9b9@baylibre.com>
In-Reply-To: <20241007-ad7380-fix-supplies-v1-0-badcf813c9b9@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.1

ad7380-4 is the only device from ad738x family that doesn't have an
internal reference. Moreover its external reference is called REFIN in
the datasheet while all other use REFIO as an optional external
reference. If refio-supply is omitted the internal reference is
used.

Fix the binding by adding refin-supply and makes it required for
ad7380-4 only.

Fixes: 1a291cc8ee17 ("dt-bindings: iio: adc: ad7380: add support for ad738x-4 4 channels variants")
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml        | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index 72c51b3de97b..74d82721637c 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -58,6 +58,7 @@ properties:
   vcc-supply: true
   vlogic-supply: true
   refio-supply: true
+  refin-supply: true
 
   aina-supply:
     description:
@@ -127,6 +128,23 @@ allOf:
         ainc-supply: false
         aind-supply: false
 
+  # ad7380-4 uses refin-supply as external reference.
+  # All other chips from ad738x family use refio as optional external reference.
+  # When refio-supply is omitted, internal reference is used.
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad7380-4
+    then:
+      properties:
+        refio-supply: false
+      required:
+        - refin-supply
+    else:
+      properties:
+        refin-supply: false
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>

-- 
2.46.0


