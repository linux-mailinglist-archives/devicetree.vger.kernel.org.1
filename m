Return-Path: <devicetree+bounces-10499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F37287D192D
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B827F2826FB
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 22:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4277A27478;
	Fri, 20 Oct 2023 22:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FxqLagcY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400D35509
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 22:31:38 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AE01D63
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697841094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=U9iwHq/WW92wIMDf4fjn3PaKiv4Qj6cmxyyqbItQ0rE=;
	b=FxqLagcY2XmiDsZp9BOxMlfAFwdbngXnu0psfBWJZLSdGIjRdZJotonjw4n/KLEGLoA0oT
	Rd+3Apl/CLaSL+vNWaAqXXyw94I0CVZbfV7ftbgpZUQq/nF00Hj91HUNA/MA2kJtNJWt3f
	bmZQQgrQmhNU3ZC8c0JhfMXmlInXS/Q=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-473-5YKmKD_wPCG3Y2GJiTj5qw-1; Fri, 20 Oct 2023 18:31:32 -0400
X-MC-Unique: 5YKmKD_wPCG3Y2GJiTj5qw-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4084e4ce543so7810015e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697841091; x=1698445891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U9iwHq/WW92wIMDf4fjn3PaKiv4Qj6cmxyyqbItQ0rE=;
        b=QjgDcnQzeIBhu8mE7zVq1WVh3oMqbIgW8TdwgLwT/fOWJIxuHAXNHkpoYm1SUcCMt0
         QRgKrTHDCUDp1e826lJZT8vvYEz1wnyRY+HnRC43nN+pCKGXRVwK1gwpmw72l0SMWabg
         L3WI62a9K8nXCx8nlwigskrmh40q4aQX83gBSgfEC3XriDs1ZtVQKs3hCA9r21xZZS7f
         CPsdP4VHfbKKmLagWupyL7eSKubakJBrgUoTaciSd0uKH0shdMEF9fWx1SlOBbbkUkR0
         U8Ih5jZqHzCBezQ2ob7b2d8Bc6I7EWgmEOsIV6ujb7N0Ap4bFVrcoi3IdcGH0Pmkwgic
         I7vw==
X-Gm-Message-State: AOJu0YxZbeVhP6uQ+yrBJwf7LDY7q+Em6uAcbJJDZgx43274CtVdiVGq
	4PXXeYz7jovjSyi9OUwuUlrHii/7jZ8kXK5roH7J3kw53WeQuO/QzipYaIsNILpYCI1tzixU9Iw
	C4vh0aRHiRKYytYaUESKnhw==
X-Received: by 2002:a05:600c:1c21:b0:408:4cf1:e9d7 with SMTP id j33-20020a05600c1c2100b004084cf1e9d7mr2415646wms.20.1697841091445;
        Fri, 20 Oct 2023 15:31:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEli5PDwUY2pVZDmRAcMX/xPEvIZZL1cQUyUecghxpFLxqzMscliuiWSb8kQaNJ3fTi6Xu9nA==
X-Received: by 2002:a05:600c:1c21:b0:408:4cf1:e9d7 with SMTP id j33-20020a05600c1c2100b004084cf1e9d7mr2415635wms.20.1697841091092;
        Fri, 20 Oct 2023 15:31:31 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c3b9000b003fee6e170f9sm3113382wms.45.2023.10.20.15.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 15:31:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH] dt-bindings: display: ssd132x: Remove '-' before compatible enum
Date: Sat, 21 Oct 2023 00:30:17 +0200
Message-ID: <20231020223029.1667190-1-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a leftover from when the binding schema had the compatible string
property enum as a 'oneOf' child and the '-' was not removed when 'oneOf'
got dropped during the binding review process.

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/dri-devel/CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M0PrxRFKz_Y4v37yMJvvA@mail.gmail.com/
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../devicetree/bindings/display/solomon,ssd132x.yaml      | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
index 0aa41bd9ddca..37975ee61c5a 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
@@ -11,10 +11,10 @@ maintainers:
 
 properties:
   compatible:
-    - enum:
-        - solomon,ssd1322
-        - solomon,ssd1325
-        - solomon,ssd1327
+    enum:
+      - solomon,ssd1322
+      - solomon,ssd1325
+      - solomon,ssd1327
 
 required:
   - compatible
-- 
2.41.0


