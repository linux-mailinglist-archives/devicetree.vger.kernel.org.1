Return-Path: <devicetree+bounces-24834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 748F58115A3
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 869B01C2114F
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6113E2FC40;
	Wed, 13 Dec 2023 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="chmYBad3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D53283
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:50 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1d06d42a58aso65372255ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702479890; x=1703084690; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RaIqa889/Xel1qXaRfMAUx4gwV9LpaUtBao8QbW7li0=;
        b=chmYBad3NlKoCwbX2VSCliQWPX02ZIp8kj0AYsMPCVgpB2jXdCB2cWLUXFWqeBku+w
         2noztKABpHORAlS50kqmrJG0w8v9woFiTI1xXzLT1dYR1zT5ZcsIipstubpomBJLAcNW
         v+41zJEuYpCPpAkeiP35EDRAAA/dblskIEwIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479890; x=1703084690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RaIqa889/Xel1qXaRfMAUx4gwV9LpaUtBao8QbW7li0=;
        b=Cfj+5G6SzDNo3BM4mYoeHoW4KmdxRyWXjngYcq442Ae6WntxtGpbuH43lcq569vfna
         1dVzB/bTI1g5wcqaG8DOFR0AZLAVjF+53tQIIB5vorZyqXurqN5uql6ztK0iqOsRkNEd
         nqy6+59aLIdh1DOWw7kwpvN+z6UV6tyCCXT01Ij4IeCZCLwYulMPI0x+9NpJl9lsaHVe
         zG0c772FpBQZtDlRSDcrwOZXeRODjHQxKcYVj6MfLX5eQarsMckLtHqug/zy0xr17w7W
         3xix30s7wjfh81QebMilNQFVU0DD7rSrnxiKZQH+u2Rw+UpW5NnBhaTRhZa5yEwEfrpL
         8VSw==
X-Gm-Message-State: AOJu0YwsCa4SRgQGzhqLZp5yXFZ8LmE1UoMClSp9xPmlEZx61I3sJ7DU
	8znnlziPQel7vWd7cN/gSVKH/Q==
X-Google-Smtp-Source: AGHT+IFPslvGmSHSuJ6L7UZlvykY2i+KO9+vuT0SLddZnTt8oGEn1NhI93wX2VsqNAF5KCdg6GM+ow==
X-Received: by 2002:a17:902:ab83:b0:1d0:6ffd:e2ef with SMTP id f3-20020a170902ab8300b001d06ffde2efmr7719522plr.137.1702479889748;
        Wed, 13 Dec 2023 07:04:49 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1974:9e2:4915:58b0])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709027e8f00b001cc2dc61c99sm813808pla.22.2023.12.13.07.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:04:49 -0800 (PST)
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
Subject: [PATCH v4 1/9] dt-bindings: arm: mediatek: Sort entries by SoC then board compatibles
Date: Wed, 13 Dec 2023 23:04:25 +0800
Message-ID: <20231213150435.4134390-2-wenst@chromium.org>
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

Some of the new MediaTek board entries were inserted in a chronological
order, or just randomly. This makes it harder to search for an entry.

Sort the entries by first grouping by SoC, then sorting by board
compatible strings. Also add a comment at the top asking people to do
the same.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes since v3:
- Collected reviewed-by from Angelo
Changes since v2:
- none
Changes since v1:
- Collected ack from Conor
---
 .../devicetree/bindings/arm/mediatek.yaml     | 123 +++++++++---------
 1 file changed, 62 insertions(+), 61 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a5999b3afc35..60337b439744 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -17,6 +17,7 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      # Sort by SoC (last) compatible, then board compatible
       - items:
           - enum:
               - mediatek,mt2701-evb
@@ -129,71 +130,10 @@ properties:
           - enum:
               - mediatek,mt8173-evb
           - const: mediatek,mt8173
