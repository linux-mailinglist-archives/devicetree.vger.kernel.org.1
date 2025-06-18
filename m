Return-Path: <devicetree+bounces-186903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B378FADE1B9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EBFE189ADFF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051CC1A5B86;
	Wed, 18 Jun 2025 03:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j3R+9qcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7627628E7
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750217922; cv=none; b=VbFpolpCREeB6eNOXbhf+vvQynfHuSMeqo82WUiuoaeNCJg3AKz08wnMSmLjy0j17LXziXW/MH6ZA75unmLfMe2StbUcgQ+IMw53Pm69dFuTDe9CIHrtMFDEQztV4yhyaFDb/6zhvFwVOlf13eHjwhKgy9xrNjW17m9SHDkmCUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750217922; c=relaxed/simple;
	bh=RaWmMLjum0fPe+iknIMW6xtMg7QAwDNpqOuyOJJKsk0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ah0fIJG1ET6qpwg6YqlJ2CdwrDf3nwOjva8yrYsDAm9B3kXcc4/2fkxPr+OOpW7sM9pPSyjgNphyM7NSm41mB9SIP8fIsODgqgCvNqjXQuYf2Mo50yov+m3OF/IFWvz8pRwtz/Dn+FHq0kpsQ5zUXXj4zS7aReyr3lOsecy7sSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j3R+9qcw; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-73c17c770a7so7172190b3a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750217921; x=1750822721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Crp3CEYLqrLG+apC2mAZnpDNJDCfTEyqUeeXu58j3U=;
        b=j3R+9qcwlomQLW2QVQlbVdjPjNWDh84gNgtVqP7m+Gom6w84TOoYwkxgOBTxCA/fUP
         HB5+fyVZwtk0vHgUovajbPpP2Q07CpZEkK63gCXlWiUK72H6EDFsbf37uONYDQIQChIu
         APvPb389eyLyNneivmwGyVTAjJC6TXDroB9LMwMLf7AXg168LML+YU7FaF5JgR/MvFcd
         3uk/XiLfEXYOh5mePofZwx2zbZ2Rg0Zuh+exKWpmU2wBcebF98Y3A0wOXOfSbuwnecKA
         onq94vMcvC+9VZfeVS5LCGDdJcRDlVE+oS7OISaKeNLbUMBNhqIXZ4kltKHbC6xk0tl+
         1lxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750217921; x=1750822721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Crp3CEYLqrLG+apC2mAZnpDNJDCfTEyqUeeXu58j3U=;
        b=omhPCcJj9QdssNJmzDf6TXbZ3RvHXuOH9UJvRE4fgAEOQZqi9i8qW4OSxAIyG4fu95
         ynUZ4f6rgPe3HghMXDb5re3mY4zswdxlit6XPQh7mbpAcq4NAt4KMEm9k3eq/KCVRtqO
         WZ82Bwe8RMnICsDMcHeq9J9LB6ViWfsM4siOH5mZiEUELPR6ZVaJRVEzSYEsuegFjEnB
         53DdYNEBVGg43/JBhy5dO4H1XiBNF2kGplHPFe/eJZuquW7fiIkfm+SdOx7eHpGUXpfP
         GH9NvUMdBFpDxteKfjGO+VbuBc/xW8MfKzwLZsqcVk/7kWU6ccIAXhicEapE9fO7J+qN
         ktog==
X-Forwarded-Encrypted: i=1; AJvYcCXQhlAVZJS9w0uIgG8+ar3HfSbIZPk7c2X+fC5QNX6Gk/BQZPHOJKQpR/KFO7jS6SV5LaRGO2Zr59QR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/nDQF5Eg7gZLc9Xo568c/RqfqFsyeGfebcty3z7Fkym3Gp6a/
	1nqypJpbIvR4ghFHqs0uIgSkjsEVGAH7QhgWlbtsscMjCi8DPRtMlVwe
X-Gm-Gg: ASbGncudSc3Pi51q6fe9DLHStyzvTWi9k10cX3QsYgg41vcRYKD8ZFaIZCYQvlxMy8C
	vR9SESCc8bSylmub4JQdIAAJwplxs2jqoaNEF1mJiRcfQVcpquAlJgiWq9ten71MQq/01nV4QR1
	Pm6gnc42PbLWmWDqijgM3zFF6YR2Otc6A/Jn8yAnLySbGwYah7iRQ4+B1JGanEZetyVKC9wBnF0
	hxuP6GOye5anjJS2czJyslc/xwr/NZPwKZ7ScSDFCjERwpdoKfQvjiQahrtLjoNDPpjhkDOUwuH
	7UyYG2poGjNnE7lkVEyGG8Gci9CmJjiMJYdoLv96JefXPAKM89Az+iZPTarvp3MO5NlMhnbh0sT
	ucq6iDA2lnbl27pLE2nHEzgFv1nAdDrLk2lFkDrM=
X-Google-Smtp-Source: AGHT+IHbSHvGm0QbeCyiMDx7nSJ6QOKwx2BCtI7rOP0KbnpEARCZ0sIVhZ9/sbhyMcG5HjU83gpjww==
X-Received: by 2002:a05:6a00:893:b0:748:2ac2:f8c3 with SMTP id d2e1a72fcca58-7489cffb9ddmr24650502b3a.24.1750217920668;
        Tue, 17 Jun 2025 20:38:40 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900822b7sm10147934b3a.101.2025.06.17.20.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:38:40 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel
Date: Wed, 18 Jun 2025 11:37:31 +0800
Message-Id: <20250618033731.171812-4-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250618033731.171812-1-zaq14760@gmail.com>
References: <20250618033731.171812-1-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The binding is for the MAYQUEEN PIXPAPER e-ink display panel,
controlled via an SPI interface.

Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
---
 .../bindings/display/mayqueen,pixpaper.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml

diff --git a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
new file mode 100644
index 000000000..f7c33957e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MAYQUEEN PIXPAPER e-ink display panel
+
+maintainers:
+  - LC Wang <zaq14760@gmail.com>
+
+description: |
+  The PIXPAPER is an e-ink display panel controlled via an SPI interface.
+  The panel has a resolution of 122x250 pixels and requires GPIO pins for
+  reset, busy, and data/command control.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: mayqueen,pixpaper
+
+  reg:
+    maxItems: 1
+    description: SPI chip select number for the device.
+
+  spi-max-frequency:
+    default: 1000000
+    description: Maximum SPI clock frequency in Hz.
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO for the panel reset pin.
+
+  busy-gpios:
+    maxItems: 1
+    description: GPIO for the panel busy pin.
+
+  dc-gpios:
+    maxItems: 1
+    description: GPIO for the data/command pin.
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - busy-gpios
+  - dc-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        display@0 {
+            compatible = "mayqueen,pixpaper";
+            reg = <0>;
+            spi-max-frequency = <1000000>;
+            reset-gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+            busy-gpios = <&gpio1 18 GPIO_ACTIVE_HIGH>;
+            dc-gpios = <&gpio1 19 GPIO_ACTIVE_HIGH>;
+        };
+    };
-- 
2.34.1


