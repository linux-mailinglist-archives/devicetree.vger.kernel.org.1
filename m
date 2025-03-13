Return-Path: <devicetree+bounces-157252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EBAA5F79E
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:20:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13CF917F97D
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6A3267F7A;
	Thu, 13 Mar 2025 14:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn9L5pf2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9FC268C4A;
	Thu, 13 Mar 2025 14:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741875558; cv=none; b=mbbkB0ask/uF7Eb08OaXvOOEvkUmH3PNEegEH6yCAYz7UdQgQ7aNhYyKWxPyKfD9oEuzApiH3PEjGTODA6cPFxdOoMemIuSj8Wdv1+gcL5iDP70Mkl607Go6E9x8/8Hpkf6Q6sesgLnNEtHK/YoE2GK0ZGjVt+y8BmoGINXF0No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741875558; c=relaxed/simple;
	bh=B42mAyobrVzFGqDXmeLVCOlApD62miY7L/kyPIaBRrU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bB9b6gLxzvFv6dEeQLh7M5kXDz8xhT3dXtgEmgjqHkSEzdYdUG9hZtihqnUL+XUsHb6g3bI+SUpVWdlSrC90sj4baKZlPUlMarQF1VFPFqWqszWTT2OdZog+1xrFPjOVN+BM2TKB7neNNded34sBtsL/YcoEtsyiZzHEe6w0l3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn9L5pf2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C7DC116C6;
	Thu, 13 Mar 2025 14:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741875558;
	bh=B42mAyobrVzFGqDXmeLVCOlApD62miY7L/kyPIaBRrU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Tn9L5pf2ZVw0D2vomm7ZrwdhDbNFqHzEnFX1nbtwK0jGfsMw2V6ReeXO9OjnOiON8
	 jh2H8xZnhPq0DmWmqp4V2T9jQyDYbRyqw2dU4FDkcbCcZESHlVAAMOHWSV/cij4NXx
	 6BrY3QTsOi/GqYYk8tltR1xKn3CSy/KkpCGc2ppCKb3G2ncIINv8gOJFB/xXsTT3kx
	 Dw2EuRtYAClgbut3/PBq33Q6/zON7t2uZTvw/gLsPCTaUTqW2YSV2JDebCCC3u53i6
	 dl/045EmVeUZ19xHrQpq6wwmT3IxI7vuBZMJXb4a4qN8FnJXIiGLu+3I+XfmEptIbC
	 pUk23DIncovtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE402C28B2E;
	Thu, 13 Mar 2025 14:19:17 +0000 (UTC)
From: =?utf-8?q?Nuno_S=C3=A1_via_B4_Relay?= <devnull+nuno.sa.analog.com@kernel.org>
Date: Thu, 13 Mar 2025 14:19:25 +0000
Subject: [PATCH 08/18] pwm: adp5585: add support for adp5589
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250313-dev-adp5589-fw-v1-8-20e80d4bd4ea@analog.com>
References: <20250313-dev-adp5589-fw-v1-0-20e80d4bd4ea@analog.com>
In-Reply-To: <20250313-dev-adp5589-fw-v1-0-20e80d4bd4ea@analog.com>
To: linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-input@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Liu Ying <victor.liu@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741875561; l=5649;
 i=nuno.sa@analog.com; s=20231116; h=from:subject:message-id;
 bh=hDQwADPyhZkCjzlHyCqBfWfElr8WKeXEQSF0RoHBdlI=;
 b=Nd7LWJ9g/k5y/A7ktl2WQVKmHJG9HZizRfvBLYtyVU1Vq30DKIjkapKCXqywu8QUt0oadYIZE
 zUIZ9A3dUICBhSa1IT4Jf3XxYs50+CFBdS37Y7upPCLJP2iI/6yLuH9
X-Developer-Key: i=nuno.sa@analog.com; a=ed25519;
 pk=3NQwYA013OUYZsmDFBf8rmyyr5iQlxV/9H4/Df83o1E=
X-Endpoint-Received: by B4 Relay for nuno.sa@analog.com/20231116 with
 auth_id=100
X-Original-From: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Reply-To: nuno.sa@analog.com

