Return-Path: <devicetree+bounces-10959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D3F7D39B2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:41:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 300461C20910
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E94712B85;
	Mon, 23 Oct 2023 14:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wabt2kFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1681D10A22
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:41:09 +0000 (UTC)
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 818D110FE
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:58 -0700 (PDT)
Received: by mail-vk1-xa33.google.com with SMTP id 71dfb90a1353d-4a403fdebedso1239919e0c.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072057; x=1698676857; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ldEUxwW0Fy0mrzjboUPRF8EoX2iX0HxtTAw56Z0DCkc=;
        b=wabt2kFZTL+Zwb/XNWxzllEFDPHKguDA3Cy6bRrQLsb9DgwDMEuUfKeH9WRHOuPJpl
         brvpFFNTX/g+lWV/CLDB69wr01EMlp1ae546txwbHaeC75Jki8MIij3E6vOsBrrb8Lnb
         ambm++fBQ9i6MOPFlceHU/YMOQbIuobazkahWs/SUzjDAZMNGrFC2MllAPGJC4KO5Ga/
         sFFkOCB3ngLd9GWatxrhJGZXo2K8xm30LM31GEUO2guyDvqs3Kbv4iT+5LpDxfeFuCpQ
         SDA/DeFauzKgMCv+D9VMKsl3x58vc5J9Px0NyMQSa2eHbVmqZ4yLnvMNQxBXHNOBkXtN
         icqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072057; x=1698676857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ldEUxwW0Fy0mrzjboUPRF8EoX2iX0HxtTAw56Z0DCkc=;
        b=i4bnz08+t+6L1glcgidjqyNgsAiF1VhQdm1NzxuT75zmOmbKYtmfRLBQJCCBmjF0b4
         Fngt+IGDBcEGwNkaZakg6FBowi2d3urs6a5rHMD1E1uNeHxQwaU81F0MO1j+uSiP9aeK
         KuPqDe5q8ccD+7+Y1kpcY0hyTQ9j0OdcOZvgeQsE8GaVVKQB5+qVQcOgsyCzznoQeWIW
         I0Y0vAPuG1E3whxnfFwhZjUxC+LiAOTSuSRCsHmc74NexTX8zy7IfW/2BQDlR10EpUjV
         GZcns3jbjsuZpWdMz0aBKUgseoY9hdICJY0A/tflf7iC2QXoP+NUiwOQrhGa4tKDtKYE
         ZxrQ==
X-Gm-Message-State: AOJu0YxWB5qXV41fZlTg1apNYxqeQQtCbZBBTz2E02Sqb9NWxMmHflf2
	l1joQTXL+6hsN63PwGobzNEgrg==
X-Google-Smtp-Source: AGHT+IFLiGqYjYgkkmhbWIWlxZwOq0jwUvhrblN+PaMrfko4EvmObtO4ZiyTI0M3Yr+diwGb3WhYbg==
X-Received: by 2002:a67:b206:0:b0:44e:98d8:c62e with SMTP id b6-20020a67b206000000b0044e98d8c62emr8900193vsf.33.1698072056935;
        Mon, 23 Oct 2023 07:40:56 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:56 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:11 +0200
Subject: [PATCH 11/18] dt-bindings: pwm: add power-domains property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-11-5c860ed5c33b@baylibre.com>
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
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1511; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=DODtQ3KKkKmSOKStztk0HQRraEPq6Af8qZra+9tlquw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXPErWn29tQPCf4oVzASO7FUbuxbsUhXSJzI3GY
 C7jeCR+JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURXt/D/
 9MzVckTai5VFj0U2crACXdS3d85+cjns4FtKSUJrUj/WjckEkdp0JsdxKC1zFkNjWK0Ihsv/kw4yem
 CjzBSNb9MoorMzjySnhztrmePXHYs2TD7BKvHL3UzwQizLhHPUeK0tCLvMrfd3C+G3i//d5Im+GJ3v
 CPe74eH/Rt4ZHcSUt5BrjEeSfrCE+f5ge9YTMoV9VuuimUyfWf7CZnRzZdcDKZC8hkrn+f/17wtBMu
 R+oWl6HOInmMINApfqjKTEkiC6vMr1qcZPCT2DsKxjDoEFBacV1PVafe71gumjbFeRk215SA/PTx1/
 TH/xHn4Jwlrj94CzH1hUxoYbU74wGylMDpyjEAxRGamB/CBJMGOiksErFg4F4qCV58Q6E+DLMgSRM9
 qzBPT0RwgvjthxPYqCDZdm0LesHEhqcnu6q5IzWWAVF1x0uTl53lW58W0xjyGDQGfhgB50Q2wBQUAe
 ZyLLg1qCtnsSijsKnH7tmjpUGHyN3OTeaqztt5HgDvJBGOiuNyuA07yJIOB2gRt23IrtPo+wFZHtEX
 fLnYrGMi+HR8rtWvuWHDoUEPM3py0EML3ZNo5mOUBu28/m6ThGcgb87IVVXBJsybV0iJcia4VD1/Ox
 FjnvboSPmCb8+ILzMlww4Ln+u4fDTotP+vaGxPMNz4G5GF3MT+loseO0hexg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

According to the Mediatek datasheet, the display PWM block has a power
domain.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
index 153e146df7d4..efe0cacf55b7 100644
--- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
+++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
@@ -53,6 +53,12 @@ properties:
       - const: main
       - const: mm
 
+  power-domains:
+    maxItems: 1
+    description: A phandle and PM domain specifier as defined by bindings of
+      the power controller specified by phandle. See
+      Documentation/devicetree/bindings/power/power-domain.yaml for details.
+
 required:
   - compatible
   - reg
@@ -67,6 +73,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/clock/mt8173-clk.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     pwm0: pwm@1401e000 {
         compatible = "mediatek,mt8173-disp-pwm";
@@ -75,4 +82,5 @@ examples:
         clocks = <&mmsys CLK_MM_DISP_PWM026M>,
                  <&mmsys CLK_MM_DISP_PWM0MM>;
         clock-names = "main", "mm";
+        power-domains = <&spm MT8173_POWER_DOMAIN_MM>;
     };

-- 
2.25.1


