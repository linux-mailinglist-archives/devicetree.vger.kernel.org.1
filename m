Return-Path: <devicetree+bounces-24836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A374A8115AC
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE79D1C20831
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8D62FE24;
	Wed, 13 Dec 2023 15:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CYhsugQD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A081B9
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:55 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d345b187bbso13862495ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702479895; x=1703084695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g5iSRDewShTPXxKrQl9ZbdBaDFVN8OqSrgR14MEC1bo=;
        b=CYhsugQDX7/PIQGMouNzFVxZ74VhphuO6ie6C+xZ5XkP0YZ1aCKbUBGLOQDXYeu5xp
         ZyThTlkUK983N7iKLYFToYwaSnrbmPc5tXM4xGcmguRhijPk8VVf0v1Heos5kfFpej0P
         HeapEyEocgZPoIAp8S6oMzXuD1nmn3jgXA+Vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479895; x=1703084695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g5iSRDewShTPXxKrQl9ZbdBaDFVN8OqSrgR14MEC1bo=;
        b=sSDsXEr/Gl0JSN648/9NVkJ2QBWOWa+6pVvvJbPiHXVR2HHF6P6nTppna3ZI48B5yb
         yYS8fAb05WqQi3aEs4bDDAgsiiI9Jr33lnklx7LBpEOgKYTQWpMFQ5wo6LrmUCl4VIHh
         r9hqom7rO3emiTkaU0byhEqXP+UF76FBuzxnpsxutIUDiy+EvLPcIab8Wj8yQybeFuAd
         /ZByEK5rsG8snPwe9xMOB8yz5mOoM5bQKkqj/3EbLuYOvhLEGBZGZF4bfaZBmqbABUv/
         0sq4Zh6YaPI/fF8oRtVz+lBqfTIcnaWtiFZPIwvOuT4rhKh7sZZ/+fK1X5lRzPbRk+pH
         rg7g==
X-Gm-Message-State: AOJu0YyJ/gM9cubp+XDYLf/HD4eAAA6o40LZNkDfg4FKAe1zQAsBF7sn
	nlswnkDYyDELFHkL6UKqPL9Uiw==
X-Google-Smtp-Source: AGHT+IF2D6t1zTEzAvgIYyo0Wejm3JOajy+YfsbKc5W0Cj+mJTZHrPx+Rox/JQkhkLD6UyMsqVq3kg==
X-Received: by 2002:a17:902:eb88:b0:1d0:265:6a2c with SMTP id q8-20020a170902eb8800b001d002656a2cmr9652280plg.11.1702479894838;
        Wed, 13 Dec 2023 07:04:54 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1974:9e2:4915:58b0])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709027e8f00b001cc2dc61c99sm813808pla.22.2023.12.13.07.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:04:54 -0800 (PST)
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
Subject: [PATCH v4 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix Chromebook
Date: Wed, 13 Dec 2023 23:04:27 +0800
Message-ID: <20231213150435.4134390-4-wenst@chromium.org>
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

Add an entry for the MT8186 based Steelix Chromebook, also known as the
Lenovo 300e Yoga Chromebook Gen 4.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes since v3:
- Collected reviewed-by from Angelo

Changes since v2:
- Picked up Conor's ack
Changes since v1:
none
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 709a1292bca7..95d2b430ab17 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,13 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
+        items:
+          - enum:
+              - google,steelix-sku131072
+              - google,steelix-sku131073
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402F)
         items:
           - const: google,tentacruel-sku262147
-- 
2.43.0.472.g3155946c3a-goog


