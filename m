Return-Path: <devicetree+bounces-271996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oADbEKCvqmm6VQEAu9opvQ
	(envelope-from <devicetree+bounces-271996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:42:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B27EF21F06C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:42:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9233C305289F
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8DA537B014;
	Fri,  6 Mar 2026 10:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BLgPePDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806AF35B642
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793679; cv=none; b=N/0odeag40nIPto/IRzdFjiyK8T2TD/NC2ki6EOqjtMd+ubn7ZolE8lmU6PskL6VjL5/80BFKLgkrN1/Ss1o7CSNtmRUfWzy/FhwQKEcNO8q2MJG6C0ORddKSP9bahfG9rKzodYp5+VLVFAFhVCwS7Rt66u3tS7huW0wkXMmffQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793679; c=relaxed/simple;
	bh=j89JCgy6of4V0fq9wi2FeaIYUxjh/hwtijKH+XS9D/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gW71ZsMCvL1oJpSb3u2CRA7hOCdxmGktU8KZ08ZflElqv31+kmvg8e+cNncfC6SCphL+c2X56BeCe33jDCSvGrwlIiWHIf8aX/Tvs8yzDiASCEnJevchr1yZbtnc9pZ0BiHhpPmmhWoQcdoYlRabXBN1GL06sY/qhsE7hngN1xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BLgPePDX; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c73a12af63cso72506a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772793678; x=1773398478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ofKRD1G9zZU7DDlNqf7frnTT5WNqLPVC7ZVN1jMSp0g=;
        b=BLgPePDXuKu37KhR8u6XOcnIyL1ATgnpl2Ws//xghr0k3x9qSn0JB2C8TBnkTa+7D3
         Lncf6uG3nqjDut5TrynrpB/dP0zdot6EBW6a+bbnSXI204ocWfDa/bI9PRnPsdorZ7ER
         /tilVGqhd4Q34fR18eunXjhY7AIUvSFSE+XB6WDobED0jA6HkDE72Up+ok068kD3DZoB
         yZeC0g5ZtjNS1boTpD/t1FgqTTVRG69Es6ET7FJaw0aSKp6O6Nf6pStbTGRUDrFMTM2y
         Gk3yxD2arhGhTqOqjvNTxu4P7W7tPcH9LtdXJgYMtqIcta4OXB86lm21F/Fn2duVIVKV
         ZtYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793678; x=1773398478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ofKRD1G9zZU7DDlNqf7frnTT5WNqLPVC7ZVN1jMSp0g=;
        b=LSVEzejo4hOb9cRm6kzyGj7SJ/chww9JeybWxlGzBf/W7eNwO95ReidviApdNLuni6
         156sUT2wl/KYUydiU4Ac4mwY6weqdFVBg7aeCAVofX0U0+SYRC24BiCuzEbIKuCiUlky
         iI39MBnyIDuP5X2lvO29YL9jdgU7EXAq96Hkcb13MEQfSx9G4tZCnT7FSkOQcghmtQmi
         JQ4leVG71wdX4QvWkqsfu1XImlh17PzymEweDI94T4+QyriYU4Zu70nZ1uqo8rc5A0ZU
         wXTe5vFNWsKGYExqSvX4pIZPi483r0zHAi1qzvzsfDtPqVC5F+2Gt2B5MyGIlkuoeXEI
         GEew==
X-Forwarded-Encrypted: i=1; AJvYcCXRGmk2klclG2aeSrjHwzDP4koBZg6WDKxI7U54v1bDc3At6fuzS4Ogo/eD14aAKOOhTVqh3aGFzlyk@vger.kernel.org
X-Gm-Message-State: AOJu0YyRxQblaJNC2uwgg5zCvo2Z5KM/6gX3bnnAX78smA2/XXHdpnVX
	+B9CC+8ttCl9Y0KQphRPOhpRmpG6iYOLM098w7pVAPvVcs8+AkfhbhUF
X-Gm-Gg: ATEYQzwWOZV/RRqGpW/aKMR1vKXV5Tx7K4mh3f+x74xGzUd84/LxQhKe5WfO18cLcEM
	gMi0hhHy3lFK306hkfDVMgooehaO+kuqcPxwS2YnXsDfEZJpQbkIc0VInsmlTYwBJFByQhdRxDO
	e5QDb0kQVWYK8vbmRqKtGgdkvi8E8Jbp5CBxhSGoIrZfi9gFmsC3krocPYpofOkmdL7CAhAlB5e
	HHjI86O7OpvZJcPw/Io/gVZ8wAujt2oeWu9zVvKG+KOCnGVH4uIsOIv9qSiKusqNgxzpA7tu1lX
	m0zes6/+4sUaiGxrKq9OuR0OedVTMzTlJDh5X8P3lJ48RSB/GxMJe5GqLhbvZptFOFUCLUlWgK+
	0WXqtFwD8HxvgUC0rzFrX5iWRnHJiPkae07EdvWyfvRgdSmlFp90T3pW3CUoYu/kdzhLHLDEy0e
	ws04UmSpEHfd46vBuElrfrEfOYQrd8QPXv7n5AFj1rn5WfMViFIlQNYXW3bw==
X-Received: by 2002:a17:902:c401:b0:2ae:4f15:1aba with SMTP id d9443c01a7336-2ae82443f7cmr19874155ad.30.1772793677800;
        Fri, 06 Mar 2026 02:41:17 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83fa2fa5sm16107775ad.70.2026.03.06.02.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:41:17 -0800 (PST)
From: phucduc.bui@gmail.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Jeff LaBundy <jeff@labundy.com>,
	Bastian Hecht <hechtb@gmail.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 3/3] input: touchscreen: st1232: add system wakeup support
