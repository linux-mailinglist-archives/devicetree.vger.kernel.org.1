Return-Path: <devicetree+bounces-20584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2685280045E
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD020B211D8
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 07:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB5D11C9F;
	Fri,  1 Dec 2023 07:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AM+yOlAo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D24A103
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:41 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1d03bcf27e9so2080705ad.0
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701414460; x=1702019260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQHpVtx+LpswpCMfXbkO632FqFsBYitErFq0gVprKlw=;
        b=AM+yOlAoi5iFm+Ey4GEqABqXloQqNxk4RC1KNW/MLAV632cT+E3wr4tUH15iYDoGas
         PgPPI89b5iLrJPgb5Bpi/Zesf0njhmR698T35KTuW7RG5uefVfI7o6qnYVNh13qMt/Q/
         7WdxdcYBqwlm8QjIfg3UUgt4jgH+gZ8a2hTmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701414460; x=1702019260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQHpVtx+LpswpCMfXbkO632FqFsBYitErFq0gVprKlw=;
        b=WT+9T8bT8+m2DgWKtZkJZohr/QBY/mkwyE4oncbSHPo2e/8gLgATVpQxRLNdHU5k+X
         9bY5LVuwM0PwzWjdkhnoySkPCUWyhZEACxNQn2ExqJJZxaEMXruZrcHcZaVbXO+ZaH8b
         hJ0+PjxqTDXozW/OZQDhovxMcsOcXQy9bmLvlU2pGqM0GISRMeVuMXrzuV3o6PjxwFaU
         jddERyKBOS/Satscwzcfnf1KUTdFNfPFeciIqnil9SuKZURrMw7okCn60rht8DsTTy5k
         4SR6c8WlQxeMATqOqoKfGPcEXb5Y4LE3SGxi2QmmpYm9jZOV77WRyBW3539k4wetzXYb
         vtMA==
X-Gm-Message-State: AOJu0YzV9lOripbwhUuaO3hV1CRX+P12Sx/VoNTUt0xL2cA/jvML4kdw
	bMGoN3o0IXhhxxAsJzymwsd+dA==
X-Google-Smtp-Source: AGHT+IGrBVTo/lx4apWNRjqAHz5Fo0G+dTOBGULwAUgJTeKOs+idQWSAwPIk2NfwmZzh5FBumBHi6g==
X-Received: by 2002:a17:903:41d1:b0:1cf:a718:3ac with SMTP id u17-20020a17090341d100b001cfa71803acmr25221498ple.13.1701414460352;
        Thu, 30 Nov 2023 23:07:40 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:720a:d435:c253:2402])
        by smtp.gmail.com with ESMTPSA id y10-20020a1709027c8a00b001cfa0c04553sm2558684pll.116.2023.11.30.23.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 23:07:40 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/9] dt-bindings: arm: mediatek: Add MT8186 Tentacruel / Tentacool Chromebooks
Date: Fri,  1 Dec 2023 15:07:06 +0800
Message-ID: <20231201070719.1229447-3-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231201070719.1229447-1-wenst@chromium.org>
References: <20231201070719.1229447-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entries for MT8186 based Tentacruel / Tentacool Chromebooks. The two
are based on the same board design: the former is a convertible device
with a touchscreen, stylus, and some extra buttons; the latter is a
clamshell device and lacks these additional features.

The two devices both have two variants. The difference is a second
source touchpad controller that shares the same address as the original,
but is incompatible.

The extra SKU IDs for the Tentacruel devices map to different sensor
components attached to the Embedded Controller. These are not visible
to the main processor.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Reorder SKU numbers in descending order.

 .../devicetree/bindings/arm/mediatek.yaml     | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 60337b439744..709a1292bca7 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,32 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402F)
+        items:
+          - const: google,tentacruel-sku262147
+          - const: google,tentacruel-sku262146
+          - const: google,tentacruel-sku262145
+          - const: google,tentacruel-sku262144
+          - const: google,tentacruel
+          - const: mediatek,mt8186
+      - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402F)
+        items:
+          - const: google,tentacruel-sku262151
+          - const: google,tentacruel-sku262150
+          - const: google,tentacruel-sku262149
+          - const: google,tentacruel-sku262148
+          - const: google,tentacruel
+          - const: mediatek,mt8186
+      - description: Google Tentacool (ASUS Chromebook CM14 CM1402C)
+        items:
+          - const: google,tentacruel-sku327681
+          - const: google,tentacruel
+          - const: mediatek,mt8186
+      - description: Google Tentacool (ASUS Chromebook CM14 CM1402C)
+        items:
+          - const: google,tentacruel-sku327683
+          - const: google,tentacruel
+          - const: mediatek,mt8186
       - items:
           - enum:
               - mediatek,mt8186-evb
-- 
2.43.0.rc2.451.g8631bc7472-goog


