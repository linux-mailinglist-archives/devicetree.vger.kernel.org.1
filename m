Return-Path: <devicetree+bounces-15227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 899DC7E9206
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:44:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AE411F20F6F
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEA2B1641A;
	Sun, 12 Nov 2023 18:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iw0kFUuR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5D7156EC
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:44:14 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85BEE2715
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:13 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5a7d9d357faso41455067b3.0
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814653; x=1700419453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LKapjGZo46m2u3Pg+KgGkylJklW8QTl7gfgNZK8ZJCY=;
        b=iw0kFUuRxQS4MRdP9ZPJzS7oPkfkXebd7c3njWsPui62lFi9tOfKXScs9zrlWtyZke
         7Jjc8kGfU+f64JD0OYZCI1omZqi9njEXxR740nn4JJzH/eZiaSfCNdKUBD8f4rdS4gYe
         EKoch+HpXgXPOyKP6E2gd+3uyLdzti8z8XACNYyHq6L781CWAslb0/Cq8DtkFNC3E7A7
         FyZ66B8dO0eri9nfL5KYHQZz3r+dx6KxpMQSAfVJs9BWzQXBgRGcsQjgCdGuW7oD7rPU
         ojtYcCugoS5kp/dVJ41ajgLFRVxoQBg4yCV03ckCIZTUPQjDxUz++GTn3yssESJmKRdI
         LtJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814653; x=1700419453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKapjGZo46m2u3Pg+KgGkylJklW8QTl7gfgNZK8ZJCY=;
        b=PzvnXzPhqDy9qRcHlnTxRcKoBS9fSo/AAKZxJcVpRyudFyN7hOr77wW/sLMDbEMB0d
         lYjEEBX1wMzBgmnJzmi8YJOymfrTgesds5KqyJkSeLhZ82PrrB2jZOusSOa5nBR0uBSo
         4/JoYtd/VXPNHdxvRTVwMOOJoJwk3GRAWC+v2Djya1q6Mdxwwz4fDXlJBMI1jXW+fOvG
         WvUCkpj8KeZHVim/dHIJH28ACC5O0Ao3YRUG007V/Jl6GayLVX20wup4q4gVqZM3hjag
         ZLtzDPHDvasdRFhuS5X4fLbaT3J1ERTcVSZB6GAFZf09vAU3Nqs0RX9fBVcTBJgqMmE1
         rcEA==
X-Gm-Message-State: AOJu0YxEcnSkMTjqfNhUHfRarWwVOD1j8lRtWlt7NxfxbTtr4b6llo6y
	ri0EE05JY1piVpuwJ6XKpF0h/w==
X-Google-Smtp-Source: AGHT+IG6jLEwOvsic3zim3Oi0DQNKZCCpaWpZotIRjhbW1JFP57Ypl6v3EbQBFpfe1K3LZKV2jWSMQ==
X-Received: by 2002:a0d:ca8f:0:b0:5a7:ba54:af02 with SMTP id m137-20020a0dca8f000000b005a7ba54af02mr5340230ywd.38.1699814652746;
        Sun, 12 Nov 2023 10:44:12 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id u63-20020a0deb42000000b005b3f6c1b5edsm1308938ywe.80.2023.11.12.10.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:44:12 -0800 (PST)
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
Subject: [PATCH 3/5] dt-bindings: gpu: samsung: constrain clocks in top-level properties
Date: Sun, 12 Nov 2023 19:44:01 +0100
Message-Id: <20231112184403.3449-3-krzysztof.kozlowski@linaro.org>
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

When number of clock varies between variants, the Devicetree bindings
coding convention expects to have widest constraints in top-level
definition of the properties and narrow them in allOf:if:then block.

This is more readable and sometimes allows to spot some errors in the
bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/gpu/samsung-g2d.yaml | 10 ++++++++--
 .../devicetree/bindings/gpu/samsung-scaler.yaml        | 10 ++++++++--
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
index b6951acc7643..f368966cf83a 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-g2d.yaml
@@ -22,8 +22,14 @@ properties:
   interrupts:
     maxItems: 1
 
-  clocks: {}
-  clock-names: {}
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+
   iommus: {}
   power-domains: {}
 
diff --git a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
index 97d86a002a90..e08fc1e4115f 100644
--- a/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
+++ b/Documentation/devicetree/bindings/gpu/samsung-scaler.yaml
@@ -21,8 +21,14 @@ properties:
   interrupts:
     maxItems: 1
 
-  clocks: {}
-  clock-names: {}
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    minItems: 1
+    maxItems: 3
+
   iommus: {}
   power-domains: {}
 
-- 
2.34.1


