Return-Path: <devicetree+bounces-11102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A167D439D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:07:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8420AB20EE6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 00:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CEEEBB;
	Tue, 24 Oct 2023 00:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bsS43uCC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F88210E5
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:07:35 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B1F3D79
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:34 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c9de3f66e5so23326935ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698106053; x=1698710853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+shCuLeYUeGg9T4PC0PI70XXw4EiiSOxksaZg6E+gi8=;
        b=bsS43uCCH8YDD1LsBvsTswY1lPXu/0tXvyuqruFo+XpTZhAXlKGi973j0QQN5UGdyl
         pY/PFkHlez7aJhG+sJgp6WVKiJdT+dsfWDq7FmbnGn0qC2oT6lX4wtwMZTe7uDLsz6/1
         dmMHRzAnNb7ZaFiORa9NGEMkrEIXBbY7SlYjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698106053; x=1698710853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+shCuLeYUeGg9T4PC0PI70XXw4EiiSOxksaZg6E+gi8=;
        b=M4H177ap7BpyeKo3wPfBfhJwbfgP0LrLj/GAI8KqL/NQ7IY/q4wGrFFJgrWLrLlnxU
         ku+JzjsGYe5woqvQnlfVtnINB11t1YlyF0Dr4tuFdhPMHfZAQ5J41m5rhnsc/3QR+hsN
         zB4Q3DnhTLZPId0hdQ2Pzb3KGghAa/Lgmg6dqevtK8l+D1CuEMaqWPpUsOy+EC1jyTvS
         Jd+hjs57rDxgV9ZsaA25IPqtfrmu5J9cj+VG+OcLQgJILcapfNV1nnWsUmFZ+kEdQG43
         YQAXpbYrYrWq4WVK38GjBsdY4KmbNq+HC7fzmOioIZT6jDTxLcMV/CqNGmuquinuMEJj
         FV2A==
X-Gm-Message-State: AOJu0YxN3q5Pn85KM5SpudLRpTUxA9/BVTylkryMxVvllAL/ovMkkY81
	ARKG2OeFgMUr77GHbyv02Fmt3Q==
X-Google-Smtp-Source: AGHT+IFyDFfPXnOzCWduhBGQR8TvVevfvrQncsDbKw4d5+Hws9B2jLP9qII9Z2Vy6KpNGikr7rQrjg==
X-Received: by 2002:a17:902:d2d1:b0:1c7:398c:a437 with SMTP id n17-20020a170902d2d100b001c7398ca437mr9319153plc.69.1698106053509;
        Mon, 23 Oct 2023 17:07:33 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id a10-20020a170902ecca00b001c5dea67c26sm6505510plh.233.2023.10.23.17.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 17:07:33 -0700 (PDT)
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
Subject: [PATCH 3/6] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
Date: Mon, 23 Oct 2023 17:02:26 -0700
Message-ID: <20231024000724.57714-4-hsinyi@chromium.org>
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

Add makomo sku0 and sku1 which uses different audio codec.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index fe8c488a3207..b131e0bdbf01 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -250,6 +250,18 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
+        items:
+          - const: google,makomo-rev4-sku0
+          - const: google,makomo-rev5-sku0
+          - const: google,makomo
+          - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
+        items:
+          - const: google,makomo-rev4-sku1
+          - const: google,makomo-rev5-sku1
+          - const: google,makomo
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.42.0.758.gaed0368e0e-goog


