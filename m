Return-Path: <devicetree+bounces-140321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D421A19329
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE1BE188BE26
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66AE3214236;
	Wed, 22 Jan 2025 13:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="12SgurZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17227214200
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737554360; cv=none; b=mhSTvGIbLfQb1VeL9k65OkXl3AXzSNN//jLIYqpN/4D9SiTwluUw9HqNnOd+ooJDHyhxj/pbWiCTyX8RTt4969sjkdnL78K3W5QCh/o15THar+c5mqIttZi9LkvnAC1u3ubf1zpbuWS8daXuyWFiyA3M3Se92VMczfx/0MJhI9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737554360; c=relaxed/simple;
	bh=A3C4gYhppuniiPw7B1IFPcvmmSv+NTGWD6uLyb/Q0YE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W1vrvBkwrxub5PJcQZ1csxJVaRI7eJmpSwmUP2Ij1lFtrdm8AOUqnZC7PByd3h3DlkolBblU3ZhiRalwbceHJEKh5Mm2+0Yd8YzxeTPEL6j5O2tDztxaDUvzdiH15H4s0ESulJlglxhURkUP/hhT3soIeMznKp4Rt95PE/q72NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=12SgurZl; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436249df846so47994855e9.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737554355; x=1738159155; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=slHK6g+A3rv9otmptQvZeMFEpwk93d2jnoJ5fvlPAeI=;
        b=12SgurZlOvoy2IaVSCjTA8bLkqh4eMn3B90vDCd9hQIHmdtCdY2/MPDsYUhLDtdvEQ
         Ibjwer1fYJlxSoFciqt7anNDQ7NhCafRUOaczz7UOqVIb1MRuwZnVuAEkya/F82vqaNu
         7sFf+QMHPiYXcGOL+I15gDl+KT0/ftRGaOnO0cFyjinykkUiCh4IUzd2z2kiQq+H6O5R
         5rJ01KrlsytEkHBAp7akClqsirUMcY/GAFAU9M/YjRREQzA9PEU2iXfSeYdUYGT7eqy1
         XuznLQlNYvNk0rvd/np0DpFIC+eaFwDZ6NLha31K0LKq9tlds+kaFgMhJPmEIjfXoHTd
         Ccfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737554355; x=1738159155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slHK6g+A3rv9otmptQvZeMFEpwk93d2jnoJ5fvlPAeI=;
        b=uT56CLshBbyQTykKnKFQIBcrRTmo07B+lbIk9n9wuXACunh/Kx1kRzFIG0SwYQbvP+
         K6X55g7RKGESa4U9RG/wj3KBwFvpcBKsKkilyKvVcS/wuSYmq0SvaPNqbbnOhOrTMC/n
         XBwyqiCUqNsnHNsf4udvBJ+4uaYcdQyRLJJOUYV9WTMqPA1siZErcb2QL9/2nsNPfZJK
         qtWqg9LMs5tfAa4IQB3Qq3dONOCtN5sa5H9Rqj/nofOl1ESb5xfvHRHugyy35+m6cJoe
         YkBvp0oWxUMjdGHsKSjgtyoIvW8zVyyMVqsZMILPO2Bpl3V0SsbUCwj3qbXckY9KmECC
         ovpg==
X-Forwarded-Encrypted: i=1; AJvYcCU4eD36LsQ9kAve2yaTR3Epu3KThi3l27U43zfIs7tESUVl5nPGGIgePenNUkyfCwoYX7zIZRVy2b7N@vger.kernel.org
X-Gm-Message-State: AOJu0YzVA8NdahFs+XsQqTl+b+l8NduFQoF782wFADiztgI6SY0HDXeg
	qFJg5zM3E9BFEn3QlRCtYujlF3nQhqI2YIdZ0UYif9/UFHG5T5vBOpbRhAv1mqEc+Y2xogI0V7D
	UquI=
X-Gm-Gg: ASbGncvmnf9UoL5q+b/p9nQBnWAD01s4z0WnRQ2WD4SLH0gu+5r87WMf+KD3xHZonmz
	mI8yArUKq4n2JWKxbGsk3cnLnY3pPFbYZ+jL0qMNWQlznrxa/sHo8CoFqHbWHPF3a4Z3tDhDeFs
	qzsN6Oe2EMQlyjsOgyCdazrhi6HTtrxU0O9YkzhFVS42L/2JsMWw/bqXeWTcxo1YN0BLUS7zWjY
	lxIZfK1koqzmHv/X3bWsfxselJtzyv6zFDhwXVfm4yjbVcFCdtNdroYzmn3JXNon0f536OhT0IG
	dOXeEJIzpqLjjkfwOWHFGt/b4b4iKpvEZguCP5xKkZyB1XdxJ36+JSBeIFNNz6Gp
