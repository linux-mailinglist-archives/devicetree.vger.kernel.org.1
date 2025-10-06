Return-Path: <devicetree+bounces-223907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACD0BBED8C
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 19:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1625C189AB4E
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 17:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2B626CE36;
	Mon,  6 Oct 2025 17:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jQcuQxXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC7A224AFB
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 17:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759772954; cv=none; b=a0L/XTEVNaCbV6bJ2XawuBw/KXDXWa9yQYZKrtIldGOOzWk2SezYh5R3QbyxjJXyWdr+zCacDTBLE9ulL49DIkNhr1g0tTRg9sVsmdo0u97QpcTx4aeeGBYhKhxn0nieZFYQ/dh42b77Jl76mG9u6Q36Q0Azyx9jHW5O2F1ZbHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759772954; c=relaxed/simple;
	bh=9liKc4BbGdH2BqNfuyI7ywSHs4F/AVAdTe90sltBfv0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DjGbNxm2rLtU0vWJ1gI1Tfv2tsMxu1zXdTY9gK2ZQUQHOyNcNW24lOfXrx9K7nTaymMtgC+thc0jymA4J/tb364XtJO34ysvhzzNd9YzmYazOmTtPqT4tipSraxLERzncJGtWHIvVJfLx4BZf8Gt1tMeZMfwhNS+kxd5wBQRo0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jQcuQxXz; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e34052bb7so57473875e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759772950; x=1760377750; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duPio0RPtDjdOCnFYeiJ23Ow5gw9QiPbk3qi6TQ0F40=;
        b=jQcuQxXzGCPRtdSuCjDLDKDUZSKgP1MlzFfXduMcGcXnxqofT2WnAvxkV9k46s7woJ
         vPHBAAmCNTi7RrnpbryDuCdd2Qi0SodxT48vmZWXkLY6POMYAE1OKn0zzG6S3IzUES/b
         brMQid5PjwIdmKlrLJAxWZ/VTxdHZcAgoE+gZZ643mskMyC5kDIWod6Ax6zmPUCgJn5P
         WCk8wadYHPkRP7fceqrd+y42UG9Mfv2qNYvOlEIJI1i2VTPkYqyOB3uCdFhyOLySBFK4
         se3BnbR6OzeURJF6EHWA4BSKewSs+usBi1h+Z4iZD6QcFsUmW1lhaxUn7CaoFK0CMZUS
         TuOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759772950; x=1760377750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=duPio0RPtDjdOCnFYeiJ23Ow5gw9QiPbk3qi6TQ0F40=;
        b=UFaoVMBqTG4xRScHrAmQA2IU39Qp6j1Ug9eG0Oc+4JvHUXk9wF4qmZ9MTon7f9b5iN
         oRSXnUnbDLsXnXk7SFtU0yBH2uZmy/IsLnXV82b571dg+egOeBqse9zrvray0CRCGFo2
         I3LMr8dQAqurgdZnv3hvJWllxkj/+q/93Aw433S0Yz31XrVJZNgJPKI9M+BgIzqQ1ZwF
         eMoohxrRmdp4945bH80qZDQBgfoEDOniDx8+OwrJOWSaXMLB7hMNENMFwr1Rgpn5cjag
         Ix2/qmGFhNs7syy/0U6dmYFTkF5y6LgRRRYleXGlKUwEYGWQ+4PY9LAPu75JzXxdQSOZ
         KQ7g==
X-Forwarded-Encrypted: i=1; AJvYcCWkN+YJ5sVvBtMZk/6yc9T0dhyvkBDlbkuZlNnR2JcxyRRcJYD/RVNV7IY3pxsobhFpmKfK0peaVbwW@vger.kernel.org
X-Gm-Message-State: AOJu0YyjEh48S+Pz0cO5z13aKdVPvQD+4/SYTZBmY8AHH9zND/IwnyVq
	Xnfe709rh+v+emqn7qFcErSPUo6gU3NGvP30Wm3fqzT43Yd0Mpl9tLoP
X-Gm-Gg: ASbGnct/OEkuPPHb9EmN7A9MqCkKQRT90ROtjivU3/fIlO9vWNem4JtOUA810apyR7c
	Ai70UsRZB2+PhK0utx3UjDl+7DS3TMBxpxBbC4v3Sd2FLMDoKfWXe0xFD+jV/1YQcMGWCXGdoyY
	nhdkWyUV82pR2spP4bwdCLYY1QiBDMYvxLPE2+QMGUIogoVZvfsxQGArCnHNRlU9AozoscLtCHR
	2Ws/PERmwG7OpGlxh49ylDIS95bmUb84QPMIN8hCI6KEyJkIc7vLTBPZ1SRfSNb2H62oiw6348L
	JfXscYOoWdMx7q0AW8ufPmWD/LjNrUEMu9sb+bljkOqezTGeypl1i9mrA1ZTiBGxb3/Rm1fELyf
	3HwkQ03OvrJUoAXwLtQVR4t/e/TVgR2+aK0F3i3D1YnYq5Xcr2y330BYmZDSNoUFo24Sn8hYAJo
	PzP0v2J09gipG67bVBEHPcS7ndd24u60GfqQ==
X-Google-Smtp-Source: AGHT+IHkSj9MNsUJw9ZpyQogvi/IDNzd+bwC8lC7GyQvo3xrlRnEdWW+dT6LIGRmyJoozLw5MWRCWw==
X-Received: by 2002:a05:600c:a14:b0:46e:3403:63df with SMTP id 5b1f17b1804b1-46e711043a5mr98333235e9.8.1759772950265;
        Mon, 06 Oct 2025 10:49:10 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([5.225.139.156])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723431f5sm165583805e9.2.2025.10.06.10.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 10:49:09 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 06 Oct 2025 19:48:53 +0200
Subject: [PATCH v3 1/3] dt-bindings: display: sitronix,st7920: Add DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-st7920-v3-1-4f89d656fa03@gmail.com>
References: <20251006-st7920-v3-0-4f89d656fa03@gmail.com>
In-Reply-To: <20251006-st7920-v3-0-4f89d656fa03@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2

Add binding for Sitronix ST7920 display.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 .../bindings/display/sitronix,st7920.yaml          | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/sitronix,st7920.yaml b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..b4c16825f254f1b8345a2532271042350e3a5e26
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/sitronix,st7920.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sitronix ST7920 LCD Display Controllers
+
+maintainers:
+  - Iker Pedrosa <ikerpedrosam@gmail.com>
+
+description:
+  The Sitronix ST7920 is a controller for monochrome dot-matrix graphical LCDs,
+  most commonly used for 128x64 pixel displays.
+
+properties:
+  compatible:
+    const: sitronix,st7920
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 600000
+
+required:
+  - compatible
+  - reg
+  - spi-max-frequency
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@0 {
+            compatible = "sitronix,st7920";
+            reg = <0>;
+            spi-max-frequency = <600000>;
+            spi-cs-high;
+        };
+    };

-- 
2.51.0


