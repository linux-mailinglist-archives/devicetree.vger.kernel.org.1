Return-Path: <devicetree+bounces-310724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /kajBY60K2r0CAQAu9opvQ
	(envelope-from <devicetree+bounces-310724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:26:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC5167735D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:26:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MGJeb+iW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310724-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310724-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 518A2308FA10
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE1123DD520;
	Fri, 12 Jun 2026 07:23:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD9B3AE1AD
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:23:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249031; cv=none; b=T1pTU/Nv1b7zKK2YSI0AaJV7tOZzJA44oL7yueM/SdFg35Ja4KxqEBuObqrVFj2bvwU8Vui5vhQJB9vmruuVxlwEE/9x5wgDtfhJgmjcHp6RS1a7F8iVBsJ7+QbWqtWDRk2hfe9VdsFO3fqm78xijALVuqOGv66On5KI7KtiMqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249031; c=relaxed/simple;
	bh=Fc/+4PqdwGhtdBZ7m3zBLmuP7DAFo9dmycNQByTX8RA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UIcl2anQ/1BmVto9kIP2Bjojdbr96pXiWKdFghGAdosbmVN8aW9ek5Tk7n/7YffqyZm94hSV679n/N7mUdZgfVb57DIsLjohcEaal/x2xk5TmZLGlqmGk6z7MCyc4vv47vWPAz+ZZ4wYkG9fyZJIUohlp2Ds1epCRYxIwi69TnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MGJeb+iW; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso7545945e9.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 00:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781249029; x=1781853829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZsvn1rVbWMhVrGc64ydePYbA7CJBVEGhkA4pGax+L8=;
        b=MGJeb+iWPFWuFtfgeq78VVCzm0niD4USor098HSfYRH6i6LUjZuU6Zb3SJpDbPK5eJ
         5YyQk6exJP9DWKDgyLRVUq/3IoZEfLmUcgywPI01j7tjf1KR3sAYyGK9Dpd22CQwax7k
         qwD9RV0thDbDq3AGALfq+zsuJU/LaTAkR36slhVmQ7l8T6iJ2QwRAc6u1F/k12RP+xFh
         ut8y/UIyuxMcDF0I6qE2ytnMXHPZiVqL3colyxQ4ZoUqgkv1oQ7PMxiRLjPPeiTsO2tp
         gXNWLfd8M8EmjU0u0LjbGLdNhn4f3Ug4Z2sfXgM3n5EKQadwvBzHeCA4xRHrnxAtc6I2
         O3cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781249029; x=1781853829;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EZsvn1rVbWMhVrGc64ydePYbA7CJBVEGhkA4pGax+L8=;
        b=jw2VHx9jUniW/3ysVEt1HqsQ1miAEzTgqdCefph5NrB5feulG5vmFb55aVc6DaKz52
         PvTBytic0QtYh0ISHtUzb1fUnfiBAnBRjp7KsgAHEPvAOeSi4IiZxfkXM31ggByq1Ul0
         H3HvbjCR6958iSbzqWndyynsb6ZmPl4D0/YNyOJ2f1P7kgu2qNO/UECcTexAVcdZcuj8
         wuyupiWBFMkYNQRSS+tTmElOobctIUXvZ+LEMXDVC1kK0ADdaKMxH3pvQIoUdeYnbad6
         yVGTFqcLqFeaO1ylctyIFlMGYOzn6l20EGonFDAqLVxshXpmR0zu8D+IfzCJXhfOmWIq
         lyEw==
X-Forwarded-Encrypted: i=1; AFNElJ/09hMV2M/m6cyIZT7iBLr2QJhEYqDyJLeHjyponJO3sMzSR2aK1cEuw15mJaJkUrZt5Z+6YgwKYCoc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5c8OnlXs/ipEaQFn5WLf84TYR58GM3zPMDtuS1fBqYUZ3KVsF
	22gXO9XMjifcBwlx0lbiWJ3Xzz+2B3n0mnRhZPT30IkZgYjFrTsdyVDI
X-Gm-Gg: Acq92OHqpGSPuaZ/YLHhVTmjzbnF3zOdgBQ49nudPRNmbugmNzQirRRULxUEpQ6d0Vo
	rAxlWD8MyO516ZIEIjQSzbypOzq18UKElTAhfXExz8oUtkHffEjuhbUAEcP+2TvhiHG5r1gBrU9
	PINM9uCZLbO+7Z0dOjRKobP6pG8Y3huob/RoCo9/GQJbiIhl//uoAnYVSfVJ+3kvVlkYdRuANhh
	xKR6YJc/LUvAPLdeJotgB3zIy9MKwI0ftYEzS/Npn90zRQf35WewQQNT50/I+JCDuzkX0b2fW8h
	JSpslZ8cjgqT9QKNV5Mt8k8EkZL2quwdw9Vp0vefdzh+CSCyARO/iX2uEAXSNGHSqwWWegmx3pH
	/gRUl9ifhXY5dODiAoPWtXhA6OTTYCx9fwIHMgpEY9bHZPhA+4KoObvMU7iZMfbXjVPCxjtKbDE
	6d6L9x5Wq74VBEvDursT7VLEeNvRpniOQ567yqUlqf+aQw1W7rcw==
X-Received: by 2002:a05:600d:6446:20b0:490:4ee0:82ff with SMTP id 5b1f17b1804b1-490ec4fe6ddmr11905945e9.27.1781249028985;
        Fri, 12 Jun 2026 00:23:48 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a54:e741:3a5a:3245:d3dc:4b5d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490ea963cf8sm28715245e9.2.2026.06.12.00.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:23:48 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/9] Input: cap11xx - add reset gpio support
