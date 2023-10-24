Return-Path: <devicetree+bounces-11100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD157D4399
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 584BC1C20A1D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 00:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D997E5;
	Tue, 24 Oct 2023 00:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nrkN6uCN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB84D7EC
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:07:32 +0000 (UTC)
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE2C1D73
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:31 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-5ae99bb5ccdso2088065a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698106051; x=1698710851; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nh7y/+UHR4rfaD1MdlnQhy3jizucTRA5pP5JKPfuUQY=;
        b=nrkN6uCNYGxPAFIdUxs7gefv8tQ8Tv8Ckk4+2vKLmZqcgbfXZTgrEA+0pctk4Y1nQD
         445mu0UyzNm5pLsuo0WeUdIVI/vqwt1sgYyhGMDeeNMRD+38TJUvnm92MEpsNYP7qLjd
         uG9yBBRyMrAv4g3a0II1Ww3Y7PXivuwxoXW5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698106051; x=1698710851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nh7y/+UHR4rfaD1MdlnQhy3jizucTRA5pP5JKPfuUQY=;
        b=XvjnRLEUk713h+AdRqCJOf2N51INsO4QKSehvM3DOK6TyuAXCxb5LIRwzKcV88FepM
         QEM2hwTB37b+aYkareoBWN70wuhzpIxSnT9JcZwH7Fyxnp9oUEFDi2kRvdnRW60Ha0Hf
         Vi1YI92w5bHsmbnPUNqpPBJOSGgAldrlb45MAhCpg6EtJnXS8zbWHH0z6HW2BC4OKGMW
         xYHyIqGgvBvOF0fdyReJwTw68odFR7gz6gdFFRwt6Nk3pKz1RHinE4OhLynLsZCav/9k
         oTU0lUcuecx2ICkVHFLv2p1muVtkIJvxDSuAlbfl6F4vTz9voU+b5jVZbtf0mSVt4vuA
         xc8g==
X-Gm-Message-State: AOJu0YyH/q/EczRw+PouONh3XMcwBliTI8MiIrY2NHjyMNdn+p3AzCAY
	WzLARGiH0sk/QzPHRE5jTPF/zQ==
X-Google-Smtp-Source: AGHT+IEnbELuJfwTbSKJpQL3L82YAF2nHCHHuweCeoPOIKHXo8oxA5ZYmCAL+Ez/OQucHg3ovI5ADw==
X-Received: by 2002:a17:902:ea09:b0:1c8:9d32:339e with SMTP id s9-20020a170902ea0900b001c89d32339emr8959999plg.50.1698106051216;
        Mon, 23 Oct 2023 17:07:31 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id a10-20020a170902ecca00b001c5dea67c26sm6505510plh.233.2023.10.23.17.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 17:07:30 -0700 (PDT)
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
Subject: [PATCH 1/6] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
Date: Mon, 23 Oct 2023 17:02:24 -0700
Message-ID: <20231024000724.57714-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024000724.57714-1-hsinyi@chromium.org>
References: <20231024000724.57714-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add katsu and katsu sku38 which uses different audio codec.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a5999b3afc35..fe8c488a3207 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -235,6 +235,12 @@ properties:
         items:
           - const: google,kappa
           - const: mediatek,mt8183
+      - description: Google Katsu (ASUS Chromebook Detachable CZ1)
+        items:
+          - enum:
+              - google,katsu
+              - google,katsu-sku38
+          - const: mediatek,mt8183
       - description: Google Kodama (Lenovo 10e Chromebook Tablet)
         items:
           - enum:
-- 
2.42.0.758.gaed0368e0e-goog


