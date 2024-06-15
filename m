Return-Path: <devicetree+bounces-76102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F79909A81
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 01:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2058D1F21D2B
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 23:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE4213AA48;
	Sat, 15 Jun 2024 23:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ItZa8Svw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA3B13A3E7;
	Sat, 15 Jun 2024 23:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718493186; cv=none; b=ZmH2BKpaehR2Vjh6Vs4H5HJWDhEkO3zm8SgDElhxNZz772FVi+HKo3BIROUJmAnWhImsQFPHH0MIb05nLQkza7iqYZrsJj8ocTQRq+MdxkhbqtYT2tsE/ZOzG4k0abAtO+DxXi7ULVps1nIUB387BEYw6ZKptJSROmpO8Y9JYz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718493186; c=relaxed/simple;
	bh=+7IjSR/kqGIvv4H3fDY0x3wGXGdPGipVLZxe/zr7DoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NUA5KWggTIKXyR3Wj+PljK4qHUDhwpFoUk7SyZKs4tcdD3vB9Ml+EEmp/+qxqziGm7gei/PdnHp9x/pqj5LfSfuhtznf6XuxUa56ESdCa/ouQlBu41hwDAFDFp7BcqO1nszUfqbFgwBVRy2GQ5xyEJVgUvlfzLuyWiNJlE73Hks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ItZa8Svw; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-35dc1d8867eso2683096f8f.0;
        Sat, 15 Jun 2024 16:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718493183; x=1719097983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPWkWTvKJqfRuDQmtB8UvlJrzwDG/2gWSmvAtvh8RdA=;
        b=ItZa8SvwwM13qZUpX627ZMTT36I8tgALS6JIkxLOg4tUd0sxklN0hbkjSoxuUPBDwx
         LvZNXFUiW24fqElIiGxMvSh2EROoGIEG7ebpFRPSjcc5ga0cbq9WKjkn959CV8xlfLim
         qeN4anmG/ssx7RUYn715sRG7MowV/DMhs+Ku0tKTN8v436ygZ+EtJw7KtxXwroJvJmnO
         T9Cl7WqJd1sfsDbAfT5TGKmvPERn1M0NYyKXAUJH/+I2WVBkqmLjkwLhQqSU3+8I57Xc
         acT17dn6UZzeQujIXVOjXOhfsIt2WI5d+GMfNYEsozL385OhCJE0YNNZEWgUb3nhxwSS
         TtIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718493183; x=1719097983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YPWkWTvKJqfRuDQmtB8UvlJrzwDG/2gWSmvAtvh8RdA=;
        b=mS7KeNsZM1qfh9vCeKz0nlRjK84WUxTp3KMqxxvGxcPdo++XrH/OXtr/1bjNhM6iMH
         pqR8ImSGuGGLCq+mrPgyGcmwgV0uaEBEQ8vg6aD/Hjq3K9E2/x1BQLrkAs+A4nKTWqWo
         YF7ek8zjBdJuj+vE5ANYEmk00MGnWCA3QN00msM6u3uaX+zgUkfsE9N6P+yoJES6xz5X
         XBkR/+HeOwfuk7Rj+fqA/ZNBX6fgPES68lvWK5rdm9381h93TjU78pzqJMhWomtbpf56
         pNVsTnddHU+4RCZT8rFO8ugMVCSk2Rgg/Evme4C6Fx2Zn7ydLyo4p4WENbOzU9hU9wxU
         mduw==
X-Forwarded-Encrypted: i=1; AJvYcCXztPklq0z+RAYHdNBOyFUTOeQb1uyaKDrwtDmAfkrv79JBIgw4wGRWHkmfpjrOfSgF+rbBTtXYxH3wenqUsnjqwMXpiG+OCQvojBLWmsj9AKyeX+LDIgmRteUn/PusTEhHNqkXGZvZSGktvRjCPJ+A+rnqY6tsfaAwqpJTDRhFROMsWCE=
X-Gm-Message-State: AOJu0YyK2QwCwbC0ODKlA0gQjd18gBYyeahsdh0mQXtZcHwacl2Gno+D
	+IerdN2fApTEyp3e5SJIOfGO/DJVSkyKtgmbCXj0Cv2zOgUhUWgUEf0Lgw==
