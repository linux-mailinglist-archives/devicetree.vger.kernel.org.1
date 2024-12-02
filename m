Return-Path: <devicetree+bounces-126126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ACA9E07FA
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76C02B48388
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF93B20B811;
	Mon,  2 Dec 2024 14:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="SBFZtwSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE6820B7E0
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149939; cv=none; b=auX/UZLqr7Hka37BXh/f+POGLm3kA//DYqC4NfnvR/N7bW4wexn0o8n7PJOkvYdhMvAwWWdRGzm9Gwikxwlz3PE1szmRcHrmOPyd0Dj/b/VMnxo8sOGKLJ+yaCWjdm+jRj3UMbg9sMl1ibzJpNKxsoKwrUHkgSkcUsKTo21mmVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149939; c=relaxed/simple;
	bh=qOmQJTbCQeuHlJprqQwHbB2+QP0lQNzJMUj3CXSju98=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oz2uRfuS6nfWdvJVML685S6YdC3Jv/uPsGtMnvjWsqf7OLQGSig3e2ktP69AF8BWE/ZrmwZzZNLbNxkP4f+qrvxsAnTEGVFDISrQRpW6X+pbKOviJ0WF7B8iqt4KrFtWZ+YxhDe+Fczcz4kD7+xm67OtuUVrhs6F5qtnLZ7/JPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=SBFZtwSh; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-385f06d0c8eso762474f8f.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1733149936; x=1733754736; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOx9NaY1qX5HDoI2TYyztMEaA2o1c52TzC8u++gvhCQ=;
        b=SBFZtwShXawYeNjjUhQw+4rL9onAhwCscQ9RguLo0UFvZVSaYE6fdFw2emSBV+sbYr
         0Gpk6kcv64QNj4Ffm3MFy/+T7n8YXvGPiGdAVhKaly+CrOS7S4P9yHuIrIz7t7xbE3DC
         9BxHxtL2DGZ12+7E3s/iDpmY/t4RfA6gKFuHsyIBgoptIT7ftKlF/SxSpqEgruKPqbYr
         PgEf1+/OBWMrjCm4WDh1juXONUBFm60P9qXZg2dSK9VwuvOLzfK/Hn1FLUCbSyYBiS1g
         QdkuDxNKDABgHOXn3MoplgmvNpDaCmWox5/D+e7/C4It+MmQ2ZPjw+k7r9nAg15ewGU7
         7dTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149936; x=1733754736;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iOx9NaY1qX5HDoI2TYyztMEaA2o1c52TzC8u++gvhCQ=;
        b=otAQlVqf3HaxBJpoNL8VUOGzVhPyfOD6+WyxmOv7t/ml9m2zaLC1kCkJOu2XqjqyEs
         IesityQ4au0hJNZHwe/Od4w8LxEKryyzyXjT+zmhvJeMSehqzImTdp6v/AuUreMPnIvs
         P5c1rOCDdvSBTFHrrpxdG+fIDhMn9mQ+eR/vvjlKcX8lPw1Mqntezx+0Kx3D6Ruo/Iwr
         sVCZ15ewx7M6rNfvMXKgsaEpc7JnI2WPLCgVXuDVbh6nz/2z9OrpEMcT91byxkrBneAP
         75o0ljFHVLBzY+RWjinKcbso0iBscmTvfa6FCt+1ejS2kA0fJcdTIaNUhsX1/oJm3jWI
         R5AQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfHdatEp0LAG1slZ1ZedDihPKesHwc0QRdigvgcJjSVh7BMioA0qp3PfnO/cictENTzMHEjt2bhZpd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+mWxQLtuCPuL6BD4lq8Ackz7vLbedKBDzP6Q7yUixbA2/IOgr
	aYGqOl5JvHWcgBZWNGojPnncGlNARHOcu+rAoocZqKx3G/nlSsCqlxHusdj/3SM=
X-Gm-Gg: ASbGncs1h7O+mSVjBzdSWPXPmsEc54LUzXtiP5RkDHANgsdKDKNs9+9+jnbrAd1GMvs
	t3lLfH54mozFiRa6qgatojVUs0SUsJvCiUlexhLaLarlJSBfy33wBDR4wFxyoHNHLEBkyotFhQm
	BMH4LomBcCiLcm8YXY0oXl0M7egMBWY1/qIxT+U/VR3s1jzPyCKwdWSM3wgoMfpXy+2A7UGHVbX
	EAV1vV9CZIJUcMN+XZkv9KjERYEBexVmnHg+aZPHA==
X-Google-Smtp-Source: AGHT+IGWILDCH0oN5IIP6AmBZHCVw8v8xYQoGIqxbhQefLB2luB62aEimC6i2AGfGXR0N+C6cAzdpg==
X-Received: by 2002:a5d:6c6d:0:b0:385:e8aa:2a4e with SMTP id ffacd0b85a97d-385e8aa2c01mr5694103f8f.31.1733149936076;
        Mon, 02 Dec 2024 06:32:16 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434aa74f1e6sm188429555e9.9.2024.12.02.06.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:32:15 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 02 Dec 2024 14:31:54 +0000
Subject: [PATCH 1/7] dtbindings: display: bcm2711-hdmi: Correct bindings
 for 2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-dt-bcm2712-fixes-v1-1-fac67cc2f98a@raspberrypi.com>
References: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
In-Reply-To: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The previous patch just adding the compatible missed out that the
number of interrupts changed

Fixes: 62948c62abca ("dt-bindings: display: Add BCM2712 HDMI bindings")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/display/brcm,bcm2711-hdmi.yaml        | 44 +++++++++++++++-------
 1 file changed, 30 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
index 6d11f5955b51..6af342c9b6b8 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
@@ -56,22 +56,38 @@ properties:
       - const: cec
 
   interrupts:
-    items:
-      - description: CEC TX interrupt
-      - description: CEC RX interrupt
-      - description: CEC stuck at low interrupt
-      - description: Wake-up interrupt
-      - description: Hotplug connected interrupt
-      - description: Hotplug removed interrupt
+    oneOf:
+      - items:
+        - description: CEC TX interrupt
+        - description: CEC RX interrupt
+        - description: CEC stuck at low interrupt
+        - description: Wake-up interrupt
+        - description: Hotplug connected interrupt
+        - description: Hotplug removed interrupt
+
+      - items:
+        - description: CEC TX interrupt
+        - description: CEC RX interrupt
+        - description: CEC stuck at low interrupt
+        - description: Hotplug connected interrupt
+        - description: Hotplug removed interrupt
 
   interrupt-names:
-    items:
-      - const: cec-tx
-      - const: cec-rx
-      - const: cec-low
-      - const: wakeup
-      - const: hpd-connected
-      - const: hpd-removed
+    oneOf:
+      - items:
+        - const: cec-tx
+        - const: cec-rx
+        - const: cec-low
+        - const: wakeup
+        - const: hpd-connected
+        - const: hpd-removed
+
+      - items:
+        - const: cec-tx
+        - const: cec-rx
+        - const: cec-low
+        - const: hpd-connected
+        - const: hpd-removed
 
   ddc:
     $ref: /schemas/types.yaml#/definitions/phandle

-- 
2.34.1


