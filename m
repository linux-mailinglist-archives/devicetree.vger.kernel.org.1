Return-Path: <devicetree+bounces-203014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF75B1FBE6
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 21:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BBB1174C0C
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 19:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190A0212D7C;
	Sun, 10 Aug 2025 19:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="WGGIpviT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD69E20ADD6
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 19:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754854043; cv=none; b=ltbYyaaJJOYKjH45w/Sl1JNuIsGUrCVP9tee69hh+rgmGQv2WLycjVtToUh4onnD53K8AqRr8+Pp/ZGzc9TC5//FB3LtKnGBoCuq1lssllVwq+ovDXlmCe0CcUgsvLnApDEjF2NrcHloJFOqyZ7oF8kl+7vnYLuG4+92IueaF/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754854043; c=relaxed/simple;
	bh=S4bDP7znx5O3jPnwJQBOVWcAgdlNPAuNUWgSidL0XJI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TRBi87Jq2/5ilIItwo7cOBIXEptkCuBZDIWR2GbOy0pwyvAl/OWwPNMzB6gbll2WknqLIbk70mU2JB61w+r0dvoVo8fooUpu+2zmodGMqh0MRdYvDUYVcSfBzy/RFbxSs4N3NSKcNjVtEUXmb0AOQTxBelomsinvHZRcBJk89vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=WGGIpviT; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b8de193b60so2044760f8f.0
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 12:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1754854037; x=1755458837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxsUUdbbik6hy9jDV8R5dXO2o1yuwKik/AtkjHuIRM0=;
        b=WGGIpviTtXZ032P3Cs+LvZYmqjydww/wKozsfsLi8iO9Ze6HXLb8oTWiQ1Xk2CDtwJ
         CTlOt+DQM96y6JIHwftYLbZHw23i1EBcUaakBQlH3iKjfE3wMFmv4Qdirf1l663ATmEh
         Mjxp6yjwmanSKkH1ODsZqec5a7OAZTTJT1KHvfWo8nC2XaCSc9N9r16F4aCIb3FPXAuJ
         vGyNLT0jt9EA3FJ/PnsTKF+A+cq47UNO5W93LoNRL8rKmicmPBu4WgIOYudig1F6tTgF
         XURUIcCOnfCw/14HB7F93idPTaEX10hM1EL1VCg+pYI/HVezskEfpmPTlLfeqpVPSWPZ
         Yhng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754854037; x=1755458837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uxsUUdbbik6hy9jDV8R5dXO2o1yuwKik/AtkjHuIRM0=;
        b=ByuM0A3BVcsUmosdmMFEeTPfC8378UOcIzPxlA16kxhel4p13cw1CrfCqNf0Y7xdny
         CmZxXV0KBQ4IQAw+FocgCsbZwmf7T8oZaJCaPonTbVjlEk8D0p8i9qIRT8kzN9EdzbhF
         OtTLK/pGXH7ZJTxxu9bgFmPlEBnSHoZtITjWCUPRQFFA4SyAhOAR4utJxMAaaP3UW7DK
         bNlZXTmaMhvYRWytSnkeN+t2aU/hDoAvO/UYiLSrq79UZSqjfDgQs6knL9iIK2cdjBUL
         6TRhdlnc3la/MmAeMc6EWQmLRbC8LkgxxypYMfo1qu6mD9lxehHEDBlwXJyn5lHdyHfY
         +x6g==
X-Gm-Message-State: AOJu0Yyo38QCdr/j9PdZQ2QAMwYKIQM4O2CQUUPJYrs/XYblEScLTPzY
	Tj1axbpL5KMqNF3I/aFY/WSSJtC6UvA3IzCsOd1NiYRyYDxujvuy2p7ZZWlYp54LWJWTkZQQb84
	QxXWIVjw=
