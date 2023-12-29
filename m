Return-Path: <devicetree+bounces-28897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BE581FF13
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 12:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 223241C22005
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 11:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D9B11185;
	Fri, 29 Dec 2023 11:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GPUnfJsP"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464DE10A2B
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 11:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703848835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1KrXB2l1sK5WNrgL14b/nrn7vl1GLfrzGJcKXH5lPKk=;
	b=GPUnfJsPHcFlr8qsvUOpVF3RmyUuMpMNqIFzCxmPbyQkIthm7gVOlw3LUWDdJKE8QIOXjL
	DnvbMMkBGL7KpLyYUUy37wFjwLBoBew914uoFwcO9nFP+Ys32GvLrhI7XG8A/NKsoudjyC
	grPQ5sBBrpzMDKqzf4HYCe+0aAVLGXg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-445-uy3JwirmMGKOoN3OnVNpKA-1; Fri, 29 Dec 2023 06:20:33 -0500
X-MC-Unique: uy3JwirmMGKOoN3OnVNpKA-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-40d3b0783beso63797205e9.3
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 03:20:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703848832; x=1704453632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1KrXB2l1sK5WNrgL14b/nrn7vl1GLfrzGJcKXH5lPKk=;
        b=Dl9IJnD6Ch43fhtZbuxLkSjGjGZEU6nFwMyIYbGLhT2QDPY9GS0hzu908EbPqGIa8c
         7uCHfGbkWJF12QmdRL8Xf2b8/os/Z+UI925QWDwWCxNbUd94kyHF4rjW8bRyIN+4w0lv
         HDl/0yRZN6qmjNIH+Ed3tWf0fCTC3afJfQ2fLuG0x0jcDlbAI0Qn8vMJnAA5j6kATcWt
         eKSomF4W/DOnrI8+X32wqaW3+II30iRsL2AXQ7CfZZTleYnAdEcDD7gpU5k4M4ZHdIK/
         BV/0RbZqj3GtaBL2xgB3CLaooNN2A8n/lbTy7TDQjP+17EIHhAFFla2QDikTUgXeflB1
         QQ9A==
X-Gm-Message-State: AOJu0YwzIEweylHlg2e3zpZBvrAKAB4t5jyNQVrkVDsdvU3jScmRGFw9
	LSjQLYL1Wu/jDUEqArjaf8aPavDXYu/jrKDY7ekxnumEqPpCeqbTs5KB6rpyuLY6EOcErti2PgE
	0vZaddIAsNayTDV7f/yuvJNbJWC3E+A==
X-Received: by 2002:a05:600c:5006:b0:40d:5f3e:f058 with SMTP id n6-20020a05600c500600b0040d5f3ef058mr1970514wmr.179.1703848832764;
        Fri, 29 Dec 2023 03:20:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhNkbC6wTKaV7ceYhGd3wJqwAROupHIXBLke7SzKs9QNM4PK1OxxXjBt/V5Sz1m4Hsc4u5NQ==
X-Received: by 2002:a05:600c:5006:b0:40d:5f3e:f058 with SMTP id n6-20020a05600c500600b0040d5f3ef058mr1970510wmr.179.1703848832437;
        Fri, 29 Dec 2023 03:20:32 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p35-20020a05600c1da300b0040b360cc65csm31388976wms.0.2023.12.29.03.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 03:20:31 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Conor Dooley <conor@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 1/4] dt-bindings: display: ssd1307fb: Add vendor prefix to width and height
Date: Fri, 29 Dec 2023 12:20:18 +0100
Message-ID: <20231229112026.2797483-2-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231229112026.2797483-1-javierm@redhat.com>
References: <20231229112026.2797483-1-javierm@redhat.com>
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


