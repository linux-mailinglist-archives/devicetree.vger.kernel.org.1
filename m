Return-Path: <devicetree+bounces-277294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF53OFG4umlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:36:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B882BD3D4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:36:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 840D8300DCC4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA70F3DEAF6;
	Wed, 18 Mar 2026 14:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="Pjpra7Of"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9973DEACF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844406; cv=none; b=dmlxrFX5IL+g4304OyvA1nrVAlaBuQIWErI6KtwHmwWlfZoS2mEnfb+j34pMCPMKMMmLQ2buOggiuwZQBQUQzhU64A2A4QAjgIj8fkuDQH0FifbzLvEsPTnvXNPvQHQgJybQcxShOPvKDbcmSzzjRqDUz3hi5n5rZ4g+oRh5krk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844406; c=relaxed/simple;
	bh=qSIoqe1rCM98pYxPjvfzxpcj4EO8iAA2yOd3l9ZnBNY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TdVrUeUMxZ7HEnbGqybNMSWHs+P4wdWGklHgKZjRxEBmLCe+MAFapm4LlYf7K+KIb1L9iN8R7sObfIMo7CB5xEx4uy8fc6Mthv8/j97TOg4qzfCln7PLOn0/fIwaUNyFUMmYedpUlE7kCrifAa6KUlUftEZf082+nxA0Te2hv/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=Pjpra7Of; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso77943865e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773844403; x=1774449203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1QFYrzbzDmyd8ewHMMN3Hovj77cWoAajjF/dHg7uJs=;
        b=Pjpra7OfzTzWpcbxrCJaqgs07DRByztlLJFK6htNWU+bCyZWHot+TWc1NRPQbtPM1M
         rLKgSmHvwXFehTFMfbiKkrD+YOwtKmSSKuGBJVBjJUOZw/fIPcJALqvR7iG5oREHLwcq
         UD7Upi6CWmCPrHA7zx8KF05OVk0zzmfL0gyrX4vp4saFdyghcC1EQlaFXpu3U0g3X6qd
         jcCSvMSzTlPp0gufoUF9ma6hwFWgmZFX7QFPIkaE0qAR6qtjr4SimiVJ9MdTQsoluslr
         Z1GLqunH6Zo4WUC1y1OxmYKl2R+i8eV6YMEqiKgXhw3OcZeHgkrEKIrtJ2SjGwJrJwYs
         8AwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844403; x=1774449203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D1QFYrzbzDmyd8ewHMMN3Hovj77cWoAajjF/dHg7uJs=;
        b=kZouAFt9/GGdTYLzbR8QIyHeFjO+uX3TvwA85H3kheposWnwo9qjhWiosJpSi/t6v9
         TCwiY69MIIrGXiq/aWuMfFBByoa8EFgDv93yS1nuWFM8PxH09mj3ctqzJZkxpFh5qS9L
         mcO/zcWTPmOr+szj4BE04AglTQ1qZASvJccDPBqvrwj6d7IUbIfX3+HnYSJfT64Y2I43
         RIlQKmvZxjzDNd/9XOqvO6ModX/7XzDgTUmly5pyxxyJL6m0yFenO+vUZwXXpXXJn9bJ
         HOvFK3BO8CVFU5i4jfk27uxXLDMKuVjYOXeqy52L5rH78qs+yIC09g5shqUkk728fNHG
         rpxw==
X-Forwarded-Encrypted: i=1; AJvYcCW/qz2x4NCg9bfRF5wJ2zrDmkndLxMK13WK4T8Ww8JGzeAcRlBUTuYz+XgZnsOkqNIgsonPYAr/l3l0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0YHJl0Jgn9ojP6smJWfkAT0K0ZuzdHDpchL+ppVnOorJHo1RO
	LPczOzd6+L4VRjalJi2tO+0r26jzHaVK76jNrUoRcw8z6qt4sjoyKi37EYcQDhZYj3c=
X-Gm-Gg: ATEYQzwBqeApIvbGtSqzKd63ZfMA2H59zXidSSlW7LcQ9EOx7Y81R1A+T+FQv5o4hC7
	h2JCYoWWOFwLmTP30+ddvlL0vsMPERQzKHFXy5iLrOreCvRzLZUv40bWZj8bK45xAnRV/POWOA0
	9lhsyiRrq4S5XDEyGFcep/d2sSwQFi2rthzMMyRq9vYPlbZc3lF5dmmryguEG17ovwyroHpVmAq
	+TWXUrtNACre1Uk3L8OgrQanDm8alGAfaeNWk0E2jyMdJPiyeG1xSwBAKuMNm4rmx44qTFHFWfE
	XrZvDJ1etQ46HarPL4BVJKv/dxit9kS+Vx4Z+23Zydkw8TGQXKBd2hadrvDUxaNphoz+iHROPhS
	daheoQ/Si34NwIRmyQoPWWutwuDmhNmpWnkq5Yut29Sn2nUoqPve8mqrdQs5FzOfofYMmvzo+Hq
	mRzHzQ1mh9RlDBNgNhIxBvH1cYoNNrCjNdA/8WEpeRQ4itdsayR9On4yQYZVyB7AWg51gHpv37M
	SDQeA==
X-Received: by 2002:a05:600c:8484:b0:485:35a4:939c with SMTP id 5b1f17b1804b1-486f4476c41mr61407685e9.29.1773844402828;
        Wed, 18 Mar 2026 07:33:22 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm270642085e9.3.2026.03.18.07.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:33:22 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 18:32:56 +0400
Subject: [PATCH v4 4/4] usb: typec: tcpci_rt1711h: Drop unnecessary
 VID/PID/DID checks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-husb311-v4-4-69e029255430@flipper.net>
