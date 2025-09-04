Return-Path: <devicetree+bounces-212640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E59B4360B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C51607C1A79
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33CC43596D;
	Thu,  4 Sep 2025 08:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nRw6VhLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EE62C028F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 08:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756975108; cv=none; b=ZcMUvstb00iCwKd/7SmoBnCJt2EUSCb3oGiZqjgV2+6W06W3FuZ75R1DFILZh0ElZOtya/Uu4b0eaQK25M6Jl2C1bLuV221CmjRukHujYHaMK4yNRMy3GhzVKFfh6asqxJh17IWvwZyv6xaFE9Ase0QZ22zKXldCYHeSNJq3ypo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756975108; c=relaxed/simple;
	bh=O0lSnAE58yTaXBoJZbkip6clrguTKaMFShBxxY9I5Q4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Envgb71ITcHpPpTP87QGW5X89WwXYhyOO7wZS2Nq5b4N2dJeRHQUV0NMitG0oZjGtgr++ALvsJpMI1lLf6AX7QRYRBZeZo/EjNbAHA9TpKYeh8KSZKze8cxv3e8cyvVOdvt4kajnoHfK0CJMrt6rjTQ/F8p89f/mFLTrgQe0WQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nRw6VhLL; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61c78dc8b12so147337a12.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 01:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756975104; x=1757579904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+0YmNJVAET3+OflVoIsL4GF7qJmrukrYX1EfuWUl2Hk=;
        b=nRw6VhLLTQRk51Ndz84Kh8dj72vJqCOr5yvc1c7fPnzSst/yiuETtj9MzK/9ks4uj3
         tI4EUE3ClNmI47O8f18Oh8BifqYPtyG3zwHVqwh62rLQLMiLq1EJospGbN2mq+78nrvT
         5TifDr0sLJc1Us/YyMyxCcOoH77QudemI3mSqiunRwhxQo0W0cFzgM2TB1jt4FIgYgNE
         ssdxPFxQL0y9nfpZCy1Ojk2UaqVD0T7v11r9bvE3Lz3wkGm5o+8E3nPUEZQ4IkQcqqTU
         tmqR79cs2fhBKfwXk8UoVjkkOoKWFxf+9KKwRf3BOdz56eagfTTFX28rpQvxSIZnqEg8
         QQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975104; x=1757579904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0YmNJVAET3+OflVoIsL4GF7qJmrukrYX1EfuWUl2Hk=;
        b=IX8gtGcfF8n4hsNYC9dGUQKYtTEI95laXvvV2iw99UKfoDevUyj3xOzzyCIsBbOWBB
         YGaUxzrH4v+oh0/Ys74LD8xgVq7oLEQMoIptIQ2W5IUzhY0E229SvpJWcpukdL5fZUeR
         /PtAffloFv6bSkKghfGj/AAkx2y+LdIMaSzCA9tE3JbQgoypkH3yJ8iyqxv9CzMGgkbA
         aPBLgetsZ85Dkh4AGcwrytzwS7OMJR/IC54NmQFzUMf0MNjpZtnvcKZo8UmVJAYGEOO2
         UdyGMtbT/0wBs83IOCjbFzIQ+yR16MpUFGMFnYBvzzTaOHkec2msf5xGm/Y7S4qZFOl+
         4l1g==
X-Forwarded-Encrypted: i=1; AJvYcCUj/LwqIO1AyIOsdCO4nbLuDvFP1SFY2WELzjXZGEKq38muT14Bj3mcidYkGExQtdSx+g1eD5geuOE2@vger.kernel.org
X-Gm-Message-State: AOJu0YwDjwRsZ2W1Vb7BR4+lgdDTmyMGXb6/1k/WinHzjcMqpdhiyTGo
	66BiPUZ9AVAUEQGfm+oJ2CWZn6IvpCWMd9VhQcuHRUxvXknjYIawLReVwqdLYubl5q4=
X-Gm-Gg: ASbGncsjebq4ppy4IH2q5DI/AuVPiIleA8GOzfoKRs2f40dwJJuu+3pkEHhG+kjDam8
	PtssHLgj7lDCwpVuaCZnr8dpN3RnNKLlr8EbsPFQX2sidNqGM0Jnd7EAzxfKWazsniteOtTA3IL
	xpAhP+/vq/RV2bnzGP1wUvJT97bXRlbkly8dbnjEh90LlC2zJo6P95JjLvdnThwDpoiOGOOXdHm
	KOlPTAvSi15IPi84dG141+GwBe15Z+SOgQpwCUIpYO6jGrLckBhthjPo4yXT3te65Nx1YyPxrmo
	CIWtOVhgDzUfQLO7qOBJJKfG7m0c7thQGPOSUrN3nJcCdFjWM+IHXFoIw7z+Ra9gh9848wnUk8C
	kKdyIw16Hl1d9fbgvTfUaYrugWf9ldIpJeZ/YaqjrOaxf
