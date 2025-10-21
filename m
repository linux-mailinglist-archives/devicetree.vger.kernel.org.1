Return-Path: <devicetree+bounces-229440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D95BF78D4
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 18:00:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC2A519A09CB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 16:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3D93451C8;
	Tue, 21 Oct 2025 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gQ85YwYx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C645B345CA5
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761062394; cv=none; b=oba0tZQrN+ubjCVG5Eb+4pySfkd3O7K1bQHoyP1AIDg8R+HdpC9JanSIRhnsaE4/2CLfKtbZyWi9Z2fFH7TBe9xNLr0KNlU5B6zYMO/o6I1J23ObN3mMSWS9+3pXKuj/sne1AKXPyLa7o1biUH/a6ToSxYzq/8O98fJjhCVsJYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761062394; c=relaxed/simple;
	bh=OvzQEjk9Z+kNwdL+nyKcEGI+zIVN8IcYYwNUwhy68ZU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ETmpJsc/6C8+W6Iym8Y0Fo1H3lyw9kk1mSgdQtYoVDH+K9B/sEMz34/F+wRE5FCSNYmSEKanwnrVJn51SXqOEBRXEdVdQHY+prjxORC9tMu6Nogqq4/fDWnDk20k45oZZ/k6BR0aIpQDThSXnDzL6T7jjuzMHmpgNN2xKpznRiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gQ85YwYx; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-782bfd0a977so4256495b3a.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761062391; x=1761667191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=31zB0Oe8e9Hc7S4uto+lasK2Iw1fFo70PUdA7eQz/go=;
        b=gQ85YwYxYsOd8d6zf37gjlsTLmIJ3+mos3c/FhJBC0wEVEugpEqvIv2Du0isse4Wrb
         Pmi06BqhhT3ZCRnJvvtOz/2WRH/zVl3+VUy1A4CjfLG6bO0p8U7EpTAIwjWQzv7IjVXS
         C4AX7wOru4D38K9PUEqYHzNGIqshUy+g/Yir3yNcLyC2D/ZvSy+qNCBxpa2agq6Tywfb
         KHISWck3JoGSnPWZzyy7hWvaPHEh9eonXNba+SddfaFBsMuC+ktoua1KlPwGeKMB0YL5
         aQm7FGwYWcE2Ij4io+M/ONrbNmnYP5e24vcAF1Do9zJh46Tney0+3Vav7eBZej83IvhF
         KJjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761062391; x=1761667191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31zB0Oe8e9Hc7S4uto+lasK2Iw1fFo70PUdA7eQz/go=;
        b=DKp+zH7K6nsMBidzXOWaFYdbygICdOLquG8A+BW4A1jLSy7/qprV0kCwb4vgSO7D/Z
         TliU2IaJrBKosipXwefke7PNp9JD+L5V9IHkibXQZYueAigAiE4rJvuI7swP5JrsXBLO
         lcYe5chKgIISMIgstYqoFOV5LYWi+EmRpD0Zt0YXfwvWoD9RUn4J7LJUYW2OorymzBz6
         yJyNy8Xrwy3pcOvDfyEuFtFCJqJ3Y4rUxokY2NsfrG9ZPRYqvap76qqAJSAMCsfB5yVt
         UyZVsXP3DMeQvGjApxEDCGxugHXHvNXNinFPEFhBNvc/DTe0L8vjt5qSvN2gBaZkI0te
         fGtA==
X-Forwarded-Encrypted: i=1; AJvYcCUbt06GIGTp1B5PEfmDVLnJWAes/Ysg4kZJL3diDiKfYs0rtxjyYmZhlB9EMic+V/Nq5wruJ/fbKmo0@vger.kernel.org
X-Gm-Message-State: AOJu0YyHLrqK6mYHxePMb7ppjkdH5atyvoS4z0vdDvV19AwDMB5h1YGi
	1aH37uCRUVdFFr/0GAvMc3MNE4mNskO4KZa6FyKc+TxWS12kSK0krB/M
X-Gm-Gg: ASbGncsHNo7+3gTdcaiz07vYLWzwzHwNoZrDeG0u2bkU73aGYsaqwiaIxHFpk5AQvMC
	I+3/yk2srJS5GJNyXI272CL0Y55Y5vy/6sG9gDa7AaxjjB/Gay5XaoDPq3qklS2FqW8r9eBhOvv
	xMcsP20O1IANuM9ThDd0Te9V73ixeEYJCKI+BcEpFTw3O0qBd28Iu35KMB8waBXaKUrBx3hqjRX
	MsfWN9K8jIPxAjYQd1Cqir3NyK65udhYQe2hHluoFDhwEIGy4XsGkoa8QFTFTDJZN+G1aLD7Alp
	eJc5AOTnQlabUMa5lOV/KWX64EUtIupuBSZ9vnHuiWDca/SBYzZTEiC9qQJEEvQUXzNv72A7VwS
	UhgbjE3bAN79Hm6/urxd2+Qom8JwJktZtim0UkmWDCtuDIV2jOT8+cFeu32uBfiIhxUhGJnKpcW
	rmfBJxCgOvrLg=
X-Google-Smtp-Source: AGHT+IFHyxdovVUG7ErjF/W0Pm/JpV4pdokG+r4FQlIUPgCH+t8rkT/w1I/IIPF1mdilfn4cOBFi9A==
X-Received: by 2002:a05:6a00:4b16:b0:78c:99a8:d294 with SMTP id d2e1a72fcca58-7a220428903mr20764664b3a.0.1761062390987;
        Tue, 21 Oct 2025 08:59:50 -0700 (PDT)
Received: from DESKTOP-P76LG1N.lan ([42.118.149.214])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff184basm11793032b3a.15.2025.10.21.08.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:59:50 -0700 (PDT)
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
Subject: [PATCH v17 3/3] docs: leds: Document TI LP5812 LED driver
Date: Tue, 21 Oct 2025 22:59:27 +0700
Message-Id: <20251021155927.140929-4-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251021155927.140929-1-trannamatk@gmail.com>
References: <20251021155927.140929-1-trannamatk@gmail.com>
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
index ee56b68e54cd..e35ae62b7c1a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25429,6 +25429,7 @@ M:	Nam Tran <trannamatk@gmail.com>
 L:	linux-leds@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/leds/ti,lp5812.yaml
+F:	Documentation/leds/leds-lp5812.rst
 F:	drivers/leds/rgb/Kconfig
 F:	drivers/leds/rgb/Makefile
 F:	drivers/leds/rgb/leds-lp5812.c
-- 
2.25.1


