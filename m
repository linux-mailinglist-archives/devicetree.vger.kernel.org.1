Return-Path: <devicetree+bounces-273587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI3NG1kvsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:48:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D80092526BA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8C1034421D6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F59E2857CC;
	Tue, 10 Mar 2026 14:15:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99A526B95B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773152115; cv=none; b=aCO+SUieBZKeKfahrfF27LXeU1hVDz1vDW3f+krzC0k3xaU8bXxZurnuHFfJpe3L1vlsNQLGhtndmHOGRT8Ds1jrt3HBzGoB7TVpNou4uyKXNDZjGpGFbvaBCqQwzXoBQkSchDpdrp8662oe/kPOpWiNo4FqgLXUAAr6ved4gjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773152115; c=relaxed/simple;
	bh=G9W/WwvH/cZgvoHOUuCzymt2TsfUyNC0gH1UFBKLnwU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hjyFlawHeqyGpRMUMMfOODJ3hC2xLOM+BUg7rj2/LIQ+qhju0Q06PSJmwaqolALb1jIqSsgAGtVZYKZgXq5j96Z4ETmCzp5wydcHkzIJ49fqBeZPOs4Uf/mgAZiBj4JQjD1kMC6zo8rxG0smcOKH+0hruhTVWSXWK7fHNfyNJ4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzxrV-0006Tq-57; Tue, 10 Mar 2026 15:15:05 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 10 Mar 2026 15:14:40 +0100
Subject: [PATCH v2 2/2] leds: rgb: lp5860: add enable-gpio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-v6-19-topic-ti-lp5860-enable-gpio-v2-2-3fcc617fe03a@pengutronix.de>
References: <20260310-v6-19-topic-ti-lp5860-enable-gpio-v2-0-3fcc617fe03a@pengutronix.de>
In-Reply-To: <20260310-v6-19-topic-ti-lp5860-enable-gpio-v2-0-3fcc617fe03a@pengutronix.de>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Steffen Trumtrar <kernel@pengutronix.de>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: D80092526BA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.643];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-273587-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

The VIO_EN pin can either be connected with VIO power supply or GPIO.
Get the GPIO from DT if provided and set it on chip enable and disable.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/leds/rgb/leds-lp5860-core.c       | 10 ++++++++++
 include/linux/platform_data/leds-lp5860.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/leds/rgb/leds-lp5860-core.c b/drivers/leds/rgb/leds-lp5860-core.c
index 28b4d86e11f1a..1f349aa53f7a9 100644
--- a/drivers/leds/rgb/leds-lp5860-core.c
+++ b/drivers/leds/rgb/leds-lp5860-core.c
@@ -61,6 +61,9 @@ static int lp5860_set_mc_brightness(struct led_classdev *cdev,
 
 static int lp5860_chip_enable_toggle(struct lp5860 *led, int enable)
 {
+	if (led->enable_gpiod)
+		gpiod_direction_output(led->enable_gpiod, enable);
+
 	return regmap_write(led->regmap, LP5860_REG_CHIP_EN, enable);
 }
 
@@ -170,6 +173,13 @@ int lp5860_device_init(struct device *dev)
 	struct lp5860 *lp = dev_get_drvdata(dev);
 	int ret;
 
+	lp->enable_gpiod = devm_gpiod_get_optional(lp->dev, "enable", GPIOD_ASIS);
+	if (IS_ERR(lp->enable_gpiod))
+		return PTR_ERR(lp->enable_gpiod);
+
+	if (lp->enable_gpiod)
+		gpiod_set_consumer_name(lp->enable_gpiod, "LP5860 VIO enable");
+
 	ret = lp5860_chip_enable_toggle(lp, LP5860_CHIP_ENABLE);
 	if (ret)
 		return ret;
diff --git a/include/linux/platform_data/leds-lp5860.h b/include/linux/platform_data/leds-lp5860.h
index 7bc69a7a550dd..7258d0674ce59 100644
--- a/include/linux/platform_data/leds-lp5860.h
+++ b/include/linux/platform_data/leds-lp5860.h
@@ -257,6 +257,7 @@ struct lp5860_led {
 struct lp5860 {
 	struct device *dev;
 	struct regmap *regmap;
+	struct gpio_desc *enable_gpiod;
 	unsigned int leds_count;
 
 	DECLARE_FLEX_ARRAY(struct lp5860_led, leds);

-- 
2.51.0


