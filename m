Return-Path: <devicetree+bounces-159962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CA8A6D1F5
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6F6E7A6076
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8C911F0E58;
	Sun, 23 Mar 2025 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Up+JYB2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282CB1EE7BE
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769591; cv=none; b=Pm7eP5zbim+7SnWWa/jNxBH3PbzEFx1DBM7CsB+CHsshLNVoSypg8FNJizOre8COVCs7+qe4158CQ7QuXeCL/3zHQoBOOWK3ezRuxjhBHBo8CSwSRrgFtdopzRU7Kp8PoY1qLhC8x94655YbH12/KPJBDeW+OephJ7eScmpH4ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769591; c=relaxed/simple;
	bh=gi+3rlDXe5kKfSGekflTCeFrSwC0U2KR+A6Bz3gIU0Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tDHP/bPlX/OWnIFRnKIa861aCjG8kiG8UJSdCyQnFKzgOiWv5RGRH6bWdssUfa6rs961Yf+HLSr7WvEUS3Y4fW05toMFO/QkZRKcxsW68rFimHjK5L+ZPBEArNmR9vjgzLmTQ7Dxj33cr75GMRoeZXD9YGb5QlsfRz6ef4WelbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Up+JYB2B; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso560768666b.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769581; x=1743374381; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6v0MXm/qoCpI5RYf5jdk2hz7kULwB27Fo7iOKKWRDMg=;
        b=Up+JYB2BmWbMbhdAFFYN1gWPXckZ778QxSzpqP5Pft5pkQ7UFYdxRh6bPTYtefZG3e
         2aPL4XAp50EJR2pYuR6QtA8lWkP7HV+PJsh6ahjOXkr+4Kpg6+/YM4+vOcLEK3th361i
         XodKrbJ0oln9Vm5qtn6gBMFPBBvm9CNkEOmQVFIqf2m8TpNBKQLq90kV1b5OXewJFP/h
         jb58BUDBd6fTFvr8OGzQxJSwCnarJZVQttlDv3srOjnG0dsVqklgIcbGD6DUBczqJXqE
         9vzVcqec/5P60Ei+ftd2H4DcyRIBHXF3CA/V4cLgsSKuRRj1OpCdCKGwhS9xK+LfdgDF
         fMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769581; x=1743374381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6v0MXm/qoCpI5RYf5jdk2hz7kULwB27Fo7iOKKWRDMg=;
        b=GSSUZH7SD7qRsL/cNR0myglJb/qXY/1jIsXXvVAOTZktX7Xqv50641xZ/RTNVSCuaA
         gpAo0JsjUjkb/Wh9aYpZPEwqkFY6yjubV5jDAVnqf3VJH91/i0Vh49AkMr+2y/2pVcV0
         RUQufobkCrX5KUZRzHFA8KBYmUfwdQkYU7sxu4e0Z1TbwYqkKt9cWuUM11Zp1300wG7M
         STFq+fGYdYLvwoQWpShWMVpwFUVoU87YuQVR2cr4XGpr3T9EgSviEC/lWEUXYp2aHDNa
         rLxD0N87z4Uonx1F7ersHa5i/OHt4J5VBeftT1h+na35Ya3hwa8xunl3rZXmYoQ5UY38
         TRRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvyD/p6HNupX+Z90XyTx0kf625GGM7LS/wXkKk5LBY8Kv9TdtuKYVo707bzOdCCuKqP74uHEB83nl0@vger.kernel.org
X-Gm-Message-State: AOJu0YzldY2w03Nb2cppaCoiyqRMhRmudLnc75QJNg+RbKj9ef5UxOVQ
	/8Vf4ePn4UJxY4PikNhfStz81047cSr8e4m9vhgBImAcJDmjYwEunPwHykVCskY=