X-Google-Smtp-Source: AGHT+IHd8c7kQFNa8jP9GcXZWb7yTpIbNIGJIZkLgnAd58fzdHo9dXUcoPjoEe4jb+UFwN1on0QIQg==
X-Received: by 2002:a05:6000:5:b0:35f:2614:4be7 with SMTP id ffacd0b85a97d-3607a76b77emr3729352f8f.37.1718493183152;
        Sat, 15 Jun 2024 16:13:03 -0700 (PDT)
Received: from localhost.localdomain (93-34-90-105.ip49.fastwebnet.it. [93.34.90.105])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3607509355dsm8145532f8f.13.2024.06.15.16.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 16:13:02 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v5 14/20] leds: leds-lp55xx: generalize stop_engine function
Date: Sun, 16 Jun 2024 01:11:44 +0200
Message-ID: <20240615231152.28201-15-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240615231152.28201-1-ansuelsmth@gmail.com>
References: <20240615231152.28201-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Generalize stop_engine function as the implementation is the same for
most of the lp55xx based LED driver.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/leds/leds-lp5521.c        | 20 +++-----------------
 drivers/leds/leds-lp5523.c        | 20 +++-----------------
 drivers/leds/leds-lp55xx-common.c | 13 +++++++++++++
 drivers/leds/leds-lp55xx-common.h |  1 +
 4 files changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/leds/leds-lp5521.c b/drivers/leds/leds-lp5521.c
index a1a3bf0ff703..4afae0c70d19 100644
--- a/drivers/leds/leds-lp5521.c
+++ b/drivers/leds/leds-lp5521.c
@@ -108,27 +108,13 @@ static inline void lp5521_wait_enable_done(void)
 	usleep_range(500, 600);
 }
 
