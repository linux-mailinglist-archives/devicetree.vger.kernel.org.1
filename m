Return-Path: <devicetree+bounces-20587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF1C800462
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB797B20DF4
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 07:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A2C11C9D;
	Fri,  1 Dec 2023 07:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HMg+dYYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4C39173B
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:47 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1cf7a8ab047so2033555ad.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701414467; x=1702019267; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vppgLjSmhUrkns2eunD5T4MJYG5kmc4rlOiXGna8MDA=;
        b=HMg+dYYO3FdC438NODfaIzQtCwdsIkt+s8AqRYxRp/7+k5CvJcs/o69RDJxsxaikRR
         SDuus+OKM+LddH23whijhZDD/wXGqW4Tw15/Ff2/f36EhCqVt2iCYhz3gJYBGs/iuXAi
         2asAvrptyuAtNu3l1aiNpeOpww1Xm5MBBr0lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701414467; x=1702019267;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vppgLjSmhUrkns2eunD5T4MJYG5kmc4rlOiXGna8MDA=;
        b=NEieYu5lRGE8UVJj44IGJSmIeYeas8cuYHjJUPAmctGNH7gK392FbQVp9yJfDKKtG2
         9z3O2Qmzd/wd/ukdjb69UM5Pzxy/xiHcTBbmlwh/ehMb1xC6E6F8gOPuHmzlJMTnD7Ws
         D1DbqXRUMk629GOFFRctE+P/LzcRSWouvEEXXSQKnNcOM7JMgC05Wnjypt7q1Jd7QqNA
         FOt4sxjILKAb82gbvN5787HSWx3NPwjIayOq8T6OvMk7tJBc208NhWt7GheUweoCnECP
         dV/7xjwTMxMyMTx0mvDK/D3g0ol/nheZ4o4lz+DzniTCjGEelVf0Eo9SDqDQAPrMQkxQ
         H/tQ==
X-Gm-Message-State: AOJu0YytOgqa5FsqZxV5sNTwK7RUC4pPEp8nw8QNAfEbHfUFO0eaiueu
	JB4BZxL5aruoUoU1g7lhUFWZHA==
X-Google-Smtp-Source: AGHT+IGTphmUhRjkz/SwX75LovD8m+jVDaQwDhTa9OZZPnZS0R4hi69+nJ/+7tnZ5aMIt5gAr0YasA==
X-Received: by 2002:a17:902:f805:b0:1cf:ad71:6f64 with SMTP id ix5-20020a170902f80500b001cfad716f64mr17581637plb.59.1701414467395;
        Thu, 30 Nov 2023 23:07:47 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:720a:d435:c253:2402])
        by smtp.gmail.com with ESMTPSA id y10-20020a1709027c8a00b001cfa0c04553sm2558684pll.116.2023.11.30.23.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 23:07:47 -0800 (PST)
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
Subject: [PATCH v2 5/9] dt-bindings: arm: mediatek: Add MT8186 Magneton Chromebooks
Date: Fri,  1 Dec 2023 15:07:09 +0800
Message-ID: <20231201070719.1229447-6-wenst@chromium.org>
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

Add entries for the MT8186 based Chromebooks, also collectively known
as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
the "Steelix" design. Being a laptop instead of a convertible device,
there is no touchscreen or stylus, which is similar to Rusty. However
Magneton does not have ports on the right side of the device.

Three variants are listed separately. These use different touchscreen
controllers, or lack a touchscreen altogether.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Reorder SKU numbers in descending order.

 .../devicetree/bindings/arm/mediatek.yaml      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 85d394e390f0..155ba22e2ad3 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,24 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393219
+          - const: google,steelix-sku393216
+          - const: google,steelix
+          - const: mediatek,mt8186
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393220
+          - const: google,steelix-sku393217
+          - const: google,steelix
+          - const: mediatek,mt8186
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393221
+          - const: google,steelix-sku393218
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.43.0.rc2.451.g8631bc7472-goog