Date: Fri,  6 Mar 2026 17:40:25 +0700
Message-ID: <20260306104025.43970-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306104025.43970-1-phucduc.bui@gmail.com>
References: <20260305113512.227269-1-phucduc.bui@gmail.com>
 <20260306104025.43970-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B27EF21F06C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271996-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,sang-engineering.com,labundy.com,wolfvision.net,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The ST1232 touchscreen controller can generate an interrupt when the
panel is touched, which may be used as a wakeup source for the system.

Add support for system wakeup by initializing the device wakeup
capability in probe() based on the "wakeup-source" device property.
When wakeup is enabled, the driver enables IRQ wake during suspend
so that touch events can wake the system.

Additionally, report wakeup events from the interrupt handler when
the device is allowed to wake the system. This allows the PM core to
track touch-generated wakeup events and helps avoid potential races
with system suspend.

If wakeup is not enabled, the driver retains the existing behavior of
disabling the IRQ and powering down the controller during suspend.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 drivers/input/touchscreen/st1232.c | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/input/touchscreen/st1232.c b/drivers/input/touchscreen/st1232.c
index 9b3901eec0a5..2bab06cf099b 100644
--- a/drivers/input/touchscreen/st1232.c
+++ b/drivers/input/touchscreen/st1232.c
@@ -183,6 +183,9 @@ static irqreturn_t st1232_ts_irq_handler(int irq, void *dev_id)
 	int count;
 	int error;
 
+	if (device_may_wakeup(&ts->client->dev))
+		pm_wakeup_event(&ts->client->dev, 0);
+
 	error = st1232_ts_read_data(ts, REG_XY_COORDINATES, ts->read_buf_len);
 	if (error)
 		goto out;
@@ -356,6 +359,9 @@ static int st1232_ts_probe(struct i2c_client *client)
 
 	i2c_set_clientdata(client, ts);
 
+	device_init_wakeup(&client->dev,
+			device_property_read_bool(&client->dev, "wakeup-source"));
+
 	return 0;
 }
 
@@ -363,11 +369,20 @@ static int st1232_ts_suspend(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct st1232_ts_data *ts = i2c_get_clientdata(client);
+	int ret;
 
-	disable_irq(client->irq);
+	dev_info(dev, "st1232: suspend called\n");
+	dev_info(dev, "st1232: irq=%d wakeup=%d\n", client->irq, device_may_wakeup(dev));
 
-	if (!device_may_wakeup(&client->dev))
+	if (device_may_wakeup(dev)) {
+		ret = enable_irq_wake(client->irq);
+		dev_info(dev, "st1232: Supend use wakeup\n");
+		dev_info(dev, "enable_irq_wake ret=%d\n", ret);
+	} else {
+		dev_info(dev, "st1232: Suspend Don't use wakeup\n");
+		disable_irq(client->irq);
 		st1232_ts_power(ts, false);
+	}
 
 	return 0;
 }
@@ -377,10 +392,12 @@ static int st1232_ts_resume(struct device *dev)
 	struct i2c_client *client = to_i2c_client(dev);
 	struct st1232_ts_data *ts = i2c_get_clientdata(client);
 
-	if (!device_may_wakeup(&client->dev))
+	if (device_may_wakeup(dev)) {
+		disable_irq_wake(client->irq);
+	} else {
 		st1232_ts_power(ts, true);
-
-	enable_irq(client->irq);
+		enable_irq(client->irq);
+	}
 
 	return 0;
 }
-- 
2.43.0


