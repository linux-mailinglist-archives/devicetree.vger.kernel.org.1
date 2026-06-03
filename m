Return-Path: <devicetree+bounces-306160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v7gRMe0QIGqLvQAAu9opvQ
	(envelope-from <devicetree+bounces-306160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 13:33:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A1563718F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 13:33:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="BuQm/JuQ";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306160-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306160-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5647D31BE6AB
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 11:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268DC4657C6;
	Wed,  3 Jun 2026 11:11:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B594611CF
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 11:11:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780485063; cv=none; b=j1qkbqCE8WQagSBp9y6PYB5HetBxn+6r7xio68rm9UA7jR8WKSAItC/LA7YcP6oisLp/Ey8CvXRs/ZRGyTWL90TBjHa2Bj+9kHM3CQUxyao4ew4rh2XeeQnmfdrLhjpzcim3yn/yV5qQjhtKCIpDKAihb5hItQKo9173Z/Ygnwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780485063; c=relaxed/simple;
	bh=WcNNAU1CzyMhLQPUzeNOT5YaIzTDhHnYSoCbUL6lcwo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WLbjq+u7Nkq+lCN/G7aymvlMgpxif3xsQNfU62urP5hIxrviO3OP91uZuKTbxUie85TDTMvsInMdfWCuF1K78MsRUVYH+YOhXJKwb8d56Exm333COXRtkc6q3PossnHHS6+gCTFSI2LQUDzTGf/oUpORw+dhBm1hqhIegujI/CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=BuQm/JuQ; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id F07F2C62219;
	Wed,  3 Jun 2026 11:11:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 246635FFA8;
	Wed,  3 Jun 2026 11:11:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C600B10888CCF;
	Wed,  3 Jun 2026 13:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780485059; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=vpmnkRxwaFT80g54LLIDsA4yY78yN17CLdroSULW1gc=;
	b=BuQm/JuQurOaZbLp8umCk4vqfPARaLPvYmGVr2qwWpk1cO+igAviTmpN9Mr0qlTmCsXSKv
	VxjhCs97yaB3uEJuWIADBbri7nMJV1CCrNHQScxwmTGTHDhPrl9MVzbor6+S2td+WRcE5P
	VIHsccMydyS36+rCGJ4x5CWakHkA3bil9gs+B/f9vtcRTbVLqj4wNDKUFQD1rvMgd2MiUp
	RIAidtr0BQ8uiUOQk0/9ax7iGu7zvii7ZPV4+5K2uDLpTsgCMXPKNEuNWhkr/AQlcyEZA7
	f1AKf+8JaiP1UwWq7mB2Rd1RogYWvVT8rvdlvNCIDXT3hEBAC+d1uoSYhyfCrQ==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Wed, 03 Jun 2026 13:10:50 +0200
Subject: [PATCH 2/2] hwmon: (adt7462) Add of_match_table to support
 devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-adt7462-bindings-v1-2-301304bcf774@bootlin.com>
References: <20260603-adt7462-bindings-v1-0-301304bcf774@bootlin.com>
In-Reply-To: <20260603-adt7462-bindings-v1-0-301304bcf774@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306160-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kory.maincent@bootlin.com,m:thomas.petazzoni@bootlin.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 31A1563718F

From: Kory Maincent <kory.maincent@bootlin.com>

Add of_match_table to add support of devicetree probing.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 drivers/hwmon/adt7462.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/hwmon/adt7462.c b/drivers/hwmon/adt7462.c
index 174dfee47f7a7..ef6e5252dc0a4 100644
--- a/drivers/hwmon/adt7462.c
+++ b/drivers/hwmon/adt7462.c
@@ -1814,10 +1814,17 @@ static const struct i2c_device_id adt7462_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, adt7462_id);
 
+static const struct of_device_id __maybe_unused adt7462_of_match[] = {
+	{ .compatible = "adi,adt7462" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, adt7462_of_match);
+
 static struct i2c_driver adt7462_driver = {
 	.class		= I2C_CLASS_HWMON,
 	.driver = {
 		.name	= "adt7462",
+		.of_match_table = of_match_ptr(adt7462_of_match),
 	},
 	.probe		= adt7462_probe,
 	.id_table	= adt7462_id,

-- 
2.54.0


