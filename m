Return-Path: <devicetree+bounces-180390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1B9AC36AA
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 21:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 874923AEEDA
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 19:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1CCF262FF8;
	Sun, 25 May 2025 19:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBlG5/Xx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF60262D27
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 19:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748202235; cv=none; b=LEqWIxTdrgUsQbpgE+vA97SOv9JwtViDCIAEbBEtShZJgZPJErl5EmH2MPBkD+lb8XROOKy61s7wjIyF4CRvQfd87t7HoZ/6Gkgt9SrHNhponySbFOpmkV21nS/Dk125nTCpXata6AYIHQsHha9uJSgeRJlvGiXf04ZGs9oyNdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748202235; c=relaxed/simple;
	bh=b24c9+wvlwtPNb+edjKH9SXBvUgbTzNiDGVqiiRXW7k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Z4gGW84vbXmDQX/OC2jbImDxmMRE82GezudRKY6aPFvzKQrwwt07upYPaTbcuaar+BGx4wLgf6QT2oiHZNgzRUmHC+YVE/csH9CI68qkDjFiM10Hk00YeaR8U7J/sl+pMkJcLHbWUB15efxZGhcU2yNuJsA//vPXF4LcTny5fJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XBlG5/Xx; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-73c17c770a7so1546770b3a.2
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 12:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748202233; x=1748807033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JCgE/sFXXQDsD8aUZpI9oXAiY8YJmCnDydySpkggCjU=;
        b=XBlG5/Xx7Lat9Dsn6s6imiShMxyMt61GK14UrmvO6Z+InmguzjbhmGxELScwuR8v1E
         w9ao3LV7TixgQXxQl1oReegu8LaABqADwWRYErTfEwvMll+TOspFLSB16YMqn8HGgnXs
         5Yh3LVqnQ89x/sJOJo/j8pnIDajM/ZaKR58zCAUcV5mnrt/YHEpwytCQLb7UlCpfoGRQ
         GPbES7JSsim2f2q4iEcDKoxisbPiLeLZQxXtdh8TxozacFcNZHFscyWOtCX6K/iJjQ4/
         sohgZimWEWbSCMRbSIh/XKsA4jRrbNqK6EZNxSBUAuNXRvjb/UZruuyWJX9p74u1+MEF
         jLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748202233; x=1748807033;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JCgE/sFXXQDsD8aUZpI9oXAiY8YJmCnDydySpkggCjU=;
        b=pI3Mne3eJFGV7vdvLGMS7as/sotbQ38D77Al121i7DahDTriWuLDBzEsUOOFxX9sal
         oNi2Rui7w48na8IwcZkr5qaAA2bUMR3ckIABAX/I9Q9tI7Xz+RlWCfAHixXUY3TECQHd
         V4XHSGPF7COjGIN4NintK+V4pqCFtazhCW1OHrnmqpyJQJjhUO++/Z3ydm/d2s4vmheS
         HUJ+QlKc/gGRh5w/peM4dyFRK2j04WCwj8Z7WQX4t9dH3CXHpDgW3y/sgFUENGlHw/I+
         TRo2DAUFCG6YTMPhmX7wVKpYAsZ9koa/OcEHuS5EW6dtDEK0PJPKOGfrTljLqcSA/PO7
         g9DA==
X-Gm-Message-State: AOJu0YwnvTQM4YRl6xqS3PELZl19ATXrRChpXuXhOLttf7aMFDcLjfz4
	lR6RXVDM/DyUNpYOejGDupXa6GNEYNyOFNfDrpbAAYJEqmzQuiBWXNyWLnskqBv1
X-Gm-Gg: ASbGncv7pUVOyECzbbx+MaFHv+PkYdgCqeyvGvJZ3QhjXc382fMAmJ2AyIDnazV6GEr
	e1dnT+8Pxhg02ArDecECzcMIBFyFr7T9xvUgMTaI46hoFqDwQjCGwXNttFBdfzFT0pUSCaamLJy
	kspezjboYkesdip1jA3LxinRVac1ZtjVEQwB5kFnROFQHFUFvIzT55WAuSiKVc0gtYhLikWLHS4
	pyCcc7+AiE1IQe7GaP/LM8KGu4JQdQr323Zr5PMccxcitTDhtjopVE4unKmMK3p+uj+BRSo2Ocl
	4IHAHghIvpCFgerwer0LwirdwA6rgSsoWCDBEZpX5fghG3dDgFYBZPZ3laxZZ+YITZbQd3l2Lce
	0gA==
X-Google-Smtp-Source: AGHT+IHFBYeQ6hvGesJD5LweZBhmMlqa4Vw/kJKDJOZ96uhA6HJ8ghX22xdQaZr/CyER6if0vHQe5Q==
X-Received: by 2002:a05:6a00:3910:b0:736:5e6f:295b with SMTP id d2e1a72fcca58-745fdf4b8bbmr10109926b3a.12.1748202233423;
        Sun, 25 May 2025 12:43:53 -0700 (PDT)
Received: from shankari-IdeaPad.. ([103.24.60.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9876788sm15771274b3a.126.2025.05.25.12.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 12:43:52 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	skhan@linuxfoundation.org,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bcm63138 bindings with no errors
Date: Mon, 26 May 2025 01:13:33 +0530
Message-Id: <20250525194333.1729443-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix and validate brcm,bcm63138 device tree bindings by correcting schema and example files.
This resolves previous schema validation errors and ensures compliance with devicetree core schema requirements.
The patch passes dtbs check successfully, confirming the YAML bindings, example DTS, and generated DTB are error-free.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm63138.yaml       | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
new file mode 100644
index 000000000000..5848f96128e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm63138.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM63138 DSL SoC
+
+maintainers:
+  - Shankari Anand <shankari.ak0208@gmail.com>
+
+description: |
+  The Broadcom BCM63138 DSL System-on-a-Chip is designed for DSL platforms.
+  It supports multi-core ARM Cortex-A9 CPUs, a boot lookup table (BootLUT),
+  and software-controlled resets using a system timer.
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: brcm,bcm63138
+  required:
+    - compatible
+
+properties:
+  compatible:
+    const: brcm,bcm63138
+
+patternProperties:
+  "^bootlut(@[0-9a-f]+)?$":
+    type: object
+    properties:
+      compatible:
+        const: brcm,bcm63138-bootlut
+
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+      - reg
+
+additionalProperties: true
-- 
2.34.1