References: <20260318-husb311-v4-0-69e029255430@flipper.net>
In-Reply-To: <20260318-husb311-v4-0-69e029255430@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3831; i=alchark@flipper.net;
 h=from:subject:message-id; bh=qSIoqe1rCM98pYxPjvfzxpcj4EO8iAA2yOd3l9ZnBNY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTu2r6EhS9H+IT/RWf5yla7/yWBwjP+XWvJzfjq9eLc1
 6SH07IudExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVXtWMDKfaFCd8FpDq5AlsWHTjbmrM9maTVRGNL2VFuv0+rPp94hojw9Og62Z
 rXFvMkxXKxCfuPsVnt+BG+NHZP3OvPQvm2ODowgIA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277294-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Queue-Id: 84B882BD3D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Existing checks for VID/PID/DID in the driver are redundant since the
driver is already matched to the device via I2C device ID and OF
compatible strings, and they preclude the use of fallback compatibles.

Remove them to make the driver slimmer and adding new clones easier.

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/usb/typec/tcpm/tcpci_rt1711h.c | 59 ++--------------------------------
 1 file changed, 2 insertions(+), 57 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpci_rt1711h.c b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
index 37cf55ad74f8..4b3e4e22a82e 100644
--- a/drivers/usb/typec/tcpm/tcpci_rt1711h.c
+++ b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
@@ -18,13 +18,6 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
-#define RT1711H_VID		0x29CF
-#define ET7304_VID		0x6DCF
-#define RT1711H_PID		0x1711
-#define RT1711H_DID		0x2171
-#define RT1715_DID		0x2173
-#define ET7304_DID		0x2173
-
 #define RT1711H_PHYCTRL1	0x80
 #define RT1711H_PHYCTRL2	0x81
 
@@ -57,8 +50,6 @@
 
 struct rt1711h_chip_info {
 	u32 rxdz_sel;
-	u16 vid;
-	u16 did;
 	bool enable_pd30_extended_message;
 };
 
@@ -304,35 +295,6 @@ static int rt1711h_sw_reset(struct rt1711h_chip *chip)
 	return 0;
 }
 
-static int rt1711h_check_revision(struct i2c_client *i2c, struct rt1711h_chip *chip)
-{
-	int ret;
-
-	ret = i2c_smbus_read_word_data(i2c, TCPC_VENDOR_ID);
-	if (ret < 0)
-		return ret;
-	if (ret != chip->info->vid) {
-		dev_err(&i2c->dev, "vid is not correct, 0x%04x\n", ret);
-		return -ENODEV;
-	}
-	ret = i2c_smbus_read_word_data(i2c, TCPC_PRODUCT_ID);
-	if (ret < 0)
-		return ret;
-	if (ret != RT1711H_PID) {
-		dev_err(&i2c->dev, "pid is not correct, 0x%04x\n", ret);
-		return -ENODEV;
-	}
-	ret = i2c_smbus_read_word_data(i2c, TCPC_BCD_DEV);
-	if (ret < 0)
-		return ret;
-	if (ret != chip->info->did) {
-		dev_err(&i2c->dev, "did is not correct, 0x%04x\n", ret);
-		return -ENODEV;
-	}
-	dev_dbg(&i2c->dev, "did is 0x%04x\n", ret);
-	return ret;
-}
-
 static int rt1711h_probe(struct i2c_client *client)
 {
 	int ret;
@@ -349,12 +311,6 @@ static int rt1711h_probe(struct i2c_client *client)
 
 	chip->info = i2c_get_match_data(client);
 
-	ret = rt1711h_check_revision(client, chip);
-	if (ret < 0) {
-		dev_err(&client->dev, "check vid/pid fail\n");
-		return ret;
-	}
-
 	chip->data.regmap = devm_regmap_init_i2c(client,
 						 &rt1711h_regmap_config);
 	if (IS_ERR(chip->data.regmap))
@@ -408,27 +364,16 @@ static void rt1711h_remove(struct i2c_client *client)
 	tcpci_unregister_port(chip->tcpci);
 }
 
-static const struct rt1711h_chip_info et7304 = {
-	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
-	.vid = ET7304_VID,
-	.did = ET7304_DID,
-	.enable_pd30_extended_message = true,
-};
-
 static const struct rt1711h_chip_info rt1711h = {
-	.vid = RT1711H_VID,
-	.did = RT1711H_DID,
 };
 
 static const struct rt1711h_chip_info rt1715 = {
 	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
-	.vid = RT1711H_VID,
-	.did = RT1715_DID,
 	.enable_pd30_extended_message = true,
 };
 
 static const struct i2c_device_id rt1711h_id[] = {
-	{ "et7304", (kernel_ulong_t)&et7304 },
+	{ "et7304", (kernel_ulong_t)&rt1715 },
 	{ "rt1711h", (kernel_ulong_t)&rt1711h },
 	{ "rt1715", (kernel_ulong_t)&rt1715 },
 	{}
@@ -436,7 +381,7 @@ static const struct i2c_device_id rt1711h_id[] = {
 MODULE_DEVICE_TABLE(i2c, rt1711h_id);
 
 static const struct of_device_id rt1711h_of_match[] = {
-	{ .compatible = "etekmicro,et7304", .data = &et7304 },
+	{ .compatible = "etekmicro,et7304", .data = &rt1715 },
 	{ .compatible = "richtek,rt1711h", .data = &rt1711h },
 	{ .compatible = "richtek,rt1715", .data = &rt1715 },
 	{}

-- 
2.52.0


