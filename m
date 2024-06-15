Return-Path: <devicetree+bounces-76095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C69909A6C
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 01:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84971B216B1
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 23:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598947A141;
	Sat, 15 Jun 2024 23:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="duLbg0Hb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5616649651;
	Sat, 15 Jun 2024 23:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718493180; cv=none; b=CYQLgxh84Pa+YXf+VRvUN0mrBkeFO8hbQ2ZyLUf8Y8+RNfIxkBXnaPzWiVay7qvrfmLTDIil+lNJPAx6+JOeSqHKDQ530dWCJyT/xJnoETkKDFwbZKdE+4HGKeG+FGjdq8/IZLx0ItN/7dXwVOCqCQo/m81bTUIFHRch8vhjZ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718493180; c=relaxed/simple;
	bh=wBbxrLnkfNyobL87UuOQj2jlt6y5twjfk2owp+xVlEg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LOOlN4irmmuoK7es/0BHJ4Cm7i6qk7Bgyhmb+gmi3AS+JoNOPXMJTblPQh10HjexQkGx6DFx/Nrd0NmUTQ4q615HWgdowOy3J5G57c3zUb/VKUYBQrJcQB4cSgORNknpoitSRIeE7T4GHYlLGc0UIaMMk6I8xQUng3OC5zJbTBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=duLbg0Hb; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-35dc1d8867eso2683062f8f.0;
        Sat, 15 Jun 2024 16:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718493177; x=1719097977; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01Yp5Oo+fAXFWYQsh1sHng/98wv/JHqgWnDMLUMpVTA=;
        b=duLbg0HbN1f7zM02xKQJsVyYSlU/B2EXc5IoC2eVnwHaNVEWFohE4on+CHRJV6/5EQ
         OigG2OlgATg4Bneqfe1k/jo4MgLPL+PjnVqbfflhFrx8RZ55KlOx6SJ52oSVPypqeYl6
         7P4E8TngDqL/6tjH+UvH+W7fR/OO62PJLI2vS7/un8LL2bMe7xxPkxLQwgvwCnOqxvmQ
         x1FTWB74FhMU9GnwpDyS99lajzPfCZy/oBwpxljc/+3/Qlk3Gr4ppYXRaTGTURGUkxUy
         ISjNs3pGIb3v7HuLOSE7NEknbn845rm2Lo8h/q/+OvalFN6fNNuGxjqxP7aXtjkQcdDE
         u2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718493177; x=1719097977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=01Yp5Oo+fAXFWYQsh1sHng/98wv/JHqgWnDMLUMpVTA=;
        b=t+4GWryXMOPOnfQ+PVn05OCIIPBPmuXlpaFeMWT8IM5odn0kM5me/EkjxCCiurFH+x
         KZ4ywLf1y/k8cTnBDHv7WfcY/eiA0BU37rltrFCK7TJEkM+f7CXC8f2MylGXjg1HJNmd
         AkdhlMPMADBJBgRRdn1kTBuxZKYy31lUslhKsjlJUXgQKoqx49qfLKkiFagjz0Rq6dMt
         fmpPwkKXC0+z3Uber5uZx4iUPaCDTyNCD71iJiG9vyVUCgzx05jdUMLEnVMqTtUt1IZU
         qhLP67u/7Q4xTvwSjECRv1LIAJH2IlmyrK0e9GlzUQGW6TtXLfIPUyXxG/n62UjmvYm3
         Qmig==
X-Forwarded-Encrypted: i=1; AJvYcCWDyy9O4sdLlyD3UzDntehhxSsqZIj9oMMqDpCLD0Zxq2KGMG/gzlcZ9ckey7PiYlbINLM2dNWO4UYYhtUKJEkwf4ESXTFfvSjnBkHZjbLZfMtrOP+j3HpJD9hRXJSX2QLP1ojFH0+Yi2yd/PKaiptTwkRUVNfJP+0k4/Mp15dVlb/G/bc=
X-Gm-Message-State: AOJu0YwO0vQ/HKuLvilZ5/5fpRN8MNM5MCjVCFo9GoNgBKk5W1ESbAYn
	odNde2T+O6Q1+CLuNyLDQKGoiiOG5FTMKWBWT9Oo+sVx4qGB5X5V
X-Google-Smtp-Source: AGHT+IHGOXmwdXsv0JmO350tR/IRub9s6kG5HfX4x8NT92ixLql//Ji4UrU4XfGFtDIKhwoaNftmbA==
X-Received: by 2002:a5d:4e42:0:b0:35f:1c34:adfc with SMTP id ffacd0b85a97d-3607a78db97mr4320898f8f.67.1718493176722;
        Sat, 15 Jun 2024 16:12:56 -0700 (PDT)