X-Gm-Gg: ASbGncsdVdGQ8rr3MBAC6a4wkziX+1wuxckQcW1q//Lk1b8ftZxmnEqag773IdzOC/V
	yARaywIu2G1UDA/XgDQRu01CBqgFAuVyNQmHOLtEAOX7/PqDIM25PIbyId/oBOCqorTI2C15VBG
	gFhmOvJjBAh+P3HSo2ZOwep8nXSryI6thN9phCk3wxClj6aVHY7q4Ionxo2UQu4WscxPkm3uI8G
	YUO0QqNATBzlHZ3P/EigeDPeRx+b5bdcu6eEAyHUm0E+AdInbbnwbN/xiKh1ec6C/oOk7RQXSc5
	G2ng+AFleQBCPNWObgJ1NlT9ZZrSlw18btxXM33s7Df/GyVadLytCCVlEKbdUz3Uw1E3panH9R5
	soxyMab21u67Rm/d2v2eNfYRfT185svLbzpcUg5aUHys9XsmL
X-Google-Smtp-Source: AGHT+IHJF8IHbjFjZW/vLm+xQakGV9APCIGd0lRTXkW4HuRgG4gZbWajhRdAYLOmIk0VGIT3qX31ug==
X-Received: by 2002:a5d:5848:0:b0:3a5:8934:493a with SMTP id ffacd0b85a97d-3b900b5073dmr8982235f8f.44.1754854036898;
        Sun, 10 Aug 2025 12:27:16 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:d8d1:2f6:48b:1545])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4530a8sm37890947f8f.38.2025.08.10.12.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 12:27:16 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: devicetree@vger.kernel.org
Cc: linux-media@vger.kernel.org,
	Aliaksandr Smirnou <support@pinefeat.co.uk>
Subject: [PATCH 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Sun, 10 Aug 2025 20:26:08 +0100
Message-Id: <20250810192609.11966-2-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250810192609.11966-1-support@pinefeat.co.uk>
References: <20250810192609.11966-1-support@pinefeat.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Device Tree schema and examples for the Pinefeat cef168 lens
 control board. This board interfaces Canon EF & EF-S lenses with
 non-Canon camera bodies, enabling electronic control of focus and
 aperture via V4L2.

Signed-off-by: Aliaksandr Smirnou <support@pinefeat.co.uk>
---
 .../bindings/media/i2c/pinefeat,cef168.yaml   | 48 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 MAINTAINERS                                   |  7 +++
 3 files changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml b/Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
new file mode 100644
index 000000000000..ae0c77de5cb4
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2025 Pinefeat LLP
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/pinefeat,cef168.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Pinefeat cef168 lens driver
+
+maintainers:
+  - Aliaksandr Smirnou <support@pinefeat.co.uk>
+
+description: |
+  Pinefeat produces an adapter designed to interface between
+  Canon EF & EF-S lenses and non-Canon camera bodies, incorporating
+  features for electronic focus and aperture adjustment. The cef168
+  circuit board, included with the adapter, provides a software
+  programming interface that allows control of lens focus and
+  aperture positions. This driver enables controlling the lens
+  focus and aperture via the V4L2 (Video4Linux2) API.
+
+properties:
+  compatible:
+    enum:
+      - pinefeat,cef168
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        lens_node: cef168@d {
+            compatible = "pinefeat,cef168";
+            reg = <0x0d>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 77160cd47f54..dab27f769b0a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1195,6 +1195,8 @@ patternProperties:
     description: Picochip Ltd
   "^pine64,.*":
     description: Pine64
+  "^pinefeat,.*":
+    description: Pinefeat LLP
   "^pineriver,.*":
     description: Shenzhen PineRiver Designs Co., Ltd.
   "^pixcir,.*":
diff --git a/MAINTAINERS b/MAINTAINERS
index fe168477caa4..50dbe343ffc2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19985,6 +19985,13 @@ S:	Supported
 F:	Documentation/devicetree/bindings/input/pine64,pinephone-keyboard.yaml
 F:	drivers/input/keyboard/pinephone-keyboard.c
 
+PINEFEAT CEF168 LENS DRIVER
+M:	Aliaksandr Smirnou <support@pinefeat.co.uk>
+L:	linux-media@vger.kernel.org
+S:	Supported
+T:	git git://linuxtv.org/media.git
+F:	Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
+
 PLANTOWER PMS7003 AIR POLLUTION SENSOR DRIVER
 M:	Tomasz Duszynski <tduszyns@gmail.com>
 S:	Maintained
-- 
2.34.1


