Return-Path: <devicetree+bounces-24835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E078115A7
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00FA01F21684
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5502FC5B;
	Wed, 13 Dec 2023 15:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BAKaW9t4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D702DF2
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:52 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1d0aaa979f0so40693075ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702479892; x=1703084692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MkDekqAXqNqSyCz+/cVaWMtnSMsPpAtTud5OI2FYEUE=;
        b=BAKaW9t4dicA9k69OPEhW0TezPAISBRxT3LsNe4ZEQioS++OKUC5PTZCg8gGZiCRYF
         2ozg0og2ccmWo4o8/MCBxmnYiNxHW48jwf04LM/346Y8MomKCNQ8OR9WlecorOpOmt9r
         vGdjTTmcuOxh0jkpPdKXLbraKdqF/3K5h6/xU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479892; x=1703084692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MkDekqAXqNqSyCz+/cVaWMtnSMsPpAtTud5OI2FYEUE=;
        b=Ea15N6ReYNrNEBxoiqxfS0iFBvFDpMsDGYSuBmA3n8IDjDOhCQkvnKMeZEIv15QSDo
         7quysIbulYLz6RLGenqlEZIvQZqD7u3dQ7RPha7/+bhfJ8ui5r62EdFBwQFui9RQw16K
         i5L0pdAx2Q4J4ObihbgmmXoJVhOtxyY4LgcrdX9WmsQ1zDDBQIopL4X4KCJ72fGL4PGy
         jaTz/x3CuMLMHojmIRG5qcu153FUZV7CL3ROMo9Av4a169kmLAZd3zAYE3ROIZcMo8Ee
         CY4SsrCm18kB8w7JHWijUzI4179KBxsq+gallLpvrLNeBhkmeUaNSC10ari4NU/OyqYU
         exig==
X-Gm-Message-State: AOJu0YweHnHvTn4qV9/sgOjQ+i54EqMXhc4xramvdvLvZUyjCGr7BVeP
	/U8gQPZ1rtbZSUqjTplnHy1Q7g==
X-Google-Smtp-Source: AGHT+IHuPKZbU48xMs/jN6pDfLmqb+wN8DW7c1EAjkTR1Tc/ThfubspLReOTlvwHdCResn22tFrprg==
X-Received: by 2002:a17:903:486:b0:1d3:4e4f:a182 with SMTP id jj6-20020a170903048600b001d34e4fa182mr450052plb.94.1702479892315;
        Wed, 13 Dec 2023 07:04:52 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1974:9e2:4915:58b0])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709027e8f00b001cc2dc61c99sm813808pla.22.2023.12.13.07.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:04:51 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Eugen Hristev <eugen.hristev@collabora.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/9] dt-bindings: arm: mediatek: Add MT8186 Tentacruel / Tentacool Chromebooks
Date: Wed, 13 Dec 2023 23:04:26 +0800
Message-ID: <20231213150435.4134390-3-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231213150435.4134390-1-wenst@chromium.org>
References: <20231213150435.4134390-1-wenst@chromium.org>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes since v3:
- Collected reviewed-by from Angelo

Changes since v2:
- Picked up Conor's ack

Changes since v1:
- Reorder SKU numbers in descending order.
---
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
2.43.0.472.g3155946c3a-goog


