Return-Path: <devicetree+bounces-274551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEaON5WpsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:55:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B4E27152F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BB7C311358E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5DD3A380D;
	Thu, 12 Mar 2026 11:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OT+8NL6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76DE39BFE7
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316404; cv=none; b=UWPxnm5VnO0xl8Bh49ufUctw79Lv+T4AHP6c9qDZE1u9Q3cWXkYPGNOBuJSEGptj7u1kwlHHOeKFWXyT6iqL0dexeBdl4Cxc5Y1aKi8wOniGpt+kVy/dVC2PnsuM0yuFo5prh6MX7NtYzPi93JlDjz3vRCBZEFcAvsG+hD6jPOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316404; c=relaxed/simple;
	bh=8Xyy00oxH9BoglqKEOMhdKaA9OWY9AsQ82hA9RGRF9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DoJuws6qbZzpdmPyE6U7u3okfcYTYyfPson8BNZVOB1BegCGk4S+bXnsy+0W+9KaDHjbSSJWtiVTt1ypmK6JAJrl3LarZXOYOZ40E/o51Cgg4ojgESaWuaQ/FxRgxGOgNON+HtxwQ31FTwsuCM0HVsO+viZqBnxJg3ieeDOeyOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OT+8NL6Q; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852f73d0a3so8539385e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773316401; x=1773921201; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ksNpMcFOkdRuvwTL39BI4yY5vtgJD4Unsj/0RB7GtmA=;
        b=OT+8NL6Q+xa9qHCGj2CVJkyOoECqJ1v9JHMe8rCzCj5LCZih+hJlyYbntbXByED7nE
         C//0CInB9fYLGmnx12w+C1dSKVGW8/0XzJ4vb5dO8c2XilB4SV6C3J9pvWXRJvQJsXgk
         SaDoyC68C7wOAbLbDfXQ+GrlZUP5y/kqvRqI3q8yFlnD1KZ0ZfaVspztCJyPGXUfKzR8
         MWt+cQFFEFCkZg5txBi45OKQMhbSyUTuW9kthysNYCiZZFVbZsX5mtsC5TcbccJY0Pod
         bDo0viXRzkYjnmQBNchN6r/yQrqNdR/fyka2UrAadBl4zMvZ5eh6t8urKVPn0X2XWZFQ
         A41g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316401; x=1773921201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ksNpMcFOkdRuvwTL39BI4yY5vtgJD4Unsj/0RB7GtmA=;
        b=cgoR0xobVes53Vav4ghFZ1z/S/zCi6ZwdWSy1eXJV8d5+Rh6jbECd6fBa5Gfvpcxsy
         gD2Ku9unF/Ck9rh7IGOUl2PpC1FI7AN8ergLtX9vTVIvyayW6cgPHhJk1H785jDIz8hV
         560c4clXUmY8GA9uo+lE0whs98h0znMsAM3D5Vts0q0quYn2dpDwu6x2kU2ZbDXQEwYT
         sHDdGX+bUY0jesnYp7lW7OnKgbRBPNGrsBKWkgKDprzVulfWoNJGRR6DyV7q22atXzAU
         bt51evP98gKkJTqdvxZArIZ16b/jQc/EGl7DZR7O98LdKT6CKH60leM2qfAv+9Uf+S4a
         dqig==
X-Forwarded-Encrypted: i=1; AJvYcCU0qIejRJI+LrNK7qJQ4N9exQuHIYE63tu24IWhqwFWnWt+nGd51CL13saM/vp/Cvt54CIHs9G2ufyM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk2yGmATXm4Tabun8U3PjqqYs2Xt3AlXsBVMwyoJQ+bWcFmnN2
	9+8PNwzFjNqAmNjadbBhWh6weDlgqrnaPtSjUCOaendG+Ob/iCcw+lQT
X-Gm-Gg: ATEYQzxz/VSMBpaJNc0qf4G6K4wJ/K/BZbvPBtbS7Mn5C4iI3msY2g72LU2yB4Wgpt9
	at14p90/9zYIn7xzShxG5lnfuhmHfPu9myNP6Ul8nazEZkzxabMmY1NzE4oOfiFZCxPHNk3Qut8
	VQkzqFazLrDCDH6k3T7Wz5Up5QFCI8m0nNsiRam2ocJ3YAQ7vzSY79RnCLwVAOPKrgdcGssDbam
	DGmcMGIIMGxPsRwPM/5AVrOLVY0H5qLzWvJ+mv1CFb7/1lHdc1GzGLZ1RspbCXK+uKO3dba7n+7
	wWmwlaHe2sUvEViki5Njiy4I6KDc5Jtlxk1xAVCTqOZgpkjD//LT0Cny24OE93LBeImvLM2PMqB
	Ya+ff12gfY0vOTAiLuyt/D9GJBZRpZXbdcmlMsyGiOMq+G9/NSVJsH2IWFY7FB/3yNbbQN4FSHl
	b11JLhppUKP9rX7GVPpHEBzaFyMw==
X-Received: by 2002:a05:600c:630f:b0:480:4ae2:def1 with SMTP id 5b1f17b1804b1-4854b0c7c1cmr116758785e9.13.1773316401185;
        Thu, 12 Mar 2026 04:53:21 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22529csm7044960f8f.31.2026.03.12.04.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:53:20 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 12 Mar 2026 13:53:13 +0200
Subject: [PATCH v2 2/3] iio: light: vcnl4000: add support for regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-vcnl4000-regulators-v2-2-2bdebbcbb58a@gmail.com>
References: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
In-Reply-To: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274551-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: 54B4E27152F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add supply, I2C and cathode voltage regulators to the sensor and enable
them. This keeps the sensor powered on even after its only supply shared
by another device shuts down.
This bug was reported outside of LKML, so no Closes: tag can be
attached.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 drivers/iio/light/vcnl4000.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 5e03c3d8874b..04bde498aec4 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -18,12 +18,13 @@
  */
 
 #include <linux/bitfield.h>
-#include <linux/module.h>
-#include <linux/i2c.h>
-#include <linux/err.h>
 #include <linux/delay.h>
-#include <linux/pm_runtime.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
 #include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>
@@ -1983,6 +1984,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const char * const regulator_names[] = { "vdd", "vddio", "vled" };
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
 	int ret;
@@ -1997,6 +1999,12 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
+	ret = devm_regulator_bulk_get_enable(&client->dev,
+				      ARRAY_SIZE(regulator_names),
+				      regulator_names);
+	if (ret < 0)
+		return ret;
+
 	mutex_init(&data->vcnl4000_lock);
 
 	ret = data->chip_spec->init(data);

-- 
2.53.0