-      - items:
-          - enum:
-              - mediatek,mt8183-evb
-          - const: mediatek,mt8183
-      - description: Google Hayato rev5
-        items:
-          - const: google,hayato-rev5-sku2
-          - const: google,hayato-sku2
-          - const: google,hayato
-          - const: mediatek,mt8192
-      - description: Google Hayato
-        items:
-          - const: google,hayato-rev1
-          - const: google,hayato
-          - const: mediatek,mt8192
-      - description: Google Spherion rev4 (Acer Chromebook 514)
-        items:
-          - const: google,spherion-rev4
-          - const: google,spherion
-          - const: mediatek,mt8192
-      - description: Google Spherion (Acer Chromebook 514)
-        items:
-          - const: google,spherion-rev3
-          - const: google,spherion-rev2
-          - const: google,spherion-rev1
-          - const: google,spherion-rev0
-          - const: google,spherion
-          - const: mediatek,mt8192
-      - description: Acer Tomato (Acer Chromebook Spin 513 CP513-2H)
-        items:
-          - enum:
-              - google,tomato-rev2
-              - google,tomato-rev1
-          - const: google,tomato
-          - const: mediatek,mt8195
-      - description: Acer Tomato rev3 - 4 (Acer Chromebook Spin 513 CP513-2H)
-        items:
-          - const: google,tomato-rev4
-          - const: google,tomato-rev3
-          - const: google,tomato
-          - const: mediatek,mt8195
-      - items:
-          - enum:
-              - mediatek,mt8186-evb
-          - const: mediatek,mt8186
-      - items:
-          - enum:
-              - mediatek,mt8192-evb
-          - const: mediatek,mt8192
-      - items:
-          - enum:
-              - mediatek,mt8195-demo
-              - mediatek,mt8195-evb
-          - const: mediatek,mt8195
       - description: Google Burnet (HP Chromebook x360 11MK G3 EE)
         items:
           - const: google,burnet
           - const: mediatek,mt8183
-      - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
-        items:
-          - enum:
-              - google,krane-sku0
-              - google,krane-sku176
-          - const: google,krane
-          - const: mediatek,mt8183
       - description: Google Cozmo (Acer Chromebook 314)
         items:
           - const: google,cozmo
@@ -244,6 +184,13 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
+        items:
+          - enum:
+              - google,krane-sku0
+              - google,krane-sku176
+          - const: google,krane
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
@@ -251,10 +198,64 @@ properties:
               - google,willow-sku1
           - const: google,willow
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8183-evb
+          - const: mediatek,mt8183
       - items:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8186-evb
+          - const: mediatek,mt8186
+      - description: Google Hayato
+        items:
+          - const: google,hayato-rev1
+          - const: google,hayato
+          - const: mediatek,mt8192
+      - description: Google Hayato rev5
+        items:
+          - const: google,hayato-rev5-sku2
+          - const: google,hayato-sku2
+          - const: google,hayato
+          - const: mediatek,mt8192
+      - description: Google Spherion (Acer Chromebook 514)
+        items:
+          - const: google,spherion-rev3
+          - const: google,spherion-rev2
+          - const: google,spherion-rev1
+          - const: google,spherion-rev0
+          - const: google,spherion
+          - const: mediatek,mt8192
+      - description: Google Spherion rev4 (Acer Chromebook 514)
+        items:
+          - const: google,spherion-rev4
+          - const: google,spherion
+          - const: mediatek,mt8192
+      - items:
+          - enum:
+              - mediatek,mt8192-evb
+          - const: mediatek,mt8192
+      - description: Acer Tomato (Acer Chromebook Spin 513 CP513-2H)
+        items:
+          - enum:
+              - google,tomato-rev2
+              - google,tomato-rev1
+          - const: google,tomato
+          - const: mediatek,mt8195
+      - description: Acer Tomato rev3 - 4 (Acer Chromebook Spin 513 CP513-2H)
+        items:
+          - const: google,tomato-rev4
+          - const: google,tomato-rev3
+          - const: google,tomato
+          - const: mediatek,mt8195
+      - items:
+          - enum:
+              - mediatek,mt8195-demo
+              - mediatek,mt8195-evb
+          - const: mediatek,mt8195
       - items:
           - enum:
               - mediatek,mt8365-evk
-- 
2.43.0.472.g3155946c3a-goog


