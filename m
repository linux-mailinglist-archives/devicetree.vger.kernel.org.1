Return-Path: <devicetree+bounces-28898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3214D81FF19
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 12:20:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BCF5283401
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 11:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552EB10A33;
	Fri, 29 Dec 2023 11:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LCO3QTrY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD5211188
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 11:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703848836;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LGLVCef4QzbvTALYo2ea2BIkPY+CGFifWhpyQpWq1Uc=;
	b=LCO3QTrY6vKQVk2iZ/6t4XMpdVoUrlH8TofLjykJnqORUibr+RfQ6lKwrTYgZUAMZi4j1/
	Mo+DyMapgSIDrC/llx3mp3vwxrHrZlR8TvenmRJmKudfKQ7Il2VRSzKZ3wiIobfiO7js7j
	LQcVf4teVoryte3866C4pPPNSnrcfHI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-4jid1EeXPNCbSC7GkhTQnQ-1; Fri, 29 Dec 2023 06:20:35 -0500
X-MC-Unique: 4jid1EeXPNCbSC7GkhTQnQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40d6045090cso12417055e9.3
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 03:20:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703848834; x=1704453634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LGLVCef4QzbvTALYo2ea2BIkPY+CGFifWhpyQpWq1Uc=;
        b=uFSdD6G7NdQVwyATqqBvQd1+KKYOkT1RljeeWZKKR8CjQMAk7+6Pdm4FwKsEADv/Vu
         i11MEcvZeZx+1ns5SMRzje1OQ4NHWJ2Vmhx30re/GzmNhDqzFy1+pX3Xr+kdmzY/doHA
         1vaiQUM4JWQB3DGograi8EBX2O6ARrw09j3SwYSXFz+lPCvo/LBgzwZZ13gm0eL8ZU7G
         3PKuoE5/OpB06S4IAXfMgE0mE6BKrm+hLnHD6XMzUoWX6U/+KqpRtjVaUWAsJitHc452
         /9gEj5/uHSwjIHpvhjdPWXTmpJk8UBlLWw3a1tNaIVM8DS3iSjWJYTMsiCmcTsqn7rrj
         d0RA==
X-Gm-Message-State: AOJu0YyEis/J5t+QIl3JL+85+aTV/kOpKF1OtG1mygtWVah9UkprpP5J
	1hEqprNO4F+7IUDCcQnIWWKrIu535qGvOHkzBdU3YxJe4wmBfzUkWjFzIv1oJYTWPRRvIwm+MBg
	mI5gMYof5OazlzpsOtyRLUX65QwDl4g==
X-Received: by 2002:a05:600c:4510:b0:40d:5722:2a0f with SMTP id t16-20020a05600c451000b0040d57222a0fmr4260990wmo.48.1703848834366;
        Fri, 29 Dec 2023 03:20:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5fMHEN5dB+koli23UjcZjZeepGNiOT2nHkTioE3ZWE19z7sXz94XioXuGlb4SaA2yPuAFaA==
X-Received: by 2002:a05:600c:4510:b0:40d:5722:2a0f with SMTP id t16-20020a05600c451000b0040d57222a0fmr4260983wmo.48.1703848834168;
        Fri, 29 Dec 2023 03:20:34 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m19-20020a05600c4f5300b0040d5b849f38sm11297188wmq.0.2023.12.29.03.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 03:20:33 -0800 (PST)
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
Subject: [PATCH v5 2/4] dt-bindings: display: ssd132x: Add vendor prefix to width and height
Date: Fri, 29 Dec 2023 12:20:19 +0100
Message-ID: <20231229112026.2797483-3-javierm@redhat.com>
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

Commit 2d23e7d6bacb ("dt-bindings: display: Add SSD132x OLED controllers")
used the wrong properties for width and height, instead of the correct
"solomon,width" and "solomon,height" properties.

Fix this by adding the vendor prefix to the width and height properties.

Fixes: 2d23e7d6bacb ("dt-bindings: display: Add SSD132x OLED controllers")
Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/dri-devel/20231218-example-envision-b41ca8efa251@spud/
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Rob Herring <robh@kernel.org>
---

(no changes since v1)

 .../devicetree/bindings/display/solomon,ssd132x.yaml | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
index 37975ee61c5a..dd7939989cf4 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
@@ -30,9 +30,9 @@ allOf:
             const: solomon,ssd1322
     then:
       properties:
-        width:
+        solomon,width:
           default: 480
-        height:
+        solomon,height:
           default: 128
 
   - if:
@@ -42,9 +42,9 @@ allOf:
             const: solomon,ssd1325
     then:
       properties:
-        width:
+        solomon,width:
           default: 128
-        height:
+        solomon,height:
           default: 80
 
   - if:
@@ -54,9 +54,9 @@ allOf:
             const: solomon,ssd1327
     then:
       properties:
-        width:
+        solomon,width:
           default: 128
-        height:
+        solomon,height:
           default: 128
 
 unevaluatedProperties: false
-- 
2.43.0


