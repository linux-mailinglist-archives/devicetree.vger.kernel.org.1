Return-Path: <devicetree+bounces-72001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1A58FA73C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 02:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1417DB23622
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 00:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E768472;
	Tue,  4 Jun 2024 00:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YEXCOrM+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D0228F4
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 00:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717462521; cv=none; b=YwePMhabpJbFRPZahW8Tsm5ClAFMDss/tpN3Gs0ZfohF7TAv8TQhcoIqtD1Px/5oDCduLrNw17qOoB2GUqn7sOGyIOJSMIVDs7OlVrvQT43l+F18hdooCOuE7fnkl2P4d8yDC4nqcvYt2jwAJmYotIVLjz3WQTvaCw0WZfwg7mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717462521; c=relaxed/simple;
	bh=y9qJaxDPtCa7TFe4kS2XEHyXNU+gJunYjHYvKMEW4a4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=by1hC/qgNhIkw61f+J3bCaAutKRIBuyXnY8dsTsG3aLm8UqDvysiLwz5k/r52tcIuLJIuuCe1fPdQG7R59TExFCtCUHh9B0ZsoFC2t2wvU5oSLz/N8b/BB1dGAH8se2qWoLkt83GybYOJ/NGw7JM10Nbnueh7fgZPHamKHKoK2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YEXCOrM+; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1f6262c0a22so27636715ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 17:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717462519; x=1718067319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ThA1CudYSXQIP69orU4mXcGD6+uxuB5dET7rM3Aiif0=;
        b=YEXCOrM+n82WHzsFkanLVvuZclPuQ80kbGBEArlAS9JiMNLzWldNgqirpqgVk/w0Fw
         dNjH2XFn+k+rUoVznQhDkZz+tFJ8b3ferHesh7+3dL71IKpAZ/2fUjbIw2WEkLrvbyHY
         YJu0Qsz6R3A20nNYKiAQ5f82FMyUZs6EtXzNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717462519; x=1718067319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ThA1CudYSXQIP69orU4mXcGD6+uxuB5dET7rM3Aiif0=;
        b=bg3ocBe9wktLTHiFxwrZGDmjcI8JfXXliDModkZwdb/R5wiU+Z0ky01+ckMLTghzXv
         HW4E27RR/iza+CsKiLzNovcS9IHG20UXIjC9ScQ/vcowdsXXwjb+fHWh0/pjnD5qgjUz
         n+fswzoVTtVcSk64UH1Ci8pYsvJuwr6ViE0SvBr8/yWqbVjNJ8bfc42cHeF5hFhGy/WZ
         GrAEHgiVd08HZjTUKN5CFTyAejEaYWPkC3O716Dl0V/X/3Z/JHXT2jT3ih3qRHUT1x5h
         TaI1uazSe4CjfyAM9Fs1QMBZ/1enlydxQ4N1lOYO4FrtYttfejfhL9st/+8WLAawBfzg
         SdGA==
X-Forwarded-Encrypted: i=1; AJvYcCVgO7fjlegP5K0V/Ffn/U12hLkC9UMRr+EfhTx5vgt/chj+n200zdBMrin19crMQk6dtv7KHSkPyaw3FMms1CDPEZe6EWQrhiRgHA==
X-Gm-Message-State: AOJu0Yy6X/DpROReg1paTCsnUJ7DoxU3j8QORLgM2lkoH1LHCB0Vyw8T
	RUu8fNUli2rdlhjj/clcBHqXiwLfvlrPYlk5vpquncyN+A/PLJqpSbmMoFSCmw==
X-Google-Smtp-Source: AGHT+IGGYat42jdRQab54UsDyz/zr2+blwgDrqyNtrO3uhAg/FawQmTH/4lICBl/JltxjNTgC9+BGA==
X-Received: by 2002:a17:902:f703:b0:1f4:8a01:285c with SMTP id d9443c01a7336-1f69390b644mr12858935ad.24.1717462518940;
        Mon, 03 Jun 2024 17:55:18 -0700 (PDT)
