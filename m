Return-Path: <devicetree+bounces-226163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DBFBD5861
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 19:36:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B6FA04E4182
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 17:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464AB3081CD;
	Mon, 13 Oct 2025 17:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XPGIi96D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D632FB637
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 17:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760376981; cv=none; b=RYnYapyn2Dr4TJCy8wPYtp2VPZXcSqc0EOu9HIoERgLS8hsI4vKIPAyeSs/KvO+fsaqGrCN3ZvEF20P8YM5xcFJy2y+eJD7aGe1dfQE2GPBtbipvtAxFftA5BDs4Wbu73klslQXjrpjE8iFL10GzCIQKCCDbW/haS9UYec8DUlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760376981; c=relaxed/simple;
	bh=kLhYvW9AlQj3sw1QpHiRoyVeEgjoCSxOeoymqVdqNfM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KVXGtjTW20X7tGFS7m9pc8AgLHqTIHZRlAo16bF8jScMo/c6EgJpdYvp+v5WfK/FZEnZ/+zCaMMdU/UdAYR84UGJ9g2Xkq4uGkgnDdeC8AIh/8Uigyd2YB5tpx75rcA1jHwgM1W66OrJVknKm0Rnxmhcm9xYSojTmeu3KWINtY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XPGIi96D; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7930132f59aso6040811b3a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760376979; x=1760981779; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ATjbUVjPtgk2XgFOIG18XCiG2R9zjwgC0SeHYooUTnk=;
        b=XPGIi96DDR6OCLXKkcE8BymmlmVKx2STHm4imtuIFGaF8LCkvDnsDv8W2fOwmpcVcH
         bglAtmzFauzwVLMOemMRSZQ5FHO0qqZtgJbA/gPeep9KJHkjpwqmZO11bGE6REtGZeYn
         mvJiJy0CA5D+79023G81CQYNcdEecAWkE66Dw5FxY8BEGwo7q4BS5M1PdkpDWcsHvvvJ
         DgAdfAHzP6RzA9romX7fkBuWGkUI2UFCuf2kcUXOifDlt2eBmzWLLpRIwbsRnmO5vL+x
         kL+kDJ5xFkOHc7RlAFP6AlR+TUErEGCdyCjVnFb85nM0pG+zwCH6O9oXTRvAie3H9/Pl
         zY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760376979; x=1760981779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ATjbUVjPtgk2XgFOIG18XCiG2R9zjwgC0SeHYooUTnk=;
        b=NqdL6wvhFwktkATUeyKQLhbM2IwVXfLizapl491AYjvlPoMBc2vpmmFwNLABgGj3IB
         vVBx5xhPQGCovZxAdrvsYzf6plqFIwVCi86K/7n/bwT56suYMzyoEPooUblqB6y8j8zm
         s4zihOGXlEUuvViaDqNl8L2ZN7jhNEFMmYkCkAk4sn5LrCEUaRg0kbyQv+G+6MWeVKgW
         nYkgT34mcqKJtsYZMIpwSIa+uYcxzVcfboWUFjlGRa4K2f3VcHMxeslGLBAIWwsFQlOm
         gNtI7NoeQalj6pd25QLPbGIgKLcSHJxckGPjF1dPvfwhsmX6fDXRIvYukV4DoxI2j+Lk
         NxyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUB1uOe9Igi0eZO4Vcgl4dVF2rGwFSMxzTTeNtvtOjSPIjjJfezfOyQVwWfJSZbgyCmgQ5ADBOUI1cX@vger.kernel.org
X-Gm-Message-State: AOJu0YzL66zqTUcAyUxWjCaFaBhKb/QVtwPe8AkpyeCvcdzFNcLSk3Xo
	sirHYsnEBL41Nm4S4+u1YGtyNklsxg+T4eYIKBo0KWu9seuCsdUhrbVs
X-Gm-Gg: ASbGncvzgL8XOVpE09tgqBAX6DtlgYnoPgxnnQ9qXFLZ6CfqB4LCsiZWkollPOQQ2Za
	t+UB/+zSq3DaxnakoCDQPNMSn1BUe0+id0BDk8mQ/aKnvj6brzIh9eR4jQwC10JTmZ4g5dMJ3cP
	j7sL48hud2bRqMgIpJrytrYrGohX0rriYhXdOZZXeiEfe+rdqmifllPWKOqTTZYacHuFVGL4L9P
	3VWJy27V7UbnsPgUReIRbWLdumWZHxOKJja9ZsIkSA599cj97Cbqu7/qGUp6Uyi0Y2pXGouAdwL
	w5xDkh/h7Fjr1jcrzDnOHUgrffKUuboRjLg6dQVE2eQ1SeiwQiFcbAj4FSBJcZKaIcH2rkIih+1
	17kSxRlDqQDN0DlKC/ST5EmLjS9p03gDtcHMLBjK87VNkN/wP1h1/4VtfT9A0MW0=
