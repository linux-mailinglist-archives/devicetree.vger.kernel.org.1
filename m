Return-Path: <devicetree+bounces-11463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A37F7D5D2A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C596C281A70
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB003F4CB;
	Tue, 24 Oct 2023 21:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="n6mpFgaa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634B43F4AE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:26:33 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AA9410DC
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:31 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cac925732fso33088365ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698182791; x=1698787591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WT+66IxyTrpqd+XpQ36/yDuTAp9fjV5BitgE+rccN5g=;
        b=n6mpFgaagbvLHgbvBBwqgY9A5XSf+81GHPrNwCsvAg439HncfiPSX16XOC1t2VNc76
         jOyyHyDtavMdiTPSLwNjRiNptMZPunawPdKNpfYMl2TMDQ4MLZu37sCOSJCKZturr4BQ
         Gqsa5SyQt0b+h/P9i9ylG4T4hjW34Br0JeQFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698182791; x=1698787591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WT+66IxyTrpqd+XpQ36/yDuTAp9fjV5BitgE+rccN5g=;
        b=wwYGXVKNwZb17qZnXOxK4bUG+h4AUY6vkXtTv1r95b99477J2gPgdZ3OH48JyzNdhR
         s/Slg8c3hxrgdVkLuKy+eKdaldUpVXNHvy6HjZDVB8OxeB9fyMs1RST6GOzTYCS3qavX
         mf8sActOHWqsTccqKRW5PiUCQ18CVqgwkTwus+2ZNyc1oZpfzxPsezMPeJUrXcKMojb0
         7/bhwGwsjsIErVZ1I8DHAd1x6JFCBTWzVK9igeDYSdtOabYVL5tWOTEBSuPoRVYjtlmF
         pabjccAkB9DCznrf0C7KQHsElFN1W11DD9xfCbFpVxY9ryk2NS2JTMgjFx0nVnKBsQbj
         Ay2g==
X-Gm-Message-State: AOJu0YxxiJGuYAsfczbXDZ5gwl5i7gM/HxwPM2Yy6TtM4Ys/hOR0E21e
	JWqektGOHgJWC+sOndGG7mzF9Q==
X-Google-Smtp-Source: AGHT+IGVLiHOuR2GYs8wtD+k2Vea4FG0aVST3WDGqFFF4fAgZggjmK9W2KiixVxe//eZy70KsoUejA==
X-Received: by 2002:a17:902:e851:b0:1c9:e3b1:1f4 with SMTP id t17-20020a170902e85100b001c9e3b101f4mr13859071plg.62.1698182790947;
        Tue, 24 Oct 2023 14:26:30 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902e74900b001b850c9d7b3sm7824140plf.249.2023.10.24.14.26.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:26:30 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 6/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-pico
Date: Tue, 24 Oct 2023 14:22:28 -0700
Message-ID: <20231024212618.1079676-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024212618.1079676-1-hsinyi@chromium.org>
References: <20231024212618.1079676-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pico (sku1) and pico6 (sku2).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index af1037a95fd5..f7e2b742c798 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,13 @@ properties:
           - const: google,makomo-rev5-sku1
           - const: google,makomo
           - const: mediatek,mt8183
+      - description: Google Pico (Acer Chromebook Spin 311)
+        items:
+          - enum:
+              - google,pico-sku1
+              - google,pico-sku2
+          - const: google,pico
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.42.0.758.gaed0368e0e-goog