Received: from pc98uv11.mtv.corp.google.com ([2620:15c:9d:2:6203:d1ca:c560:52f1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f63241d4d9sm70649365ad.296.2024.06.03.17.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 17:55:18 -0700 (PDT)
From: Daisuke Nojiri <dnojiri@chromium.org>
To: 
Cc: Daisuke Nojiri <dnojiri@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: cros-ec-keyboard: Add keyboard matrix v3.0
Date: Mon,  3 Jun 2024 17:55:10 -0700
Message-ID: <20240604005513.2298957-1-dnojiri@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This CL adds support for keyboard matrix version 3.0. To enable it,
define CONFIG_CROS_KBD_V30.

BUG=b:331761304
TEST=cros build-packages --board corsola sys-kernel/chromeos-kernel-5_15

Signed-off-by: Daisuke Nojiri <dnojiri@chromium.org>
---
 arch/arm/boot/dts/cros-ec-keyboard.dtsi      |  16 ++-
 drivers/platform/chrome/Kconfig              |   6 ++
 include/dt-bindings/input/cros-ec-keyboard.h | 104 +++++++++++++++++++
 3 files changed, 123 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/cros-ec-keyboard.dtsi b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
index 55c4744fa7e7..0499e254596a 100644
--- a/arch/arm/boot/dts/cros-ec-keyboard.dtsi
+++ b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
@@ -8,16 +8,26 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/input/cros-ec-keyboard.h>
 
+#ifdef CONFIG_CROS_KBD_V30
+#define CROS_EC_KEYBOARD_COLUMN_SIZE 18
+#define CROS_TOP_ROW_KEYMAP CROS_TOP_ROW_KEYMAP_V30
+#define CROS_MAIN_KEYMAP CROS_MAIN_KEYMAP_V30
+#else
+#define CROS_EC_KEYBOARD_COLUMN_SIZE 13
+#define CROS_TOP_ROW_KEYMAP CROS_STD_TOP_ROW_KEYMAP
+#define CROS_MAIN_KEYMAP CROS_STD_MAIN_KEYMAP
+#endif
+
 &cros_ec {
 	keyboard_controller: keyboard-controller {
 		compatible = "google,cros-ec-keyb";
 		keypad,num-rows = <8>;
-		keypad,num-columns = <13>;
+		keypad,num-columns = <CROS_EC_KEYBOARD_COLUMN_SIZE>;
 		google,needs-ghost-filter;
 
 		linux,keymap = <
-			CROS_STD_TOP_ROW_KEYMAP
-			CROS_STD_MAIN_KEYMAP
+			CROS_TOP_ROW_KEYMAP
+			CROS_MAIN_KEYMAP
 		>;
 	};
 };
diff --git a/drivers/platform/chrome/Kconfig b/drivers/platform/chrome/Kconfig
index d48f7f43f9e5..8f66beaa48ec 100644
--- a/drivers/platform/chrome/Kconfig
+++ b/drivers/platform/chrome/Kconfig
@@ -157,6 +157,12 @@ config CROS_KBD_LED_BACKLIGHT
 	  To compile this driver as a module, choose M here: the
 	  module will be called cros_kbd_led_backlight.
 
+config CROS_KBD_V30
+	bool "ChromeOS built-in keyboard version 3.0"
+	default n
+	help
+	  If you say Y here, you get support for built-in keyboard ver 3.0.
+
 config CROS_EC_CHARDEV
 	tristate "ChromeOS EC miscdevice"
 	depends on MFD_CROS_EC_DEV
diff --git a/include/dt-bindings/input/cros-ec-keyboard.h b/include/dt-bindings/input/cros-ec-keyboard.h
index f0ae03634a96..afc12f6aa642 100644
--- a/include/dt-bindings/input/cros-ec-keyboard.h
+++ b/include/dt-bindings/input/cros-ec-keyboard.h
@@ -100,4 +100,108 @@
 	MATRIX_KEY(0x07, 0x0b, KEY_UP)		\
 	MATRIX_KEY(0x07, 0x0c, KEY_LEFT)
 
+/* No numpad */
+#define CROS_TOP_ROW_KEYMAP_V30 \
+	MATRIX_KEY(0x00, 0x01, KEY_F11)		/* T11 */	\
+	MATRIX_KEY(0x00, 0x02, KEY_F1)		/* T1 */	\
+	MATRIX_KEY(0x00, 0x04, KEY_F10)		/* T10 */	\
+	MATRIX_KEY(0x00, 0x0b, KEY_F14)		/* T14 */	\
+	MATRIX_KEY(0x00, 0x0c, KEY_F15)		/* T15 */	\
+	MATRIX_KEY(0x01, 0x02, KEY_F4)		/* T4 */	\
+	MATRIX_KEY(0x01, 0x04, KEY_F7)		/* T7 */	\
+	MATRIX_KEY(0x01, 0x05, KEY_F12)		/* T12 */	\
+	MATRIX_KEY(0x01, 0x09, KEY_F9)		/* T9 */	\
+	MATRIX_KEY(0x02, 0x02, KEY_F3)		/* T3 */	\
+	MATRIX_KEY(0x02, 0x04, KEY_F6)		/* T6 */	\
+	MATRIX_KEY(0x02, 0x0b, KEY_F8)		/* T8 */	\
+	MATRIX_KEY(0x03, 0x02, KEY_F2)		/* T2 */	\
+	MATRIX_KEY(0x03, 0x05, KEY_F13)		/* T13 */	\
+	MATRIX_KEY(0x04, 0x04, KEY_F5)		/* T5 */
+
+#define CROS_MAIN_KEYMAP_V30			/* Keycode */	\
+	MATRIX_KEY(0x00, 0x03, KEY_B)		/* 50 */	\
+	MATRIX_KEY(0x00, 0x05, KEY_N)		/* 51 */	\
+	MATRIX_KEY(0x00, 0x06, KEY_RO)		/* 56 (JIS) */	\
+	MATRIX_KEY(0x00, 0x08, KEY_EQUAL)	/* 13 */	\
+	MATRIX_KEY(0x00, 0x09, KEY_HOME)	/* 80 (Numpad) */	\
+	MATRIX_KEY(0x00, 0x0a, KEY_RIGHTALT)	/* 62 */	\
+	MATRIX_KEY(0x00, 0x10, KEY_FN)		/* 127 */	\
+								\
+	MATRIX_KEY(0x01, 0x01, KEY_ESC)		/* 110 */	\
+	MATRIX_KEY(0x01, 0x03, KEY_G)		/* 35 */	\
+	MATRIX_KEY(0x01, 0x06, KEY_H)		/* 36 */	\
+	MATRIX_KEY(0x01, 0x08, KEY_APOSTROPHE)	/* 41 */	\
+	MATRIX_KEY(0x01, 0x0b, KEY_BACKSPACE)	/* 15 */	\
+	MATRIX_KEY(0x01, 0x0c, KEY_HENKAN)	/* 65 (JIS) */	\
+	MATRIX_KEY(0x01, 0x0e, KEY_LEFTCTRL)	/* 58 */	\
+								\
+	MATRIX_KEY(0x02, 0x01, KEY_TAB)		/* 16 */	\
+	MATRIX_KEY(0x02, 0x03, KEY_T)		/* 21 */	\
+	MATRIX_KEY(0x02, 0x05, KEY_RIGHTBRACE)	/* 28 */	\
+	MATRIX_KEY(0x02, 0x06, KEY_Y)		/* 22 */	\
+	MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)	/* 27 */	\
+	MATRIX_KEY(0x02, 0x09, KEY_DELETE)	/* 76 (Numpad) */	\
+	MATRIX_KEY(0x02, 0x0c, KEY_PAGEUP)	/* 85 (Numpad) */	\
+	MATRIX_KEY(0x02, 0x011, KEY_YEN)	/* 14 (JIS) */	\
+								\
+	MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)	/* Launcher */	\
+	MATRIX_KEY(0x03, 0x01, KEY_GRAVE)	/* 1 */	\
+	MATRIX_KEY(0x03, 0x03, KEY_5)		/* 6 */	\
+	MATRIX_KEY(0x03, 0x04, KEY_S)		/* 32 */	\
+	MATRIX_KEY(0x03, 0x06, KEY_MINUS)	/* 12 */	\
+	MATRIX_KEY(0x03, 0x08, KEY_6)		/* 7 */		\
+	MATRIX_KEY(0x03, 0x09, KEY_SLEEP)	/* Lock */	\
+	MATRIX_KEY(0x03, 0x0b, KEY_BACKSLASH)	/* 29 */	\
+	MATRIX_KEY(0x03, 0x0c, KEY_MUHENKAN)	/* 63 (JIS) */	\
+	MATRIX_KEY(0x03, 0x0e, KEY_RIGHTCTRL)	/* 64 */	\
+								\
+	MATRIX_KEY(0x04, 0x01, KEY_A)		/* 31 */	\
+	MATRIX_KEY(0x04, 0x02, KEY_D)		/* 33 */	\
+	MATRIX_KEY(0x04, 0x03, KEY_F)		/* 34 */	\
+	MATRIX_KEY(0x04, 0x05, KEY_K)		/* 38 */	\
+	MATRIX_KEY(0x04, 0x06, KEY_J)		/* 37 */	\
+	MATRIX_KEY(0x04, 0x08, KEY_SEMICOLON)	/* 40 */	\
+	MATRIX_KEY(0x04, 0x09, KEY_L)		/* 39 */	\
+	MATRIX_KEY(0x04, 0x0b, KEY_ENTER)	/* 43 */	\
+	MATRIX_KEY(0x04, 0x0c, KEY_END)		/* 81 (Numpad) */	\
+								\
+	MATRIX_KEY(0x05, 0x01, KEY_1)		/* 2 */	\
+	MATRIX_KEY(0x05, 0x02, KEY_COMMA)	/* 53 */	\
+	MATRIX_KEY(0x05, 0x03, KEY_DOT)		/* 54 */	\
+	MATRIX_KEY(0x05, 0x04, KEY_SLASH)	/* 55 */	\
+	MATRIX_KEY(0x05, 0x05, KEY_C)		/* 48 */	\
+	MATRIX_KEY(0x05, 0x06, KEY_SPACE)	/* 61 */	\
+	MATRIX_KEY(0x05, 0x07, KEY_LEFTSHIFT)	/* 44 */	\
+	MATRIX_KEY(0x05, 0x08, KEY_X)		/* 47 */	\
+	MATRIX_KEY(0x05, 0x09, KEY_V)		/* 49 */	\
+	MATRIX_KEY(0x05, 0x0b, KEY_M)		/* 52 */	\
+	MATRIX_KEY(0x05, 0x0c, KEY_PAGEDOWN)	/* 86 (Numpad) */	\
+								\
+	MATRIX_KEY(0x06, 0x01, KEY_Z)		/* 46 */	\
+	MATRIX_KEY(0x06, 0x02, KEY_3)		/* 4 */		\
+	MATRIX_KEY(0x06, 0x03, KEY_4)		/* 5 */		\
+	MATRIX_KEY(0x06, 0x04, KEY_2)		/* 3 */		\
+	MATRIX_KEY(0x06, 0x05, KEY_8)		/* 9 */		\
+	MATRIX_KEY(0x06, 0x06, KEY_0)		/* 11 */	\
+	MATRIX_KEY(0x06, 0x08, KEY_7)		/* 8 */		\
+	MATRIX_KEY(0x06, 0x09, KEY_9)		/* 10 */	\
+	MATRIX_KEY(0x06, 0x0b, KEY_DOWN)	/* 84 */	\
+	MATRIX_KEY(0x06, 0x0c, KEY_RIGHT)	/* 89 */	\
+	MATRIX_KEY(0x06, 0x0d, KEY_LEFTALT)	/* 60 */	\
+	MATRIX_KEY(0x06, 0x0f, KEY_ASSISTANT)	/* 128 */	\
+	MATRIX_KEY(0x06, 0x11, KEY_BACKSLASH)	/* 42 (JIS, ISO) */	\
+								\
+	MATRIX_KEY(0x07, 0x01, KEY_U)		/* 23 */	\
+	MATRIX_KEY(0x07, 0x02, KEY_I)		/* 24 */	\
+	MATRIX_KEY(0x07, 0x03, KEY_O)		/* 25 */	\
+	MATRIX_KEY(0x07, 0x04, KEY_P)		/* 26 */	\
+	MATRIX_KEY(0x07, 0x05, KEY_Q)		/* 17 */	\
+	MATRIX_KEY(0x07, 0x06, KEY_W)		/* 18 */	\
+	MATRIX_KEY(0x07, 0x07, KEY_RIGHTSHIFT)	/* 57 */	\
+	MATRIX_KEY(0x07, 0x08, KEY_E)		/* 19 */	\
+	MATRIX_KEY(0x07, 0x09, KEY_R)		/* 20 */	\
+	MATRIX_KEY(0x07, 0x0b, KEY_UP)		/* 83 */	\
+	MATRIX_KEY(0x07, 0x0c, KEY_LEFT)	/* 79 */	\
+	MATRIX_KEY(0x07, 0x11, KEY_102ND)	/* 45 (ISO) */
+
 #endif /* _CROS_EC_KEYBOARD_H */
-- 
2.45.1.288.g0e0cd299f1-goog


