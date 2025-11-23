Return-Path: <devicetree+bounces-241457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B3C7E649
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 20:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EC143A9941
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 19:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC617242D78;
	Sun, 23 Nov 2025 19:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iOMdDLE8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3788D20B7E1
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 19:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763925076; cv=none; b=MVntxN3Ke6rGcQEm99ZLjFHOcWyT/NT21TnlETof3QgazHmJAtefxz3PYzkPribEvKDGeHykUUn76aTajYdFu8XSYqsNZHR/23JqeXbtI4DPAAISMYS0dnSi+7oFAyNw8UzbJHlj6dVr6ZDEpbZaasmP8n0wXfOpz6PgGOIbLiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763925076; c=relaxed/simple;
	bh=LN6U1JVPb9+1eLo7g3FdtdqGnUAJDli/a5RS4lOyf10=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rSvu+uDx+mutIsggPL3QaOk28lthT0Qw7GEzpeIx6cw1Y6VBq0SxZ7GEVLI+0aW6e4fcDRL5AjrtY+UqWWKFaGb9kGvJngvFwowoBEBVoQxj/h8cZm2h9Ud1JuXIx6rG2oZml4lH17JeNL4Ta3BO42cisEvaxIE3WCgQ4Ne/TfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iOMdDLE8; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-29558061c68so48918715ad.0
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 11:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763925072; x=1764529872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmHa/LXJpUTjBGHVWC+hnuQBMTBsWIpO679JoMtrn84=;
        b=iOMdDLE8fAGVk7tfLpvay21h0WC/XTevAG/C4o2Du14TKamob8BiZP1EcortPLiQtE
         pG9d3iOmwS4pGgBzQr1QWkCAZRnT1+0PawgyIg5FA4dxE3FEorqmHk8pkvQnz7wEn8oa
         utSH2Vt2HChPdVu6R9FShXEzmoKNyf9QXoaCGyPmQS3iDKUnBPtjgy+pu9th/rQTnoUb
         scXsBxzTIMaUIRPm3k4stA2T3Loj8c3uZHFUZAyIE61Db8x0ZnZNL/Fmk9prkXcgI15N
         d5Srbt39IUpC/dLEhJlZVNxmjyHMNYgsv2SpJYgczzVqzGbkYzdAwfR5/4svLM5z+46N
         /n6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763925072; x=1764529872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tmHa/LXJpUTjBGHVWC+hnuQBMTBsWIpO679JoMtrn84=;
        b=U8l7hKzAqORplhX1PcIX1iQjQOq7gv6yUBvoYbmuQdIbfEaeXgCU0shwKCBJX+tQGD
         CGTr+vEMMHVoU1JoW2d3efwBXcYS9VkyalroTvXMiysltce62TZiYhcwW4WFzGM7JUDG
         1C9j28MRW+5jtSobdfsbP0LGU9AnsZ6LhVlEDW9JvRJfCzvXQes9kRxsbTJcNZLa06gV
         ld7chkPmINfcE5NEJWILZK0/oabX3j4B5SDzwDSAh+eFLVDBiPRkroQXSOSBBE4V5yZR
         S8xTGVQxjDNe7rLluyV4vFHqG2dUzaA6G1Tgt9OpO3C5kilyqx5UaDQ456kxhphtpWq4
         whpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDy7AwYDCIYuPkGlo+rK155IngNn/bpxMRhUIoRTkzqaOl9IaHhlwe6tGWcF/h4CS6M+KXQu3eHPpx@vger.kernel.org
X-Gm-Message-State: AOJu0YxCf/cFmcgNJv7guf64dSVxKh32vy3tnaSgr3ZyJljvsFlpzMII
	Oax1V9SAuxcPNaLBdO3e/6w9DBiNZ45Lbsup1Nyap8psHl4YyB23go/e
X-Gm-Gg: ASbGncuj5/DG6xTyA524+x5OdXAA/NfTxTkbd2tM8kmigF4g+uR5JDX7ntNpd+6oBl0
	wvqZmWTc6vBjkMXmH5F07UyG8FK0FXkyuiTUZLjgo9BxRlflNQGQck/wxwNYjbw9ckY2a6IAyNO
	wNDsozMDR3xk6BLBgBZW0KeKJtB3TDauFB2BtnOBbGkqRZJX4oQ2bcanGkFQ2Ol8t8mLQz7Ot9P
	v8+LBN3xgJkmuZrJU7Y/CtMU2AIGP6RDV6+8fCi0A3LQjYd+JKyKUG8DN1C4tSSASafqRFaQsXj
	RPlohdFbk1B6Y9/PdV4XGuljC7ZDV83DBz0OU3q2SzmoC1ihs4LWgfHuucwY2wIOY5p1E/ZSepA
	ZLaq4wyR9UILsXKxC8kUI3A/qgeNRpt2yRwI6Uo5rHKWdV/Ie68Vh1k5mwLFcW6Fjv4F0JDu3q+
	V85zq6KCyB21K2LQ2lUJL6jg==
X-Google-Smtp-Source: AGHT+IHPFoSxQZoigWdf+doSXm3n1IZ6Vj/SJ4gDleYOYUskKuzp0oVLKr/lcnHOJRJnx6TXf+8YNg==
X-Received: by 2002:a17:903:38c4:b0:297:df17:54cd with SMTP id d9443c01a7336-29b6becd454mr118444255ad.27.1763925072582;
        Sun, 23 Nov 2025 11:11:12 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13e720sm109542655ad.42.2025.11.23.11.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 11:11:12 -0800 (PST)
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
Subject: [PATCH v18 3/3] docs: leds: Document TI LP5812 LED driver
Date: Mon, 24 Nov 2025 02:10:42 +0700
Message-Id: <20251123191042.116917-4-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251123191042.116917-1-trannamatk@gmail.com>
References: <20251123191042.116917-1-trannamatk@gmail.com>
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
index 9a7ae1794328..f696e2299a43 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25453,6 +25453,7 @@ M:	Nam Tran <trannamatk@gmail.com>
 L:	linux-leds@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/leds/ti,lp5812.yaml
+F:	Documentation/leds/leds-lp5812.rst
 F:	drivers/leds/rgb/Kconfig
 F:	drivers/leds/rgb/Makefile
 F:	drivers/leds/rgb/leds-lp5812.c
-- 
2.25.1


