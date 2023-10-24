Return-Path: <devicetree+bounces-11461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE56A7D5D29
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6ED35B21165
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074F63F4D0;
	Tue, 24 Oct 2023 21:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RBOIma0u"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BDA3D967
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:26:30 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D03BC1B3
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:28 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c9b7c234a7so42393115ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698182788; x=1698787588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Zb5Wh/eo+im2l7B1fmvT/WoiYRemD8ZCN2J8BNebAU=;
        b=RBOIma0u/Jd98ghHje1VMFjESctYUnxAejEYDd0J0uC49gWIW6n8VYEh/8FJiTN7Fo
         RQvM7AnClANQblQvv2yrjbhGeFbNyw/MwRCOPrH0hyC98fM8XQJq0fCWwWWbF76kYItv
         2iRdnkFVv7PGcykcZ+Kf3owAF/OJjTvIrh848=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698182788; x=1698787588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Zb5Wh/eo+im2l7B1fmvT/WoiYRemD8ZCN2J8BNebAU=;
        b=e1r3sUP0kBQbr6pZhLGaAzT7Mead0r5gF3tUHsYo4I8WwQYgUFlh7zLkaNNpy2VNwS
         Al9rieLhmpBLWmTluL2++zmkZt/ws0j+HVA+sJbpta+hiqxs9Up46uu1XWl0mMywrNRF
         yytekwfIhlZINGrt+9ZZ7eQ8uiIa6YiW1ifl7FvHn514GNzV7OWwXlziYNqevTytMZSQ
         HunJZMPnJdXsiWNad1HOiJsvLVg1gknnN/pkcEmdfh1Ce5qmBU6c7AYgpK1EBn0FDNC5
         cAImaU0hC1xnGJcxYIFLR69UUMNmgWEvkZrce7cfJvU0MtZ/4uw77RNlJnP4T6CVIfp4
         wD/g==
X-Gm-Message-State: AOJu0YyUHpZKs2b0s7tMTdMQn18xO0//nYz5CDGFK4acabJZNk//B5HV
	D6fTUKQm7T7jC75xYwD/RQj3zw==
X-Google-Smtp-Source: AGHT+IEHZNbRevO+MX5QpplNtldSLlaYzi6eCiT26xP+SBmDo9AFqh2UChobD3gyVfCa1s1ke+FKJA==
X-Received: by 2002:a17:902:db09:b0:1c0:9b7c:f82a with SMTP id m9-20020a170902db0900b001c09b7cf82amr16579647plx.53.1698182788321;
        Tue, 24 Oct 2023 14:26:28 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902e74900b001b850c9d7b3sm7824140plf.249.2023.10.24.14.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:26:27 -0700 (PDT)
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
Subject: [PATCH v2 4/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
Date: Tue, 24 Oct 2023 14:22:26 -0700
Message-ID: <20231024212618.1079676-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024212618.1079676-1-hsinyi@chromium.org>
References: <20231024212618.1079676-1-hsinyi@chromium.org>
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
index 4fe58cfe6f1b..af1037a95fd5 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -251,6 +251,18 @@ properties:
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


