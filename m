Return-Path: <devicetree+bounces-27075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B1D81919A
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 21:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 132561C2453E
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 20:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085601F933;
	Tue, 19 Dec 2023 20:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dcLoZ7KT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B9F3A1AE
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 20:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703018083;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s2gh7avZ+webTJh4GlB/OmJjsr2TX31NuZTJbonK+AA=;
	b=dcLoZ7KT7Xb5X75sAiysXVWmg166kexdSdmKTcE1i8rGVCwPzcXq471A9L5BCn2hBfOQNf
	o4WqqROE4L1r3+2YpaH/664Lvtnxv/JYfSAbv60Enmhfspommia1FKsscW7rWEE32Vp+tn
	r4kPMjyyBWcj4sN7nwE0k2scH/je/Q0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-ySWLDXnIPmWu2C_djuFcUw-1; Tue, 19 Dec 2023 15:34:40 -0500
X-MC-Unique: ySWLDXnIPmWu2C_djuFcUw-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-33667fef12aso1353334f8f.2
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:34:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703018079; x=1703622879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s2gh7avZ+webTJh4GlB/OmJjsr2TX31NuZTJbonK+AA=;
        b=wi6UDiuPkUSZDl/lAUE4FXZVLGLMZplTNHk/wwxFjXedUfPKDXIIGdGMgz3tfGoc8s
         Ok6ueqxJzHEnj+voN05oSM5mcxrKRy4Uhl3P4xTmOk1tS7EPE19byi0bIQqP6kU/qO/r
         cTxRROekBRUkPwDRYMs4F0rMzq4Q5rJxnTwweIghjMZcQVmyRYoIKyeuroTFKGogjOzV
         fdMMd/K8MVeTqvr5nJ602xMn5gZymBge4qZz/QUhOP6A2OJMKU1wBOCXtLBaQ3y1Yh97
         cHh6i+zeUjn8khuPqywzSGcHmUStbr1oq+57/YovgWq0DmB6N5xt1G+hRP1U9+6KJB7C
         P9nQ==
X-Gm-Message-State: AOJu0Yx9y8oABgUiYsQBg7VfDGhwn9pgabgfXhzqgjoiA0p4l9///i6A
	C9jv9LxDG/sfHAcVgeI/kQ1x7H1Kn4QZkgbXd5CZX7SAmcMaF92LQHDSSYDmjajX047W2TVO8nH
	zsi6Jk4BgZtgYSWaaVrmCEQ==
X-Received: by 2002:adf:fbc5:0:b0:32f:7c6c:aa14 with SMTP id d5-20020adffbc5000000b0032f7c6caa14mr9345887wrs.37.1703018079102;
        Tue, 19 Dec 2023 12:34:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfz12dyj5qQB1RZu3obqwFvurn6HeBaxHioQSLuCusvAEiMmUqPMMF1GzfYjGC0YmrWBecYw==
X-Received: by 2002:adf:fbc5:0:b0:32f:7c6c:aa14 with SMTP id d5-20020adffbc5000000b0032f7c6caa14mr9345884wrs.37.1703018078853;
        Tue, 19 Dec 2023 12:34:38 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j8-20020a05600c190800b0040c11fbe581sm4472994wmq.27.2023.12.19.12.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:34:38 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Maxime Ripard <mripard@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
Subject: [PATCH v3 1/4] dt-bindings: display: ssd1307fb: Add vendor prefix to width and height
Date: Tue, 19 Dec 2023 21:34:06 +0100
Message-ID: <20231219203416.2299702-2-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219203416.2299702-1-javierm@redhat.com>
References: <20231219203416.2299702-1-javierm@redhat.com>
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


