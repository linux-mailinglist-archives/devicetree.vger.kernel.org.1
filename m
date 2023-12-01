Return-Path: <devicetree+bounces-20586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EEB800460
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:07:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C2B3281587
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 07:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D75E011C88;
	Fri,  1 Dec 2023 07:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="noRsCZPm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88621721
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:45 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1d0538d9bbcso2003825ad.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701414465; x=1702019265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kf9Ef3ZU7ACSrQpFfV8EW4u1UjhYZlyDTx04rSBoN3o=;
        b=noRsCZPmkgbf9PSPQWwFHKjmteWElDW6At/lM3lnmb2kKRav76RLqWZo29tOHBMNuf
         QmADrIu9ONDClEgyf2IvxCb4TufYyKfDvoNF2HZy39bTP1EcxdWwdmWIEs1XM8jcQEqv
         QQs9N+EGH/8FsfB+hOBWDkcEwLJWGkzveqVcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701414465; x=1702019265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kf9Ef3ZU7ACSrQpFfV8EW4u1UjhYZlyDTx04rSBoN3o=;
        b=sBgJem43bbe4L0U0dsbvpM/9R/vol6aZRDA2ldJaf5XCYVYGHkG+ihnJvHGLKkFPqQ
         oaYP1iBwHe5irrt+mApTflILcIE7bAfLKwvh8n01P+aeBDBrDhdQ+1UCAXiCie4lFyrm
         Kv0yV2V1qQe7NUrFR2QPa2JQMdPbQxq35Y0X1oDck0m+TJlMzFEovOYayPnFcVOSMFbw
         5Kt0S7rQOYpb+1dfeBrhz8fil6v4a6+bwNxDIPfs1NhD1T18H/tc7oW1O2tDfYr4+DSU
         7vwajW3P0kt5W2FS5HFGEAeGsCHBwP6uZ6LI0lerqDrNiMEvxu5ctQ7PGiMswKt9YEum
         UUmA==
X-Gm-Message-State: AOJu0YwFw6tbUjmBix9z2FQY9M/WRzVfqC0xyQvMUdEzpiZ5ObH/jrm5
	W9m2A6PjmykSoHqi8UE5Vj6/yA==
X-Google-Smtp-Source: AGHT+IGIbCzmIDzJDSQxwRuPwXzrNiFhKYnu2L4N6gFeW0Zicdwpq2ZPNo4PD/Ikn7kumZbw+IRFag==
X-Received: by 2002:a17:902:ea84:b0:1cc:68c1:cab5 with SMTP id x4-20020a170902ea8400b001cc68c1cab5mr25292928plb.14.1701414465113;
        Thu, 30 Nov 2023 23:07:45 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:720a:d435:c253:2402])
        by smtp.gmail.com with ESMTPSA id y10-20020a1709027c8a00b001cfa0c04553sm2558684pll.116.2023.11.30.23.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 23:07:44 -0800 (PST)
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
Subject: [PATCH v2 4/9] dt-bindings: arm: mediatek: Add MT8186 Rusty Chromebook
Date: Fri,  1 Dec 2023 15:07:08 +0800
Message-ID: <20231201070719.1229447-5-wenst@chromium.org>
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

Add an entry for the MT8186 based Rusty Chromebook, also known as the
Lenovo 100e Chromebook Gen 4.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
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


