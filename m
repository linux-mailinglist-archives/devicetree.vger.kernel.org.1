Return-Path: <devicetree+bounces-21222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA45802D69
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:42:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D7801C2031B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335ADE565;
	Mon,  4 Dec 2023 08:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nu/zG422"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 723FC125
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:42:29 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-286c01bff06so195351a91.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 00:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701679348; x=1702284148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/wldu9pXjNyIoX3DoG7mDhf3kQNOoAJ2MdYX0EVUOaU=;
        b=nu/zG4220bD1pvpdU20ZMmQlxJdtutiFJ/U8+c6BlJFEbkgM/dtWIE61/iQBTd027Y
         Zh0ITNxBKFTRcBHt2/l61WgwLbyBLF07Ivgge1fJDrpFvkrm38qSM5BvLK0JmthaJ58t
         TBnpP58ltvdvGeHadDwe7v+t2htxIWzZ32ZKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679348; x=1702284148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/wldu9pXjNyIoX3DoG7mDhf3kQNOoAJ2MdYX0EVUOaU=;
        b=cxit6rzUxS9JDmau7Ml7Q7renY8onxw7c8vQbLXpoMNPHZ4Dy+YEN/Aj4hRqwF7q+Q
         Zap3SzwujFGip3HPQI2iva05sQZ2qnX/XZI7fFUX+mYobMxs5tAdMcwK2Q/nZJzNCfdn
         pFTt7rj84yXKiujPATfLdJb/qx0IinJwDFzqlEUaNbTaOGq5i523qSzMRe+tewEbskZn
         VjNKbbQXJqwBTMGwscZzbgX6UalS8EUzNKfTl50/deZbwrmwfU39aGsH0IZxhgluz2bb
         OgmBYWkKWmVrEQTYzQ+ABFgwX9KQco59z/a/OU/sQz8px2WlxLdgkuRv19pfW9PhdCX2
         a0pA==
X-Gm-Message-State: AOJu0Yy9CtqM06zBqcDYU1adAIXj6OLHv8Br1QqbwfGuumAU/lrUAZOs
	0eYjMS2oT2x5HG7jnP1y5FxwKA==
X-Google-Smtp-Source: AGHT+IHjP/Qz9KwXm+qsjE9MAMvFkbEOBOOQnl7A/qRz7yN22jPCAKlx5OMx/9Xzixd9HImd+rjxFg==
X-Received: by 2002:a17:90b:4b4d:b0:286:a27a:f244 with SMTP id mi13-20020a17090b4b4d00b00286a27af244mr607210pjb.22.1701679348562;
        Mon, 04 Dec 2023 00:42:28 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6084:72e2:9ac2:f115])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709028a8e00b001cfc3f73927sm7871795plo.9.2023.12.04.00.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 00:42:28 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 4/9] dt-bindings: arm: mediatek: Add MT8186 Rusty Chromebook
Date: Mon,  4 Dec 2023 16:40:06 +0800
Message-ID: <20231204084012.2281292-5-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231204084012.2281292-1-wenst@chromium.org>
References: <20231204084012.2281292-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Rusty Chromebook, also known as the
Lenovo 100e Chromebook Gen 4.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v2:
- Picked up Conor's ack

Changes since v1:
- Reorder SKU numbers in descending order.

 Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 95d2b430ab17..85d394e390f0 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,12 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
+        items:
+          - const: google,steelix-sku196609
+          - const: google,steelix-sku196608
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.43.0.rc2.451.g8631bc7472-goog


