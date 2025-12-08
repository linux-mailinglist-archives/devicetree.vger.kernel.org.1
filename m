Return-Path: <devicetree+bounces-245062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA1DCABD43
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 03:19:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6ED3303FE56
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 02:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6454F2797B5;
	Mon,  8 Dec 2025 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xspga4Pe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670372773CA
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 02:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765159714; cv=none; b=MPWU81TTlSwtK1lL5uSPV3XixI1MnP8dlxDNvc1/V8/JtpfAlqMeeiqyoJYysDHsYgD1qZihZUUMDQKgmLw+uNCACVjbHE0cOxrVS/9DaWVArgklE3n5AZkpNQMvs03/fggKzUyYL5WQ23Zs8a8NmluHH5FDGmyL6hbRYpqYSS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765159714; c=relaxed/simple;
	bh=OhAPqaXLXCmsNIfo7/tILARHNy+GrLJldAAVbkxmaW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uH1xFkY5WZG1QwK/8khrTtuaxwhIjZgJA2sKIlEO26y0Xu2EMUXeHDFXbIDvaClnpQTpGcM4hqUT0dc2v8DQVSCsL6S3i6kBTGDhYdI/sf3TaXrGdwXzOAQLSgBKpHRUd1uNbF38/fKaG5mWTUJFXIlC0O8djYkqXn7uKMXSHeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xspga4Pe; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42b3c965cc4so1811574f8f.0
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 18:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765159709; x=1765764509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=xspga4PePRRlNcGliaIQgV4qZQi+SXnYwW6RyRPzwlHsM2trM9ftNI5n9pjNu8APub
         j9UWmbPK1xv3WKTqSShNEMzUBXRXkpEtNwFI7iGrRf9LndnKavUWHI+ZuGfOczZz+4LF
         2g85h/7+tHOGCOvv/pPPRs/8YNTiOnsACzXSV9kfGZbG6ak+ttlEJzfeBYZoUUJA1aI9
         w4Epf2ZFc7dVTjUwmJXy5cQ2vZ0qM7SuDpAVaIRaJMj/h9e7sg9bdj7WMw53Zxv8PIZI
         qngJ3UnESyRrv9Fkgc3rP+C5H7PWO3y0E2wKPM7zPVLDGr4X/N28IOQ1KhMjnu7Q7GsW
         CpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765159709; x=1765764509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=YRwUNXOnCUF3cpEG4vk4gxmW/RKr0JrWeMpU26ihfAxsp01TgIZlsuDTnwfDyepS2p
         ogQhlEzYM/XBQxCRMeSOtBk+debJjmUBnfcm8MDquqQLhpoFeYLEUfP6rGH5XhXMbpys
         mYTHkgeTJq6WAhH07UEsDvf/OMsFVqzglO17JxKsjwBkQmnfn9vLy3SCRZ1y4h0gYQzz
         jHvfoAMCVmeV1HSrZ9u8rdP0T8nWY8wO7UvG0V/FhR73B0GtfiEBkBAIdlGIDKx3tBdl
         qCf/Etk7431k7zx6nvOGyaq7d5b9qKdO6if9ZYwKs/4W5Vh4FBHp6yDRDiON2GEKjYtH
         091g==
X-Forwarded-Encrypted: i=1; AJvYcCVQMKgyUeNZIUg5MYqT0c94HdfShDLw+8h+2LgSVHC5hqssvxAbePMzHHkPr3Zjm8Cfmjggaz8Fw+BQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwxNNRdEeb0mYu6qXi9u06bwvxnx0gNKBOPOX1KXgXzHsbOp2u3
	43EbU/z5WCkMTCbxniooX7NJcLZt5U2d39O9grPSwCBkOQYnIXIzW20ZtjgTSYe09lw=
X-Gm-Gg: ASbGncvs3jFINCWLtMTzLtdk0ZHhwhyS5jD3VAEcfDKiePf6LbIYNB+MtxOpBZxYBtc
	deFAGZJuoiJVz9LM++cF34JM6JKTttaYyERkYRAn4caa7ua8iSXM4RVP+xDZoH+J9dbhz6lh4Co
	LGKQYmukfXpFFNESm6p9X+0GC+JqOQnocSyo65eFVrDstIF3IdZje6Uj9hcJ9tJs3wl72gQ+u9p
	bA+4ipzqb3c+L9Kd+YXY30fH548QPQyRLPcfyG3Ya9MmKTcoxhG94NSE8Ucnmn8RbwUbiuUBkfl
	nxP7d6KQpuK+FkY87fCY+9m2MKu8+Tmqn8qTz6/HsJaSFXXXq861khfauehbJGyP/w55z8JcDOo
	mW1ukDMCtyGHnq6P/CdIIUyhiTBMZGPO+Y9evdwXqvIMXsPmrmLV9aCyGS0ynqFZ9x+mlgpxOQn
	2yaHIjiN2MFiCweisZxt/iwb8HQ+iVgx9J+LCKhX7ysA==
X-Google-Smtp-Source: AGHT+IE66FrPJ19gojUZQwYUQUVG6TO/sxetLa9tgwD9g8BE3ycPA+5flnZf45m2zANsdCZ+AwIJTw==
X-Received: by 2002:a05:6000:40de:b0:42e:d669:9e84 with SMTP id ffacd0b85a97d-42f89ef1a08mr7706246f8f.29.1765159709453;
        Sun, 07 Dec 2025 18:08:29 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbff352sm22647813f8f.17.2025.12.07.18.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 18:08:29 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	s32@nxp.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	vkoul@kernel.org
Subject: [PATCH v9 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
Date: Mon,  8 Dec 2025 03:08:18 +0100
Message-ID: <20251208020819.3063506-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251208020819.3063506-1-daniel.lezcano@linaro.org>
References: <20251208020819.3063506-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The s32g2 and s32g3 NXP platforms have two instances of a Successive
Approximation Register ADC. It supports the raw, trigger and scan
modes which involves the DMA. Add their descriptions.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/iio/adc/nxp,s32g2-sar-adc.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml b/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
new file mode 100644
index 000000000000..ec258f224df8
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/nxp,s32g2-sar-adc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Successive Approximation ADC
+
+description:
+  The NXP SAR ADC provides fast and accurate analog-to-digital
+  conversion using the Successive Approximation Register (SAR) method.
+  It has 12-bit resolution with 8 input channels. Conversions can be
+  launched in software or using hardware triggers. It supports
+  continuous and one-shot modes with separate registers.
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-sar-adc
+      - items:
+          - const: nxp,s32g3-sar-adc
+          - const: nxp,s32g2-sar-adc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: rx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    adc@401f8000 {
+        compatible = "nxp,s32g2-sar-adc";
+        reg = <0x401f8000 0x1000>;
+        interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x41>;
+        dmas = <&edma0 0 32>;
+        dma-names = "rx";
+    };
-- 
2.43.0


