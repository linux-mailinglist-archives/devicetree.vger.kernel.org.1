Return-Path: <devicetree+bounces-15228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A063C7E9208
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EE03280C35
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CE24168AB;
	Sun, 12 Nov 2023 18:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TpcWzFbF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C32154B6
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:44:15 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C042B1FF6
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:14 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5bf5d6eaf60so38127307b3.2
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814654; x=1700419454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ph7m6E1Vtkv7RR08QhRUG59xkdDRnqIt7SGyWJz8QU=;
        b=TpcWzFbFbWQD/R4q1X10vUxWwV7ztvB5P+uMEmzb9P6mjcfL+EXPSWcAiyxEK2KMls
         hjVUpoUy6j7zaBWFxJ70GmJPgQKPCKUSLhQ5MdGXEnVnBumkiOQQf2DpEDAbH9Y7RIjB
         64HVagIdcRWSEErRbMfyfkjVZ+Iia0l9loEH00GZ0oHzRahwTLLAf/E5xH39TGfXwzSC
         T2t8SE8MM8yDA56VfUS0L+MFtcko3m6G8a75dCK8iRyIF0bepJKp2/Mf75yGuRr0EUq4
         FmH6u5gBG8ngP7AAohZRT0iq2WksHTyZUEoH/d/mOyTszQPVC7tPNlKL47d8W/YRrZSW
         Cmtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814654; x=1700419454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ph7m6E1Vtkv7RR08QhRUG59xkdDRnqIt7SGyWJz8QU=;
        b=AaEjP4vD+UF2m8BW7a3out12mbP6+/Q8bwb6L8owutnJhLDgfTaq/5kTYO1PNMgEGN
         Ewu5WuKLl0Q0u/lI1U6sLMiZ1dczgLuMvCQ7B716dI0OA2g55+ul+L+xVS+XkQ6vyhGp
         gl3JvOlwKMrUSOwyxGTK01+d+pixArtxLIF0FfVxEDIwA8Kr8tSYVP0vj4jZNqIlfGro
         BFF7HxtqSbbwFqS5+v76b5O7SI/YO7SrAZoM2jxz+NEb9KyZNQy4Y8MsA4f7d5ZxJf6n
         ZEuSEGls9/kgl84Fiz014qn1j3PoJTWvPNG2D6sk4tyKg2GKFpjQsuLslN0B0Q/sKFj0
         0+sw==
X-Gm-Message-State: AOJu0YylM4W3cY0s2ACUq2pOZ06LBvzFx75u8abRDkew7lMwSpmU8niB
	jx+EUeaQEw4McBInSvxD7YDQHg==
X-Google-Smtp-Source: AGHT+IHpzvYeJiWjBu0flWuD/GyQnhsKd8gKM5c0RQLvUyFjf+fvZeq5nvs0RJ5Nw84f/GzsfgSNXA==
X-Received: by 2002:a81:4113:0:b0:5a8:277f:b378 with SMTP id o19-20020a814113000000b005a8277fb378mr2138130ywa.1.1699814653985;
        Sun, 12 Nov 2023 10:44:13 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id u63-20020a0deb42000000b005b3f6c1b5edsm1308938ywe.80.2023.11.12.10.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:44:13 -0800 (PST)
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
Subject: [PATCH 4/5] dt-bindings: gpu: samsung-g2d: constrain iommus and power-domains
Date: Sun, 12 Nov 2023 19:44:02 +0100
Message-Id: <20231112184403.3449-4-krzysztof.kozlowski@linaro.org>
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
 Documentation/devicetree/bindings/gpu/samsung-g2d.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
index f368966cf83a..132aaa49597b 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
@@ -30,8 +30,12 @@ properties:
     minItems: 1
     maxItems: 2
 
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
-- 
2.34.1


