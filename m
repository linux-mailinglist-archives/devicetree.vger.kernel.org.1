Return-Path: <devicetree+bounces-8313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC807C7A16
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:03:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 465421C20AAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5923D03F;
	Thu, 12 Oct 2023 23:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YLkb/zEI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05373D038
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:02:55 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68A98A9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:54 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c5c91bec75so12047205ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697151774; x=1697756574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yqkAgo/MWU32uTOpYWxBlk99kCXZj/R+2kdYHDmcPQ=;
        b=YLkb/zEIgErr7W5Ns7a5qrTYcRqXuZsUUm2dcznj61eRVviTk/IU+7RE2oDmhPxVLW
         kWnmUTed+tUy8a5+4pQnxc48/m2vMg/Irs/oC3SPcqeVZ1EhCxJjbezEouz2e9CzkuIt
         k1o0XMAr7ICA1hQSxYjx9qlyfgLSnfQ4h/Ngw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697151774; x=1697756574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8yqkAgo/MWU32uTOpYWxBlk99kCXZj/R+2kdYHDmcPQ=;
        b=aQWrqgvQaTdelCazpgXuJ4czSt0Q4mAz1J4AlIb1lf+xnbKlM71wWgCgc6C6Ndfxpt
         6KXe3zZoMnwtOz2O+vbxGsGHlr7sU8LaXMR+H0WNYf47T8LT+Wl4+Z+pj2rTeMbFsyAt
         dP6j61yBuGZnjI6DY2/o5RxoMEgyaiAhV7wTn2hT53iKR7wa5eMd28cadrk7cgZ8HtpG
         oIh7Lhwl3d4v4koIdIUMR9vBbz0n+rstp8bOEQDOZhfdyZhei4ZF1hxhS2+CtjlAqXRL
         JQoXZycuJthVWNIBeoAocpfdgZqHQw3KTY1Sb/e6kS+KLqI398wschY55IbAEDXdF+MM
         3yew==
X-Gm-Message-State: AOJu0YwbilTgqD9jOtxg1pYlJurjGrP9a4YD0n144zmEwzcynXDOjgKD
	RVXoHQfinulOcbY5lpyWY6DmIw==
X-Google-Smtp-Source: AGHT+IG4Jz3St0JSY+Xv22Ld5Lp75IMTOmETltc03cF5+vYAt26xlXAJR4aUtfFXw/keyYea6CEZbQ==
X-Received: by 2002:a17:902:e803:b0:1c6:2acc:62ea with SMTP id u3-20020a170902e80300b001c62acc62eamr28185711plg.57.1697151773931;
        Thu, 12 Oct 2023 16:02:53 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7397:2561:ed13:bac8])
        by smtp.gmail.com with ESMTPSA id g11-20020a1709026b4b00b001c613091aeasm2494390plt.297.2023.10.12.16.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 16:02:53 -0700 (PDT)
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
Subject: [PATCH 2/9] dt-bindings: arm: mediatek: Add MT8186 Tentacruel / Tentacool Chromebooks
Date: Fri, 13 Oct 2023 07:02:28 +0800
Message-ID: <20231012230237.2676469-3-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
In-Reply-To: <20231012230237.2676469-1-wenst@chromium.org>
References: <20231012230237.2676469-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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
 .../devicetree/bindings/arm/mediatek.yaml     | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 60337b439744..aa7e6734b336 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,32 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402F)
+        items:
+          - const: google,tentacruel-sku262144
+          - const: google,tentacruel-sku262145
+          - const: google,tentacruel-sku262146
+          - const: google,tentacruel-sku262147
+          - const: google,tentacruel
+          - const: mediatek,mt8186
+      - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402F)
+        items:
+          - const: google,tentacruel-sku262148
+          - const: google,tentacruel-sku262149
+          - const: google,tentacruel-sku262150
+          - const: google,tentacruel-sku262151
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
2.42.0.655.g421f12c284-goog


