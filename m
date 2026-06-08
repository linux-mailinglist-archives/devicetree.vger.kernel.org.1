Return-Path: <devicetree+bounces-308418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6OToGnftJmp9nQIAu9opvQ
	(envelope-from <devicetree+bounces-308418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:27:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4EF658B32
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:27:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=wst3HCtG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308418-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308418-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6A08313593A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CB4346AE1;
	Mon,  8 Jun 2026 16:00:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429B133F59D
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 16:00:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780934442; cv=none; b=vGVnHz9r4lxTwIb5USMAA7gWDcJxrCij9vBu/FXloId62Ogl4vRoEFwAVtJdWMXixIpV8rdX5MHZYGGTa0HM/3wdri+7ciB1hR6W3UopYkQ+nix4ChNoxXhSYKMOwqLHEH+KCB8vaREMDlkQMAokR3c1PZsEW9xSj/WJv5qsync=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780934442; c=relaxed/simple;
	bh=nFFCoQRTk6bKpMwGqawFeqiihFgL4Rw5w468K89QyIc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PKpuZdICAackrSSpW0J98aklm4FPPdblOMzxcsx1sZtbl+pGcxSSj7z0HWlmQDPm7h/zYCTwk+bptAcSSW4dg+kSPwFGkcyt3zUunc2jo2UdbMDRsuX0Fx/mpN1L0pkqBhYOGmfeP1A9R5GLr7yvrqgPEvBBtQKsh+IRa+5rvW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=wst3HCtG; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A39604E41766;
	Mon,  8 Jun 2026 16:00:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 786F85FFB7;
	Mon,  8 Jun 2026 16:00:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E1F5C106A19BA;
	Mon,  8 Jun 2026 18:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780934436; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=KQM6ESoW60ubESTpKBaOza9yeUTfEcA8pRHfdQKBL2c=;
	b=wst3HCtG9uWq5yus5Ej64jyAcosHze8fhRdskPvMDrl9q15g8oakit0Fil1BrnYRlgvRWd
	g2g3PvvTLeCvu2izWb/kUEeVY3C+1OqlL1k2FGC+5WGVkMCyraE1rhF9QyDzUHArUGw0x6
	3O35mx1pND96QAPJoZK0Joj8OlYEv2/D25OseHR5qbAuKudH/dl98tZqeQXamQ68Su+Bva
	TRpSXaLT3eJXOyDTNyuNWtr/SND19KixsOVZ7ymphUOwu1/aU//GY+ppvLd/0O0iz+kysO
	16lFYob0RtUwxZU90qm/Lpf/Po5oxxtKaP4QiYwbUQPE8i+SBDogQa1UbOW4Kg==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Mon, 08 Jun 2026 18:00:25 +0200
Subject: [PATCH v2 2/2] iio: temperature: tmp117: add TI TMP119 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-tmp119-v2-2-30c3537d5097@bootlin.com>
References: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
In-Reply-To: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
To: Puranjay Mohan <puranjay@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308418-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F4EF658B32

From: Wil Stark <wil_stark@keysight.com>

Add support for the TMP119 temperature sensor, which has the same
programming model as the TMP117.

Signed-off-by: Wil Stark <wil_stark@keysight.com>
[rgantois: Rebased from v6.6.58 to v7.1.0-rc6]
[rgantois: Commit log]
Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 drivers/iio/temperature/tmp117.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/iio/temperature/tmp117.c b/drivers/iio/temperature/tmp117.c
index 8972083d903a2..18ad40f3e7361 100644
--- a/drivers/iio/temperature/tmp117.c
+++ b/drivers/iio/temperature/tmp117.c
@@ -38,6 +38,7 @@
 
 #define TMP116_DEVICE_ID		0x1116
 #define TMP117_DEVICE_ID		0x0117
+#define TMP119_DEVICE_ID		0x2117
 
 struct tmp117_data {
 	struct i2c_client *client;
@@ -139,6 +140,12 @@ static const struct tmp11x_info tmp117_channels_info = {
 	.num_channels = ARRAY_SIZE(tmp117_channels)
 };
 
+static const struct tmp11x_info tmp119_channels_info = {
+	.name = "tmp119",
+	.channels = tmp117_channels,
+	.num_channels = ARRAY_SIZE(tmp117_channels)
+};
+
 static const struct iio_info tmp117_info = {
 	.read_raw = tmp117_read_raw,
 	.write_raw = tmp117_write_raw,
@@ -170,6 +177,7 @@ static int tmp117_probe(struct i2c_client *client)
 		match_data = &tmp116_channels_info;
 		break;
 	case TMP117_DEVICE_ID:
+	case TMP119_DEVICE_ID:
 		match_data = &tmp117_channels_info;
 		break;
 	default:
@@ -204,6 +212,7 @@ static int tmp117_probe(struct i2c_client *client)
 static const struct of_device_id tmp117_of_match[] = {
 	{ .compatible = "ti,tmp116", .data = &tmp116_channels_info },
 	{ .compatible = "ti,tmp117", .data = &tmp117_channels_info },
+	{ .compatible = "ti,tmp119", .data = &tmp119_channels_info },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, tmp117_of_match);
@@ -211,6 +220,7 @@ MODULE_DEVICE_TABLE(of, tmp117_of_match);
 static const struct i2c_device_id tmp117_id[] = {
 	{ "tmp116", (kernel_ulong_t)&tmp116_channels_info },
 	{ "tmp117", (kernel_ulong_t)&tmp117_channels_info },
+	{ "tmp119", (kernel_ulong_t)&tmp119_channels_info },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, tmp117_id);

-- 
2.54.0


