Return-Path: <devicetree+bounces-27076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E44981919C
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 21:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4505D285EDF
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 20:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C3F39AEF;
	Tue, 19 Dec 2023 20:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J53T0QET"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D239AE6
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 20:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703018088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NiVYl512QhGYSepDsrAuE1nuD6kWmIVdAFOPcanDwvc=;
	b=J53T0QETwHEh8d89E8Fgoujhff3TTlB7wO4CEem72UUT2rng9ZTup3o5R38znAaiV2rnk5
	xG9oeCpxHl9I0i4j8W3CRegUAg0syTvfYUFQq3+p1K9yC3pLW5oGmDx8aLezCybXcN2e7I
	hEXfhb8/+eXuTUjVONIrTIg+CZwAgTA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-280-fI3iPOJMNH29ml0XIJUKsw-1; Tue, 19 Dec 2023 15:34:46 -0500
X-MC-Unique: fI3iPOJMNH29ml0XIJUKsw-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-40d2f6f2787so4263015e9.0
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703018084; x=1703622884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NiVYl512QhGYSepDsrAuE1nuD6kWmIVdAFOPcanDwvc=;
        b=pY8IHqOfEzLeXYjoYI/xPgaCa1y0kjxxM8PfeRuyVyIqOMqIA/UqOnqyG8Z4mNixks
         AQvDtV0DbgrY+zOStiaXSFm+LdfMaCR0Khwp7LCLiA469XXnEPFm0eN8+FkSgDF0DCIR
         2rM3oTqTWw5cymiKcx8d3BTyk0rOhgW9QLWHopDKT4IntvM4lMcisdQfbLQq1Fk+4KsO
         3GeGPmu0nXwKbSQfiaqplMyZVz2DP+QvmHGA+PrCSlmu8L+BFPaAhMCb9Ljy0kTEgFcA
         otGtKXEoOdK42RRy7fAlnevybPkhqUDQ61sqAGiszrDByS+LkoKGzL1LEtpJ9Zv+qNo0
         X7Yw==
X-Gm-Message-State: AOJu0YyM4m0haVJYLkz5GhqWnptkmdezJewKyn98T0y5/OUJFcu74R48
	4DUZLqwu9D2WevRxubVJr9DEmSb7acgtf/9CqW2OrGl70jE519jGvnUq5eM3SjhwMMOlO0yfVmF
	eVU76zCwCQc6MJIbSHExq4w==
X-Received: by 2002:a05:600c:44c7:b0:40c:2bb8:70c9 with SMTP id f7-20020a05600c44c700b0040c2bb870c9mr9608762wmo.150.1703018084372;
        Tue, 19 Dec 2023 12:34:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6aQ1XQXOizk6reDjlxoJMiPmuIWJ0QcHegbS1RgeL9ztmoE3yAj4OKXbYEsvTfcyds5jWDQ==
X-Received: by 2002:a05:600c:44c7:b0:40c:2bb8:70c9 with SMTP id f7-20020a05600c44c700b0040c2bb870c9mr9608753wmo.150.1703018084172;
        Tue, 19 Dec 2023 12:34:44 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c5-20020a05600c0ac500b0040a3f9862e3sm43508wmr.1.2023.12.19.12.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:34:43 -0800 (PST)
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
Subject: [PATCH v3 2/4] dt-bindings: display: ssd132x: Add vendor prefix to width and height
Date: Tue, 19 Dec 2023 21:34:07 +0100
Message-ID: <20231219203416.2299702-3-javierm@redhat.com>
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

Commit 2d23e7d6bacb ("dt-bindings: display: Add SSD132x OLED controllers")
used the wrong properties for width and height, instead of the correct
"solomon,width" and "solomon,height" properties.

Fix this by adding the vendor prefix to the width and height properties.

Fixes: 2d23e7d6bacb ("dt-bindings: display: Add SSD132x OLED controllers")
Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/dri-devel/20231218-example-envision-b41ca8efa251@spud/
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
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


