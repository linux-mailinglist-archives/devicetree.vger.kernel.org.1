Return-Path: <devicetree+bounces-311994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FogaClALMGqZMQUAu9opvQ
	(envelope-from <devicetree+bounces-311994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:25:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 885236871BE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:25:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VoGVhrvZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311994-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311994-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC9BA3084BB1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B843FC5C0;
	Mon, 15 Jun 2026 14:21:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E927F3FB7EE
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 14:21:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781533316; cv=none; b=goa/bP76QLKlM4CbdSDRjg/XSPBh0vNkcSE1u+niZNAToJq9cLf4ayxoBnkrYSikfAxp8b/lFDYRr/brYF4bGFnqX8D4it6HOebySVohYdreQ095WT+i7THdaXUSckWtkxLJUqKiGUX/hq34jIxjMsVbEWvTefkRed9lPbNhHRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781533316; c=relaxed/simple;
	bh=JaKHwhukICyH5dPZSOiKrpwwVlE7rxuBQiRWxR43VdE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DxTL6J/yQQe2L9mcY8Iwh/Y1Tx7k3tb9K6fhPo5aYcIFDAAMztWh0x5jucexJJI0GFHzaWLZgtMqi+n/vR7GkC1IpRLSeXhggQTp3nJe3WTNwyIa8KzPuF5PVE6b0aGo1bevXddXV8YviDegU3cNGIvdWY0mzjcwpTne0kUnE1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VoGVhrvZ; arc=none smtp.client-ip=209.85.216.47
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-36bcbd7821fso1714649a91.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 07:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781533308; x=1782138108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZ6t+vQ1N2wjeUqxYpz1OrcVr6JVQwoScA7P4UZko0E=;
        b=VoGVhrvZfDvC5KGlWPwO0TgoFGCOJFe1tf21RnZHlfHvWlLjS0Li1iYQU64z/aGrdG
         wylBqWAAac5EJgAImDScaj1lEIWt1L5d5kD5Ex9rliyvPWXTJjWG5H+zVsF4M4iuOM+N
         JH+Q4ghiFLNlxNZ9tOtNXH5WCb3qhox5sOhX3OMQgQYMzZJaYd8c/tktpHp7XckyfxkY
         t0U+AyOXqxyS27hV0l53yZY14Aw1m41QIgyBRN5qff0xQkUd8uAmlDdudtjH4oJCxEAT
         CBT3rL3X/9VG2OivaUypJ4i3YN4W7ICUEw2nZuYXIe0yXAgG2bjyZuPy8sBYwi2boA/C
         NRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781533308; x=1782138108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AZ6t+vQ1N2wjeUqxYpz1OrcVr6JVQwoScA7P4UZko0E=;
        b=hkiIwLDTWINTl64D9nW949eftmpv+jA3Bux8OMBctICOZibWADHVgemeizSqNZTuIo
         GUcSIi/s/VR296VSecqDYTVN0pjFyscsLgQiR18jpwEHPTHAhjT433eH6wqPjREXsNbV
         HGk3+5Mi9zHGgyeXsrIdPug6PoFLTQn7B4Wsnt6dFK/95dLc4qIg4jyYKdGGRidg4Jbd
         EdI/RVPfsEkHyaUtDvCVV+he8lBlVuDTfnFeOzVqI9qTt5UhekUktsm1qjKgOZ9UPaHi
         Ga46RHazuTha+myYUw6rZ2qCHt5Qw6KYFiWsO3QO6vg9l/0Du0/o4d70/Vrh1NzrfbwJ
         11WQ==
X-Forwarded-Encrypted: i=1; AFNElJ9w8GcZbn2vEHwy7xE5Jr9OdBS5Rxhwyxj2cjTCkalB21tU1KyoCQyQUFzkvbTD+ergCuitTrJXpe1h@vger.kernel.org
X-Gm-Message-State: AOJu0YzEnxcjWOH/3sp/txwj8Rtm5t8Jby86bUr7osNcb+PdUemYaPkM
	xvQN/WxEYjTTYbsbr1m74JZR/NFecpUwDnrFj0hoEzUcqqhFStPdS8pf
X-Gm-Gg: Acq92OEvyTihkvHzjunrX1LLkoUdVhdWYD/DhbrZ8XuuE/4yl14IuOJ/c/ciWvqcfKt
	wUK7aX+HbgwUV3PcFS18mnRKdNBAh6yW0cye3JquMwQJ1yHoUcGbPpziEMpuB8/yIgQDFKDLwHW
	alL0qyMWgMUmVVMDymyFsIOe0No5OH5XrBRnRmr94AXeYykuCnPYC3cS96SJSHdajTmX0uWO2aO
	jyWl43KyN3AtL1bYARD3zWg/a02V7R/ovgG1igHV6JdGbkTUFv1e/hFh8VmAuYmCb0/bbI8NHMm
	dhgKwmk4l4wvFKch0lJyfLpO0pOxFvuPnWoXHFB/ugLxRky6Rajx21StGy55EAiC+KiINWJZT9K
	WJa9KSo/cUiGj3XNUkSSXIe3jz7ae4h4XiF/osIeLsdZb6ipzNTDnKq48GHSWtqMPrM6ZCPS/+E
	e3savhuC95U2oFLC2Kr8LD
X-Received: by 2002:a17:90b:5806:b0:369:a9e8:dbf5 with SMTP id 98e67ed59e1d1-37a01e2f106mr15998613a91.3.1781533307961;
        Mon, 15 Jun 2026 07:21:47 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:c491::1002])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-379e8cc467csm7178233a91.2.2026.06.15.07.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 07:21:47 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/10] Input: cap11xx - add reset gpio support
Date: Mon, 15 Jun 2026 22:20:32 +0800
Message-ID: <20260615142103.352163-7-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260615142103.352163-1-jerrysteve1101@gmail.com>
References: <20260615142103.352163-1-jerrysteve1101@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-311994-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 885236871BE

Some CAP11xx devices (CAP1126/CAP1188) have a dedicated RESET pin.
Add hardware reset operation to improve device reliability and
ensure proper initialization on probe.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 drivers/input/keyboard/cap11xx.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/cap11xx.c
index 686174722204..3d75c0f90752 100644
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
+#define CAP11XX_T_RST_ON_MIN_MS		400
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
@@ -452,6 +457,16 @@ static int cap11xx_i2c_probe(struct i2c_client *i2c_client)
 	if (IS_ERR(priv->regmap))
 		return PTR_ERR(priv->regmap);
 
+	priv->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(priv->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
+				     "Failed to get 'reset' GPIO\n");
+	else if (priv->reset_gpio) {
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


