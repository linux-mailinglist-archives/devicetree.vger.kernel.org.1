Return-Path: <devicetree+bounces-10955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B266D7D39A1
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C5FC28130C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168A110A22;
	Mon, 23 Oct 2023 14:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NU0b+bx5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A03314A84
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:40:47 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 437D510E3
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:44 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-77386822cfbso216552085a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072043; x=1698676843; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZz9i6ImFQmqM4y5QrZ6koA95MCCt5tnF575J5PorR0=;
        b=NU0b+bx5lgPdDwvG6dMkWhCIboFFP0r/V6ZAxZeu/GdcsDiY3j9tWg+GcXfT77Y2ck
         K/T6wSsur7lWaq03vM9DHkLS2Aj8jA6bfrD8jgo+sxvehqqASATp7wGuamI30xHgZ0XF
         6rjM8/WH3xVpRWe0fttf5SJjuVZ9NFS3Cms3Vj8GAdowtj/vHPhTeMkHXQMv0VuWLjo3
         NmIxneiCm6Li0t8ttGiGC0zkNDSFC2gsLG98JZVTRzqs+OoypW7rrt4IMKeT+aBJvYsX
         HxiHODIpcg5j3+YRl824hLwior+ei+imdsP4Ai2wXpk42qNHOgc1oQEDWK/gel5iJ8cj
         FSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072043; x=1698676843;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JZz9i6ImFQmqM4y5QrZ6koA95MCCt5tnF575J5PorR0=;
        b=PMzeDx41UQ6zY6OysaDkc/3gblqzXlDO1uWemjjlbcQTN9SoIlsqK1xB3ZdbvG4LdA
         i+3UkBw/FSNhoYvS9u8pDcy3lv9LIHwNMN9i8uejiOzRIQRPFcafGTvsy4iZwn2GegeY
         EW924dC9tDyHuULakTakIynEEkZeRdQACZUXERCYjFVdzK0O6ArxEkASslmNau+Fq0oG
         fH2Mot3r965xP0ChelYhH/RY6Uppt8ZxOqUNrSYSk87pNn2RhNJZe/qmBpubp4+AGBCg
         /DLw2cC15d1WSGNuBfl3sGTKE3S/fc1Vnk/y0CRw/GG7WZqId3jsl8e4nwpPV3fT9zon
         D/5A==
X-Gm-Message-State: AOJu0YxQfMeqds9r/ffKM6hIWl12TDp7liouotWD0Q3JVYLKj679+4wz
	BbcKqCc1RHYKdcc2KExlpunpXQ==
X-Google-Smtp-Source: AGHT+IHbPwl6Xj7okP15FlZMJetuD29qDDNSXkimIr93x9jaXLYk5EpuaT+glnhtgHxMvP6epra6AA==
X-Received: by 2002:a05:620a:4308:b0:778:8fee:e863 with SMTP id u8-20020a05620a430800b007788feee863mr10472895qko.75.1698072043216;
        Mon, 23 Oct 2023 07:40:43 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:42 -0700 (PDT)
From: amergnat@baylibre.com
Date: Mon, 23 Oct 2023 16:40:07 +0200
Subject: [PATCH 07/18] dt-bindings: display: mediatek: dpi: add binding for
 MT8365
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-7-5c860ed5c33b@baylibre.com>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1806; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=jKTgLJ7tZRm38ANNnWtNI/u763F2Jj1UVc7V+THD25Q=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXPxIX1QNuRobZW6u5aV9tmmhhr5yqPuC817lI4
 62W3Xv6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURQE3D/
 9gh0ybUwT+mSx5ZgcOKs8AfJtTZow7les4rs5WdR/ORkQzY6kXCEPQHJGwSm0pR6fHVeLntm2PWxpi
 78A3aSvnwtOhVtVJoriEEqc3VPTXLDGdncGNzxQgHjIaJf/qf0g3vXhMbQvnMcTGQKq0P7ofP70yRS
 yp3iq2ADrr+onPPVI9x5OqNqqrgou/rGorFRI3j6YUcUVuRk0eTZw2mvQPpRvhPou7cvlatR+mcOQd
 berg1tg3/mYPJutWXRz5ap4f1oflMYsg3i9spOCvvx7hjuYxBpU1hHWorYsM9gg0IcXml/oWyQKiQM
 17TD0yEEYJ/kIkt+1+FITaxqJIiV1yZC2y7/mWDR9lnavla8+8MVs7z/ISJu+CDzxrBIQyiBnSQ9Dd
 nEexfUsenm4xIu0EvfZMG1E3iAHqfb84Y4Pm8Ot7gLwQ0Ng2dN5kKXmT5Y0RgVOoRgtNmNyJmJiJ0Z
 SL6XNuTP80brDNxMxods4dmBecGPUVrhSMLc+2jle6uyNYeODCCeLeCW9AqK4oBI+BgchKhuIOoHCl
 +ER5rAlg0xyfWbsj1xq00CDmneG0+on57XQ++jBfGnGN6Ia/00PiXrCamZVX8HYu5PLJa1oS/DykiZ
 RsA4SIdFr0mQ+fJ9a1qydzvN8kxnhcf4lPkehbldTFcp7ns0U5UFtjtzHABQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Fabien Parent <fparent@baylibre.com>

DPI for MT8365 is compatible with MT8192 but requires an additional
clock. Modify the documentation to requires this clock only on MT8365 SoCs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../bindings/display/mediatek/mediatek,dpi.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index e126486e8eac..c86527c33acf 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -27,6 +27,7 @@ properties:
           - mediatek,mt8188-dp-intf
           - mediatek,mt8192-dpi
           - mediatek,mt8195-dp-intf
+          - mediatek,mt8365-dpi
       - items:
           - enum:
               - mediatek,mt6795-dpi
@@ -39,16 +40,20 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description: Pixel Clock
       - description: Engine Clock
       - description: DPI PLL
+      - description: DPI Clock
 
   clock-names:
+    minItems: 3
     items:
       - const: pixel
       - const: engine
       - const: pll
+      - const: dpi
 
   pinctrl-0: true
   pinctrl-1: true
@@ -77,6 +82,20 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8365-dpi
+
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          minItems: 4
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>

-- 
2.25.1


