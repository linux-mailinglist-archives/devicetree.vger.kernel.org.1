Return-Path: <devicetree+bounces-308414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 61jRDmrnJmphmwIAu9opvQ
	(envelope-from <devicetree+bounces-308414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:01:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A05065874E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:01:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="h/KNA8xc";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308414-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308414-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1AE2532E8BD2
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 15:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF763FA5F3;
	Mon,  8 Jun 2026 15:23:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAE13F9F3D
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 15:23:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780932234; cv=none; b=q24aaNnc8e68AfM02mP7OcZxeEeq6LjXs7YZ9ERm/E+8xDTlay9ZeXFYjXBaTPn+MdcvLSBH01ML9VzXk1YGTIULF1kedtl74oleYbhTCmZgQXZGIPNqu63YwgVoum7+IsmD21ELpwNFIXqlqiblLATaExa8wFZQDc53wkSYO9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780932234; c=relaxed/simple;
	bh=6iYnBDV4iVcwL8NFuxUb1kTuavbOZffQAAOs2IsNims=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lHkL3egXxw4VRJt2NoBHeFVcfMQ2VFyUseAeTemJJt6815VeOJ3+0ilEzHfamjOdHxFIyACptA2pBVFUaNWoXjKhKmryik3d5g8C0hsgizeYmcfarCE//b6jqUMqDJF4RBsn52HfSRA7mm8KJHezkac+xG/S6QTHq6mphlzM++s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=h/KNA8xc; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 076721A37D6;
	Mon,  8 Jun 2026 15:23:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C62AE5FFB7;
	Mon,  8 Jun 2026 15:23:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 75E5C106A1C15;
	Mon,  8 Jun 2026 17:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780932230; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=HYgzaOxcRR5g0TGzoKhR3EdQSwmVxtF3AnLJdNyukXk=;
	b=h/KNA8xcV/hPO7d5vbq7Y8bY8Im4qvAwVsiGbd4CFY9CYhMXrj/+UdmfqE4YSRbPzyZck7
	gn/Yv6QG9B2GOX8YCVSJ/IzvujRnEI5weZ47S0YiZJmACFqWcKGrbxxic9XFctTh/+y+0+
	Mo6vpsJG2TgdMJkMWUAFoS/OyPM2jtCtab0tY7W0VFqk/JJPM2ak8vFiq+NWZec4mWQcZL
	3BiEc9LUeNNHLpS5/hnzL/CpLwkPq4N0pbFHQYDyS+pUlVe8/nluPFVGSBOwpP9BIWr5q2
	zkuHLs0TJXD9d7ZVPN8KZpfGdxBf8WftNay2HIttS7BRawu0nMZpQHvq9OYxng==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Mon, 08 Jun 2026 17:23:43 +0200
Subject: [PATCH v2] hwmon: (adt7462) Add of_match_table to support
 devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-adt7462-bindings-v2-1-272982c40325@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32NQQ6CMBBFr0Jmbc3QVpq48h6GBS1TGKOtaSvRE
 O4u4N7lS95/f4ZMiSnDuZoh0cSZY1hBHipwYxcGEtyvDBJlgw0q0fXF6EYKy6HnMGRxIucVKoM
 aPayzZyLP7z15bX+cX/ZGrmydzRg5l5g+++dUb96f/FQLFAprhdo6b4y+2BjLncPRxQe0y7J8A
 XiP5sjEAAAA
X-Change-ID: 20260603-adt7462-bindings-5ecf3037040f
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kory Maincent <kory.maincent@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kory.maincent@bootlin.com,m:thomas.petazzoni@bootlin.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A05065874E

From: Kory Maincent <kory.maincent@bootlin.com>

Add of_match_table to add support of devicetree probing.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
[rgantois: Removed of_match_ptr().]
Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Changes in v2:
- Dropped usage of of_match_ptr().
- Removed redundant device tree bindings.
- Link to v1: https://patch.msgid.link/20260603-adt7462-bindings-v1-0-301304bcf774@bootlin.com

To: Guenter Roeck <linux@roeck-us.net>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: linux-hwmon@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/hwmon/adt7462.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hwmon/adt7462.c b/drivers/hwmon/adt7462.c
index 174dfee47f7a7..f935c3477b364 100644
--- a/drivers/hwmon/adt7462.c
+++ b/drivers/hwmon/adt7462.c
@@ -12,6 +12,7 @@
 #include <linux/hwmon.h>
 #include <linux/hwmon-sysfs.h>
 #include <linux/err.h>
+#include <linux/mod_devicetable.h>
 #include <linux/mutex.h>
 #include <linux/log2.h>
 #include <linux/slab.h>
@@ -1814,10 +1815,17 @@ static const struct i2c_device_id adt7462_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, adt7462_id);
 
+static const struct of_device_id adt7462_of_match[] = {
+	{ .compatible = "onnn,adt7462" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, adt7462_of_match);
+
 static struct i2c_driver adt7462_driver = {
 	.class		= I2C_CLASS_HWMON,
 	.driver = {
 		.name	= "adt7462",
+		.of_match_table = adt7462_of_match,
 	},
 	.probe		= adt7462_probe,
 	.id_table	= adt7462_id,

---
base-commit: ddd664bbff63e09e7a7f9acae9c43605d4cf185f
change-id: 20260603-adt7462-bindings-5ecf3037040f

Best regards,
--  
Romain Gantois <romain.gantois@bootlin.com>