X-Google-Smtp-Source: AGHT+IFS124pQtyx/H2Lv0NWRAsl1qkpj5e9oFH32lZ3m9oPB5Gj53gUtGzgXf4Pr7LrwD/HWfgOgQ==
X-Received: by 2002:a05:6a00:2e89:b0:772:45ee:9b9e with SMTP id d2e1a72fcca58-793857fe5b8mr22582029b3a.9.1760376978836;
        Mon, 13 Oct 2025 10:36:18 -0700 (PDT)
Received: from DESKTOP-P76LG1N.lan ([42.118.149.214])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b060754sm12424546b3a.13.2025.10.13.10.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 10:36:17 -0700 (PDT)
From: Nam Tran <trannamatk@gmail.com>
To: lee@kernel.org
Cc: pavel@kernel.org,
	gregkh@linuxfoundation.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Nam Tran <trannamatk@gmail.com>
Subject: [PATCH v16 3/3] docs: leds: Document TI LP5812 LED driver
Date: Tue, 14 Oct 2025 00:35:51 +0700
Message-Id: <20251013173551.108205-4-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251013173551.108205-1-trannamatk@gmail.com>
References: <20251013173551.108205-1-trannamatk@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver provides sysfs interfaces to control and configure the
LP5812 device and its LED channels.

The documetation describes the chip's capabilities, sysfs interface,
and usage examples.

Signed-off-by: Nam Tran <trannamatk@gmail.com>
---
 Documentation/leds/index.rst       |  1 +
 Documentation/leds/leds-lp5812.rst | 50 ++++++++++++++++++++++++++++++
 MAINTAINERS                        |  1 +
 3 files changed, 52 insertions(+)
 create mode 100644 Documentation/leds/leds-lp5812.rst

diff --git a/Documentation/leds/index.rst b/Documentation/leds/index.rst
index 76fae171039c..bebf44004278 100644
--- a/Documentation/leds/index.rst
+++ b/Documentation/leds/index.rst
@@ -25,6 +25,7 @@ LEDs
    leds-lp5523
    leds-lp5562
    leds-lp55xx
+   leds-lp5812
    leds-mlxcpld
    leds-mt6370-rgb
    leds-sc27xx
diff --git a/Documentation/leds/leds-lp5812.rst b/Documentation/leds/leds-lp5812.rst
new file mode 100644
index 000000000000..4c22d9a79d14
--- /dev/null
+++ b/Documentation/leds/leds-lp5812.rst
@@ -0,0 +1,50 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+========================
+Kernel driver for lp5812
+========================
+
+* TI/National Semiconductor LP5812 LED Driver
+* Datasheet: https://www.ti.com/product/LP5812#tech-docs
+
+Authors: Jared Zhou <jared-zhou@ti.com>
+
+Description
+===========
+
+The LP5812 is a 4x3 matrix LED driver with support for both manual and
+autonomous animation control. This driver provides sysfs interfaces to
+control and configure the LP5812 device and its LED channels.
+
+Sysfs Interface
+===============
+
+This driver uses the standard multicolor LED class interfaces defined
+in `Documentation/ABI/testing/sysfs-class-led-multicolor`.
+
+Each LP5812 LED output appears under ``/sys/class/leds/`` with its
+assigned label (for example ``LED_A``).
+
+The following attributes are exposed:
+  - multi_intensity: Per-channel RGB intensity control.
+  - brightness: Standard brightness control (0-255)
+
+Autonomous Control Modes
+========================
+
+The driver also supports autonomous control through pattern configuration
+(e.g., direct, tcmscan, or mixscan modes) defined in the device tree.
+When configured, the LP5812 can generate transitions and color effects
+without CPU intervention.
+
+Refer to the device tree binding document for valid mode strings and
+configuration examples.
+
+Example Usage
+=============
+
+To control LED_A::
+    # Set RGB intensity (R=50, G=50, B=50)
+    echo 50 50 50 > /sys/class/leds/LED_A/multi_intensity
+    # Set overall brightness to maximum
+    echo 255 > /sys/class/leds/LED_A/brightness
diff --git a/MAINTAINERS b/MAINTAINERS
index 7166e80c189b..314b5555c027 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25418,6 +25418,7 @@ M:	Nam Tran <trannamatk@gmail.com>
 L:	linux-leds@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/leds/ti,lp5812.yaml
+F:	Documentation/leds/leds-lp5812.rst
 F:	drivers/leds/rgb/Kconfig
 F:	drivers/leds/rgb/Makefile
 F:	drivers/leds/rgb/leds-lp5812.c
-- 
2.25.1