X-Google-Smtp-Source: AGHT+IF0hy1W+aOU+17Gl9ZkkzxB9r26l+V6pkPB5W+gpNC11wIBBPbUVioMHG0KQW/1aZTkvVvKsQ==
X-Received: by 2002:adf:f1cc:0:b0:38b:ed88:f045 with SMTP id ffacd0b85a97d-38bf566fb1bmr17093395f8f.33.1737554354727;
        Wed, 22 Jan 2025 05:59:14 -0800 (PST)
Received: from [192.168.42.0] (2a02-8428-e55b-1101-1e41-304e-170b-482f.rev.sfr.net. [2a02:8428:e55b:1101:1e41:304e:170b:482f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3278f06sm16418985f8f.70.2025.01.22.05.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 05:59:13 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 22 Jan 2025 14:59:11 +0100
Subject: [PATCH v8 2/5] dt-bindings: media: add mediatek ISP3.0 camsv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-add-mtk-isp-3-0-support-v8-2-a3d3731eef45@baylibre.com>
References: <20250122-add-mtk-isp-3-0-support-v8-0-a3d3731eef45@baylibre.com>
In-Reply-To: <20250122-add-mtk-isp-3-0-support-v8-0-a3d3731eef45@baylibre.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Andy Hsieh <andy.hsieh@mediatek.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Julien Stephan <jstephan@baylibre.com>, 
 Phi-bang Nguyen <pnguyen@baylibre.com>
X-Mailer: b4 0.14.2

From: Phi-bang Nguyen <pnguyen@baylibre.com>

This adds the bindings, for the ISP3.0 camsv module embedded in
some Mediatek SoC, such as the mt8365

Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../bindings/media/mediatek,mt8365-camsv.yaml      | 109 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 2 files changed, 110 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml b/Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..723df7c1a900ff6b72be084e09dfcf0190dee62f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2023 MediaTek, BayLibre
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/mediatek,mt8365-camsv.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek CAMSV 3.0
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+  - Julien Stephan <jstephan@baylibre.com>
+  - Andy Hsieh <andy.hsieh@mediatek.com>
+
+description:
+  The CAMSV is a video capture device that includes a DMA engine connected to
+  the SENINF CSI-2 receivers. The number of CAMSVs depend on the SoC model.
+
+properties:
+  compatible:
+    const: mediatek,mt8365-camsv
+
+  reg:
+    items:
+      - description: camsv base
+      - description: img0 base
+      - description: tg base
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: cam clock
+      - description: camtg clock
+      - description: camsv clock
+
+  clock-names:
+    items:
+      - const: cam
+      - const: camtg
+      - const: camsv
+
+  iommus:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Connection to the SENINF output
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+  - iommus
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mediatek,mt8365-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/memory/mediatek,mt8365-larb-port.h>
+    #include <dt-bindings/power/mediatek,mt8365-power.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        camsv@15050000 {
+            compatible = "mediatek,mt8365-camsv";
+            reg = <0 0x15050000 0 0x0040>,
+                  <0 0x15050208 0 0x0020>,
+                  <0 0x15050400 0 0x0100>;
+            interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_LOW>;
+            clocks = <&camsys CLK_CAM>,
+                     <&camsys CLK_CAMTG>,
+                     <&camsys CLK_CAMSV0>;
+            clock-names = "cam", "camtg", "camsv";
+            iommus = <&iommu M4U_PORT_CAM_IMGO>;
+            power-domains = <&spm MT8365_POWER_DOMAIN_CAM>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    camsv1_endpoint: endpoint {
+                        remote-endpoint = <&seninf_camsv1_endpoint>;
+                    };
+                };
+            };
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index a83db41ae0e9427e983e02f01aecb08193da3cd2..93d59c24befd990abd96ef585607992a6b231b72 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14759,6 +14759,7 @@ M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 M:	Julien Stephan <jstephan@baylibre.com>
 M:	Andy Hsieh <andy.hsieh@mediatek.com>
 S:	Supported
+F:	Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
 F:	Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml
 
 MEDIATEK SMI DRIVER

-- 
2.47.1


