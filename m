Return-Path: <devicetree+bounces-255689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 37881D25AD9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D69230885A3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52FE23054D0;
	Thu, 15 Jan 2026 16:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CkhfzMjM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063E83B960C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768493440; cv=none; b=sa1BqKrmYbxepVAwnPwCblDDc6+fm5v9pzx/CNFVT8lwV73dF9T/MtSEGAhl+SG+q/OfV4EyLl5DIKcJ0TkETOn36/KLImd3w1rxXn7l1koCh+rEq2+A1g8Nb+w1fIBOajaFqixOppKV3Z13jblLsfqVwgRJzvQa+HEsZts2lsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768493440; c=relaxed/simple;
	bh=p32qd1CMtpZrvOqiOyNxVvmMRWtTmW3d9z9hTfsYpGw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oE15TdOqHkF8Kz3t6hphXdAbHXkFJ8UXQKIouElJxFEWuM8jZuafQOYAjfoTCl+zHUq3JfPnWoGcC7s2tU+6ZAxs3knWaOFb1WQ2ZS3Y4/9Ux32BBG1/zXfB1BMtopMcpNry5//42G2spWWJGdWCyCZIuyhDrDsn3ni2tvhee90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CkhfzMjM; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0fe77d141so8397185ad.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768493437; x=1769098237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XnP7OKw91qUHBafMZ5I1kAG02nR+3IKvTt8SsYgVCHw=;
        b=CkhfzMjMsWhs3clmN5O8bQkazXIN7Co4BUqv6MqR0ImsS7dq+uLesuzhzU3aKql3wm
         islDtKmjR7epvIZG5+i5148WPdyeqFAX5aJvlUJIhVxRzWM0zcjg6tQLtW39/bZYTiiO
         MnyTAgYu4Auyj9VX/uEb1bvkD8KxdOk/lu6MNyysOgMy94BLRQAAucn4QC1yfomFNww3
         DoTKk8tBgpFeLe+Y4mD5W14coRPCQQQ6FXhcs/0/SdpantSlfV0SsyUM9wRZK/TPik/c
         19M3vIlGHtjnJtDpv3/M3lDS1yIEMGvI8yTMuxORyVNNm/xobMEulryNIufHOnNGr6HB
         SN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768493437; x=1769098237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XnP7OKw91qUHBafMZ5I1kAG02nR+3IKvTt8SsYgVCHw=;
        b=k2v81A63JqLUPH28lmuwJG6/2Wi5vVjSsHKGX2qNmCmuF0cYe07B6H1ZI88JXgctQC
         TtfhnpJfRTZpqFtokvnlGmq2Upff6i83aN9GkM2yEu9S/hoLfXq9rSYGvLZN1fZSlL96
         60gnKjBEgA7cIf0tb/NBrNed+ZSKJplQfpnMsWgOSCUaQKBmTQArb8tH8YQTu1KScAB4
         IAr+X3Y9ZsN3+bSzxbrxeTrZgf3afl4QZ42ePlT4vqwoV8lA8OJO0VhRz9V7Bi43IMSP
         T4Qjaj2asON9NPrqH/vGrp6tQ8PVumhIGHYJt5G1DFKMOVh842aWyBLcxQ2df/KoNQtx
         wmLg==
X-Forwarded-Encrypted: i=1; AJvYcCXx8S80OkZIsPzlG10ynv9W4GnfiOPKIc8oNhQhem1YrwuVJ9gWHSbVwxwwwUm/jxXzSp+UjmnU93z+@vger.kernel.org
X-Gm-Message-State: AOJu0YxFNFsxSdu/2kacH+cSdtPUq0x8IPv2iYkj7WOx0/LTtT9Q/9cF
	4398ZNXVtBerEbUwT+aAA/+UbwW+nUngjyYK21zRunjY1Zxuno19hTC/4I/jRaLR
X-Gm-Gg: AY/fxX7TQIlu/pMR9pklyHQr9LSpvxzWpi7uIZ1nqL937khLFeFkZpIElscVjesbSve
	M8WVMJFzDYsGCLlbxKNJVRiPzYHJQn+1NXQLWvisTWKwN2mZaueLLsGoAiKp0MF5fiAuuc2Kr+J
	6dfuWPMgITLQsFYmUQAxHiJ1FUn9bFhc2QuUR0XiB9UGaP3P2+NqBQV4eexTMjxpCT/mblhnVP1
	Dbs5VjCJkEcS+Oqa/ND4Hvh7SRnkN5T9y2Gd7NFHX8owoQUfUPbfdLWkRkSPIDebi/pJSLUP4vF
	zTGIsk0yrt3LOz3CBn29AVNDCS0vnVJNIrVCNzQ1yR9aRwPFV8po+XsrTWUAdcaNNFk2wCgwmM/
	U2QbqQ+ibFsViGl48TpFAZIMpxmL6oAdaKcdTBpVgZ1OUKIdkUV4Uio8NrBeAPF+I7BrKl4DhG3
	kPFhhSLicn42B9wBsRb/FfMQ==
X-Received: by 2002:a17:902:f544:b0:2a0:ba6d:d0ff with SMTP id d9443c01a7336-2a717533f7fmr380715ad.16.1768493437015;
        Thu, 15 Jan 2026 08:10:37 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.114.215.169])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d88sm258523195ad.52.2026.01.15.08.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 08:10:36 -0800 (PST)
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
Subject: [PATCH v22 2/2] docs: leds: Document TI LP5812 LED driver
Date: Thu, 15 Jan 2026 23:10:13 +0700
Message-Id: <20260115161013.40706-3-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260115161013.40706-1-trannamatk@gmail.com>
References: <20260115161013.40706-1-trannamatk@gmail.com>
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


