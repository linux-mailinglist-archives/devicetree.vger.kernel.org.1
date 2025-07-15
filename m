Return-Path: <devicetree+bounces-196474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1202B0586C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:06:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC3981A612B7
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A7F2DE6F5;
	Tue, 15 Jul 2025 11:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="M9VUU8et"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC4C2DCF57
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752577507; cv=none; b=M/+oodPLzFwTC9HK9EWWIIfy7aTW4Rjpk9HESnmGGo7CxIHvagUzymqdwObb/4dv5NOXpsbjVF/FdaJscm5IltbgnIhlaBxrlmra/l9Zaxl3nDe2piOWEHF6tQZlM6Az4C5i1dJNbMrfGm9m97W2lAroawOmOqVOqi0AxEsXLP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752577507; c=relaxed/simple;
	bh=2WLJKOVAuaJt4QnmoXL1k44Atj4Pe1QbpaUPyStODjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ql/HyG+XdPgVkSOtJW3Cd+us41X33ncqyeUM7L97oJR6WccD/BX59M0hR7TOHwS4DXu4M2MpQ7Z2dBAFHIkclJ5FwlA4eWZVTMZdgONLZvNk8z22bVFV6+tUUvg6rUGRQNMxN7aMW1lMKN+tYuzUN76/lscZKpR4SBLcPA1S6HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=M9VUU8et; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752577503;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UXL9y7xBlAhc4AXFCXGCZMpy7EHZFtBhXWeACly5wqo=;
	b=M9VUU8etfK4pzA/QKwfDSMz70KBMRch78ZFxCwfbIEG+P37YybmMVBhmXHiWEQu7q2L5+b
	vgfBlEXINsRX1b7ke0c4w2D0dM61P1BHW3+6rG6eDCIq0zdLQV1WeGtPrXwpvytJRtSrMY
	U3a1KWpnXOAcdSuYYEJNStpveOTSpys=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-608-ii6qvYI_NoSUvNo9VG9Vzw-1; Tue, 15 Jul 2025 07:05:00 -0400
X-MC-Unique: ii6qvYI_NoSUvNo9VG9Vzw-1
X-Mimecast-MFC-AGG-ID: ii6qvYI_NoSUvNo9VG9Vzw_1752577500
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-455e9daab1cso8167985e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752577499; x=1753182299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UXL9y7xBlAhc4AXFCXGCZMpy7EHZFtBhXWeACly5wqo=;
        b=Gk2uQtAWoDyjuYdQ00ckzUEgmtXkFX7hbUaHIPfISN+ExQ/b90Zx6BgHIEWXHjIOlM
         6sEMBAEQlNbpVEuNZdlLd06z5v6UbgRnJB2hUVvMaOUEq8GplqwUzXpCWkvtzzXdewEO
         plDG481zM7cjOV4JjrurWX0FNmqRkGfuCbPyX7HwP/1Mkev6UN4lwN4RKuoNKha19fwC
         W2aUTWQNZSE/eu4rSLXPeIIAhp23C5PScYI0OAWBoQmUyz8HlWAcNmHMmsXJQBKo5NQX
         qi9g7nR3RqI2oyQy7O+KriIhqHnqjBu5Tm2lIw9c82PHMOc8XBrMiwjXaaQ2YdpseeeO
         ojOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYLkI9S20dp6wII/ByVfYBtXXL4F7NhxZ0KYcmRldSiBcClSBhlEj/HhaJl3wjcE+x49AqMwxtlgje@vger.kernel.org
X-Gm-Message-State: AOJu0YxUQrLybaDLnaqroITr9kTO2CxaBlnfNl9smpGc3RG2G5Pl78t4
	FtTffcdkmui5jZoXjPqH8Rwz7dakEjHDKA82bpo3J6leWjfPsJIGM/34vytPyIUCshOBEAgN5bi
	xmQ43++2ew8KLJGHIxp43LF9ehnOB+xoP7KAeoCnCqsrCaefOp/hLMEq7xkC+kFE=
X-Gm-Gg: ASbGncvLAvDViXCbqjXrLL20nWPzaSNVqttjdpxbw9bUoOKI5UyCXlvfPucu7KmXPbd
	HHIX8PZ3KeJedRX+qegMqmBxJ1KUgkCR0Gubzi8GwdFRHez/RPDWX7lNc2EMtR9uk63QTKG1y5J
	wsbLm4OrCnVHVSPW2733IM1QWdo1u0XBIdC4+zxJTD3wTxOiRUJAb783LbUfMNkdx3ngV7KoE6F
	wNi2DUdw080PAtSaWlhOar3tIAWzKylB4857jf1cnDXVYz6mlB5BytprR9EX2PuIPpCeHcwFtub
	KKxBOZCR+zPrGTSRpGCL9qfahFfTrDvN
X-Received: by 2002:a05:600c:3481:b0:456:1752:2b39 with SMTP id 5b1f17b1804b1-45627727ef0mr18693525e9.33.1752577499303;
        Tue, 15 Jul 2025 04:04:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHX6q3lHTErOrCKqaTuVDGblbpeMy+KjGYJg/6IvgcpsrwPUGu+4zqypinlqXvEhZwLlzkaZg==
X-Received: by 2002:a05:600c:3481:b0:456:1752:2b39 with SMTP id 5b1f17b1804b1-45627727ef0mr18693195e9.33.1752577498799;
        Tue, 15 Jul 2025 04:04:58 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4560f22cd29sm87905185e9.34.2025.07.15.04.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 04:04:58 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: ipedrosa@redhat.com,
	Javier Martinez Canillas <javierm@redhat.com>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Marcus Folkesson <marcus.folkesson@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 4/5] dt-bindings: display: Add Sitronix ST7567 LCD Controller
Date: Tue, 15 Jul 2025 13:03:53 +0200
Message-ID: <20250715110411.448343-5-javierm@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250715110411.448343-1-javierm@redhat.com>
References: <20250715110411.448343-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sitronix ST7567 is a monochrome Dot Matrix LCD Controller.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---

(no changes since v1)

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


