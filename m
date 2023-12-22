Return-Path: <devicetree+bounces-28007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCAD81C7B6
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 11:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88DA5B21EB5
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 10:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF0C101DA;
	Fri, 22 Dec 2023 10:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Z++2mXrt"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49C1FBE5
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 10:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703239316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1KrXB2l1sK5WNrgL14b/nrn7vl1GLfrzGJcKXH5lPKk=;
	b=Z++2mXrtpULDCQNHQ1WVXoug4WljLqGHbU4bRtxKwqiygE/A6PmUKA/m6EsJ6tWpFoLExk
	90dRwwxO6ZG1sPlpbflon2ZePqgq1wI2e4S8bWJmEcWv7s8WMaVLHDwImDp5UxkZwRWWZN
	sezP4pY1RSK47P9Pai7APCFTPDujuAA=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-8aoquI-iOcyZux_92ofDtw-1; Fri, 22 Dec 2023 05:01:55 -0500
X-MC-Unique: 8aoquI-iOcyZux_92ofDtw-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40d45be1ce2so1986155e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 02:01:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703239314; x=1703844114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1KrXB2l1sK5WNrgL14b/nrn7vl1GLfrzGJcKXH5lPKk=;
        b=vH3nK4j89QFRS7piNyi46Nv8EAiwd299RgbmFewxwk7wJRcXuWSXs05CNwV2AOZGri
         VFWH//ASIqGu2sb5D+Zvtn+q6fWJZJHpnuR9kRsQh7MYHl31ztDraV9PkFtI/ZExHtLZ
         HmS8Xed7+oK7SdOD5aQzrCPbYsO6L6sAziYgKp3syQ17lFXHVpsmgut0iJhoJpTYkWlM
         nL7S/wgHs3n+SlzuT1d5JWnva2izF60S1kYDiiZBOMB9VvTscqhXipOQVi9QAT0TY72v
         HOEotsPWJpw7Xj9xe1I+bsME6FPNUgwGqRoVAUbWvs33KWb6zTGrK8COnMo5+E3rGk+e
         Wimw==
X-Gm-Message-State: AOJu0Yyaio/y9wHmgBiaiWrNL635k0W6+OZNNwEa2+ONtBDK0aX8XPTm
	82yFm8mUbh3VpyB9rYNxa3K3yhU0YwvH5XLWNTyC3DnmcNWUAvyEJwlX0SvkkAaVXbYVE2Em8AQ
	E+IZl+Co6XzcnH57SYZENYJp12TVtfA==
X-Received: by 2002:a05:600c:3516:b0:40c:69ac:bbe3 with SMTP id h22-20020a05600c351600b0040c69acbbe3mr560826wmq.151.1703239314154;
        Fri, 22 Dec 2023 02:01:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9cdk7GcDcHXW+tJWxQX97Hy6R4J0/6Wgjy0y5eLHmsXkFwLAr+yP0CIsp2UB1gvczU2KRrw==
X-Received: by 2002:a05:600c:3516:b0:40c:69ac:bbe3 with SMTP id h22-20020a05600c351600b0040c69acbbe3mr560817wmq.151.1703239313866;
        Fri, 22 Dec 2023 02:01:53 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j16-20020a05600c191000b0040c11fbe581sm6426861wmq.27.2023.12.22.02.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 02:01:52 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Conor Dooley <conor@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 1/4] dt-bindings: display: ssd1307fb: Add vendor prefix to width and height
Date: Fri, 22 Dec 2023 11:01:38 +0100
Message-ID: <20231222100149.2641687-2-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222100149.2641687-1-javierm@redhat.com>
References: <20231222100149.2641687-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The commit 591825fba8a2 ("dt-bindings: display: ssd1307fb: Remove default
width and height values") used the wrong properties for width and height,
instead of the correct "solomon,width" and "solomon,height" properties.

Fix this by adding the vendor prefix to the width and height properties.

Fixes: 591825fba8a2 ("dt-bindings: display: ssd1307fb: Remove default width and height values")
Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/dri-devel/20231218-example-envision-b41ca8efa251@spud/
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Rob Herring <robh@kernel.org>
---

(no changes since v1)

 .../bindings/display/solomon,ssd1307fb.yaml   | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 3afbb52d1b7f..153ff86fb405 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -131,9 +131,9 @@ allOf:
             const: sinowealth,sh1106
     then:
       properties:
-        width:
+        solomon,width:
           default: 132
-        height:
+        solomon,height:
           default: 64
         solomon,dclk-div:
           default: 1
@@ -149,9 +149,9 @@ allOf:
               - solomon,ssd1305
     then:
       properties:
-        width:
+        solomon,width:
           default: 132
-        height:
+        solomon,height:
           default: 64
         solomon,dclk-div:
           default: 1
@@ -167,9 +167,9 @@ allOf:
               - solomon,ssd1306
     then:
       properties:
-        width:
+        solomon,width:
           default: 128
-        height:
+        solomon,height:
           default: 64
         solomon,dclk-div:
           default: 1
@@ -185,9 +185,9 @@ allOf:
               - solomon,ssd1307
     then:
       properties:
-        width:
+        solomon,width:
           default: 128
-        height:
+        solomon,height:
           default: 39
         solomon,dclk-div:
           default: 2
@@ -205,9 +205,9 @@ allOf:
               - solomon,ssd1309
     then:
       properties:
-        width:
+        solomon,width:
           default: 128
-        height:
+        solomon,height:
           default: 64
         solomon,dclk-div:
           default: 1
-- 
2.43.0


