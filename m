Return-Path: <devicetree+bounces-210734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B67B3CA6A
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:10:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A3F51C205A9
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFFF27FD40;
	Sat, 30 Aug 2025 11:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r4a4fOjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DE927E07B
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552199; cv=none; b=oGAt11jJOkvFeVlKzenWzLMpmYHGjLic948fQIsz8tRV/qI8C7oI6M6fPOdeW5iN/6HPqlC5mzOdXxKTUkkILFJOij7ZJnvGqQWJdEWQZaibwUf6EEnIc4P47B6Dy8XFVICbbnVFyEHMrHD8M+i8QZP+H1Z+hYQiKx7YrDMSDWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552199; c=relaxed/simple;
	bh=cHIEU+NPJpVUCzgTWpzKVI4NuSvxjRXzW+gY2ZxvjWs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BiQsi298LpSVFJkZUzw+vArG7QKX8+s++N8I5ggu442aUhCeb5one/ILpFpMDQXn0C2IB1jP7afpKsizqnMJ2Dsyyn4CLxvt0pvT9MvseN1JTw7fjRoc67ZcOc44Jx5Nj6jtuOW3kquLZI5rKbrMa7jWd/3xnmJ30GPxf+ern0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r4a4fOjL; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-61cbe94a190so495150a12.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756552195; x=1757156995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bh4erFgymhHXlSdczQn09Ns70cyX8l95wuvz4MlLE5Y=;
        b=r4a4fOjLUb0IORCS5OaM6pWMM/4KNwjkrtyCCjakqXM4BcyBL4DiBUcA7daRtCYupp
         M2jfhdaSlBek78ClA2XqXOcqUhtoExnEy7NXSek9gZQT7K7Cc8F5uv2WIZAicvPjDQ2i
         75+d6gSwutA2yWMQHjEV0s8TWEgqmGseTusFXtGcO7D6jiO3gg9JZIZGNmj0Daeur83q
         3Z4/VVIqVMRpGT6mCGKy2Nemu+8I2/BHpHwNjTaiCO6cHFhBcL/OoDwfciOB08eWoZ9y
         Fhblr8NgdHwC5SCUyyH+L5OY+yaQvI4cJZcypspMdxAEJFRYlYRW5Ov4utzkVVV1s65J
         P7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756552195; x=1757156995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bh4erFgymhHXlSdczQn09Ns70cyX8l95wuvz4MlLE5Y=;
        b=DZkyUHeplRCTn0mrPQQTclRUr8wZOvMj5ES1XEQRpmNe7JfVcGT973DJmWR9AKV8Dz
         pwcmAxDWlmEU4WjcISlDX+hk7ao+XO/va3yR+QC9m/vslCIJ9oTQ6SzMR8FthAbZ1WRZ
         7G7/vrvIHsg4XHqm4OY71mtd7E6kGAmUHQl/KO/OXayQ3cB6tF5W7WWbsHHZ59t0eu9H
         yFqQIRP7Zp0hs21IgHHb39bAf8Cejz1F8JF/rc6vB8QD0hJ4cHFEMDcR4CxOFBEZ7pcJ
         lkdByQri6ts+8ggrEqiCoxpIBnYOfzV72XJcw55JqGMMijoLqz3v0w/ymT6WQxeB9RtY
         HeQg==
X-Forwarded-Encrypted: i=1; AJvYcCUoIXqL3YSBA9lmNvv8KEUWzkY7yQ9jj64p8hCWKyDKGAHAKij616gtqzFLFfsFQzHT+O2U44Jan3rA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Ss+mI/BiKzk107roBVjnUbnkcQsjjdmn2O1ObWhZsduu7Sr0
	TSgFDlgAGg1oIWtk3IsHks53CCGtpgs8gTXKDtP/mbuKQxYlq4YINEfCunRRk2YPfcg=
X-Gm-Gg: ASbGncsmBnMlOpI+Sy59QrwH6Wsco0Y7XQsmsNtZLr8olwais6DB+lV3IOvB4HXdHM3
	WLQB/wyyK0gxIFcAZStU6tcKwM9zL+rnU+E66YtFuUirEQpbRf7R9rlqr1P2gsR2V4iFjeqd8RS
	ZxYnZpcnDgx6/+orQTM/w/O4WS8lb+u6Zi9+ksfdNfwY8hwLcc9sF2yBoWe119apctvXohEFq5f
	KvaspXCymVndoTpcjpjsLsZ125gpf0lqa/NNQdoa+j5SbmJGskKEMwjY5Rj0OpBZW5fayKvJs1+
	8fswHEvZpEVUHnVyttuKX/j+kr/fXtbUSnYgRvlfWlrveAtQwpTQLYQjZvruIM4JxAdt5rbl6Vm
	7MkKSwcclOqBEabEociMHjrQ68kd7Q0Y87SR5jEs=
