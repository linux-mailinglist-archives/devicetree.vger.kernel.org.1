Return-Path: <devicetree+bounces-8314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6EF7C7A18
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33BC1281133
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBDBF3D038;
	Thu, 12 Oct 2023 23:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bC/ArQfa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBD212E41
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:02:57 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0A70D7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:56 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c9d3a21f7aso12700985ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697151776; x=1697756576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qE2xuZH+agCjBR7PCdArWMNvITRMyBp9lywkci3iPfo=;
        b=bC/ArQfa8wQnogpeFi4YL961TNs9eEf9N/XXz+SlKdWnE8zqTOhI1QozMXK3SmMVZ6
         yqha7VXnmBye552w8DuZi5q9K/2NxY5nqQ3YHgL93F71uVjtTzdJ8FIUJTIr9rALYseR
         zb+Dj8SkNu/G2dBpJGcDH3pu1c1iVKfESaUVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697151776; x=1697756576;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qE2xuZH+agCjBR7PCdArWMNvITRMyBp9lywkci3iPfo=;
        b=p/jnN04FdngftBF3BH1yNi+xtuvulzXPUbZm9QGBlGPKzdg12aUp/rHLGarf4s9eiP
         ykmSRB3OUycaYJw+SrTurVEYljyBg+otCxLyBpiP0TKs6XH+Q2n9bwBUCwrmlNzjMkcn
         hoYITAUKHOsesZLelT0UHGViTEfqbjt4Y1LrVKGQgRL+P8BoCYPOYqZd5MeheaqsKCqS
         fF4Na0yUC6Rdwz6k8T2Gh2OmG5KgUY7uyJt4wEul6imrsS57HSQGPEj8BqRK8AtM9ZFX
         7puOajdWi7AmomuTPpUTaDue9K7zw+REdCgdgnbSX52Q10biFTONS+XouqH91X5uBflQ
         PoGw==
X-Gm-Message-State: AOJu0YzTeTtw3gvVnixyIIDRll+WOmOS2jiv9yivVWh4V6kgyQGr9tKC
	R/DL3RAHPa7VlXxqeIW+q488jA==
X-Google-Smtp-Source: AGHT+IH82x0sce06pOgWdTOBXT/0/9Qeyys0giYi3PeU9VJRdoN88a47OlyJF9OWRAjbgB1qKDskbA==
X-Received: by 2002:a17:902:dac9:b0:1bf:4582:90d with SMTP id q9-20020a170902dac900b001bf4582090dmr31465372plx.46.1697151776154;
        Thu, 12 Oct 2023 16:02:56 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7397:2561:ed13:bac8])
        by smtp.gmail.com with ESMTPSA id g11-20020a1709026b4b00b001c613091aeasm2494390plt.297.2023.10.12.16.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 16:02:55 -0700 (PDT)
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
Subject: [PATCH 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix Chromebook
Date: Fri, 13 Oct 2023 07:02:29 +0800
Message-ID: <20231012230237.2676469-4-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
In-Reply-To: <20231012230237.2676469-1-wenst@chromium.org>
References: <20231012230237.2676469-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add an entry for the MT8186 based Steelix Chromebook, also known as the
Lenovo 300e Yoga Chromebook Gen 4.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index aa7e6734b336..fafd5e18f640 100644
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
           - const: google,tentacruel-sku262144
-- 
2.42.0.655.g421f12c284-goog


