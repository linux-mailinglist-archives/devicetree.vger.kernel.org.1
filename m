Return-Path: <devicetree+bounces-16371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8537EE66F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16036281159
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 940594655D;
	Thu, 16 Nov 2023 18:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ON6/bdZc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA8DF192
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 10:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700158078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hPxzOncy5HIGVOblAN4i/IW7KR+JFRLvP+iQR6fOxe0=;
	b=ON6/bdZcypZycSaf8pxacNu+ByzxMDpR18GCrdM39ZPTctD+OE5x1E1dVkyQzpaNWuTOZc
	GQ2CqFb3WfGe+9TKY99mE5EchMoEX33bfFiamQDUJA1BWNrHbH+ucaF80uVxbmVZtjbgVN
	Mnt3PjQdwU3cKQC2vh9MyY1GyMJ0fhY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-pPMVf4ONMUeZHquexngoew-1; Thu, 16 Nov 2023 13:07:54 -0500
X-MC-Unique: pPMVf4ONMUeZHquexngoew-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-408695c377dso6919975e9.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 10:07:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700158073; x=1700762873;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hPxzOncy5HIGVOblAN4i/IW7KR+JFRLvP+iQR6fOxe0=;
        b=Ftp7GRkjH3ptaScbvT9tFTYe37sZpcU5WijYMji1aRoO1655ZKIWZXLwOdpGk6AHU9
         sD0vcXU4uS1MKSBzhgpVbJiS/m7A2En8wzFttpt1RTtSoGvfYB8IKmFUEuykhaE5RU5O
         hwOnT+Ff6OKWrCk6vWYH3+JU3W22K8PwF7nmeVagQ6XGnxyeD/z26sy2oFcY0oxPSdSp
         BBGDoh+UxOMpcNTUG4ZrT8LN0YmDEA2kgKFE0WQ/lAYZ0U4N3SL67Z2WlGNudZGvG+6d
         t7glMvv0sQKgZw9yTUn2qgYhmXp0AJBNOB85F0OW2OYcXoFj/do6NSKyN30SMhmDWZsW
         Kl/A==
X-Gm-Message-State: AOJu0Yyzecc1/WzmTUd5av6CUUFXcB3gU+ksWjnOV6Z+XxXJ1N3UlKGc
	khJUmcHQA0wF66LIbWC9ES4KGZvsWuPmKc/UuJJxi+ivI5BOT27K0EAtcqWzEU7ErA1Rr+84fYQ
	IPY97xZXdxyzvyVdaeBcFpA==
X-Received: by 2002:a05:600c:c0f:b0:402:e68f:8896 with SMTP id fm15-20020a05600c0c0f00b00402e68f8896mr14609075wmb.0.1700158073621;
        Thu, 16 Nov 2023 10:07:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmdfeAnuQFuohht1CLAm2Stx5W5EGXlcnDY8tsQEAn2nKKlrvW/+NDUyqH/j1nM9uFFuRyLA==
X-Received: by 2002:a05:600c:c0f:b0:402:e68f:8896 with SMTP id fm15-20020a05600c0c0f00b00402e68f8896mr14609042wmb.0.1700158073266;
        Thu, 16 Nov 2023 10:07:53 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id w8-20020a05600c474800b0040836519dd9sm61664wmo.25.2023.11.16.10.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 10:07:52 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Sahaj Sarup <sahaj.sarup@linaro.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
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
Subject: [PATCH 1/3] dt-bindings: display: ssd1307fb: Change "solomon,page-offset" default value
Date: Thu, 16 Nov 2023 19:07:37 +0100
Message-ID: <20231116180743.2763021-1-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is used to specify the page start address offset of the display RAM.

The value is used as offset when setting the page start address with the
SSD130X_SET_PAGE_RANGE command, and the driver currently sets its value to
1 if the property is not present in the Device Tree.

But the datasheet mentions that the value on reset for the page start is a
0, so it makes more sense to also have 0 as the default value for the page
offset if the property is not present.

In fact, using a default value of 1 leads to the display not working when
the fbdev is attached to the framebuffer console.

Reported-by: Sahaj Sarup <sahaj.sarup@linaro.org>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../devicetree/bindings/display/solomon,ssd1307fb.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 3afbb52d1b7f..badd81459aaa 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -35,7 +35,7 @@ properties:
 
   solomon,page-offset:
     $ref: /schemas/types.yaml#/definitions/uint32
-    default: 1
+    default: 0
     description:
       Offset of pages (band of 8 pixels) that the screen is mapped to
 
-- 
2.41.0


