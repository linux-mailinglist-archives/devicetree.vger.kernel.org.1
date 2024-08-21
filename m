Return-Path: <devicetree+bounces-95453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A99139598B3
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 12:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FC581F22EA5
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 10:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29A061CC896;
	Wed, 21 Aug 2024 09:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IUbTljQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B690C1E9185
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 09:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724232439; cv=none; b=QS+/xfK3Aehg4ELT4L6ugRj568aG2ooZNqw4JvZqGyps9f7JkV7Ep/B2aG6Cw6sR+oiJ3VUwz3uhYDC8tsanlQeVYeFMST5jqoEgam/ykOXtOtMQTrPI3vJ2tZRnfugZrG5i5MGJJ7gQoc03AcVE49uIN0Ch/IsQhxb7lG2RYY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724232439; c=relaxed/simple;
	bh=Ko/U0ZTio5veCSyXN84vMAqEzuoy9/q8A3dbSGWJ70A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RitC6l+Alb3F8OULk7e3S33OXnzXVNIXO3K2rjXgawYrpMeqFsBHqjrLFWIDZ+W2Qn5ZwBwXPDeX9D+jlf4jOjD9AfUsoEORib/Qi6+2cuG5mulqTQh01BJ0pMDpprTFzFzsrJlplVeJE4bn23LL0rQB9yW1lJSFxbkSWPi5kQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IUbTljQ0; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7cd830e0711so518986a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 02:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724232437; x=1724837237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpLoj/GHdJ90mGMNH9UOi6XZ//oOyZzmQ1SqbdjiU5Q=;
        b=IUbTljQ0dakLi1limk0JL47iaRhtqNcg6BknBjOO9G7ewyIzrFUNkz7LYA4hoU9grZ
         ms0tHYIqj1f77dTDz9Tu76AsGZglyEQpn3PfrFgBXIkTI0Gl4qQkoR42VuGiLRKBA8T7
         +TrLEUm5zclQascoseRnMTehXsLaY/h0PbHvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724232437; x=1724837237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpLoj/GHdJ90mGMNH9UOi6XZ//oOyZzmQ1SqbdjiU5Q=;
        b=bADcJBwl5Nkms1NfphdZQ+hO9D3eIHxT7f472w+cFtIey4cHmnm/LT0WU0F5HdBAm5
         GXVeLAr18lDMQyQnFgKNhiLGPLh5jPnffjOgZfW4tj8KIqskMzWITuTQyyIHa+cG6mh1
         reFuaNbs/9KbXsaerOY6CaNQiVYpoADXZ3Hg/lrNdwZY+EyH8uMkYH6r9Opu7gCHRB+J
         EeLF38qHW4Hn0Z0+2mBLB7e+cO5CW2v8FlWpiI9oiTyi6xT0zmO9UXF9uFAPiZBLvxJI
         BaSOGGb7dnJOOKdWERcMJMiXllbB44jMMJEZOpaK7S3VqrQCYQLz/MdxIlbTEWKBj8q3
         VpvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0f2cZHx4VeIECIiJrujTN50UCtYymNXYg9+qz6Sano1LhNlSuY9i42PeQ0peUYwODONKq192ozIHH@vger.kernel.org
X-Gm-Message-State: AOJu0YyRFLrjQLwX9imkCj0bZSQ9kjEtta7KAFid9QgftXVWEsg3AbsN
	jIFAcGaX8kBkGZyBmDQFak3y78dBY3Dkyhp05e9WNMV+aOhENHegFOY8cfBe7g==
X-Google-Smtp-Source: AGHT+IH2Uik2B9V5fu3Btspt6fJZ1exe9FDCGD9hvpgvwCy8I2HfWJgIXUX3gWybKSU8xAPUw5kyAw==
X-Received: by 2002:a17:90a:cf87:b0:2d3:d79f:e8b7 with SMTP id 98e67ed59e1d1-2d5e995b72emr3035904a91.5.1724232436829;
        Wed, 21 Aug 2024 02:27:16 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d5eb8cf420sm1246810a91.10.2024.08.21.02.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 02:27:16 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: display: mediatek: dpi: Add power domains
Date: Wed, 21 Aug 2024 09:26:57 +0000
Message-ID: <20240821092659.1226250-2-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240821092659.1226250-1-rohiagar@chromium.org>
References: <20240821092659.1226250-1-rohiagar@chromium.org>
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
 .../display/mediatek/mediatek,dpi.yaml        | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 5ca7679d5427..864b781fdcea 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -62,6 +62,8 @@ properties:
       - const: default
       - const: sleep
 
+  power-domains: true
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description:
@@ -76,6 +78,23 @@ required:
   - clock-names
   - port
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - mediatek,mt6795-dpi
+              - mediatek,mt8173-dpi
+              - mediatek,mt8186-dpi
+    then:
+      properties:
+        power-domains:
+          maxItems: 1
+    else:
+      properties:
+        power-domains: false
+
 additionalProperties: false
 
 examples:
-- 
2.46.0.295.g3b9ea8a38a-goog