X-Gm-Gg: ASbGncs4WHH0lrJmJpjP0tRzQcKFTv7C0gSufBsiRQyJMjs0/sYYSNI7JGfWI1WbeBs
	tTGbB00XICmpXhay5BqBomI3S4s+5CBMDZ+Nb7uR1VBqMSExdNcdEr60ZtigjQX7d2bqiDqWzUo
	CiqQHyYXdPBNt4vNO8cbV5N0514x7GqLp/iJ3n1AWLoQlxRZwZWAFtB4pxK0XXARSIDiGPBF6Qg
	Vi5L4wDlUqehieSHCWaiDzd0mQpUvXW8oQB5AoYDJKL3rrUwiq6rbtc4iLsKIh8xUuCKnjfq9va
	IZlgssc0BVRB+o6sy02yBgcfi5T0tHYzZcd3bE26LSoCllRtJj+VS78qigGk7TVESIiJNLezMvr
	BGvwU0Ca+/NGLXFiO9h+s35Wp1zAc
X-Google-Smtp-Source: AGHT+IHcUN/NKgiZ0QEWiaH6bbGLjnVaJs4ldC7bKImYRP7M3qFuMVyRO0tg7YQLo4APyblVGgoatw==
X-Received: by 2002:a17:906:6a1d:b0:ac3:cabc:1be7 with SMTP id a640c23a62f3a-ac3f25833f0mr977627566b.48.1742769580766;
        Sun, 23 Mar 2025 15:39:40 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:40 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:45 +0000
Subject: [PATCH 29/34] rtc: s5m: add support for S2MPG10 RTC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-29-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for Samsung's S2MPG10 PMIC RTC, which is similar to the
existing PMIC RTCs supported by this driver.

S2MPG10 doesn't use I2C, so we expect the core driver to have created a
regmap for us.

Additionally, it can be used for doing a cold-reset. If requested to do
so (via DT), S2MPG10 is programmed with a watchdog configuration that
will perform a full power cycle upon watchdog expiry.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c           | 60 +++++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/samsung/rtc.h | 37 +++++++++++++++++++++++++
 2 files changed, 97 insertions(+)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index 86ccf666c68059408907c97f2647716ffaad10c6..0d8783577bab4f4ebe61050dbd68387d970773bd 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -11,6 +11,7 @@
 #include <linux/i2c.h>
 #include <linux/bcd.h>
 #include <linux/regmap.h>
+#include <linux/reboot.h>
 #include <linux/rtc.h>
 #include <linux/platform_device.h>
 #include <linux/mfd/samsung/core.h>
