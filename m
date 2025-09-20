Return-Path: <devicetree+bounces-219466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E27B8BCD6
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:45:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34DDF1C04B98
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4424B20F08C;
	Sat, 20 Sep 2025 01:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g1mcR9M1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48D91F37A1
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332729; cv=none; b=ndziGD9HN9Hc0lksWk2VFjsLR5YFMPOy8T9qOC9XBvmpg42ZFTiaJJcbJ11BXh4+kFphpdVWCXAJjXsSbH3g7ZTJso+/0ubW0ZGidKgq9ztQzgs1Wo3pxb0DtYQA2sg1FSh8XifQWpoDim8GfDmuMJHfg+I4xSYCvYdbUluEa/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332729; c=relaxed/simple;
	bh=pBL+gVGPk5Oe6pgI0u7TV5kZR7rId+e7XFYkDX4Yyd8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Oda8caF61Nt/BtC8/jlJeDTzWglX1vC1RmzHPIuoKCOaZ+vVnNqY+imVrn0htGqdgz7WcVULKigAtTyfQf8JOcWxrtVp5tHNnz1658vknOTNnNxOD4QSqonBW/dKRbGFEfJtunsSnFmBNKRNWAy6XgnF6KoFEgTwxtbHaSkE7Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g1mcR9M1; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-77ddfe29cccso1608638b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332727; x=1758937527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0g3X7itFcaYd0uyiDe5Igj71JtDo3enYD8GOD7zyyH0=;
        b=g1mcR9M1H4OE/tqDUPn/KWIVoO7KDOIq7A+byt4N6uy/nsEuqGzOsAhDGuP3n2rFXm
         DOzRgfGiTezHK8VMmjK2TZz3cRROnk8Znv1Zt5XppCmnXC5lT8Nw0TQ3vZl64uLTdkzq
         gtyEeqY0upuagPp/Lt9hFD2nFGFn99ouzdQIIGbM4+K89MsCKPfBMw8T6Ggx0R5pmdTY
         Ifye1nDJqxyYTXxGjcJVJ5P3/uAW6j4SSft/oDeaYpsmu8wMi0/M8Z4ASDG5OTasl/6R
         gW/lNrtq1RA8hfave17gt5IEEnFiJybPcWIvgKJHDJ8cRzJMgh2nZpG2HcdxK8bAuPjs
         M9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332727; x=1758937527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0g3X7itFcaYd0uyiDe5Igj71JtDo3enYD8GOD7zyyH0=;
        b=SJ0/6w7l+1gehtq+DWP96mtAFs5/45L3dWrbZ8xs3Sqgum3McZ8aDJnH5NXJ/RepDv
         ayWojMbTStJ/6ClLObfhafiY8Az5g6NjoD5uj4rDOubBHvib1zTi6qYNvJ+MsuDgFKMi
         eQzkgnZT1f9ve4Ymcqy6bVy08LiAd1/vvDwGIGAl4wtUxDcZGlxBPzQMmw+UB+T3T3d6
         /ef/QlTblxA60oOCkEWwD9GxyVhLIjbaNVL9yviyE70PCnulX+Q+4tR/L02X38LRVMYT
         hCKK6hvx1HiA5vmjT5w2Ovs/FK2xqmgWLJPVgBVQ92ppCBROqSX0asnYvJ+IAyeq4RTL
         e2qg==
X-Forwarded-Encrypted: i=1; AJvYcCVWmcTJa0DYYLvhQ8vJNo0IssubYe75GBB9+J3G71ipcHv/ygqR8j+O1zpxUkfCfNhMbkxIWrH8tude@vger.kernel.org
X-Gm-Message-State: AOJu0YzNpemVBeF90Hzh9FTZIqRrz+S50g9/KjIuprHGVVaf7mMzZW3o
	OND8WLbM3H+77PlPBjoNcnVrhwPpgNXxpJSDWAw+xxyaIvbMj39eoPoM
X-Gm-Gg: ASbGnct/rmqxLgw04eu0Jn7l1ju1g098weqr1kT98gUjevF9Dc4YD1/LVUR4yG1iUq1
	//FQyz6pJSQPiOxPCiyaaQHSXrUH4t6jpyB72Vm7xgblCk5A0vZYZcR6bGRnUINIHM5GZyjP9/q
	AyoLhkSrv6FBjPbRdwVcTYZcT5x7ZMmwlDYYAcceEh2y4tegIEtPKWgAd5+YkyYWFJGw9YQVR6E
	pgtI3tnQLOx/6hI9Ug1S0/m6CN0JhJXYGLK9ejYnSmS9r8pxB0y3UkaSuz8bggj5YHSOXFCkMlx
	KYcmRvQ4dNUplIPrBys81hbrh/jCqdAVI4tirew4sLB8JL0lSmna7pBQ6Q1tJtNTsCviStIWFjl
	KFp/Laxvu+Rp/e+ZMOwDF
X-Google-Smtp-Source: AGHT+IH46WKyw6dARtEBBxsg7fBtDAYRS7xjAqSCeJOf6ViP/DWyFWnfqtCB+n4K1vLBS6bTt8oifA==
X-Received: by 2002:a05:6a00:b86:b0:76b:d869:43fd with SMTP id d2e1a72fcca58-77e4e5c39eemr6702571b3a.18.1758332726883;
        Fri, 19 Sep 2025 18:45:26 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f1a72e7afsm529395b3a.92.2025.09.19.18.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:45:26 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Henrik Rydberg <rydberg@bitmath.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: input: Add ST-Microelectronics FTS2BA61Y touchscreen
Date: Sat, 20 Sep 2025 01:44:49 +0000
Message-ID: <20250920014450.37787-2-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920014450.37787-1-ghatto404@gmail.com>
References: <20250920014450.37787-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add the bindings for ST-Microelectronics FTS2BA61Y capacitive touchscreen.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../input/touchscreen/st,fts2ba61y.yaml       | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml b/Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml
new file mode 100644
index 000000000000..d5565b5360fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/st,fts2ba61y.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST-Microelectronics FTS2BA61Y touchscreen controller
+
+maintainers:
+  - Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    const: st,fts2ba61y
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  avdd-supply: true
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - avdd-supply
+  - vdd-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        touchscreen@0 {
+            compatible = "st,fts2ba61y";
+            reg = <0x0>;
+            interrupt-parent = <&gpa2>;
+            interrupts = <2 IRQ_TYPE_LEVEL_HIGH>;
+            avdd-supply = <&ldo17_reg>;
+            vdd-supply = <&ldo28_reg>;
+        };
+    };
-- 
2.51.0