Received: from localhost.localdomain (93-34-90-105.ip49.fastwebnet.it. [93.34.90.105])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3607509355dsm8145532f8f.13.2024.06.15.16.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 16:12:56 -0700 (PDT)
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
Subject: [PATCH v5 07/20] leds: leds-lp55xx: generalize run_engine function
Date: Sun, 16 Jun 2024 01:11:37 +0200
Message-ID: <20240615231152.28201-8-ansuelsmth@gmail.com>
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

Generalize run_engine function for lp55xx based LED driver. The logic is
similar to every LED driver, rework it with more macro magic and account
for LED model that might have OP MODE and EXEC at base offset in the
reg.

Update any lp55xx based LED driver to use this generalized function and
declare required bits.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/leds/leds-lp5521.c        | 42 +++++-------------------------
 drivers/leds/leds-lp5523.c        | 41 +++--------------------------
 drivers/leds/leds-lp5562.c        | 42 +++++-------------------------
 drivers/leds/leds-lp55xx-common.c | 43 +++++++++++++++++++++++++++++++
 drivers/leds/leds-lp55xx-common.h |  2 ++
 drivers/leds/leds-lp8501.c        | 41 +++--------------------------
 6 files changed, 65 insertions(+), 146 deletions(-)

diff --git a/drivers/leds/leds-lp5521.c b/drivers/leds/leds-lp5521.c
index 08db470fff6c..0b9f99f4fff2 100644
--- a/drivers/leds/leds-lp5521.c
+++ b/drivers/leds/leds-lp5521.c
@@ -132,8 +132,6 @@ static void lp5521_stop_engine(struct lp55xx_chip *chip)
 static void lp5521_run_engine(struct lp55xx_chip *chip, bool start)
 {
 	int ret;
-	u8 mode;
-	u8 exec;
 
 	/* stop engine */
 	if (!start) {
@@ -143,40 +141,9 @@ static void lp5521_run_engine(struct lp55xx_chip *chip, bool start)
 		return;
 	}
 
-	/*
-	 * To run the engine,
-	 * operation mode and enable register should updated at the same time
-	 */
-
-	ret = lp55xx_read(chip, LP5521_REG_OP_MODE, &mode);
-	if (ret)
-		return;
-
-	ret = lp55xx_read(chip, LP5521_REG_ENABLE, &exec);
-	if (ret)
-		return;
-
-	/* change operation mode to RUN only when each engine is loading */
-	if (LP5521_R_IS_LOADING(mode)) {
-		mode = (mode & ~LP5521_MODE_R_M) | LP5521_RUN_R;
-		exec = (exec & ~LP5521_EXEC_R_M) | LP5521_RUN_R;
-	}
-
-	if (LP5521_G_IS_LOADING(mode)) {
-		mode = (mode & ~LP5521_MODE_G_M) | LP5521_RUN_G;
-		exec = (exec & ~LP5521_EXEC_G_M) | LP5521_RUN_G;
-	}
-
-	if (LP5521_B_IS_LOADING(mode)) {
-		mode = (mode & ~LP5521_MODE_B_M) | LP5521_RUN_B;
-		exec = (exec & ~LP5521_EXEC_B_M) | LP5521_RUN_B;
-	}
-
-	lp55xx_write(chip, LP5521_REG_OP_MODE, mode);
-	lp5521_wait_opmode_done();
-
-	lp55xx_update_bits(chip, LP5521_REG_ENABLE, LP5521_EXEC_M, exec);
-	lp5521_wait_enable_done();
+	ret = lp55xx_run_engine_common(chip);
+	if (!ret)
+		lp5521_wait_enable_done();
 }
 
 static int lp5521_update_program_memory(struct lp55xx_chip *chip,
@@ -476,6 +443,9 @@ static struct lp55xx_device_config lp5521_cfg = {
 	.reg_op_mode = {
 		.addr = LP5521_REG_OP_MODE,
 	},
+	.reg_exec = {
+		.addr = LP5521_REG_ENABLE,
+	},
 	.reset = {
 		.addr = LP5521_REG_RESET,
 		.val  = LP5521_RESET,
diff --git a/drivers/leds/leds-lp5523.c b/drivers/leds/leds-lp5523.c
index 8dabd5814110..b28955b72189 100644
--- a/drivers/leds/leds-lp5523.c
+++ b/drivers/leds/leds-lp5523.c
@@ -184,10 +184,6 @@ static void lp5523_turn_off_channels(struct lp55xx_chip *chip)
 
 static void lp5523_run_engine(struct lp55xx_chip *chip, bool start)
 {
-	int ret;
-	u8 mode;
-	u8 exec;
-
 	/* stop engine */
 	if (!start) {
 		lp5523_stop_engine(chip);
@@ -195,39 +191,7 @@ static void lp5523_run_engine(struct lp55xx_chip *chip, bool start)
 		return;
 	}
 
-	/*
-	 * To run the engine,
-	 * operation mode and enable register should updated at the same time
-	 */
-
-	ret = lp55xx_read(chip, LP5523_REG_OP_MODE, &mode);
-	if (ret)
-		return;
-
-	ret = lp55xx_read(chip, LP5523_REG_ENABLE, &exec);
-	if (ret)
-		return;
-
-	/* change operation mode to RUN only when each engine is loading */
-	if (LP5523_ENG1_IS_LOADING(mode)) {
-		mode = (mode & ~LP5523_MODE_ENG1_M) | LP5523_RUN_ENG1;
-		exec = (exec & ~LP5523_EXEC_ENG1_M) | LP5523_RUN_ENG1;
-	}
-
-	if (LP5523_ENG2_IS_LOADING(mode)) {
-		mode = (mode & ~LP5523_MODE_ENG2_M) | LP5523_RUN_ENG2;
-		exec = (exec & ~LP5523_EXEC_ENG2_M) | LP5523_RUN_ENG2;
-	}
-
-	if (LP5523_ENG3_IS_LOADING(mode)) {
-		mode = (mode & ~LP5523_MODE_ENG3_M) | LP5523_RUN_ENG3;
-		exec = (exec & ~LP5523_EXEC_ENG3_M) | LP5523_RUN_ENG3;
-	}
-
-	lp55xx_write(chip, LP5523_REG_OP_MODE, mode);
-	lp5523_wait_opmode_done();
-
-	lp55xx_update_bits(chip, LP5523_REG_ENABLE, LP5523_EXEC_M, exec);
+	lp55xx_run_engine_common(chip);
 }
 
 static int lp5523_init_program_engine(struct lp55xx_chip *chip)
@@ -840,6 +804,9 @@ static struct lp55xx_device_config lp5523_cfg = {
 	.reg_op_mode = {
 		.addr = LP5523_REG_OP_MODE,
 	},
+	.reg_exec = {
+		.addr = LP5523_REG_ENABLE,
+	},
 	.engine_busy = {
 		.addr = LP5523_REG_STATUS,
 		.mask  = LP5523_ENGINE_BUSY,
diff --git a/drivers/leds/leds-lp5562.c b/drivers/leds/leds-lp5562.c
index 5e26a52f534f..fb05439576c3 100644
--- a/drivers/leds/leds-lp5562.c
+++ b/drivers/leds/leds-lp5562.c
@@ -127,8 +127,6 @@ static void lp5562_set_led_current(struct lp55xx_led *led, u8 led_current)
 static void lp5562_run_engine(struct lp55xx_chip *chip, bool start)
 {
 	int ret;
-	u8 mode;
-	u8 exec;
 
 	/* stop engine */
 	if (!start) {
@@ -141,40 +139,9 @@ static void lp5562_run_engine(struct lp55xx_chip *chip, bool start)
 		return;
 	}
 
-	/*
-	 * To run the engine,
-	 * operation mode and enable register should updated at the same time
-	 */
-
-	ret = lp55xx_read(chip, LP5562_REG_OP_MODE, &mode);
-	if (ret)
-		return;
-
-	ret = lp55xx_read(chip, LP5562_REG_ENABLE, &exec);
-	if (ret)
-		return;
-
-	/* change operation mode to RUN only when each engine is loading */
-	if (LP5562_ENG1_IS_LOADING(mode)) {
-		mode = (mode & ~LP5562_MODE_ENG1_M) | LP5562_RUN_ENG1;
-		exec = (exec & ~LP5562_EXEC_ENG1_M) | LP5562_RUN_ENG1;
-	}
-
-	if (LP5562_ENG2_IS_LOADING(mode)) {
-		mode = (mode & ~LP5562_MODE_ENG2_M) | LP5562_RUN_ENG2;
-		exec = (exec & ~LP5562_EXEC_ENG2_M) | LP5562_RUN_ENG2;
-	}
-
-	if (LP5562_ENG3_IS_LOADING(mode)) {
-		mode = (mode & ~LP5562_MODE_ENG3_M) | LP5562_RUN_ENG3;
-		exec = (exec & ~LP5562_EXEC_ENG3_M) | LP5562_RUN_ENG3;
-	}
-
-	lp55xx_write(chip, LP5562_REG_OP_MODE, mode);
-	lp5562_wait_opmode_done();
-
-	lp55xx_update_bits(chip, LP5562_REG_ENABLE, LP5562_EXEC_M, exec);
-	lp5562_wait_enable_done();
+	ret = lp55xx_run_engine_common(chip);
+	if (!ret)
+		lp5562_wait_enable_done();
 }
 
 static int lp5562_update_firmware(struct lp55xx_chip *chip,
@@ -472,6 +439,9 @@ static struct lp55xx_device_config lp5562_cfg = {
 	.reg_op_mode = {
 		.addr = LP5562_REG_OP_MODE,
 	},
+	.reg_exec = {
+		.addr = LP5562_REG_ENABLE,
+	},
 	.reset = {
 		.addr = LP5562_REG_RESET,
 		.val  = LP5562_RESET,
diff --git a/drivers/leds/leds-lp55xx-common.c b/drivers/leds/leds-lp55xx-common.c
index 636e3ca0bb87..9c2e3b2c72fb 100644
--- a/drivers/leds/leds-lp55xx-common.c
+++ b/drivers/leds/leds-lp55xx-common.c
@@ -45,6 +45,15 @@
 #define   LP55xx_MODE_ENGn_GET(n, mode, shift)        \
 	(((mode) >> LP55xx_MODE_ENGn_SHIFT(n, shift)) & LP55xx_MODE_ENG_MASK)
 
+#define   LP55xx_EXEC_ENG_MASK         GENMASK(1, 0)
+#define   LP55xx_EXEC_HOLD_ENG         FIELD_PREP_CONST(LP55xx_EXEC_ENG_MASK, 0x0)
+#define   LP55xx_EXEC_STEP_ENG         FIELD_PREP_CONST(LP55xx_EXEC_ENG_MASK, 0x1)
+#define   LP55xx_EXEC_RUN_ENG          FIELD_PREP_CONST(LP55xx_EXEC_ENG_MASK, 0x2)
+#define   LP55xx_EXEC_ONCE_ENG         FIELD_PREP_CONST(LP55xx_EXEC_ENG_MASK, 0x3)
+
+#define   LP55xx_EXEC_ENGn_SHIFT(n, shift)    ((shift) + (2 * (3 - (n))))
+#define   LP55xx_EXEC_ENGn_MASK(n, shift)     (LP55xx_EXEC_ENG_MASK << LP55xx_EXEC_ENGn_SHIFT(n, shift))
+
 /* Memory Page Selection */
 #define LP55xx_REG_PROG_PAGE_SEL	0x4f
 /* If supported, each ENGINE have an equal amount of pages offset from page 0 */
@@ -117,6 +126,40 @@ void lp55xx_load_engine(struct lp55xx_chip *chip)
 }
 EXPORT_SYMBOL_GPL(lp55xx_load_engine);
 
+int lp55xx_run_engine_common(struct lp55xx_chip *chip)
+{
+	const struct lp55xx_device_config *cfg = chip->cfg;
+	u8 mode, exec;
+	int i, ret;
+
+	/* To run the engine, both OP MODE and EXEC needs to be put in RUN mode */
+	ret = lp55xx_read(chip, cfg->reg_op_mode.addr, &mode);
+	if (ret)
+		return ret;
+
+	ret = lp55xx_read(chip, cfg->reg_exec.addr, &exec);
+	if (ret)
+		return ret;
+
+	/* Switch to RUN only for engine that were put in LOAD previously */
+	for (i = LP55XX_ENGINE_1; i <= LP55XX_ENGINE_3; i++) {
+		if (LP55xx_MODE_ENGn_GET(i, mode, cfg->reg_op_mode.shift) != LP55xx_MODE_LOAD_ENG)
+			continue;
+
+		mode &= ~LP55xx_MODE_ENGn_MASK(i, cfg->reg_op_mode.shift);
+		mode |= LP55xx_MODE_RUN_ENG << LP55xx_MODE_ENGn_SHIFT(i, cfg->reg_op_mode.shift);
+		exec &= ~LP55xx_EXEC_ENGn_MASK(i, cfg->reg_exec.shift);
+		exec |= LP55xx_EXEC_RUN_ENG << LP55xx_EXEC_ENGn_SHIFT(i, cfg->reg_exec.shift);
+	}
+
+	lp55xx_write(chip, cfg->reg_op_mode.addr, mode);
+	lp55xx_wait_opmode_done(chip);
+	lp55xx_write(chip, cfg->reg_exec.addr, exec);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(lp55xx_run_engine_common);
+
 static void lp55xx_reset_device(struct lp55xx_chip *chip)
 {
 	const struct lp55xx_device_config *cfg = chip->cfg;
diff --git a/drivers/leds/leds-lp55xx-common.h b/drivers/leds/leds-lp55xx-common.h
index 015ac2ef4e4d..dd74b214ec74 100644
--- a/drivers/leds/leds-lp55xx-common.h
+++ b/drivers/leds/leds-lp55xx-common.h
@@ -112,6 +112,7 @@ struct lp55xx_reg {
  */
 struct lp55xx_device_config {
 	const struct lp55xx_reg reg_op_mode; /* addr, shift */
+	const struct lp55xx_reg reg_exec; /* addr, shift */
 	const struct lp55xx_reg engine_busy; /* addr, mask */
 	const struct lp55xx_reg reset;
 	const struct lp55xx_reg enable;
@@ -206,6 +207,7 @@ extern bool lp55xx_is_extclk_used(struct lp55xx_chip *chip);
 /* common chip functions */
 extern void lp55xx_stop_all_engine(struct lp55xx_chip *chip);
 extern void lp55xx_load_engine(struct lp55xx_chip *chip);
+extern int lp55xx_run_engine_common(struct lp55xx_chip *chip);
 
 /* common probe/remove function */
 extern int lp55xx_probe(struct i2c_client *client);
diff --git a/drivers/leds/leds-lp8501.c b/drivers/leds/leds-lp8501.c
index abe2c4b213d7..47b30e9d04a2 100644
--- a/drivers/leds/leds-lp8501.c
+++ b/drivers/leds/leds-lp8501.c
@@ -127,10 +127,6 @@ static void lp8501_turn_off_channels(struct lp55xx_chip *chip)
 
 static void lp8501_run_engine(struct lp55xx_chip *chip, bool start)
 {
-	int ret;
-	u8 mode;
-	u8 exec;
-
 	/* stop engine */
 	if (!start) {
 		lp55xx_stop_all_engine(chip);
@@ -138,39 +134,7 @@ static void lp8501_run_engine(struct lp55xx_chip *chip, bool start)
 		return;
 	}
 
-	/*
-	 * To run the engine,
-	 * operation mode and enable register should updated at the same time
-	 */
-
-	ret = lp55xx_read(chip, LP8501_REG_OP_MODE, &mode);
-	if (ret)
-		return;
-
-	ret = lp55xx_read(chip, LP8501_REG_ENABLE, &exec);
-	if (ret)
-		return;
-
-	/* change operation mode to RUN only when each engine is loading */
-	if (LP8501_ENG1_IS_LOADING(mode)) {
-		mode = (mode & ~LP8501_MODE_ENG1_M) | LP8501_RUN_ENG1;
-		exec = (exec & ~LP8501_EXEC_ENG1_M) | LP8501_RUN_ENG1;
-	}
-
-	if (LP8501_ENG2_IS_LOADING(mode)) {
-		mode = (mode & ~LP8501_MODE_ENG2_M) | LP8501_RUN_ENG2;
-		exec = (exec & ~LP8501_EXEC_ENG2_M) | LP8501_RUN_ENG2;
-	}
-
-	if (LP8501_ENG3_IS_LOADING(mode)) {
-		mode = (mode & ~LP8501_MODE_ENG3_M) | LP8501_RUN_ENG3;
-		exec = (exec & ~LP8501_EXEC_ENG3_M) | LP8501_RUN_ENG3;
-	}
-
-	lp55xx_write(chip, LP8501_REG_OP_MODE, mode);
-	lp8501_wait_opmode_done();
-
-	lp55xx_update_bits(chip, LP8501_REG_ENABLE, LP8501_EXEC_M, exec);
+	lp55xx_run_engine_common(chip);
 }
 
 static int lp8501_update_program_memory(struct lp55xx_chip *chip,
@@ -258,6 +222,9 @@ static struct lp55xx_device_config lp8501_cfg = {
 	.reg_op_mode = {
 		.addr = LP8501_REG_OP_MODE,
 	},
+	.reg_exec = {
+		.addr = LP8501_REG_ENABLE,
+	},
 	.engine_busy = {
 		.addr = LP8501_REG_STATUS,
 		.mask = LP8501_ENGINE_BUSY,
-- 
2.43.0


