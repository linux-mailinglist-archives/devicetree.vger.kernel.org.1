Return-Path: <devicetree+bounces-224295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ACFBC2910
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 21:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78B103A9E3A
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 19:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760E023A9B0;
	Tue,  7 Oct 2025 19:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="kxrzJFK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BEC622A7F2
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 19:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759867063; cv=none; b=rKQngXZe22G6vvuUJfddn2Hxd2DucETMrTbVfbMFvI9SAhFBT8PgamLsm3WsSsgq3iGpe0BB1CLukDpMutR2Qb1gnvlCoOZCvKYPnqjjOL5EGS0xfnE9aJcSYUPkiJsTNFlz8um5G09GI27NTohV1P/8/HnwQh8a8nl7uc1SjPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759867063; c=relaxed/simple;
	bh=f6vqOFM1ClMIQTvzAyqnN3otmVngL9gxp0vwpvcnK+Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=emmhvhsSHDLoRRbpDpm/5wZESDmD9kKYTs0BOVTlHUwFKbUsapFmKwSZnc5MA29dLiH4qXKlYoZ5ZUvpXTPnIGdIOcyQ1Srh+2G7y6u82LLgb5l64gnaQaREmz4uQB6P+HgaDMkMD3ZRCIgiRgvAvF8hFx+joXEr52NL4fANNvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=kxrzJFK2; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-421851bcb25so3568937f8f.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 12:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1759867060; x=1760471860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2j+Q9MMzpQKCegI0LqVFwaTuZf6jfnXFIw0HL+3JIHQ=;
        b=kxrzJFK2iIv5rfTU+WGNlkG4qFK4p+ksVZi1b5eNpzbMhqeGzVt0ZDBMlNbC0knqk9
         Gy4fGBW7zZLVSalrrDq6HOslEu4zFFYGs6Is8U7nLTPZz/hfdRManbfGFkBQXb3Wck7V
         +XTdIrR9XgB0NaL2xYEt5wxjfbNKpIWYbQirDYGfY0ngKebNScYDT0wtjGxBCbV/wEP2
         eyXLCKakc8ealQ70CHtP54vYOb0GTgO8AIfH337Rr4hC18MUGpnUS3HBxhvBdQNxcpmM
         vOjTvk22HXdmcq6j4tkK65hUZE5sMIlzhH7VHu0d0YM3sKw1lfUPQre2hhypOpP+JLEl
         kPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759867060; x=1760471860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2j+Q9MMzpQKCegI0LqVFwaTuZf6jfnXFIw0HL+3JIHQ=;
        b=vzWnU9GvxyTwwpS317vnRtMyzY0NMdYspni0aIBFHDbWAi1MrWRx0P760YrqvI4NKI
         mYH1Sq+nRzM4cDhTAKKqtyyqQf/ycvOdmnTRR3MV78Zk5qDPx2wt6fuCnx3qr0ByS7l0
         TD8bZ2Sc7T75fxqDP0LkH2aNa1rsOfX8Ev5f8FcSNc/oTIf5uO6ptBxyKWFg+azjxR6L
         LYeiK7B82gmLKyd25uTJ9S4QtVwhwj2r6VTrxw/I0xWg8/wy+19DtZwiEN1IGFflytyT
         qBtPLrjaDuXNWH9guPLqFEq3iuNSPk7fgtrVONw1JKPpXQWMhlDOr7CbUX3pfLL2ax9g
         wixw==
X-Gm-Message-State: AOJu0YxMGcn0DycoybKXRK+hFYm3n6twwLQsfmbNjRNxAX3n7LTfKsFs
	N2gS28f8ogK17/2SD8bnVRJxMwsH5MaKoVP4mN9MFceSMlbAxUZATo154/KdUxTbMVkm0+wvxaP
	YQ6syQl8w9w==
X-Gm-Gg: ASbGnctUvVyjAFG8V48eDJljDOtMH+bPFZWSD1NRgRx1yDHxBUmw1EU2oV9rvcnqCDI
	HelJgxWQVF0h0f//Wf7TaVlWjPg3jswMsMcYurF5om8+wIm63+x2b4AP9KV6lxfM795F4VlmnTf
	HQzSInU1bL026iJ+l0ybvQI79TsE//sVUoXOx8Kp5+91fGMchoEpPRCPhFARr7t0DjBtXV7hq0V
	hNzoYXPTxS8yJ3N77gqJVMIrLoa0Sl4iRXLKYPumY+BRDoq54sPHMKSWxPiS9wHARmR3CXo7Szl
	q+AbtTTXC1ELM7DtGz3MqSRJzKQ+VjYahjMUkNo3gtYSSLq6Uj0M4qZVqS89pklfwGWyWOpJMnL
	eCITj46cbKxMxPVanpAnT1xf7kL+trdI7E+iS8BuVOegjYpm1qlmcVX9JnFdemnWW
X-Google-Smtp-Source: AGHT+IG9cbogcwOF6WmVSeyEhHXG7ZHMIzZWC4Mn8mt/VZI5xaGBB2qXeSTvBwUq847PUK7YWE1qgQ==
X-Received: by 2002:a05:6000:26c2:b0:3ce:bf23:3c32 with SMTP id ffacd0b85a97d-4266e7beb06mr328269f8f.22.1759867059593;
        Tue, 07 Oct 2025 12:57:39 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:bdb:8f55:60a1:c8ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8b0068sm26830896f8f.26.2025.10.07.12.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 12:57:39 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: jacopo.mondi@ideasonboard.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
Subject: [PATCH v6 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Tue,  7 Oct 2025 20:57:31 +0100
Message-Id: <20251007195732.16436-2-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007195732.16436-1-asmirnou@pinefeat.co.uk>
References: <20251007195732.16436-1-asmirnou@pinefeat.co.uk>
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

Power supply is derived from fixed supplies via connector or GPIO
header. Therefore, the driver does not manage any regulator, so
representing any supply in the binding is redundant.

Signed-off-by: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
---
 .../bindings/media/i2c/pinefeat,cef168.yaml   | 47 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 MAINTAINERS                                   |  6 +++
 3 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml b/Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
new file mode 100644
index 000000000000..1295b1f4edeb
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
@@ -0,0 +1,47 @@
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
+  aperture positions.
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
+        camera-lens@d {
+            compatible = "pinefeat,cef168";
+            reg = <0x0d>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..4f50c35ed670 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1241,6 +1241,8 @@ patternProperties:
     description: Picochip Ltd
   "^pine64,.*":
     description: Pine64
+  "^pinefeat,.*":
+    description: Pinefeat LLP
   "^pineriver,.*":
     description: Shenzhen PineRiver Designs Co., Ltd.
   "^pixcir,.*":
diff --git a/MAINTAINERS b/MAINTAINERS
index 5a2cde903910..a59cd27caf11 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20332,6 +20332,12 @@ S:	Supported
 F:	Documentation/devicetree/bindings/input/pine64,pinephone-keyboard.yaml
 F:	drivers/input/keyboard/pinephone-keyboard.c
 
+PINEFEAT CEF168 LENS DRIVER
+M:	Aliaksandr Smirnou <support@pinefeat.co.uk>
+L:	linux-media@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
+
 PLANTOWER PMS7003 AIR POLLUTION SENSOR DRIVER
 M:	Tomasz Duszynski <tduszyns@gmail.com>
 S:	Maintained
-- 
2.34.1


