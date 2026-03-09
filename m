Return-Path: <devicetree+bounces-272847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIQqNpmormkFHQIAu9opvQ
	(envelope-from <devicetree+bounces-272847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:01:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B092377F2
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43085301022E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDD539449A;
	Mon,  9 Mar 2026 11:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="amjMW2xf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC3D394460
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054079; cv=none; b=On7uTYtoyCtOaT2KlM8bM3CU6Hvj+pIr56+hS3RMxkWW1ybbzZ3xi+7gSnKWrpG90PlRYr5iUoRp4fW+ky84vpY+o8b0gbmbt+7jDndGNU/538lPb9Ez/nnF1/0/aS3ly97nUXktMCpWNXweK3qES8KZ4LVV2EXh1gJz/KvgGrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054079; c=relaxed/simple;
	bh=M4dFRmrmPmhqXhKhFaGDOffAf2JzsWF1o/D8Jy2z8eM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YVYNdn+8MZLRfQf9kc3ADQbzZAukgpo/FljKIE9Tdb9UeE6DTG8AY/5jyJ/rHJGDiAi5ErSqw53L2CuRTNmTUgbbKo43mlUGm2vjy6yF7ITvct/dWHFdtPw8zctMeREWLHFby5HlFD/te+WuKdorbEuK2bpVcSXSPGeis2dD33A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=amjMW2xf; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-3598df39444so5004713a91.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773054076; x=1773658876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrsLA8b8vlkhz1DvrsNbbbbTjquCC3GRn0AkHrSsHTM=;
        b=amjMW2xfOCp3KzpmNL9W4+Y27T55Fq4Wee5NpsadSenhrmY2i49oYAEmk6ZoNu95h0
         W9F5HMQEyfPcUQcTR0dyqWfUTCXVBqtX7mxH9MOjiYfPmc+eqlqIXnGVBQryWCrG4siP
         PiC5sgPOfgqxEluXuBNs3Mc5EfBeK9701nHa2VW0PV75wotpjZlcFugsEwdyMIgpUz/D
         fhK9R3j+pIK0HqNvfC7YDXw3/re+Pnw+ozGwrPJ8qbOt4LUh+5f2LbWYaQAo75u1k+yE
         NN8UpKxGfnUzswspqGy5+a0ThZ88YyoW7fBEURsJkDnRuWF8P9Ny5DJeX8qhmdN2VvBo
         d5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773054076; x=1773658876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nrsLA8b8vlkhz1DvrsNbbbbTjquCC3GRn0AkHrSsHTM=;
        b=gxavhUFefr9REXzAuyTsoD0pc7TwjqagClBJQ0fbAWEoIZjVTC533uUzXNuspCylig
         VSh9/qS/SwnS/DnxrfoIDBI6U8chHxMwjODCZSOI4Jj+Eb2jh+7mtUI2VztykLQq4mjc
         zi9fMDDTmyGCeEM6xejEgXqvbvMG/pLWIyHmTo/2lMg0PUMfpQDYQnuSua7osaLj8Fo+
         OCD9GRI6Pb38146BCoY15TMmnbNS3NJ38gu602kh7cRfvT1N0glpw4hQowdhdGTsZr2A
         zcFZRT4VhnBmnjvcxg2EHD90qIAZhkPgkomDkk9zgIXh8rb0fQPW74LmFQVjvRmzveol
         v+jw==
X-Forwarded-Encrypted: i=1; AJvYcCW1k2Vo0GUCqDGqgnJUG8Gju9W5PnOKpszrGHruXJZyP+UdtcpeOHUVh0x9GcOamvlaSd6zk/qgNF3M@vger.kernel.org
X-Gm-Message-State: AOJu0YwnpOGVDH+U/EzlDr4UNT4OP5o1+lMwcIyKFK6fqFerot+450kp
	LRZZoZO9TuGtU/Ah1+UtF5K6QTBh4H6PlesGvGM5P0rB/lYIQ4RixEYL
X-Gm-Gg: ATEYQzzEHAb1tGnhgL0He/byMlwlVZldu/Uc7r3qydE07f2Rhlq0dZVD/mlncAG6oFK
	ABpvu4dm02GsK4AbJF6+y2cL9vVVR8deHI9gswXDj6FrIMkCmSq+/JG9Nvs9pPVLGdEdxuoKW0m
	/cpiqxWdxcVvqR4brU6LJmW/jWf884gHutuK1ZNQCZbmlL5vEtzYm3KSiaToCgBtQ4OaTsFWgEf
	1B+G+FrPJGBp/AKDQ4TO4kP7hKh259oOPSXe2UcyPWc5UuBhIaPQzJFcJx4CtApzVtz6tGok8Qa
	L5kVIkSAY44HWjPdd+wIU7pC3E+rg4Oj3yN8RPz+UQaaH9B1InVU+j/ukxovQKG5cAc1Yhal0Jn
	mngo9I78kyACB8e4jePxOj+uZ30xWPeYPVnUGlI83GO5tyU1EBqvk4yLVpCIx8mzl+HYOEO//ki
	YPsSl9eYKRywvkP6Iwbpbq/FzIpNchpl86BF9XfpGKtosQtY3PMXjABW8fyQ==
X-Received: by 2002:a17:90b:2884:b0:359:87ff:f352 with SMTP id 98e67ed59e1d1-359be250d8emr9942768a91.8.1773054076002;
        Mon, 09 Mar 2026 04:01:16 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bff279f4sm13268296a91.0.2026.03.09.04.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:01:15 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Michael Welling <mwelling@ieee.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH 2/2] Input: Touchscreen: tsc200x - delegate wakeup IRQ management to I2C core
