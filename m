Return-Path: <devicetree+bounces-248540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE81CD3B7F
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 05:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EDCE3025A45
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 04:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED1C22332E;
	Sun, 21 Dec 2025 04:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eQhNzP2h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0D6221F26
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 04:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766290847; cv=none; b=Ds8rAvHj7++Ltz6/X0QfU+Cf26+m0FLx8PqX8jzGPJJU/UPDAbPl0tdkGznyEQHGn61o8xDSRZlvDl5jsdwjYq31I01kh3u2QjK8MjhASbOW8UlVP5iOd2Gfs/7PHTAUL2xeFFSh5uxNmWUOOZ4EYaBXpONMkJQ/BBHfbcgyE6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766290847; c=relaxed/simple;
	bh=p32qd1CMtpZrvOqiOyNxVvmMRWtTmW3d9z9hTfsYpGw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=H4hsDndywAVvFMXCdBDjMhiDz1p7uyHm233S5sH/eA+u7KiUBWONac95QIwTVCCsHTaNZQmIe3Uagr7KsoDp2oA2kh5f7VSHI5b2Pa7RGDaseREp1CQBhSYSTNQygyrsP5XU51tFAGmwrX0nL0+QhhwOiKQUwqWgEk8xxE5uJws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eQhNzP2h; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-29f2676bb21so38240305ad.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 20:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766290842; x=1766895642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XnP7OKw91qUHBafMZ5I1kAG02nR+3IKvTt8SsYgVCHw=;
        b=eQhNzP2hyJPrrXzQHti/TlHxYQ7rh820FC1uSKeiaxBMTqW84YClOkDOgmygSLcyJ4
         SD7T+3YXTNzDJwuQBzzlnYy8OL4jZY2C3Bd6dYXK2n2fz+GlvKzy+3xFnnGZhuthLJ0O
         7mFdd67OeJL9rCg1Ovina79UX447bw20MpLPeOChQ5DktvBIcGRC10lCKOOhLIYZtSPc
         xEo6dyOsKpOR12doH04Z/OIdjjwvfv8glw1cidp4j//+3R1egb/W5ZJR9wENagxRKmf+
         FgMyE/3ErvPTbrLXLncnHzR/cMN+DW6Sp4Hu8CsA+CXpHz2aaDel++dpaRcTT+mbuz5e
         WJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766290842; x=1766895642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XnP7OKw91qUHBafMZ5I1kAG02nR+3IKvTt8SsYgVCHw=;
        b=Q3z8lB/G2I3J+yMTj30Olj8KXu8CG29J2+dk1g54V5krD5z4jZP606oL9ab9OdkQXb
         k9bZwZsSFisNhMyiWyzKvK3Z84AobHlIeR0agjSDmiy4RBgtyhLHCKG0er+gNPfzjZb2
         aNOLHmRX8pjk79ZkK1uQvMF2YcyyE9GL4JxH+13jW9ZExjA0iT3dPLhO1tfgZPbIRVOl
         UALQzKi4vsBnHBu8U8Sk/+c3U/6b1tMeJ9OvhGF3/krVCmrgHRyNh7K7I13q8APk08AT
         N7nJY1IhyuaU6isZxAn3HyDkNo4nZt02AaCvfM7aoYJUOJkVaZ9pGQvkmsk/QzZeqyCb
         6AWA==
X-Forwarded-Encrypted: i=1; AJvYcCWK3AjwNMg4euDwcnB2BD4TbLMuNPN2QclC1XJPtdQO8f5SneAhWhESGfk/id/h5hzdzi0ZZpMvKSgD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6BS9zVBdcTdF1Y33UveEaYxjzUXUKUYXNSwOobbfL1kxFZUJ9
	fjRI3SjI3qmn0ji05IyeByU4RLcNO6YQyKPJxnA1E9jb6/9fgYjiKQCg
X-Gm-Gg: AY/fxX5oQjVaw/cU3Dn8e/Ptt3VwhvioM1cQHNgtnj8dbDfIFQ0xzE6KJW7iT2LdQFc
	PppFW4NiVuk/hwvph3oBjE9fPztq2rO5jRv1jhhaVRaVlmlW4N8upWzKIALwXdsXv64tCFFbu+H
	LVln+DR35KY7h7Z14JrvlsNltqA5QuSbhoTdmdvsmqUDXa2BZ2yVV7dppPhHVOxLX3aBBr+2bhn
	rtUCMhXpuD2KtB1fsvzsCPpngCVZ/5Jav+zXd6HphpSkC+7wO7bmbWjxds8Gt/DXhyvFCiTWsk2
	DlmBC1OGniPKr4GXRgG7YQd23ja95aO1wVhXtm+7kVKzaMAY14D33J8nMflLeQHIhwUmT9vYI1H
	Lenl2QZZI/iO+1Fq4IiFX5IY4pJRpdsj+YDS+5TFvbe/OrIpa4hqCDwFDrfmNygN1e5hsG3TdG0
	gSE/EvERqYnyrxkTXRnjgry8k=
X-Google-Smtp-Source: AGHT+IGmGZSCNhEhHjUIS60wSnhLvOSqRgduWOyCEsTNRSYTC/0ddkkGHZQMcpHHjFAEheFEk433nw==
X-Received: by 2002:a17:903:2342:b0:2a0:e5cd:80a1 with SMTP id d9443c01a7336-2a2f2a34fa1mr71333975ad.41.1766290842511;
        Sat, 20 Dec 2025 20:20:42 -0800 (PST)
Received: from localhost.localdomain ([14.255.43.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cb90sm62319245ad.51.2025.12.20.20.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 20:20:42 -0800 (PST)
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
Subject: [PATCH v20 3/3] docs: leds: Document TI LP5812 LED driver
Date: Sun, 21 Dec 2025 11:19:50 +0700
Message-Id: <20251221041950.4631-4-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251221041950.4631-1-trannamatk@gmail.com>
References: <20251221041950.4631-1-trannamatk@gmail.com>
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
index 000000000000..c2a6368d5149
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
+in Documentation/ABI/testing/sysfs-class-led-multicolor.rst.
+
+Each LP5812 LED output appears under ``/sys/class/leds/`` with its
+assigned label (for example ``LED_A``).
+
+The following attributes are exposed:
+  - multi_intensity: Per-channel RGB intensity control
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
index 8d840b34c924..394165660e67 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25841,6 +25841,7 @@ M:	Nam Tran <trannamatk@gmail.com>
 L:	linux-leds@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/leds/ti,lp5812.yaml
+F:	Documentation/leds/leds-lp5812.rst
 F:	drivers/leds/rgb/Kconfig
 F:	drivers/leds/rgb/Makefile
 F:	drivers/leds/rgb/leds-lp5812.c
-- 
2.25.1


