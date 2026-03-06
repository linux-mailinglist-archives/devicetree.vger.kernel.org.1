Return-Path: <devicetree+bounces-272023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFxHBia5qmlpVwEAu9opvQ
	(envelope-from <devicetree+bounces-272023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:23:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FD521F9B0
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:23:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6738230F60D8
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 11:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BECA35D5E2;
	Fri,  6 Mar 2026 11:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K8rc6HT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AE5322C88
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 11:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772795997; cv=none; b=Kw1q+7DBbiRk41dXOuLYIEzRSPTJ+9mRr8sB5e2cWoTcYRmSuUPiXufaDUVV8ZOiEeSP3TzMIINyW2ra1Q1Sm7UC1CSkcdK4C7R0NN13c3SXlT2/X+w0pckFX72T2Ni5BL6ShkJxC/awVXhdC69y0tlz4i9hussNM1y29u1wzMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772795997; c=relaxed/simple;
	bh=V6xmUDir/R+x5NzOf9HEQbv1gktAL/EV06jQVrAxMpg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sjArkg3Wzci00FThANh7+S5cKmYOsj707BIaoGmHaYGp6KVnDeAebGc3Fftzy7v4+1WsQOnxzJBbiABmXH2iQgiG1tMGaHiHawq7lJITzFNqPFKLFM0uxhasailNtEZtlFhPFsXcdI83TgwBdrTLvdvMkIeGlRsWPs9wZ0Uny3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K8rc6HT6; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c73967cf77aso553253a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 03:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772795995; x=1773400795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bc6w9WjyVAm0N3akeFsUfvW+uoclYZdQN8UKYjlEZaY=;
        b=K8rc6HT6D/oqkUtV1Lz1Y9vRaNDK69XkPiO+ynVE9jrrWkBy/vqdzq2IxOV/1zQWh1
         4HA0Ur3XVKoQJBMDYtAspP+e/8mPCt4a6elnlf8QF7ifYDZ4Ert1o5V+uDd5bRBt74uY
         m4g+DC22nPUh6toYCM5WdwCc+AGg8tOjDOzvZa2suVxSv6nhyhWQ9vsKx7lzOo0RQM8K
         XHHO1VVHOezgwBfS8GoeKxt61xG7VSYjfksTOJjj7AyT7h9IwvqF/aagxirW4mPd34dK
         9DlSMj0xrBCb+jHxsOQ9jhRMKG6jMUAi7Gk99bMV4UDydUs6x6cdE3aQF06ZmagaNZVI
         pf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772795995; x=1773400795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bc6w9WjyVAm0N3akeFsUfvW+uoclYZdQN8UKYjlEZaY=;
        b=GPeO2TJdRBNe0ElaT7d0Qs3CPXSGWXjjB3glK+Nc2tLe6MotgV8b3Z8PbxF90zo7sw
         Jc2rqLOdUb0eE6KGYPE9adW/4inFGPWajyJdx48UFv4jmUc5OVbW+DT+tkOCg1N81jIS
         sTEyTaz3YtivornHoPK/R6tLjijAgl0YukvErgDtFynUxGT+GxAYxsGMxoaRX1rVzmz8
         FT0dPK+CRKh8TbWVd9JbEoVCxmi1UF7U3Bl2Pj9uLT4FKA5+/u8PCXdH1NNttoJBvNdw
         pwd37PCnvwalehVglA88fxaVJHFbiBr5eJ1gk4gfXcOTRwSYi6mUewZHm3FfIJKXNNDZ
         HyaQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1+x8NcMC5k4Lj7jbpreQDZ4YNaFX0Cdym5B7O+GTDIIMWZflQwIm5Ifkm/o+EcMgElLS/eWesa/jA@vger.kernel.org
X-Gm-Message-State: AOJu0YzywbXyhUm8sZZ/tZ+I6jCYv5B+gjSCdAvYyoeoMfaRMrt/ppgz
	0FMlWd3JNzlptH9fqBVC8zX1xZtbWjmijuYOVhANzGri/LA0y7MEFj4h
X-Gm-Gg: ATEYQzzVT34C/L17mUSHrliUr7au/IT0UBBd7YeCqvOLYmzkGTCqijZ3RIE7aH/kjij
	tPa3KVPjDzS4gRNMwD7G21UJpFAmXshXSfBNRnkoxshNb2f0NIlB+133iwTZWpZ4++dwMWbwhT3
	ZoqXqKAGuMF0ZmRe0cTUetiti3hhz7DDu+gpZkJlhimMMxAa4yTMjrELzRpCt3mkPMPLus7VbHk
	15jzIuUvVj5Z9jMalmeFwUQjjxwIgW7XDccWnoTQK30MlcgplB823HupPIqhNOSUeTVjRZJ6/EZ
	U1tt7DPwGl3lprdugBulZ07nv3mrHmlTu5QALTJiyGWel+yoXtVvPrZLSUNWavae1VH+zOX3a+A
	3wBAvWQaIDCgvJHs7XPelI+TKyhAAofGH1YwA+QTbNLbIR/U71gGV3Odj/ZECmCFCc2QJYAKwOU
	7dEzidawvLNAA5K3hj6R7P/fMuQD1kWIsqqnhDIJh7Aq1JIu9+q+jaDhUaMQ==
X-Received: by 2002:a05:6a20:db95:b0:38b:e68f:4645 with SMTP id adf61e73a8af0-39858fda379mr2232375637.24.1772795995243;
        Fri, 06 Mar 2026 03:19:55 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4636cfbsm1475973b3a.13.2026.03.06.03.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 03:19:54 -0800 (PST)
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
Subject: [PATCH v3 3/3] input: touchscreen: st1232: add system wakeup support
Date: Fri,  6 Mar 2026 18:19:12 +0700
Message-ID: <20260306111912.58388-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306111912.58388-1-phucduc.bui@gmail.com>
References: <20260306104025.43970-1-phucduc.bui@gmail.com>
 <20260306111912.58388-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 72FD521F9B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272023-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,sang-engineering.com,labundy.com,wolfvision.net,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The ST1232 touchscreen controller can generate an interrupt when the
panel is touched, which may be used as a wakeup source for the system.

Add support for system wakeup by initializing the device wakeup
capability in probe() based on the "wakeup-source" device property.
When wakeup is enabled, the driver enables IRQ wake during suspend
so that touch events can wake the system.

If wakeup is not enabled, the driver retains the existing behavior of
disabling the IRQ and powering down the controller during suspend.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
Changes in v3:
 - Remove debug dev_info() messages to clean up the code and comply with
   upstream coding standards.

 drivers/input/touchscreen/st1232.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/input/touchscreen/st1232.c b/drivers/input/touchscreen/st1232.c
index 9b3901eec0a5..8fce17d8bdc0 100644
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
 
@@ -364,10 +370,12 @@ static int st1232_ts_suspend(struct device *dev)
 	struct i2c_client *client = to_i2c_client(dev);
 	struct st1232_ts_data *ts = i2c_get_clientdata(client);
 
-	disable_irq(client->irq);
-
-	if (!device_may_wakeup(&client->dev))
+	if (device_may_wakeup(dev)) {
+		enable_irq_wake(client->irq);
+	} else {
+		disable_irq(client->irq);
 		st1232_ts_power(ts, false);
+	}
 
 	return 0;
 }
@@ -377,10 +385,12 @@ static int st1232_ts_resume(struct device *dev)
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