X-Google-Smtp-Source: AGHT+IFBgu1ofh08wSJsUXZGfBTpuxs1IaZcrmEM87+9ZBrU5RDUdFz4gzUARIltFoHjOTc1YvjmYA==
X-Received: by 2002:a05:6402:2105:b0:61c:1bb3:2473 with SMTP id 4fb4d7f45d1cf-61cfe999d10mr2852784a12.3.1756552195504;
        Sat, 30 Aug 2025 04:09:55 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc21542asm3285666a12.18.2025.08.30.04.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:09:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 30 Aug 2025 13:09:42 +0200
Subject: [PATCH 5/5] dt-bindings: iio: adc: samsung,exynos: Drop
 touchscreen support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250830-s3c-cleanup-adc-v1-5-de54dfb1d9ea@linaro.org>
References: <20250830-s3c-cleanup-adc-v1-0-de54dfb1d9ea@linaro.org>
In-Reply-To: <20250830-s3c-cleanup-adc-v1-0-de54dfb1d9ea@linaro.org>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1659;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cHIEU+NPJpVUCzgTWpzKVI4NuSvxjRXzW+gY2ZxvjWs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBostv39456voN2g4Wi5/A6Obv1+NtJbj+zc4VQK
 FOmRj3bE4qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLb9wAKCRDBN2bmhouD
 1xcNEACEkHrmoaC5qwjaF2gjYtInfNH8N/FKtg7etMoJXRrCaNqinwSklAwwUFZD654hDJDLZ0K
 MAQSvEnfCZVLggE5Ts8O9z/uk+ggfYvWin1Hfp6/FNww3cEwXYp6j5ynb6oyPow5c/ItmdeC9JX
 gK7Er1IlJ5+Rz0L5TU6J5EoJZn8F500lY5ExkpXOXhNB7A90+bUPomCzG4f3hLnhWWpFRj/w8Jv
 YwRDtXCVjkJ8Tj9I5scGmKzYEzA/xlSx1KkwAMukQoyLS6ROqFLTiMIjqFqqTOI+salro3quSHi
 diJu2y6tjzqIQrEUSPYwoEsmpClANA7B9w4L2PY7hJ6DIzeep8NwIhk/PY7ZZZQ2ThOLLWQpX3s
 sw7ZPXny5LSkBzE6A5kbMGklrjBxD54AkfkHOxIdtiqJBp9F4ls+lLHUpKCtKMvvzX23Myy5OsD
 yPTUXtgxbMCEQuDAfp1hm0xWBD+zJvWux2FIe+mjeVnahghukgzHPq+I6Bed1TkkYMAUnhSGIA0
 DYg6ZzTNkQCHHatjYCTIENVOtgKWL3Mxj12Q4CEwA49yXJZnGgNU0kMsjaJ8BRxRIL0+TnjBQ5c
 MHpV3EKFFGdREqfcRqjEw2pyuB5g8hoDtb3NxghjgkDGX9nET07QYhAaAORF80N8du+EP+MNzz9
 vGDcv9oR5wso+3w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

With last user of touchscreen via ADC (S3C24xx SoC) gone, drop the
unused has-touchscreen property and optional touchscreen interrupt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/iio/adc/samsung,exynos-adc.yaml          | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
index 73d7ba0fda1def433a97d10bce21e762a307e36c..0654f8972525bf67089fe7fd4f3ab3ff506515c3 100644
--- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
@@ -42,10 +42,7 @@ properties:
     maxItems: 2
 
   interrupts:
-    description:
-      ADC interrupt followed by optional touchscreen interrupt.
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   "#io-channel-cells":
     const: 1
@@ -58,11 +55,6 @@ properties:
       Phandle to the PMU system controller node (to access the ADC_PHY
       register on Exynos3250/4x12/5250/5420/5800).
 
-  has-touchscreen:
-    description:
-      If present, indicates that a touchscreen is connected and usable.
-    type: boolean
-
 required:
   - compatible
   - reg
@@ -113,15 +105,6 @@ allOf:
           items:
             - const: adc
 
-  - if:
-      required:
-        - has-touchscreen
-    then:
-      properties:
-        interrupts:
-          minItems: 2
-          maxItems: 2
-
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>

-- 
2.48.1