Date: Mon,  9 Mar 2026 18:00:44 +0700
Message-ID: <20260309110045.108209-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260309110045.108209-1-phucduc.bui@gmail.com>
References: <20260309110045.108209-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E1B092377F2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272847-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,denx.de,ieee.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.991];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The tsc200x driver supports both I2C (tsc2004) and SPI (tsc2005)
 interfaces.
Currently, the driver attempts to manually manage the wakeup interrupt by
calling enable_irq_wake() and disable_irq_wake() during suspend and resume.

However, for I2C devices, the I2C core already automatically handles the
wakeup source initialization and IRQ management if the "wakeup-source"
property is present in the device tree. Manually managing it again in the
driver is redundant and can lead to unbalanced IRQ wake reference counts.

Clean up the wakeup IRQ handling by checking the bus type:
- For I2C (BUS_I2C): Rely entirely on the I2C core for wakeup management.
- For SPI (BUS_SPI): Explicitly call device_init_wakeup() in probe and
  manually manage enable/disable_irq_wake() during suspend/resume.

The ts->wake_irq_enabled flag is also updated accordingly to ensure the
driver accurately tracks the wakeup state across both buses.

Note: This patch is based on code analysis of the I2C subsystem and
has not been verified on actual hardware yet.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 drivers/input/touchscreen/tsc200x-core.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/input/touchscreen/tsc200x-core.c b/drivers/input/touchscreen/tsc200x-core.c
index eba53613b005..d14d967845c8 100644
--- a/drivers/input/touchscreen/tsc200x-core.c
+++ b/drivers/input/touchscreen/tsc200x-core.c
@@ -465,6 +465,7 @@ int tsc200x_probe(struct device *dev, int irq, const struct input_id *tsc_id,
 	ts->idev = input_dev;
 	ts->regmap = regmap;
 	ts->tsc200x_cmd = tsc200x_cmd;
+	ts->bustype = tsc_id->bustype;
 
 	error = device_property_read_u32(dev, "ti,x-plate-ohms", &x_plate_ohm);
 	ts->x_plate_ohm = error ? TSC200X_DEF_RESISTOR : x_plate_ohm;
@@ -547,8 +548,9 @@ int tsc200x_probe(struct device *dev, int irq, const struct input_id *tsc_id,
 		return error;
 	}
 
-	device_init_wakeup(dev,
-			   device_property_read_bool(dev, "wakeup-source"));
+	if (ts->bustype == BUS_SPI)
+		device_init_wakeup(dev,
+				 device_property_read_bool(dev, "wakeup-source"));
 
 	return 0;
 }
@@ -565,8 +567,13 @@ static int tsc200x_suspend(struct device *dev)
 
 	ts->suspended = true;
 
-	if (device_may_wakeup(dev))
-		ts->wake_irq_enabled = enable_irq_wake(ts->irq) == 0;
+	if (device_may_wakeup(dev)) {
+		if (ts->bustype == BUS_SPI)
+			ts->wake_irq_enabled = enable_irq_wake(ts->irq) == 0;
+		else
+			ts->wake_irq_enabled = true;
+	} else
+		ts->wake_irq_enabled = false;
 
 	return 0;
 }
@@ -578,7 +585,8 @@ static int tsc200x_resume(struct device *dev)
 	guard(mutex)(&ts->mutex);
 
 	if (ts->wake_irq_enabled) {
-		disable_irq_wake(ts->irq);
+		if (ts->bustype == BUS_SPI)
+			disable_irq_wake(ts->irq);
 		ts->wake_irq_enabled = false;
 	}
 
-- 
2.43.0


