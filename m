Return-Path: <devicetree+bounces-194943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1915AFFF32
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 12:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1814E7B1751
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 10:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1BE2DAFCF;
	Thu, 10 Jul 2025 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VqUEyI2S"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EDF2D879A
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752143154; cv=none; b=a7Z7gabSEnWShYJsZRB9ifQYz/YxHMwzEpTtuxJXvSWb2grAKSpM+0zcnpbnLT5v4O9gI9acw7CTCFqN502cK4iF1BDCL8xBn45dDBGCd+LwKASULRDNq9hspLsQWIyNk6Lo6esMQ5T1FikMfIHebeTK373o2gOmnpLr8SUp16M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752143154; c=relaxed/simple;
	bh=1yxZXcnFA/Eh5Im1254+XIiXYLA1R1qqDv3celxIab8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RsIs5GX2aRBBiGgrqmUavSlTL9lUjblDhCiOtm3oc3xOWKIqPR6kn+1kJ6fyg6CgrnDIt0xrksEKsDbnqS5qT/8y5z/6cKamN3y2TgknPXqR1zj01Rwiqaqy1UwkD+9ngaaibkC7H7b+68HvKFUMlwVwKPu27KnIl0NTbqnvuoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VqUEyI2S; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752143151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nUOjdgW24CAx0aqD+3zmRz0D1nbY1TritNaHwReu0ak=;
	b=VqUEyI2SXuXCLkQxpzt7bOWlaj2VNSz9g1zjou/M2Ea9ohjBvKhHAKDbJhle6p/uuT4Cif
	SUDVXCv76Fc4Rz03BF6ns6NS130L9ZCkE8ZKyCItAO++dfZxBSY1X+LiNm1FSuMHb1DSN0
	RiGeL5X817TJFynxsuvd9ig49KClv2Y=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-8-ZEY3uk_JOCq--S8HET9PYw-1; Thu, 10 Jul 2025 06:25:50 -0400
X-MC-Unique: ZEY3uk_JOCq--S8HET9PYw-1
X-Mimecast-MFC-AGG-ID: ZEY3uk_JOCq--S8HET9PYw_1752143149
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-454b907e338so6225635e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 03:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752143149; x=1752747949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nUOjdgW24CAx0aqD+3zmRz0D1nbY1TritNaHwReu0ak=;
        b=T3id8QRBJv4EA5Qw+0Zpi/1G3dPBQbjFUTlPEEYHbzw3HJJxM0ioTjbvh6dcOJu+oW
         f/bjfWiJ04Hl7Jg46M5OM90BXYRg8KBLf1J40YsVt5OxOS5JbOm777qLRNvESo8im1Oi
         FDGGEAno+VMfnv6wV9l2pTXLDb7jlzcFRqwBJ5FluQIi0UyWU5BG2VqSOkcA2+Eiu84L
         CSX6SVOgYOum4i0YqgyZ0EuiZLn0WrMb7B+FJqYe3uDBiz1QmaxlisAwlZGO6Silr3Hj
         yEq6+Vm8CQryfzymg3KooHmfoS9m/8W8HTHazpl0hwG+9DfgbRFe4pA7j1iBFYrG2uOL
         /hbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHogoBhxdEoql8IcUvEmAWiKYmh5fnGPOGGAGnT6tZ+J678SqUVFJ27O6tCQnOb4YCXAsbnK77V5HU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+fEh81YlapbZOjxnKRpCjoNvgpmd34EI+u+20InLWV8FrN1UA
	EgAXDawsDoOKbENJHOVI5XfMJHtVZvJuyCHtgbnTmKHKP92e20tbya1PjVtsGB9AbyjBV2/S7YN
	RPL7qvsO6mmdrTeVEkvDfCm0J6WarK9Zb3LbY+4Gcu57f6/WTk0F1GSeZI4ctaas=
