Return-Path: <devicetree+bounces-277719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE84EW3cu2n2pAIAu9opvQ
	(envelope-from <devicetree+bounces-277719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:22:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 435462CA3B6
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D108D3033E27
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876EB3CCA1C;
	Thu, 19 Mar 2026 11:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N912/xRI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4883CCA12
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919231; cv=none; b=gx2CyLx8PSMoWXWTzD7O91dXctS8hYteo7HRz4lChN23ZkY+sucYUfAtQGzTuRc400AiqcgGTnyhwtj62+k2mcc/LwOkn7eROwZj8sqJCGzTjmrxAw1FGwFQu5CP16pV3jciLwr9Bz4WLvNtCRr6NxN+bVwRifDAzMYtfLT9rLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919231; c=relaxed/simple;
	bh=GhkLxLYPCxpc9PsKwvhUrQ5yGIUbYUQfRhs89HYd+aA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=UQZCvtuWVNPJHxQmGwy24j3VR9/m2v41HyP9zbHUCSBz/b3HHXbujNYR3r8D/krhrP20HrV3uwePwSi8cRk4NVCkhnZAcWNsH9aIDn7IV1yn7pxYpgSc1NEHPWVbnU7VnHtKGf2LIt0CO1u9ojnvYhsuHhQA3HV4UynqzoVtHDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N912/xRI; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so9885875ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773919229; x=1774524029; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BX7UhLamXYXi9uao0OdKXRisI2hK+iFiIkDipABqS14=;
        b=N912/xRItiKMuMp0iu25KMwfDFYVrFFDk9jZSndCWuIDTHe3aB5bNJjaeoV/+4VVf9
         72h19e3BV5ppSBDhAvYMCPMFa2UDY1mrB5ktND0o6EiKb4FndtoslFRYtLeGkLRe/is0
         oljm8XGeynW5vMun/UeyUMCSB2px9J6VEV1q9xx0Z5STdp7FIhwcj7fy7iAEJ19gVkVZ
         D+Qp74StcoRRB3wP3TX76vpjUyn7Al/zR046rm1EEJ6ZvoiLNBxk7LN9UygINqKBt72Z
         vqlvKeCbyfFDtR0/k6dieJQMDWX3HIQO80QjohGTqw2EiLoBjSvA1PMA/FR8hffS1D8i
         FH3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773919229; x=1774524029;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BX7UhLamXYXi9uao0OdKXRisI2hK+iFiIkDipABqS14=;
        b=RytdlnDIZ+usjdgjf0965sSsUGPKc39sHcGh0JU7Glnp52vesvjm4ZPeFgdH3WhDP6
         cnH1u1rSIhHXU2TDOYyG6Ljz0CYTTEpqwJ9fiDRI/PVPhnfBJevdENkv8iZgOGLAWEDV
         VaJmt5rppfYt6Or4QOEf1HJW/YpQZEB9pHJ/xH/j2d4YR9Nst8ONBKT73X5fUFTvNmPB
         z/pUP3gPjCkj5Cdx6SYj8cn/ivGBfbGhVW/qmW/16JAdkwx9wOSxx9iC/noiytILAqR3
         dNCUPUMLxP/lPa0dezHJ/aM4bu2umVrR178Hn1vm9wxnGcN/33yLvxDCPIJPTGZkc0b6
         7W0g==
X-Forwarded-Encrypted: i=1; AJvYcCWmHKSUfsAuBi9/XXRBonFXa7sepcxXH2KrQk0Zsot3khH28vos727QKI77SYkChrMnAC/BtAhE0Lgl@vger.kernel.org
X-Gm-Message-State: AOJu0YyqpSNGlyRwIygjeXjkXAf/q5FDfCALzGqis6zyO9V7slyl1VK0
	sqftTOv/WqHsdRkU+ZObWoy2tamtfeuuuvQHAqrL1JKv3Rmk3dWZGlwh
X-Gm-Gg: ATEYQzzqUEAmetAH7WOK+TRwzFfoiJgkTiAIvZgAVZYYqoRqr/7AFDWrlYE7dxrxFDz
	eYD5IquhazCa7ojaWjmFQFjonAlDO2M7/jnyRNhy4P14D+CFAiL8UtYhqCoJ8KfvMQPHw+tt9Bz
	B1Ro9rRI+W8+OkIqnEtGC0eFhyxyAo7FlYLmJB45lZlOY87peO2/lAkJpoeRRCbn4cr21KsKwCp
	yudEUYxnJ81IXZI7J3P53otEt5rnsNYx1lKDnE7dNai5qjq/Je9qE5RVAxBmRcDauzqft4wieI1
	C3Mxzsnyswn+FQA7oFbQNDRJQ3wbcHtJSC9D6w5EQyCxDTxLsXswonxZXEreWiqAiOSi6K9QewS
	y6ITGziOpD8gsLyqAzHh4XSrL8bnYimbWaOU9ZP74e2N8uCJsyCkJRe9Bg8Aw3HFcEz7yqF//MM
	TS4xLbosu0R50xE7NAZiIAuDHDU3lTvlVHhDS/Ua2GC9yFR96Fnwjk
X-Received: by 2002:a17:902:e88e:b0:2b0:5cb3:e4bc with SMTP id d9443c01a7336-2b06e3528bamr62547695ad.16.1773919229455;
        Thu, 19 Mar 2026 04:20:29 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e4199easm76524585ad.5.2026.03.19.04.20.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:20:29 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH 3/3] hwmon: (sht3x) Add support for GXCAS GXHT30
Date: Thu, 19 Mar 2026 19:19:46 +0800
Message-Id: <1773919186-17515-4-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-277719-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.957];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sensirion.com:email]
X-Rspamd-Queue-Id: 435462CA3B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for GXCAS GXHT30 sensor to the sht3x driver. The GXHT30 is software compatible with the Sensirion SHT3x series.

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 drivers/hwmon/sht3x.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/sht3x.c b/drivers/hwmon/sht3x.c
index 08306ccb6d0b..4e2e5671610a 100644
--- a/drivers/hwmon/sht3x.c
+++ b/drivers/hwmon/sht3x.c
@@ -934,13 +934,26 @@ static const struct i2c_device_id sht3x_ids[] = {
 	{"sht3x", sht3x},
 	{"sts3x", sts3x},
 	{"sht85", sht3x},
+	{"gxht30", sht3x},
 	{}
 };
 
 MODULE_DEVICE_TABLE(i2c, sht3x_ids);
 
+static const struct of_device_id sht3x_of_match[] = {
+	{ .compatible = "sensirion,sht3x" },
+	{ .compatible = "sensirion,sts3x" },
+	{ .compatible = "sensirion,sht85" },
+	{ .compatible = "gxcas,gxht30" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sht3x_of_match);
+
 static struct i2c_driver sht3x_i2c_driver = {
-	.driver.name = "sht3x",
+	.driver = {
+		.name = "sht3x",
+		.of_match_table = sht3x_of_match,
+	},
 	.probe       = sht3x_probe,
 	.id_table    = sht3x_ids,
 };
@@ -948,5 +961,6 @@ module_i2c_driver(sht3x_i2c_driver);
 
 MODULE_AUTHOR("David Frey <david.frey@sensirion.com>");
 MODULE_AUTHOR("Pascal Sachs <pascal.sachs@sensirion.com>");
+MODULE_AUTHOR("Your Name <zaixiang.xu.dev@gmail.com>");
 MODULE_DESCRIPTION("Sensirion SHT3x humidity and temperature sensor driver");
 MODULE_LICENSE("GPL");
-- 
2.34.1


