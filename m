Return-Path: <devicetree+bounces-15225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E87437E9204
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95463280A92
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335ED156CC;
	Sun, 12 Nov 2023 18:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oBEn/gyA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB40154AE
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:44:12 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A9A91FF6
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:11 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5a81ab75f21so43042507b3.2
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814650; x=1700419450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3sqqPllgETnwwQvfwmEwhxp6/p5QdcAaEjx6oKJg44Y=;
        b=oBEn/gyA0BaVF0GDwMMAfZa1wit0LRjQBvi1KSxvt8GN4LHRiWvvgLDwFSApTvHxvY
         AotjvFf3GPeGO+PrhWfH8KRfB5UuoFVdg3We3K4aoKB6U1S5xRpe75ymKvfakhHTzRQf
         Q04cR7tUn+/3mQn4rYcsWNARKp7oWFqmWuF1EXwVtIAF14XbtkHbYG2pE4gGZfbeNzpi
         GJhDmhAj9KxeB3k0VbrINGmx6dC/tFvwI80mx4Vsoa31jwWBFwvxlZ52k4Z3i6WgZNuy
         rTYP6yyu1rElJvixBlprq9KEZd8qGV979d8qLe4Jy9aq4+E6kAluE0lqzz7EH2RFAPWz
         w8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814650; x=1700419450;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3sqqPllgETnwwQvfwmEwhxp6/p5QdcAaEjx6oKJg44Y=;
        b=pXJI/0Ozpx+B0WkBSIoY7M3K8oWref2hpNC3s5y3ZXUE1AvexB8hsS89miE3lLE9XR
         nhhhIdAkvMf9WPT/3nBnm76kYrI2UxUt/SVLATV+dAa/pPfEVbVGHfBP2kSktRgxxhAl
         TJlPguzkNMCuNm9uifye+7tE9RGJT9f5a9hHv9LxZn8ntOqn2VlN2lKd7eYKpRZo1p7s
         SUJpxm755rdbgEUyilN/HAoqTgAnrDY1bFKrb1/igcijwoLxZfiL2nAOuugES1n7Is6S
         EXCnJTbcopt3yyLHmrHK0vPhxJDIkBhPq7tsISYfSeRb8R4amLyGK+QHGr4bRUx1Z6z8
         a9CA==
X-Gm-Message-State: AOJu0Yx8FpHPK7nU8X1Gbh6idGk83sMyQZt8nr93cCLVvGz4U2tLJdKM
	ALdQFb3J3dswGlRfQ19qEEGySQ==
X-Google-Smtp-Source: AGHT+IGGlUk61F4BEzF1VDsWt9xVT4gMPv8utBpaeVZEcfGMjrCm0u4YtgErk53VC2pVhXrV1Vku9w==
X-Received: by 2002:a81:5201:0:b0:5a7:ba09:e58b with SMTP id g1-20020a815201000000b005a7ba09e58bmr5191792ywb.14.1699814650481;
        Sun, 12 Nov 2023 10:44:10 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id u63-20020a0deb42000000b005b3f6c1b5edsm1308938ywe.80.2023.11.12.10.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:44:10 -0800 (PST)
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
Subject: [PATCH 1/5] dt-bindings: gpu: samsung-rotator: drop redundant quotes
Date: Sun, 12 Nov 2023 19:43:59 +0100
Message-Id: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compatibles should not use quotes in the bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/gpu/samsung-rotator.yaml         | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml b/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
index d60626ffb28e..18bf44e06e8f 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-rotator.yaml
@@ -12,10 +12,11 @@ maintainers:
 properties:
   compatible:
     enum:
-      - "samsung,s5pv210-rotator"
-      - "samsung,exynos4210-rotator"
-      - "samsung,exynos4212-rotator"
-      - "samsung,exynos5250-rotator"
+      - samsung,s5pv210-rotator
+      - samsung,exynos4210-rotator
+      - samsung,exynos4212-rotator
+      - samsung,exynos5250-rotator
+
   reg:
     maxItems: 1
 
-- 
2.34.1