Date: Fri, 12 Jun 2026 15:22:12 +0800
Message-ID: <20260612072237.1177304-7-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260612072237.1177304-1-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-310724-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jerrysteve1101@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,zonque.org:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CC5167735D

Some CAP11xx devices (CAP1126/CAP1188) have a dedicated RESET pin.
Add hardware reset operation to improve device reliability and
ensure proper initialization on probe.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 drivers/input/keyboard/cap11xx.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/cap11xx.c
index 686174722204..75746a8a2233 100644
--- a/drivers/input/keyboard/cap11xx.c
+++ b/drivers/input/keyboard/cap11xx.c
@@ -5,6 +5,7 @@
  * (c) 2014 Daniel Mack <linux@zonque.org>
  */
 
+#include <linux/delay.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/interrupt.h>
@@ -43,6 +44,9 @@
 
 #define CAP11XX_MANUFACTURER_ID	0x5d
 
+#define CAP11XX_T_RST_FILT_MIN_US	10000
+#define CAP11XX_T_RST_ON_MIN_MS	400
+
 #ifdef CONFIG_LEDS_CLASS
 struct cap11xx_led {
 	struct cap11xx_priv *priv;
@@ -55,6 +59,7 @@ struct cap11xx_priv {
 	struct regmap *regmap;
 	struct device *dev;
 	struct input_dev *idev;
+	struct gpio_desc *reset_gpio;
 	const struct cap11xx_hw_model *model;
 
 	struct cap11xx_led *leds;
@@ -452,6 +457,17 @@ static int cap11xx_i2c_probe(struct i2c_client *i2c_client)
 	if (IS_ERR(priv->regmap))
 		return PTR_ERR(priv->regmap);
 
+	priv->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(priv->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
+				     "Failed to get 'reset' GPIO\n");
+	if (priv->reset_gpio) {
+		gpiod_set_value_cansleep(priv->reset_gpio, 1);
+		usleep_range(CAP11XX_T_RST_FILT_MIN_US, CAP11XX_T_RST_FILT_MIN_US * 2);
+		gpiod_set_value_cansleep(priv->reset_gpio, 0);
+		msleep(CAP11XX_T_RST_ON_MIN_MS);
+	}
+
 	error = regmap_read(priv->regmap, CAP11XX_REG_PRODUCT_ID, &val);
 	if (error)
 		return dev_err_probe(dev, error, "Failed to read product ID\n");
-- 
2.54.0