X-Gm-Gg: ASbGncu7IKEyhUPzKGEry8EmsKMd8tTY4Tk7xYAcenxE8i9fUwC4UOV1myg/B6l2akR
	3EiKz60B7SzQrCDRv2GSwokleyTzoghCRHBdhp4QiURsoJ1uHGaMpC+GBx6H0VhvBa44tZR68ci
	80LU6k568Ji4cgVfvP0qZqSfmAk/JHLB4R7zzYtznSQGzUPDeVODB0DEgn8RKEoFYjrrqRAZE56
	IaoZ2SCY/1JGnzI86RpN+s7K5K32rvNDepe+YE0pvz/eQPCLuJj/zliWbuiQhtkLp1oDpDmmRzP
	Y5JE9SWFGhpilYnVtIVLTf3C+9JJiaeUmpFlpjhpi+sK5nU=
X-Received: by 2002:a05:600c:4f11:b0:450:cff7:62f9 with SMTP id 5b1f17b1804b1-454d53a0109mr54446075e9.22.1752143149107;
        Thu, 10 Jul 2025 03:25:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGe5pDfF1QGLabNBfFC8xpTYdo6m2Xcdy7HSICzHa9sm5ah3PthWEt+IQ0sKkzkTeFviyoUlg==
X-Received: by 2002:a05:600c:4f11:b0:450:cff7:62f9 with SMTP id 5b1f17b1804b1-454d53a0109mr54445795e9.22.1752143148641;
        Thu, 10 Jul 2025 03:25:48 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e0d70csm1504884f8f.62.2025.07.10.03.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 03:25:48 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: ipedrosa@redhat.com,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marcus Folkesson <marcus.folkesson@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 1/3] dt-bindings: display: Add Sitronix ST7567 LCD Controller
Date: Thu, 10 Jul 2025 12:24:33 +0200
Message-ID: <20250710102453.101078-2-javierm@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710102453.101078-1-javierm@redhat.com>
References: <20250710102453.101078-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sitronix ST7567 is a monochrome Dot Matrix LCD Controller.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../bindings/display/sitronix,st7567.yaml     | 63 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/sitronix,st7567.yaml

diff --git a/Documentation/devicetree/bindings/display/sitronix,st7567.yaml b/Documentation/devicetree/bindings/display/sitronix,st7567.yaml
new file mode 100644
index 000000000000..e8a5b8ad18fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/sitronix,st7567.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/sitronix,st7567.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sitronix ST7567 Display Controller
+
+maintainers:
+  - Javier Martinez Canillas <javierm@redhat.com>
+
+description:
+  Sitronix ST7567 is a driver and controller for monochrome
+  dot matrix LCD panels.
+
+allOf:
+  - $ref: panel/panel-common.yaml#
+
+properties:
+  compatible:
+    const: sitronix,st7567
+
+  reg:
+    maxItems: 1
+
+  width-mm: true
+  height-mm: true
+  panel-timing: true
+
+required:
+  - compatible
+  - reg
+  - width-mm
+  - height-mm
+  - panel-timing
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@3f {
+            compatible = "sitronix,st7567";
+            reg = <0x3f>;
+            width-mm = <37>;
+            height-mm = <27>;
+
+            panel-timing {
+                hactive = <128>;
+                vactive = <64>;
+                hback-porch = <0>;
+                vback-porch = <0>;
+                clock-frequency = <0>;
+                hfront-porch = <0>;
+                hsync-len = <0>;
+                vfront-porch = <0>;
+                vsync-len = <0>;
+            };
+          };
+     };
diff --git a/MAINTAINERS b/MAINTAINERS
index ee2ef9d9db2a..d97e091b1742 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7835,6 +7835,7 @@ F:	drivers/gpu/drm/sitronix/st7586.c
 DRM DRIVER FOR SITRONIX ST7571 PANELS
 M:	Marcus Folkesson <marcus.folkesson@gmail.com>
 S:	Maintained
+F:	Documentation/devicetree/bindings/display/sitronix,st7567.yaml
 F:	Documentation/devicetree/bindings/display/sitronix,st7571.yaml
 F:	drivers/gpu/drm/sitronix/st7571-i2c.c
 
-- 
2.49.0


