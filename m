Return-Path: <devicetree+bounces-95715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F26B895ADEA
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 08:47:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA56C1F23136
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 06:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9ED1474D3;
	Thu, 22 Aug 2024 06:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fX11DzAR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4369F1448DC
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 06:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724309227; cv=none; b=alUEo+ulL4+HAxp/bxZEdw3vw8nO4oEBFCWggu3CGWD8HTOvl9ELilOpz+f6qB+WIPur3/adYS94KXNXW3DM91A6KnlvBqvAOYGpAmgbp+QwOPh+meqi5dN2e1L1qYhfk3tdQrqlmec6t9YAe3KEpD9yP0ZhL/7dvQ8jidicjHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724309227; c=relaxed/simple;
	bh=FGAjm4dVYbpwA2V2WGaoAT1JPGp+f+uopmCkRDBKP3s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PwuL1RoYKSJZ/q89lEYAHhVCeETAkPIzXqgb/0gx0S+zMpffjeJmTk1KL2VhX0QDwlcYKF0eDMRSIyBT3oTI9QzDZlSH+Ana/CHHi76QwGEhc40KX34AVrb/aJitQ0KiSz6PmTDUSxE/qKjtQUYicfoT8CTq4GVg9WjWJ8rdm8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fX11DzAR; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7cd9cfe4748so176283a12.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 23:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724309224; x=1724914024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a6VhPMtectai4hGqbUSp0dB+6VO3NOuS573R5ytgFYI=;
        b=fX11DzAR556honR8k3mmxC24vVH1GxrShu/uB1xHSCSopO79vuSjNbbFVTnXeqGNZ/
         35tinx/nv+AdaosvBQFZEyOVn6F1Oisf3Ck/5ZKl0Sk0CnZNWwqIf87mKd3HI2lMr5ub
         4r6OiT4icfR3+XhXIgb5OxNClFprQVzQZoR2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724309224; x=1724914024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a6VhPMtectai4hGqbUSp0dB+6VO3NOuS573R5ytgFYI=;
        b=rO491g/iveVlwqaNla3gC+7Ax+xxcRfreAJSZm2A7pN1l5ZKf+F6di0FY0+h4QGpnm
         cVMQuKv2LcRGuOo1YTh3UXFeWlzz7HQASqJOAdZI0i9VhYPYd7sCAWUp/sGj5WdD5A0E
         IIugOlOPHI463PlJ3FLhYX/TphZq6Zrme0mVsueUspNZjBJ4cD3yVzJ/NNL+LB/K4O49
         i7AitJvNzfGJOFGW3akX7aF37/4gsRpLYbTHsp07n3cKhRh7MEUjBqLGidojzhG0EnjP
         2LFQnPQfqW3NBXh6hM/aW6t2htcI8eWUH7GpHtoriDhXv5SA2qx6lCpSVrZsYBshCdby
         8rMw==
X-Forwarded-Encrypted: i=1; AJvYcCV03XuJjvqRe+JWYH9+3dxS83+VL7k0Wpn2ituBwW7KELluVGU/yzvl3DJh+HZ5L7/ijtq7FtFsZaxm@vger.kernel.org
X-Gm-Message-State: AOJu0YxqPOEIXI3BI9FoO5+FY8Xuh2CBHWarx8HbZSUaHAP4RCFC1Hgd
	6nzjlNp7pToYXwxA+ifWR6Jw+8kcFVd3pVcGDmMnbX6GPhxmNoW23b3aF9eBxQ==
X-Google-Smtp-Source: AGHT+IFOTThZc7Acbudhp76jsdVEtyD08nopL5PxkAb/g8HYG8h8pM7szn8X6lzKGkKTXkFY44I14Q==
X-Received: by 2002:a05:6a20:6f8a:b0:1c6:a656:84c9 with SMTP id adf61e73a8af0-1caeb1d6a60mr1116121637.16.1724309224283;
        Wed, 21 Aug 2024 23:47:04 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d6136fc523sm856946a91.9.2024.08.21.23.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 23:47:04 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v3 1/3] dt-bindings: display: mediatek: dpi: Add power domains
Date: Thu, 22 Aug 2024 06:46:48 +0000
Message-ID: <20240822064650.1473930-2-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240822064650.1473930-1-rohiagar@chromium.org>
References: <20240822064650.1473930-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain binding to the mediatek DPI controller
for MT8186.
Also, add power domain binding for other SoCs like
MT6795 and MT8173 that already had power domain property.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 .../bindings/display/mediatek/mediatek,dpi.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 5ca7679d5427..3a82aec9021c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -62,6 +62,9 @@ properties:
       - const: default
       - const: sleep
 
+  power-domains:
+    maxItems: 1
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description:
@@ -76,6 +79,20 @@ required:
   - clock-names
   - port
 
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - mediatek,mt6795-dpi
+                - mediatek,mt8173-dpi
+                - mediatek,mt8186-dpi
+    then:
+      properties:
+        power-domains: false
+
 additionalProperties: false
 
 examples:
-- 
2.46.0.295.g3b9ea8a38a-goog


