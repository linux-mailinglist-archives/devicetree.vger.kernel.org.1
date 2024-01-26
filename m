Return-Path: <devicetree+bounces-35404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C86583D5E9
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15559289C6B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011107E783;
	Fri, 26 Jan 2024 08:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ido/6WbC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC091CD3E
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706258297; cv=none; b=T/L55QhCA150zVDNmiH1o4+ygyyY6x8XvzkTnpgeuH3sNUvBeamxIayTXTSF8KCWpqFk8zJzS+CphaJ8BBt0T8hghi0480cBveRpQEWwGANuK+iwIJsDuj3amjgYcPzGP7RRcqRbiO2GMkzjP/Q5OJH5T5KvThgQrzJ50e8UNYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706258297; c=relaxed/simple;
	bh=TU+al1btcRCFuEg2mYMUIO4F1n9jUTjsi6M0Gg/QFwI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bsjlokh09aP5eewd4ub+HsnEYssMJOsU1CqnvUla8HQSCW6CqfPPnwR0XpmyRv0d+lhBBzQ018aAZNDaN9sZ0q0bDFV/j/2KIJbj8S8GBsHCaflXVpK6KuqlcabtqmpVPHOZoYoV2t+yg/Bs/Cn17bvsMIrZjD9mVMO/lr719Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ido/6WbC; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1d780a392fdso916745ad.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 00:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706258296; x=1706863096; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gS8snO1/vF+ftwDIApC4LGz0nYBLwZc4VG0Le1Mma9k=;
        b=ido/6WbC+LV0yUV1lJBhZEyJdbqCbVJMUnFUkbmWE9rGRpZnyPEUnQsJMbhKT+ZAsO
         fKJ+uVY+KL6kb9XLdlYIeaAx1yvo9tf9yh9zvvRSpH/jUBPMPLcjicuRm74lPfAzBum8
         pm5VpWoMw6w9kYvS2OQJDAtw14yoa8c658oCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706258296; x=1706863096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gS8snO1/vF+ftwDIApC4LGz0nYBLwZc4VG0Le1Mma9k=;
        b=B2PiuHbFxZEHHtJOhqRu9p/iEe1j3gaWN3Et0OwPWzgVrfqVh+fztrLynvFi1L/GM5
         KKXeyWECpBD4rMwZwmO8BAwrG/UlzFXaAebc8e9tT7hZsUTrRz1oWMwvgq3gEVm8VIqV
         /WTy7iOVyoeiGoUmVeErZFy3hrJH+dnXV70LCpCR62Q4UadJKb9//BwcSc1dYWnBbcgT
         FQwisdAuKpf3mVvzbjuKfjo7Rl9hANyd+JqTO+v/WZbgo9TuMJnbEiY4whfTM4BrH6ir
         I4RGlM/k07HUYV1ort4QXuurfamtuArJeLF0U+2kwN8akWWh5QpRoJcC/1nE9Jp5iWUU
         z/MA==
X-Gm-Message-State: AOJu0YzieZbQbkGzUmcvAYBEerohQ4U5v8VPJTuBAoyhBAdBxs6C6UL7
	EBbx1MrFPQL8f0GzjMT86Q+lN8J6F2X+dsyDcpW3MHELwCu9QPjVL2XzbdZIbw==
X-Google-Smtp-Source: AGHT+IGb1iSrCmFpZJqA/bh3JVr7eCv2x6g8CWMwfTDUGnDZw5Z2uX2Beiufw/YNw73Dkv40JOHk9g==
X-Received: by 2002:a17:902:e546:b0:1d7:450c:be68 with SMTP id n6-20020a170902e54600b001d7450cbe68mr1389129plf.66.1706258295724;
        Fri, 26 Jan 2024 00:38:15 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2614:bbbd:8db2:1f54])
        by smtp.gmail.com with ESMTPSA id b2-20020a170902a9c200b001d6ff1795aesm589529plr.8.2024.01.26.00.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 00:38:15 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eugen Hristev <eugen.hristev@collabora.com>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/9] dt-bindings: arm: mediatek: Sort entries by SoC then board compatibles
Date: Fri, 26 Jan 2024 16:37:50 +0800
Message-ID: <20240126083802.2728610-2-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240126083802.2728610-1-wenst@chromium.org>
References: <20240126083802.2728610-1-wenst@chromium.org>
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
Changes since v4:
- Rebased and fit in mt8188-evb
Changes since v3:
- Collected reviewed-by from Angelo
Changes since v2:
- none
Changes since v1:
- Collected ack from Conor
---
 .../devicetree/bindings/arm/mediatek.yaml     | 131 +++++++++---------
 1 file changed, 66 insertions(+), 65 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 12cf02b30967..dd5240b03d6c 100644
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
@@ -137,75 +138,10 @@ properties:
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
-              - mediatek,mt8188-evb
-          - const: mediatek,mt8188
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
@@ -263,6 +199,13 @@ properties:
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
       - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
         items:
           - enum:
@@ -284,10 +227,68 @@ properties:
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
+      - items:
+          - enum:
+              - mediatek,mt8188-evb
+          - const: mediatek,mt8188
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
2.43.0.429.g432eaa2c6b-goog


