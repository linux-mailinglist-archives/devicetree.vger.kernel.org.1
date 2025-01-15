Return-Path: <devicetree+bounces-138647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6989EA119B3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A69B163672
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 06:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CCE322F383;
	Wed, 15 Jan 2025 06:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MITiJIpe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901F1232452;
	Wed, 15 Jan 2025 06:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922817; cv=none; b=CSPYP8TT8ZmK9GB+RM2C4WtAxbe8GI5UrZ5WnacJdBabsbDxH4BkSqWhjNLjKufYH+npKqz/lGJl2jzsjjop5m2PdxB+rwfnXsIl15oG9i0406zy1n1KyOfHUp9yO+hwLTv6b04UuPhmpAgZUZ6kzQvGwp8UCc2fLFxYTUcE/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922817; c=relaxed/simple;
	bh=vT69TqM5/DlOWDZu2YlRBVZ91d+x3IQ/iA/o4+YMjdo=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sHkhp3ZxbcdX7N/V/YxKvPqf5B/VeenxDlqstL/pqQ6SzPR5sMC3cX8wotvYwFmxrHjHmKu7cUZgBGrPGOhd2ZEvr1AgYWnEn6ALXY3Ofei9Xc5fah/FCHUthVzjYyAlE1rC1RKpiBUw3AzDSR94uQPeb3YpUMHlfQ7Z1GYhqZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MITiJIpe; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e2764aa46so3763412a34.2;
        Tue, 14 Jan 2025 22:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736922814; x=1737527614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjPLS+87c164zvN8uut+ZV6gycKxJWoni1PwVPwNYxc=;
        b=MITiJIpe7+LVOHhEnDEHtwo1Ksi3FdOPUj5sSUyT4sSHwj/oY1h8tcm5xuc19++nqe
         /nOHGEclsMZqpUNxDaQNqr9+87qFywxrdCnlKtZYDyh+7Y2zoxyY1/3791CaAXWUrobj
         mkQgpNg72dpsq+EQ2mwPVmctUjlu8FULUDT+C3ZKkmHVIt6UHs0W3U5/5AVYVgUoeTyx
         MoVgmcV4k1RLuZnWXllIvv+mtnh4qFLQgP5SxKXKuv/Ks6lY+02G/Rl/eoz0Yhw3EKHb
         GwL/YWq0lYFw31n/IsMh1PDRE+gvB+JFebRDfOAfEaeU/KfvNwVKVwcI7SA4cc+/eTvD
         LPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736922814; x=1737527614;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vjPLS+87c164zvN8uut+ZV6gycKxJWoni1PwVPwNYxc=;
        b=sbMHqggiSk3t14kYg9T6LAwHvHLk3mG4a9aEVebzzkrGDGmB0LA+Zw8CiEd6m3kjSp
         J2BiITls3ZIqq1QzgN4yhEu4gNJUpn51hf+E1iQRtSFoINCkirKwIhbX79ZURc9epn4X
         xRdYjBgp9lMt5bwi4gNZK4GXVVKgWhk/XQlBEsZZEit3qIOrQRbvky8QusRy2fm8Qkac
         5Al5fwedU/swjK0OSgacg6l4gd5IJ6O1jEs6BJjd/9qcAEmJgvsCfWZ7P1EdxukwE4FC
         4fKRrcBBEpeZfexRRGrS45o+Y4Idao++5oIuMi3cji6PJQ30QXunXkaFT4i4I+N2KQO6
         xpCA==
X-Forwarded-Encrypted: i=1; AJvYcCUQyEdrmVMhc9aNcpAkcJuDzTdPy5A7nHLGRlYov07S1ZGBFtiWfDPEAB6wGxtU/0EEnDstvJn9fXR1otjM@vger.kernel.org, AJvYcCWXMub8DDOte+CTpqHSS2ywW/1DZQfIZW6FnXGmesFuKSGBvxuuIwdVQQNRi4pvYKxG1TAuDGxHpocf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa8wmkS2OPnjULGkCc6WVmpJ9HFTVVyTUMvrdbH13k0PieBhbb
	OJkNNkpOWX/1gn2NHZCKiyBwGqI9RoipWO+q/wrCdqToz0I2XI4TQHLL8xcv
X-Gm-Gg: ASbGncu3Rt2F+I5DLRsCZdOcKesp2j118znJ82J2u4QLB/ZRVqMyErPtvElb+rYgoUd
	LZYqxhR0QmUg9koL1LYm6TO4AUMMF3o55NzGM4/P7COBaOTveAWt12khhgaFYGD4DWUSEdMIPz8
	mrWI5HLkDVvSicV2BOzwvH8haMF4+flLc8y1wi7qocQ3r8jyJgZO+DLbrV0QeIgJGA2tXeS65o1
	HeLkWyilyXf6nkO5IHv4NLnGsKpnhkHb6E6bBMH+VWFlr0DOz6P2o74yKz+WaZqUMk=
X-Google-Smtp-Source: AGHT+IHJ0fRsrZOJ5WCpP1mUvMfEhSmwHHeo2V+axn7r2mLfWnYK4N8MJqFEaFRilpt3uQk+aUC6oA==
X-Received: by 2002:a05:6830:630e:b0:71e:240a:4828 with SMTP id 46e09a7af769-721e2e59135mr19635685a34.16.1736922814398;
        Tue, 14 Jan 2025 22:33:34 -0800 (PST)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7231861bfebsm5394941a34.51.2025.01.14.22.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 22:33:33 -0800 (PST)
From: Chen Wang <unicornxw@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	arnd@arndb.de,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	guoren@kernel.org,
	inochiama@outlook.com,
	krzk+dt@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	samuel.holland@sifive.com,
	christophe.jaillet@wanadoo.fr
Subject: [PATCH v3 1/3] dt-bindings: interrupt-controller: Add Sophgo SG2042 MSI
Date: Wed, 15 Jan 2025 14:33:23 +0800
Message-Id: <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1736921549.git.unicorn_wang@outlook.com>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

Add binding for Sophgo SG2042 MSI controller.

Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 .../sophgo,sg2042-msi.yaml                    | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
new file mode 100644
index 000000000000..f641df191787
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/sophgo,sg2042-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo SG2042 MSI Controller
+
+maintainers:
+  - Chen Wang <unicorn_wang@outlook.com>
+
+description:
+  This interrupt controller is in Sophgo SG2042 for transforming interrupts from
+  PCIe MSI to PLIC interrupts.
+
+allOf:
+  - $ref: /schemas/interrupts.yaml#
+  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
+
+properties:
+  compatible:
+    const: sophgo,sg2042-msi
+
+  reg:
+    items:
+      - description: msi doorbell address
+      - description: clear register
+
+  reg-names:
+    items:
+      - const: doorbell
+      - const: clr
+
+  msi-controller: true
+
+  msi-ranges:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - msi-controller
+  - msi-ranges
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    msi-controller@30000000 {
+      compatible = "sophgo,sg2042-msi";
+      reg = <0x30000000 0x4>, <0x30000008 0x4>;
+      reg-names = "doorbell", "clr";
+      msi-controller;
+      msi-ranges = <&plic 64 IRQ_TYPE_LEVEL_HIGH 32>;
+      interrupt-parent = <&plic>;
+    };
-- 
2.34.1