X-Google-Smtp-Source: AGHT+IGiuAyaA/2yA0XVcQXMJVV6L/Bp1Cp+hmK1z0mXJ6UNW1X+/VIQU2+RMFJ1FmJ+Gu3Uv17A4A==
X-Received: by 2002:a05:6402:34c5:b0:61c:bc96:7164 with SMTP id 4fb4d7f45d1cf-61d0d5e36d2mr9710731a12.5.1756975104324;
        Thu, 04 Sep 2025 01:38:24 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc52a886sm13604112a12.43.2025.09.04.01.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 01:38:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liu Ying <victor.liu@nxp.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Phong LE <ple@baylibre.com>,
	Vinod Koul <vkoul@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Boris Brezillon <bbrezillon@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: display: bridge: Reference DAI common schema
Date: Thu,  4 Sep 2025 10:38:17 +0200
Message-ID: <20250904083816.48076-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3398; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=O0lSnAE58yTaXBoJZbkip6clrguTKaMFShBxxY9I5Q4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBouU/4D3SNOO44f23qJy56IqSNGmeWqC+//Jjg3
 e62JUfERqaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLlP+AAKCRDBN2bmhouD
 1yKlD/93EuRKARAPjVDgCg7Tz6BhTY+bhxc7nEytNAI4vZ4OtJ1GlqJ2Gpls4DAw/cLG+NJu1Uj
 HiIuVFLb39NpB8NUiQ57nD/pyYrsN/q/OTm/Kx0nMWDPdBr8nk0M7es8wzO6qWuyx5+fGo/LU0r
 Qz4/vC1gexiK84mPLDSKgTb2SPGg6Bru5qTJ2PErXdfXGfsSW8dvWvKGaB0FTN6+kFEICFuL3Wb
 y+eEZvgXCp5BPros5GAYv5sHy2MiIliaH/lmYVbZLO56SEbFFuFjO4Dd7BpeqRN9Jh4mgjOLQNN
 M4FZ7CLf6P15dbQJHfdaJFPKKMw1E3Qg9kV0vYDy6RNWv8m6W+5I1VtFMzVvQOZlUZ2TLUwQ1Gl
 PpOdg7qKgdKZZjBt8N+2N//PORXjsXivFSl4qZlembiyf4GrMjJJMbqDA1erqLBPKCm3Uionqnn
 +BKmNPQNxd11+oL0XcmisHn7hNuDSFUoChjQGsogUAQTNdX4XfPFuRjn7Zbghzv+eYKfKpmIKf2
 TJS555OhH9qcF0NmvIQQnGSLpnFjeSEapja51Q4h8MT/yxascjqHwwRNCVlPZ2KPVeMTSbJvhNV
 VCwl+iULO7/IPxKR8g5iPJcKpSPPh2/6Q8RE8e0Z9wx6RwsWwOc36Q9nuek1NdhARs+3HqVDsiO fyXzkAFdIBLmNmw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Several display bridges (e.g. LVDS to HDMI converters) are used as sound
Digital Audio Interface (DAI) and have '#sound-dai-cells', thus they
should reference dai-common.yaml schema to allow common properties, like
DAI name.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/bridge/ite,it6263.yaml       | 1 +
 .../devicetree/bindings/display/bridge/ite,it66121.yaml      | 5 ++++-
 .../devicetree/bindings/display/bridge/lontium,lt9611.yaml   | 5 ++++-
 .../devicetree/bindings/display/bridge/nxp,tda998x.yaml      | 5 ++++-
 .../devicetree/bindings/display/bridge/sil,sii9022.yaml      | 5 ++++-
 5 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml
index 0a10e10d80ff..b98d942bbe19 100644
--- a/Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml
@@ -28,6 +28,7 @@ description: |
 
 allOf:
   - $ref: /schemas/display/lvds-dual-ports.yaml#
+  - $ref: /schemas/sound/dai-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
index a7eb2603691f..ba644c30dcf4 100644
--- a/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
@@ -84,7 +84,10 @@ required:
   - interrupts
   - ports
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
index 5b9d36f7af30..655db8cfdc25 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
@@ -69,7 +69,10 @@ required:
   - vcc-supply
   - ports
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml
index b8e9cf6ce4e6..3fce9e698ea1 100644
--- a/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml
@@ -81,7 +81,10 @@ oneOf:
   - required:
       - ports
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml b/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml
index 1509c4535e53..17ea06719b56 100644
--- a/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/sil,sii9022.yaml
@@ -109,7 +109,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.48.1


