Return-Path: <devicetree+bounces-306445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ALcjBJxtIGpO3QAAu9opvQ
	(envelope-from <devicetree+bounces-306445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:08:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F20A163A67C
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:08:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=geS5butB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306445-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306445-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F5C03016DA6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 18:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D829239E176;
	Wed,  3 Jun 2026 18:06:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9FF384CDA;
	Wed,  3 Jun 2026 18:06:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780509967; cv=none; b=d4sWMJ9GFbsaGHiwjgUYZHUV6vC6dtTu9TZJXc4OViKgU6q+x51IFChEAIZoVQoZTFhSJoHwkUpyB+0vKITAw/4oQAxI7D1RksfituMeb3k1RkfYBrdtAkxmcNuq2T9W/aE6BibCIdIKYmay3XO147EiDG9DyUpuevNcJBua9Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780509967; c=relaxed/simple;
	bh=dOoxnDlBmKRUEuWn0/9PCIB2WwlAKvILRj6iXjFR3rg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mPImMKftxitGCCS571hl0T4hjna9wLMaj6KGqC+pdFYu9ZHgUQ0ifEHn+N0xJtdrj8tCaykuzywyXFhaJOEHh3BcJyiaa5umex4NXro1s5F0DF8X6v43S1pcEsiI3xJKHybK6lr+x9jhW+RugtNC74oKWnse2QpjqQqoJTxBGbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geS5butB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62D65C2BD05;
	Wed,  3 Jun 2026 18:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780509967;
	bh=dOoxnDlBmKRUEuWn0/9PCIB2WwlAKvILRj6iXjFR3rg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=geS5butB7ZvbgZ1iT9SwHLeQy6fkkZL2K/O/GZvLqMqFAYQScre5TdBuExVOROpYh
	 o1+DQyvwjmxPJyhN0UfqvohS4I7nQpsLUoG9cWVqTnJM9gZMp6b0aHCPMtug9otkOb
	 aJuMJEbdLHCvUF/wkY8mQ6SYci82LwoQMV7wdewwsH2bCyCMwEL67/69Wcvmo3AJTb
	 EVLXkNcgvb8MlVFGnmKgfXQimLhHEh4F1IqhBcfiRBaIJ8qGIl/qX4ceOTXMqP+8lJ
	 YMuQkQqOvW3cEWh1gJbEQxdZHTD14ze1osb2m5ikGyQmzymzSGIqmvMUuwOhoyoegK
	 uXptPEAfeDAaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5741CCD6E57;
	Wed,  3 Jun 2026 18:06:07 +0000 (UTC)
From: Ronald Claveau via B4 Relay <devnull+linux-kernel-dev.aliel.fr@kernel.org>
Date: Wed, 03 Jun 2026 20:05:27 +0200
Subject: [PATCH v7 5/8] thermal: khadas-mcu-fan: Add fan config from
 platform data Add regulator support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-add-mcu-fan-khadas-vim4-v7-5-594ba8a965d8@aliel.fr>
References: <20260603-add-mcu-fan-khadas-vim4-v7-0-594ba8a965d8@aliel.fr>
In-Reply-To: <20260603-add-mcu-fan-khadas-vim4-v7-0-594ba8a965d8@aliel.fr>
To: Neil Armstrong <neil.armstrong@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Beniamino Galvani <b.galvani@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3542;
 i=linux-kernel-dev@aliel.fr; h=from:subject:message-id;
 bh=GAu0pdDCPzhOo5CdDYjBvtBNlGqzAQdEX8wTJo3sqIc=;
 b=owGbwMvMwCWm1SvKXP3cUInxtFoSQ5ZCLgfDSdXzFisfhopPm5T3ocd514MjEzl+6NYfO8Rvd
 shedW9gRykLgxgXg6yYIkv/XMsT7y4fPfN1j3oKzBxWJrAhXJwCMBHrfYwMzZPPB7Y/nVX/qNIu
 KWPihvsXQ1QP7Ly82fLbiqyYnOtXuRj+afxdZNOzuu2TEO/+rJff2CJql4czeucnmE53YrAr0Xz
 LBwA=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openpgp;
 fpr=DFD863F61375BF917F0012173953305EF1D0EC3E
X-Endpoint-Received: by B4 Relay for linux-kernel-dev@aliel.fr/default with
 auth_id=744
X-Original-From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Reply-To: linux-kernel-dev@aliel.fr
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306445-lists,devicetree=lfdr.de,linux-kernel-dev.aliel.fr];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andi.shyti@kernel.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:b.galvani@gmail.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-i2c@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:linux-kernel-dev@aliel.fr,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,m:bgalvani@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,googlemail.com,gmail.com,intel.com,arm.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[linux-kernel-dev@aliel.fr];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:mid,aliel.fr:email,aliel.fr:replyto,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F20A163A67C

