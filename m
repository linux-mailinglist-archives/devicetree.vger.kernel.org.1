Return-Path: <devicetree+bounces-15229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A60D97E9209
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD68E1C2028E
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3C016415;
	Sun, 12 Nov 2023 18:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kr4uWEPJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F83156EC
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:44:17 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5319F273F
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:16 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a90d6ab962so43108807b3.2
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814655; x=1700419455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VA6uZGdGjNfy56jm7BNtgPNmqVGZq5+CSaOwN7oZJ+E=;
        b=kr4uWEPJOdp6qNPx5pPSxfvNv6wQE4zfjoAYeB/wdO+AGrdMakhhlU1kZbdZarZBSU
         216invsFu5fD6N2xTxA/z9nOUQKp+1W2VYyDYzOOqVt4utTK+4eoeSVBXruMn7q/IsgK
         MGWSL4RR3WQSh5qh45d7ekAFNjNFlOfcKJipaLJTUsNDygqQ35lG0iHgYPL/YNkuDiqa
         YZAIxeJ+lxheJX4C7NFPdqZLU3M+Z66zxIxXvJ7wmzw/ZCnDGWL2p3YOQu0jvN4L3K2p
         Fe3r2G+DBbCCtakIaR14RNCyQRkOqBfFGkE9MoabInDf7mbfC8eFrrzKq/szO/aLP0bH
         htUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814655; x=1700419455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VA6uZGdGjNfy56jm7BNtgPNmqVGZq5+CSaOwN7oZJ+E=;
        b=NFQQngzGgOgpwpWEXKmMud8ghwZyTwY0YMfSzBHPCfIYceLXfcA9bjnM5rd1Ybidnw
         h/mVaOa+T4Z/YIlay70j0owvESsgDoNfVmJ3m5CO27wgObOOAVL9005ouYQb5BLcuMnh
         cTrO5JUdN/lLMTZRdgnsCVf3WoO/iS8epJ6BS8An28N5zmy7FVQs63sia61uEeJab7eE
         O/MdzDoABdZA/xqy3zWzy8BY8bRp6pG4R/mtJtRPiLDwjUcE66/O/tD+IvaCnP1QrYtY
         UTeUNKHO8qHDRS8dNHSQV0ym2gZ+8mDcqvOIkCPUSksHaYoOt7T72AJAf1Cjc+2zBxa/
         pYfg==
X-Gm-Message-State: AOJu0YwK2F0hke+KcUkkSvMxNz76MsENhLYwL6r2F0BKnS6MzBb3ngnZ
	mKolelm34BWg1/+/ohvrKQF6Eg==
X-Google-Smtp-Source: AGHT+IFDp9bTcaoYSS3SmDoNnC/Q/pGeVtVhCAudVa3PU9gSMb/Nn24WRlw1g6TBbP8UrZiRDk3iCg==
X-Received: by 2002:a0d:cc53:0:b0:5af:b0ca:6950 with SMTP id o80-20020a0dcc53000000b005afb0ca6950mr4995062ywd.42.1699814655547;
        Sun, 12 Nov 2023 10:44:15 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id u63-20020a0deb42000000b005b3f6c1b5edsm1308938ywe.80.2023.11.12.10.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:44:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inki Dae <inki.dae@samsung.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/5] dt-bindings: gpu: samsung-scaler: constrain iommus and power-domains
Date: Sun, 12 Nov 2023 19:44:03 +0100
Message-Id: <20231112184403.3449-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Provide specific constraints for iommus and power-domains, based on
current DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/gpu/samsung-scaler.yaml      | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
index e08fc1e4115f..9fb530e65d0e 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
@@ -29,8 +29,12 @@ properties:
     minItems: 1
     maxItems: 3
 
-  iommus: {}
-  power-domains: {}
+  iommus:
+    minItems: 1
+    maxItems: 2
+
+  power-domains:
+    maxItems: 1
 
 required:
   - compatible
@@ -54,6 +58,8 @@ allOf:
         clock-names:
           items:
             - const: mscl
+        iommus:
+          minItems: 2
 
     else:
       properties:
@@ -67,6 +73,8 @@ allOf:
             - const: pclk
             - const: aclk
             - const: aclk_xiu
+        iommus:
+          maxItems: 1
 
 additionalProperties: false
 
-- 
2.34.1