-static void lp5521_stop_engine(struct lp55xx_chip *chip)
-{
-	enum lp55xx_engine_index idx = chip->engine_idx;
-	static const u8 mask[] = {
-		[LP55XX_ENGINE_1] = LP5521_MODE_R_M,
-		[LP55XX_ENGINE_2] = LP5521_MODE_G_M,
-		[LP55XX_ENGINE_3] = LP5521_MODE_B_M,
-	};
-
-	lp55xx_update_bits(chip, LP5521_REG_OP_MODE, mask[idx], 0);
-
-	lp5521_wait_opmode_done();
-}
-
 static void lp5521_run_engine(struct lp55xx_chip *chip, bool start)
 {
 	int ret;
 
 	/* stop engine */
 	if (!start) {
-		lp5521_stop_engine(chip);
+		lp55xx_stop_engine(chip);
 		lp55xx_write(chip, LP5521_REG_OP_MODE, LP5521_CMD_DIRECT);
 		lp5521_wait_opmode_done();
 		return;
@@ -253,11 +239,11 @@ static ssize_t store_engine_mode(struct device *dev,
 		lp5521_run_engine(chip, true);
 		engine->mode = LP55XX_ENGINE_RUN;
 	} else if (!strncmp(buf, "load", 4)) {
-		lp5521_stop_engine(chip);
+		lp55xx_stop_engine(chip);
 		lp55xx_load_engine(chip);
 		engine->mode = LP55XX_ENGINE_LOAD;
 	} else if (!strncmp(buf, "disabled", 8)) {
-		lp5521_stop_engine(chip);
+		lp55xx_stop_engine(chip);
 		engine->mode = LP55XX_ENGINE_DISABLED;
 	}
 
diff --git a/drivers/leds/leds-lp5523.c b/drivers/leds/leds-lp5523.c
index 4a4463cb44a4..1dd909a0fff5 100644
--- a/drivers/leds/leds-lp5523.c
+++ b/drivers/leds/leds-lp5523.c
@@ -153,25 +153,11 @@ static int lp5523_post_init_device(struct lp55xx_chip *chip)
 	return lp5523_init_program_engine(chip);
 }
 
-static void lp5523_stop_engine(struct lp55xx_chip *chip)
-{
-	enum lp55xx_engine_index idx = chip->engine_idx;
-	static const u8 mask[] = {
-		[LP55XX_ENGINE_1] = LP5523_MODE_ENG1_M,
-		[LP55XX_ENGINE_2] = LP5523_MODE_ENG2_M,
-		[LP55XX_ENGINE_3] = LP5523_MODE_ENG3_M,
-	};
-
-	lp55xx_update_bits(chip, LP5523_REG_OP_MODE, mask[idx], 0);
-
-	lp5523_wait_opmode_done();
-}
-
 static void lp5523_run_engine(struct lp55xx_chip *chip, bool start)
 {
 	/* stop engine */
 	if (!start) {
-		lp5523_stop_engine(chip);
+		lp55xx_stop_engine(chip);
 		lp55xx_turn_off_channels(chip);
 		return;
 	}
@@ -277,11 +263,11 @@ static ssize_t store_engine_mode(struct device *dev,
 		lp5523_run_engine(chip, true);
 		engine->mode = LP55XX_ENGINE_RUN;
 	} else if (!strncmp(buf, "load", 4)) {
-		lp5523_stop_engine(chip);
+		lp55xx_stop_engine(chip);
 		lp55xx_load_engine(chip);
 		engine->mode = LP55XX_ENGINE_LOAD;
 	} else if (!strncmp(buf, "disabled", 8)) {
-		lp5523_stop_engine(chip);
+		lp55xx_stop_engine(chip);
 		engine->mode = LP55XX_ENGINE_DISABLED;
 	}
 
diff --git a/drivers/leds/leds-lp55xx-common.c b/drivers/leds/leds-lp55xx-common.c
index 028a485d3561..46b1eb1ce775 100644
--- a/drivers/leds/leds-lp55xx-common.c
+++ b/drivers/leds/leds-lp55xx-common.c
@@ -298,6 +298,19 @@ void lp55xx_turn_off_channels(struct lp55xx_chip *chip)
 }
 EXPORT_SYMBOL_GPL(lp55xx_turn_off_channels);
 
+void lp55xx_stop_engine(struct lp55xx_chip *chip)
+{
+	enum lp55xx_engine_index idx = chip->engine_idx;
+	const struct lp55xx_device_config *cfg = chip->cfg;
+	u8 mask;
+
+	mask = LP55xx_MODE_ENGn_MASK(idx, cfg->reg_op_mode.shift);
+	lp55xx_update_bits(chip, cfg->reg_op_mode.addr, mask, 0);
+
+	lp55xx_wait_opmode_done(chip);
+}
+EXPORT_SYMBOL_GPL(lp55xx_stop_engine);
+
 static void lp55xx_reset_device(struct lp55xx_chip *chip)
 {
 	const struct lp55xx_device_config *cfg = chip->cfg;
diff --git a/drivers/leds/leds-lp55xx-common.h b/drivers/leds/leds-lp55xx-common.h
index 531fbb0acb2e..0aba6955a3af 100644
--- a/drivers/leds/leds-lp55xx-common.h
+++ b/drivers/leds/leds-lp55xx-common.h
@@ -221,6 +221,7 @@ extern int lp55xx_led_brightness(struct lp55xx_led *led);
 extern int lp55xx_multicolor_brightness(struct lp55xx_led *led);
 extern void lp55xx_set_led_current(struct lp55xx_led *led, u8 led_current);
 extern void lp55xx_turn_off_channels(struct lp55xx_chip *chip);
+extern void lp55xx_stop_engine(struct lp55xx_chip *chip);
 
 /* common probe/remove function */
 extern int lp55xx_probe(struct i2c_client *client);
-- 
2.43.0