From: Ronald Claveau <linux-kernel-dev@aliel.fr>

Replace the hardcoded MAX_LEVEL constant and fan register
with values read from platform_data (fan_reg, max_level),
as new MCUs need different values.

Optionally acquire and enable a "fan" regulator supply
at probe time and on resume,
so boards that gate fan power through a regulator are handled.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 drivers/thermal/khadas_mcu_fan.c | 37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
index d35e5313bea41..5603fa099a858 100644
--- a/drivers/thermal/khadas_mcu_fan.c
+++ b/drivers/thermal/khadas_mcu_fan.c
@@ -13,13 +13,15 @@
 #include <linux/regmap.h>
 #include <linux/sysfs.h>
 #include <linux/thermal.h>
-
-#define MAX_LEVEL 3
+#include <linux/regulator/consumer.h>
 
 struct khadas_mcu_fan_ctx {
 	struct khadas_mcu *mcu;
+	unsigned int fan_reg;
 	unsigned int level;
+	unsigned int max_level;
 	struct thermal_cooling_device *cdev;
+	struct regulator *power;
 };
 
 static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
@@ -27,8 +29,7 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
 {
 	int ret;
 
-	ret = regmap_write(ctx->mcu->regmap, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
-			   level);
+	ret = regmap_write(ctx->mcu->regmap, ctx->fan_reg, level);
 	if (ret)
 		return ret;
 
@@ -40,7 +41,9 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
 static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
 					unsigned long *state)
 {
-	*state = MAX_LEVEL;
+	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
+
+	*state = ctx->max_level;
 
 	return 0;
 }
@@ -61,7 +64,7 @@ khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
 {
 	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
 
-	if (state > MAX_LEVEL)
+	if (state > ctx->max_level)
 		return -EINVAL;
 
 	if (state == ctx->level)
@@ -78,6 +81,7 @@ static const struct thermal_cooling_device_ops khadas_mcu_fan_cooling_ops = {
 
 static int khadas_mcu_fan_probe(struct platform_device *pdev)
 {
+	const struct khadas_mcu_fan_pdata *pdata = dev_get_platdata(&pdev->dev);
 	struct khadas_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
 	struct thermal_cooling_device *cdev;
 	struct device *dev = &pdev->dev;
@@ -87,7 +91,21 @@ static int khadas_mcu_fan_probe(struct platform_device *pdev)
 	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
 		return -ENOMEM;
+
 	ctx->mcu = mcu;
+	ctx->fan_reg   = pdata->fan_reg;
+	ctx->max_level = pdata->max_level;
+
+	ctx->power = devm_regulator_get(dev->parent, "fan");
+	if (IS_ERR(ctx->power))
+		return PTR_ERR(ctx->power);
+
+	ret = regulator_enable(ctx->power);
+	if (ret) {
+		dev_err(dev, "Failed to enable fan power supply: %d\n", ret);
+		return ret;
+	}
+
 	platform_set_drvdata(pdev, ctx);
 
 	cdev = devm_thermal_of_cooling_device_register(dev->parent,
@@ -124,12 +142,17 @@ static int khadas_mcu_fan_suspend(struct device *dev)
 
 	ctx->level = level_save;
 
-	return 0;
+	return regulator_disable(ctx->power);
 }
 
 static int khadas_mcu_fan_resume(struct device *dev)
 {
 	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
+	int ret;
+
+	ret = regulator_enable(ctx->power);
+	if (ret)
+		return ret;
 
 	return khadas_mcu_fan_set_level(ctx, ctx->level);
 }

-- 
2.49.0



