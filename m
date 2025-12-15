Return-Path: <devicetree+bounces-246671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAE1CBECD4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9607830157D9
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE2F30F531;
	Mon, 15 Dec 2025 15:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QRbjWMBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F242E7161
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814297; cv=none; b=hjAkTIW8aBlP8f3RbfR4/SeTWIXgMzw1KFY5NPWz5DdOpC08jDoA5oC2T/UCtDRNx036ognO2DJszyjR9o6RD0t0/zbCe8PZORThAYswSZcSB45Sj9V+iUh2wGLhwXv0QocY9rwT9oXPU5R+XJst5q3pzBOuu1QckwXMB6y4AN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814297; c=relaxed/simple;
	bh=SvHp0h8NsklocbzdYY7aO2MNGJqdaiMnGBPKE+inQoo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cd1DcMha2IiQImW+jKLFg9KaIWbkxSoAryRBDuZ4SV4wHTIxlvLIGWA95jha3s4CqV23te07V7yRcw740dSEwTbv1QovzLsXeDBR8PoOBAYS0xd987AqE4hIgBLa3KT1yKUXEtXPf8ZalPeL7Sa49A0MAEHwDGwJgG7Iu97bIbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QRbjWMBD; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477b91680f8so36546425e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765814294; x=1766419094; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0OD6Tul6N7Ac9c9vQK1/GWaIUr26ez2juaXAYXKN8s=;
        b=QRbjWMBDvb84fk94xcDTEyBSSj2QiHLRwI4JiR6lkL9FkL16i/79AOgaOieeDTDkSy
         RFpTB6bB6z6kV4jwUX9DDnVocSoRm9zp61c4I96p8bC5pl6aXGpm47AcHWn1JBKwV04H
         H44YoWnZdoflXhHygsHo2UrvrEGXR7bI24iVye7+LKZI8X8h+Bju+IPHsuTXYCqoehwf
         zf95Ve1W2rE4qOv1dE2V2ogzFR/f2GcUxvUFtUsKt1xiZpQGGb3p485kgaoGgkOSdFOa
         Njig/kzovbC1uIv6YeHKtjcCh+87//fxADndhsQMubEgQEG5o5T0OrFIu4sydTPuxTgs
         az6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765814294; x=1766419094;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z0OD6Tul6N7Ac9c9vQK1/GWaIUr26ez2juaXAYXKN8s=;
        b=NeCJ3ZSrh5NtLikoMfO3ZD7y7Qrawy+fZbVMaB7pFDJquei+TfoB1xnosR11TqNuKl
         Srwd4pA/g2fYFhJ0ktgGVN15wjDw0csYm84IFdGncSZfImwklCX5Cgh5uwfosnj58X7H
         +Lr+Ip7AVAUXWgCuAOXIkNXSBbC7bAMl86PQPqhiDju325LG879nubUM7uP7sgAxBAvg
         jts2arlHPbt1HKQXKLyhORFfhKFHiL9UgdV8UV3mR2B1Qro+wRXqNq5NdrBLqxb7z4KJ
         GuonRrr1oI/crSsX4oHvIWBM/j7zVqKt4ndYxUyHkbAhRuhhMvBJMVaKU75tOkWwZjI2
         jhtw==
X-Forwarded-Encrypted: i=1; AJvYcCWz11W+H/PwNltB7+fsaC6quXvULp2Mtt72US+qjrB6ggeZf+/seUd+Q/VsTEWbQuh7e5qaQqPMlgwC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ynmYLlPjQvxFMq4+vRiW7ZM6O0Ca8W36eNPh+DQmdA5DjAY7
	Al+iCmepqa0ymUoF0HDYSuEsNHPM7w+TqCFCe1NuPgk+WGvl9imZ7Epz
X-Gm-Gg: AY/fxX4HGLpPBXFZgbeU6UrwyFhGUedsbrhM8pgYkTLCVeppLN059n94d+EpYLdafvq
	Ibbpyi+nmZyL7KIqSsHGkcTW6Idq7UPRR/1hcJt3x4ZPytAKPjV0eV/Ai9HylNatQu53WVC1925
	Pr3GZaDXblGIMa5yfkNvq/Kt+xsaMGRBWofdysoUXAqpq5k8IsVQFuzkO6Y7/auSDVilmp9CRnT
	/1xSXPVnKWC5/s9kuFpdVJInlxmrA9zHQZSDeqDhLUIUkW1XcWiL6AfcMWgJDZUTLSGsk3Y0fsI
	uV3Au86/lxiWy3UH2q5panPBUdp/3uhXlDiES3GsClih0zL18Ujt9ku6X6xoLYcA7sj47DOIeqM
	GKC2ldONcDfF2gye7BgRh7bjGHU7CgYvO/YgIermttxGpqMGrYK+Vf66W4QI9w3DAYGXyLkT/uU
	wggWN7kNrxlk5XE+ILzQCsgZfGNjcZimt9PYWm9JIChtHG3rKnadFN/Q==
X-Google-Smtp-Source: AGHT+IHIv9GfANx2GJGw837onoHtnktqmhdBJsBRBvIpRijBv0m5CUdwq2om63NLs11Z3pgCalnZBQ==
X-Received: by 2002:a05:600c:5254:b0:46e:37fe:f0e6 with SMTP id 5b1f17b1804b1-47a8f90d28bmr119871915e9.30.1765814294213;
        Mon, 15 Dec 2025 07:58:14 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.238.173])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f3a1be5sm70209665e9.1.2025.12.15.07.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 07:58:13 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 15 Dec 2025 16:57:54 +0100
Subject: [PATCH v7 1/3] dt-bindings: display: sitronix,st7920: Add DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-st7920-v7-1-36771009ec01@gmail.com>
References: <20251215-st7920-v7-0-36771009ec01@gmail.com>
In-Reply-To: <20251215-st7920-v7-0-36771009ec01@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Add binding for Sitronix ST7920 display.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 .../bindings/display/sitronix,st7920.yaml          | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/sitronix,st7920.yaml b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c4f006fc41e1f472939725bd82b86a649f9b3f56
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/sitronix,st7920.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sitronix ST7920 LCD Display Controllers
+
+maintainers:
+  - Iker Pedrosa <ikerpedrosam@gmail.com>
+
+description:
+  The Sitronix ST7920 is a controller for monochrome dot-matrix graphical LCDs,
+  most commonly used for 128x64 pixel displays.
+
+properties:
+  compatible:
+    const: sitronix,st7920
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Regulator that provides 5V Vdd power supply
+
+  reset-gpios:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 600000
+
+required:
+  - compatible
+  - reg
+  - spi-max-frequency
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@0 {
+            compatible = "sitronix,st7920";
+            reg = <0>;
+            vdd-supply = <&reg_5v>;
+            reset-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
+            spi-max-frequency = <600000>;
+            spi-cs-high;
+        };
+    };

-- 
2.52.0


