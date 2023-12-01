Return-Path: <devicetree+bounces-20585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C22DF80045C
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA8B21C20BEC
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 07:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37FB71173E;
	Fri,  1 Dec 2023 07:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kT02B5ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69F761724
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:43 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5c629a9fe79so158569a12.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701414463; x=1702019263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wu4WrQC62p9kUCUz6OnbUntEhdQYwvAf3l0CssAK7JA=;
        b=kT02B5psadlpL7w14obra4wEQA+xRKHN3FjKBFLZAjNK6vXzPCq3RYHLHWr4sNevBM
         rb8u5wWJEPGs2HRce2b27ihfapua92EwZoGyH3ZKSTDHMZibIq/t9uKd9Xc+SOd8wzTW
         rk9yQ/yrH+bQSCk0zoaPaZ/IhOKi4LQpn0PNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701414463; x=1702019263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wu4WrQC62p9kUCUz6OnbUntEhdQYwvAf3l0CssAK7JA=;
        b=PF+rGGFDDwBAEu6Mk9zfIq917YAY5Tou9vS+H/Z7GQV9fVpg31uNw+rgHZ+bCvIdNK
         dXfAAjV7DluaWKZNxxsUfiuH0ESZQ9kotwgehx/+w9PPQm83sUua/f0Nkrot8LvvPk4X
         s4PmeqJmak3tvXav4LEDQhBtC2JiLgToW46fWYX8UKfWM4wOZTyCy86f5fnukTm5I+Ks
         ZwQCTEEmqx8L/qBZIdEgZcjh1cHKZmUQBgrjap8R0yRJfQz1PRja7kzMO5IohGxl+uEZ
         iMvFHtFnuURohwKsXi9V+4Jj5EiBBCABfeKM3XJ9E+3ykzg0QwFmhp/OvDvqQ2qnImiA
         6NqA==
X-Gm-Message-State: AOJu0YyUYVU54iYY2dwwZv+eWf3qdVmDCQAdgXjddBQSXA7DJmQIwP0h
	GMRU+1B7zJC+1Fg2Gv/xkUvq7g==
X-Google-Smtp-Source: AGHT+IHuC2XOMcvUa6guDnbfMxkbtrmd0uvpo69WLURwN+EEHQyuU3bS/3XZkBo3D08ftm4E7KpHWw==
X-Received: by 2002:a17:90b:1644:b0:285:8a70:b557 with SMTP id il4-20020a17090b164400b002858a70b557mr24011996pjb.31.1701414462795;
        Thu, 30 Nov 2023 23:07:42 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:720a:d435:c253:2402])
        by smtp.gmail.com with ESMTPSA id y10-20020a1709027c8a00b001cfa0c04553sm2558684pll.116.2023.11.30.23.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 23:07:42 -0800 (PST)
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
Subject: [PATCH v2 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix Chromebook
Date: Fri,  1 Dec 2023 15:07:07 +0800
Message-ID: <20231201070719.1229447-4-wenst@chromium.org>
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

Add an entry for the MT8186 based Steelix Chromebook, also known as the
Lenovo 300e Yoga Chromebook Gen 4.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- none

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
2.43.0.rc2.451.g8631bc7472-goog