From: Nuno Sá <nuno.sa@analog.com>

Add support for the adp5589 I/O expander. From a PWM point of view it is
pretty similar to adp5585. Main difference is the address
of registers meaningful for configuring the PWM.

Signed-off-by: Nuno Sá <nuno.sa@analog.com>
---
 drivers/pwm/pwm-adp5585.c | 51 ++++++++++++++++++++++++++++++++---------------
 1 file changed, 35 insertions(+), 16 deletions(-)

diff --git a/drivers/pwm/pwm-adp5585.c b/drivers/pwm/pwm-adp5585.c
index c8821035b7c1412a55a642e6e8a46b66e693a5af..cc8ac8f9e5669b4ffca06d4117a29f030393f48f 100644
--- a/drivers/pwm/pwm-adp5585.c
+++ b/drivers/pwm/pwm-adp5585.c
@@ -32,21 +32,30 @@
 #define ADP5585_PWM_MIN_PERIOD_NS	(2ULL * NSEC_PER_SEC / ADP5585_PWM_OSC_FREQ_HZ)
 #define ADP5585_PWM_MAX_PERIOD_NS	(2ULL * 0xffff * NSEC_PER_SEC / ADP5585_PWM_OSC_FREQ_HZ)
 
+struct adp5585_pwm {
+	const struct adp5585_regs *regs;
+	struct regmap *regmap;
+};
+
 static int pwm_adp5585_request(struct pwm_chip *chip, struct pwm_device *pwm)
 {
-	struct regmap *regmap = pwmchip_get_drvdata(chip);
+	struct adp5585_pwm *adp5585_pwm = pwmchip_get_drvdata(chip);
+	const struct adp5585_regs *regs = adp5585_pwm->regs;
+	struct regmap *regmap = adp5585_pwm->regmap;
 
 	/* Configure the R3 pin as PWM output. */
-	return regmap_update_bits(regmap, ADP5585_PIN_CONFIG_C,
+	return regmap_update_bits(regmap, regs->ext_cfg,
 				  ADP5585_R3_EXTEND_CFG_MASK,
 				  ADP5585_R3_EXTEND_CFG_PWM_OUT);
 }
 
 static void pwm_adp5585_free(struct pwm_chip *chip, struct pwm_device *pwm)
 {
-	struct regmap *regmap = pwmchip_get_drvdata(chip);
+	struct adp5585_pwm *adp5585_pwm = pwmchip_get_drvdata(chip);
+	const struct adp5585_regs *regs = adp5585_pwm->regs;
+	struct regmap *regmap = adp5585_pwm->regmap;
 
-	regmap_update_bits(regmap, ADP5585_PIN_CONFIG_C,
+	regmap_update_bits(regmap, regs->ext_cfg,
 			   ADP5585_R3_EXTEND_CFG_MASK,
 			   ADP5585_R3_EXTEND_CFG_GPIO4);
 }
@@ -55,14 +64,16 @@ static int pwm_adp5585_apply(struct pwm_chip *chip,
 			     struct pwm_device *pwm,
 			     const struct pwm_state *state)
 {
-	struct regmap *regmap = pwmchip_get_drvdata(chip);
+	struct adp5585_pwm *adp5585_pwm = pwmchip_get_drvdata(chip);
+	const struct adp5585_regs *regs = adp5585_pwm->regs;
+	struct regmap *regmap = adp5585_pwm->regmap;
 	u64 period, duty_cycle;
 	u32 on, off;
 	__le16 val;
 	int ret;
 
 	if (!state->enabled) {
-		regmap_clear_bits(regmap, ADP5585_PWM_CFG, ADP5585_PWM_EN);
+		regmap_clear_bits(regmap, regs->pwm_cfg, ADP5585_PWM_EN);
 		return 0;
 	}
 
@@ -83,41 +94,43 @@ static int pwm_adp5585_apply(struct pwm_chip *chip,
 	off = div_u64(period, NSEC_PER_SEC / ADP5585_PWM_OSC_FREQ_HZ) - on;
 
 	val = cpu_to_le16(off);
-	ret = regmap_bulk_write(regmap, ADP5585_PWM_OFFT_LOW, &val, 2);
+	ret = regmap_bulk_write(regmap, regs->pwm_offt_low, &val, 2);
 	if (ret)
 		return ret;
 
 	val = cpu_to_le16(on);
-	ret = regmap_bulk_write(regmap, ADP5585_PWM_ONT_LOW, &val, 2);
+	ret = regmap_bulk_write(regmap, regs->pwm_ont_low, &val, 2);
 	if (ret)
 		return ret;
 
 	/* Enable PWM in continuous mode and no external AND'ing. */
-	ret = regmap_update_bits(regmap, ADP5585_PWM_CFG,
+	ret = regmap_update_bits(regmap, regs->pwm_cfg,
 				 ADP5585_PWM_IN_AND | ADP5585_PWM_MODE |
 				 ADP5585_PWM_EN, ADP5585_PWM_EN);
 	if (ret)
 		return ret;
 
-	return regmap_set_bits(regmap, ADP5585_PWM_CFG, ADP5585_PWM_EN);
+	return regmap_set_bits(regmap, regs->pwm_cfg, ADP5585_PWM_EN);
 }
 
 static int pwm_adp5585_get_state(struct pwm_chip *chip,
 				 struct pwm_device *pwm,
 				 struct pwm_state *state)
 {
-	struct regmap *regmap = pwmchip_get_drvdata(chip);
+	struct adp5585_pwm *adp5585_pwm = pwmchip_get_drvdata(chip);
+	const struct adp5585_regs *regs = adp5585_pwm->regs;
+	struct regmap *regmap = adp5585_pwm->regmap;
 	unsigned int on, off;
 	unsigned int val;
 	__le16 on_off;
 	int ret;
 
-	ret = regmap_bulk_read(regmap, ADP5585_PWM_OFFT_LOW, &on_off, 2);
+	ret = regmap_bulk_read(regmap, regs->pwm_offt_low, &on_off, 2);
 	if (ret)
 		return ret;
 	off = le16_to_cpu(on_off);
 
-	ret = regmap_bulk_read(regmap, ADP5585_PWM_ONT_LOW, &on_off, 2);
+	ret = regmap_bulk_read(regmap, regs->pwm_ont_low, &on_off, 2);
 	if (ret)
 		return ret;
 	on = le16_to_cpu(on_off);
@@ -127,7 +140,7 @@ static int pwm_adp5585_get_state(struct pwm_chip *chip,
 
 	state->polarity = PWM_POLARITY_NORMAL;
 
-	regmap_read(regmap, ADP5585_PWM_CFG, &val);
+	regmap_read(regmap, regs->pwm_cfg, &val);
 	state->enabled = !!(val & ADP5585_PWM_EN);
 
 	return 0;
@@ -144,16 +157,21 @@ static int adp5585_pwm_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct adp5585_dev *adp5585 = dev_get_drvdata(dev->parent);
+	struct adp5585_pwm *adp5585_pwm;
 	struct pwm_chip *chip;
 	int ret;
 
-	chip = devm_pwmchip_alloc(dev, ADP5585_PWM_CHAN_NUM, 0);
+	chip = devm_pwmchip_alloc(dev, ADP5585_PWM_CHAN_NUM,
+				  sizeof(*adp5585_pwm));
 	if (IS_ERR(chip))
 		return PTR_ERR(chip);
 
+	adp5585_pwm = pwmchip_get_drvdata(chip);
+	adp5585_pwm->regmap = adp5585->regmap;
+	adp5585_pwm->regs = adp5585->info->regs;
+
 	device_set_of_node_from_dev(dev, dev->parent);
 
-	pwmchip_set_drvdata(chip, adp5585->regmap);
 	chip->ops = &adp5585_pwm_ops;
 
 	ret = devm_pwmchip_add(dev, chip);
@@ -165,6 +183,7 @@ static int adp5585_pwm_probe(struct platform_device *pdev)
 
 static const struct platform_device_id adp5585_pwm_id_table[] = {
 	{ "adp5585-pwm" },
+	{ "adp5589-pwm" },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(platform, adp5585_pwm_id_table);

-- 
2.48.1