@@ -53,6 +54,7 @@ enum {
  * Device     | Write time | Read time | Write alarm
  * =================================================
  * S5M8767    | UDR + TIME |           | UDR
+ * S2MPG10    | WUDR       | RUDR      | AUDR
  * S2MPS11/14 | WUDR       | RUDR      | WUDR + RUDR
  * S2MPS13    | WUDR       | RUDR      | WUDR + AUDR
  * S2MPS15    | WUDR       | RUDR      | AUDR
@@ -99,6 +101,20 @@ static const struct s5m_rtc_reg_config s5m_rtc_regs = {
 	.write_alarm_udr_mask	= S5M_RTC_UDR_MASK,
 };
 
+/* Register map for S2MPG10 */
+static const struct s5m_rtc_reg_config s2mpg10_rtc_regs = {
+	.regs_count		= 7,
+	.time			= S2MPG10_RTC_SEC,
+	.ctrl			= S2MPG10_RTC_CTRL,
+	.alarm0			= S2MPG10_RTC_A0SEC,
+	.alarm1			= S2MPG10_RTC_A1SEC,
+	.udr_update		= S2MPG10_RTC_UPDATE,
+	.autoclear_udr_mask	= S2MPS15_RTC_WUDR_MASK | S2MPS15_RTC_AUDR_MASK,
+	.read_time_udr_mask	= S2MPS_RTC_RUDR_MASK,
+	.write_time_udr_mask	= S2MPS15_RTC_WUDR_MASK,
+	.write_alarm_udr_mask	= S2MPS15_RTC_AUDR_MASK,
+};
+
 /* Register map for S2MPS13 */
 static const struct s5m_rtc_reg_config s2mps13_rtc_regs = {
 	.regs_count		= 7,
@@ -238,6 +254,7 @@ static int s5m_check_peding_alarm_interrupt(struct s5m_rtc_info *info,
 		ret = regmap_read(info->regmap, S5M_RTC_STATUS, &val);
 		val &= S5M_ALARM0_STATUS;
 		break;
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -300,6 +317,7 @@ static int s5m8767_rtc_set_alarm_reg(struct s5m_rtc_info *info)
 	case S5M8767X:
 		data &= ~S5M_RTC_TIME_EN_MASK;
 		break;
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -351,6 +369,7 @@ static int s5m_rtc_read_time(struct device *dev, struct rtc_time *tm)
 
 	switch (info->device_type) {
 	case S5M8767X:
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -374,6 +393,7 @@ static int s5m_rtc_set_time(struct device *dev, struct rtc_time *tm)
 
 	switch (info->device_type) {
 	case S5M8767X:
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -411,6 +431,7 @@ static int s5m_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 
 	switch (info->device_type) {
 	case S5M8767X:
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -449,6 +470,7 @@ static int s5m_rtc_stop_alarm(struct s5m_rtc_info *info)
 
 	switch (info->device_type) {
 	case S5M8767X:
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -487,6 +509,7 @@ static int s5m_rtc_start_alarm(struct s5m_rtc_info *info)
 
 	switch (info->device_type) {
 	case S5M8767X:
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -524,6 +547,7 @@ static int s5m_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 
 	switch (info->device_type) {
 	case S5M8767X:
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -604,6 +628,7 @@ static int s5m8767_rtc_init_reg(struct s5m_rtc_info *info)
 		ret = regmap_raw_write(info->regmap, S5M_ALARM0_CONF, data, 2);
 		break;
 
+	case S2MPG10:
 	case S2MPS15X:
 	case S2MPS14X:
 	case S2MPS13X:
@@ -634,6 +659,25 @@ static int s5m8767_rtc_init_reg(struct s5m_rtc_info *info)
 	return ret;
 }
 
+static int s5m_rtc_restart_s2mpg10(struct sys_off_data *data)
+{
+	struct s5m_rtc_info *info = data->cb_data;
+	int ret;
+
+	if (data->mode != REBOOT_COLD && data->mode != REBOOT_HARD)
+		return NOTIFY_DONE;
+
+	/*
+	 * Arm watchdog with maximum timeout (2 seconds), and perform full reset
+	 * on expiry.
+	 */
+	ret = regmap_set_bits(info->regmap, S2MPG10_RTC_WTSR,
+			      (S2MPG10_WTSR_COLDTIMER | S2MPG10_WTSR_COLDRST
+			       | S2MPG10_WTSR_WTSRT | S2MPG10_WTSR_WTSR_EN));
+
+	return ret ? NOTIFY_BAD : NOTIFY_DONE;
+}
+
 static int s5m_rtc_probe(struct platform_device *pdev)
 {
 	struct sec_pmic_dev *s5m87xx = dev_get_drvdata(pdev->dev.parent);
@@ -689,6 +733,9 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 		if (IS_ERR(info->regmap))
 			return dev_err_probe(&pdev->dev, PTR_ERR(info->regmap),
 					     "Failed to allocate regmap\n");
+	} else if (id->driver_data == S2MPG10) {
+		info->regs = &s2mpg10_rtc_regs;
+		alarm_irq = S2MPG10_IRQ_RTCA0;
 	} else {
 		return dev_err_probe(&pdev->dev, -ENODEV,
 				     "Unsupported device type %lu\n",
@@ -735,6 +782,18 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 		device_init_wakeup(&pdev->dev, true);
 	}
 
+	if (of_device_is_system_power_controller(pdev->dev.parent->of_node) &&
+	    info->device_type == S2MPG10) {
+		ret = devm_register_sys_off_handler(&pdev->dev,
+						    SYS_OFF_MODE_RESTART,
+						    SYS_OFF_PRIO_HIGH + 1,
+						    s5m_rtc_restart_s2mpg10,
+						    info);
+		if (ret)
+			return dev_err_probe(&pdev->dev, ret,
+				       "Failed to register restart handler\n");
+	}
+
 	return devm_rtc_register_device(info->rtc_dev);
 }
 
@@ -766,6 +825,7 @@ static SIMPLE_DEV_PM_OPS(s5m_rtc_pm_ops, s5m_rtc_suspend, s5m_rtc_resume);
 
 static const struct platform_device_id s5m_rtc_id[] = {
 	{ "s5m-rtc",		S5M8767X },
+	{ "s2mpg10-rtc",	S2MPG10 },
 	{ "s2mps13-rtc",	S2MPS13X },
 	{ "s2mps14-rtc",	S2MPS14X },
 	{ "s2mps15-rtc",	S2MPS15X },
diff --git a/include/linux/mfd/samsung/rtc.h b/include/linux/mfd/samsung/rtc.h
index 0204decfc9aacbf4bc93d98a256f1d956bbcd19c..51c4239a1fa6f28155711a0756b0e071b010d848 100644
--- a/include/linux/mfd/samsung/rtc.h
+++ b/include/linux/mfd/samsung/rtc.h
@@ -72,6 +72,37 @@ enum s2mps_rtc_reg {
 	S2MPS_RTC_REG_MAX,
 };
 
+enum s2mpg10_rtc_reg {
+	S2MPG10_RTC_CTRL,
+	S2MPG10_RTC_UPDATE,
+	S2MPG10_RTC_SMPL,
+	S2MPG10_RTC_WTSR,
+	S2MPG10_RTC_CAP_SEL,
+	S2MPG10_RTC_MSEC,
+	S2MPG10_RTC_SEC,
+	S2MPG10_RTC_MIN,
+	S2MPG10_RTC_HOUR,
+	S2MPG10_RTC_WEEK,
+	S2MPG10_RTC_DAY,
+	S2MPG10_RTC_MON,
+	S2MPG10_RTC_YEAR,
+	S2MPG10_RTC_A0SEC,
+	S2MPG10_RTC_A0MIN,
+	S2MPG10_RTC_A0HOUR,
+	S2MPG10_RTC_A0WEEK,
+	S2MPG10_RTC_A0DAY,
+	S2MPG10_RTC_A0MON,
+	S2MPG10_RTC_A0YEAR,
+	S2MPG10_RTC_A1SEC,
+	S2MPG10_RTC_A1MIN,
+	S2MPG10_RTC_A1HOUR,
+	S2MPG10_RTC_A1WEEK,
+	S2MPG10_RTC_A1DAY,
+	S2MPG10_RTC_A1MON,
+	S2MPG10_RTC_A1YEAR,
+	S2MPG10_RTC_OSC_CTRL,
+};
+
 #define RTC_I2C_ADDR		(0x0C >> 1)
 
 #define HOUR_12			(1 << 7)
@@ -124,10 +155,16 @@ enum s2mps_rtc_reg {
 #define ALARM_ENABLE_SHIFT	7
 #define ALARM_ENABLE_MASK	(1 << ALARM_ENABLE_SHIFT)
 
+/* WTSR & SMPL registers */
 #define SMPL_ENABLE_SHIFT	7
 #define SMPL_ENABLE_MASK	(1 << SMPL_ENABLE_SHIFT)
 
 #define WTSR_ENABLE_SHIFT	6
 #define WTSR_ENABLE_MASK	(1 << WTSR_ENABLE_SHIFT)
 
+#define S2MPG10_WTSR_COLDTIMER	GENMASK(6, 5)
+#define S2MPG10_WTSR_COLDRST	BIT(4)
+#define S2MPG10_WTSR_WTSRT	GENMASK(3, 1)
+#define S2MPG10_WTSR_WTSR_EN	BIT(0)
+
 #endif /*  __LINUX_MFD_SEC_RTC_H */

-- 
2.49.0.395.g12beb8f557-goog


