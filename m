Return-Path: <devicetree+bounces-223695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7D5BB98F3
	for <lists+devicetree@lfdr.de>; Sun, 05 Oct 2025 17:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B1981893C00
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 15:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1C128DF2D;
	Sun,  5 Oct 2025 15:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QECSqFm1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10F328D830
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 15:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759678485; cv=none; b=LokKXOdQf0uvcDVbrWKs5kmnV1I+/M1CJ7sAad3GoAtL7RhLpRIoHgBO4zcRgTqanEFI/K22tNK8A+JEs9Ulxh37frRQJgQx2NYR1Ow6k0K9ZMfaoOQ1z90vd1fdfzQnZUpJCVcxjCyGVCVdjcDDjK+/+pk/ABUULOqALLB/1n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759678485; c=relaxed/simple;
	bh=98caJkQZ0MiAzC2fQEY27b92eOKFqM0zqIcXCKa8xZs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CNsjA+w/LIAAFZvn44JCq+cp2X8lRmV+owe+d5SB0NcFLfaD9/2W0nszY3Gd0qRQ8WR27tXKspucsXHshnA7GZfK0QFDqy47A26U5smXeJTrLgd0ah8lVWkALs0rMoxJ2dQ8dRpozeuobEa7+TG7I+vbna+aCC0FiRbeAvGiN8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QECSqFm1; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so2652187a12.0
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 08:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759678483; x=1760283283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2X6o/MRuCTc+0p6F+rhXe+4gejxskim5+wROeJzq1wc=;
        b=QECSqFm1VriYQk9c4gdRFpoXTZrIpcg0XT0Ho+gFVzfeDvVJCdvDP3drUdRBwMQHMX
         C7iZxGnt9UgpNnwbUnjv9IsJwyGo44Y8A0k4zFXSayf582/buLa/9kwCB9I5HPZkzwHH
         Ybr9y2UQ+H2jNf9LNVdbeavqVjrEVJmW3TFe0rWZ+HhwNr8iQLaeWmVfWnUpE0Y0CtN/
         2fbdxiE5awu2BIPYJY3A2UW9RB4MzTmNltt7I+d6NNe1yHYyqIjYFQNfEFlQEAQV3bl1
         hLqZPwjuJc2BJCg40lSMJmVop0dIhlPSvpiEPu6uRpMbisHfMl4HJg7+JvcaDowF5j+F
         KV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759678483; x=1760283283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2X6o/MRuCTc+0p6F+rhXe+4gejxskim5+wROeJzq1wc=;
        b=qoKYNSwB15ytsu2WCRXLBEf1VNohpmdPl0JuPhmdFfEo/CaqFCtBCLa1OSgtJMCwMb
         V+P7N/HawYuwh6Omxf9L1zWqIBmTkD7Qn+v+4X3LHsYF353ZSl1jzDLLReFffo8pHTRP
         /DdB7lb/eYsBs5EO9mXYVUts7kIzyVXPnJcvMm3xLdWjJeHEOX+tNtWEtUxCIoHC30lE
         ztgviUdvPM87gGCmObAztyTPRSy4KoXEFCRsvoFM2g38uQjIhzOTD/1nea9jRagUa2m1
         VJ+SyK85zKh6GLk2Lcb0ZlOS/qP3RWFcJ/a4k3VmujQNsG5t5vqsSjl3nKNo6hzgRbBh
         6FuQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1AVhy2ZoI3JuKpnrJWJ0Mm8OE3lY1vTsPysfL6k41i5w3QFE9nAbQe1Y83FhR73nS/gYlypPYgkZC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzafy+VaO0ON/wSkM6AN26FMypFzFgz9cFwSFqljES54rTY3QaQ
	k010Wv6nmUN6JTSi4W52NLpw6x903PeDorEWn8yUqwMnZA5Y/w74Rz1t
X-Gm-Gg: ASbGncvrf1vAHi6zhHO2C+WBqXFc+8aVO2ENHrTQ+N4G0eXFxmAFKB7RiqUos0jIQAn
	sPwQdA0ndOUiaapzMtEgWlPkX+9McGcvb17jOrJlMhnfHyiTmuzSnNRmkhsqKTSIxYzRHVzth8H
	QUnYaO22IErMx6J4Vz83BeNgNSgwalMv0OmiXcyp1qvl5Ca9T5JS085XjP9R8aKyS39XRfcEvRH
	Qrx+hZSqQhnxHJBR928bkDB3hs2pJ4g2GH1XwNgi782LzJAdTZuL+8H2os6EaSKrUi2+PSTrZ/o
	2tpn/GUnOPqDnmzq/K3RyW+ZyaULgZNcD/xkE0aXLPe8B5MUF8yO/xqt4CpyO2sRA/QpzT5Jyt0
	U+QUvXBLa8ykDVcGqj3HFMJCfm54U9Uxhqbp6Rtiy6O/VhrbGQRefCIffeV96Zlugfg==
X-Google-Smtp-Source: AGHT+IGOOTrBzPFcXT/L1Z9eJjafTeBHYh5acgbfBjUTIl/XV5J6IgoIQc+d+NUDca8jIPHpHj7Nlw==
X-Received: by 2002:a17:902:ce88:b0:28d:18d3:46cb with SMTP id d9443c01a7336-28e9a54660fmr118836165ad.20.1759678483159;
        Sun, 05 Oct 2025 08:34:43 -0700 (PDT)
Received: from DESKTOP-P76LG1N.lan ([58.187.66.63])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d110d9csm105555965ad.2.2025.10.05.08.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 08:34:42 -0700 (PDT)
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
Subject: [PATCH v15 3/3] docs: leds: Document TI LP5812 LED driver
Date: Sun,  5 Oct 2025 22:33:37 +0700
Message-Id: <20251005153337.94025-4-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251005153337.94025-1-trannamatk@gmail.com>
References: <20251005153337.94025-1-trannamatk@gmail.com>
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
index 7a3808d8d624..4d625dabde72 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25388,6 +25388,7 @@ M:	Nam Tran <trannamatk@gmail.com>
 L:	linux-leds@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/leds/ti,lp5812.yaml
+F:	Documentation/leds/leds-lp5812.rst
 F:	drivers/leds/rgb/Kconfig
 F:	drivers/leds/rgb/Makefile
 F:	drivers/leds/rgb/leds-lp5812.c
-- 
2.25.1


