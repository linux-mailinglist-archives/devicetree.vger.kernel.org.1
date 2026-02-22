Return-Path: <devicetree+bounces-267154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KF1rMqDhmmlImAMAu9opvQ
	(envelope-from <devicetree+bounces-267154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:59:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A6316EF06
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 23F89300BE11
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD65822DFB8;
	Sun, 22 Feb 2026 10:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jtA9kiPY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E17E239085
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757979; cv=none; b=cX+8+clokQRGF9/fkN10ZcSUQrT2wg48jekXBzJO9m3MzmajUtNXjMufpBTig0Af8fbKQ/p0qKVBLyDHyraH6NRRtt1qF565Ovxkr0Ux453V/ZXJGkLMiSj2BD5sOHtto/U6MS4s3xYmdSVl+OdKlUXwGQUoHqgZtCgtM3jOBYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757979; c=relaxed/simple;
	bh=GkZs8Pmow6ZIyGQQFd3kgooCkCk46+QckZmK5QoGQVo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t3k2AlInhKm19Hj/ZEz3/DayrBhUc0PCmNwdfQ6+C6kBSmi0au3A6YhU/MtsOjVltjBDIPhoK6auntbDl0Y9KUAHkDJ/Uwg16GObb/RKZnszovvjrvwhvy5W1gC8gAqe9BETjcDo/pHL7PT51Y5Aok4/IIySjEbbIXudCCZhbHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jtA9kiPY; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-3566af9900eso1869357a91.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 02:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771757978; x=1772362778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwUCh1+c9vbdE3tzrM5tTx54gmrr1a6WUHu0qWZDt7g=;
        b=jtA9kiPYPTYm+72hZSuYjiGMTPVRaQjqxJppsznFNWIcaihTmqHxpPSAD+Kn0t9O4f
         mFkpiyJxAw8yyQTgwSANmjgY7Lq7uoALzuxMxWxGTUSTXCKpxcLJqRwDCPXNzrbjpv/5
         v59qEVfvxCM4Q+ITsxHN/FGL39WrWwL+XUvSdngWrq6X/Ukg70kovD2bbq86VLO/cDgr
         qwcU4ciXEj1W25OesBGNJR7HuzBb8ggP6uVHxa/lw+ql+Rh6wpogMNjRxXE1t9k/XhUF
         5g37cyDeUnqlfGXl1CWJPzfW/CXK/IRkSRd6LmvDJ4b896qIr7ShOOjYsaErKH6P0Exs
         gTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771757978; x=1772362778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NwUCh1+c9vbdE3tzrM5tTx54gmrr1a6WUHu0qWZDt7g=;
        b=N+U7ELlFe/DGpcUOUHh+/Yj1YrcZqCSYrUsu3oE0uOrNm9Siu8UhRIklt6AHB3N6aj
         hO1P4xSBAYdiWqt20obTa8V1DYhQL5UcDMPFVV4gIbeNBivvanQaf7DtMUBTNtvbtmh9
         xmDKTEof2xmkftGpBxB8NHrTqpKFp6TIMf8fMi7Td7qWh+vox/jtBnxMGINEm1y3jwjo
         MJ5UGr+5Vclp1+HzZZP0fe5E76PgWb93vwRHWpn+LDW22es695/2VCsuTDh93x0SK4Hm
         i4No3alW1tiJNFPAIZNqSDvumLOTGwagwitKQs2XypAGAVVAN6+5k4JJia3dzflhf8Py
         kJfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTzwd+Q9skxjy5jF20bhHsCPzqTlC/CcNaajhc4pQCXSuGFCgSVpE26P5U0xs4VUHMnWgR6IDEXrng@vger.kernel.org
X-Gm-Message-State: AOJu0Yyezeta7CyPCcJk1BG69nxDc1aGPNIya2m8BDx+RcRve46nCdKo
	5n+xTf0u9eup1+LyMLbRwqzyCH1+P3XOmre2WLZ+Sl14gVzqr6/VAcOR
X-Gm-Gg: AZuq6aIvD3LxStCAbo1qP7K/BKz8sEDMPZJzPKfSrIqIo8a88TN5AuVg7QjP3zDJntM
	Uf2l2XyH0zM/MNH8eLSNU4djHzYDBEtolMGt12rRPDk9hFYwmbu0h55lY91AJsAJVDvbY2PnyDK
	C8nlxdlwRMZxZmKA807InOhrWT4qmP2N6/vMj/OyoOZPUtvmRFKY/iLsQQmWeIHg/Alvu+YHgIS
	8u7wEHtU44j3/GhKwb8ClkHlL2cV28dyaGnamgX8HV2D8KYBczvsWQeHYKaQVaUNKz18MxDol3+
	/6Rsjwj9dAPIV97NsKRNpXnLu8RRdD7S+SjNjupIY/RAmRZ3Leed1DdQ2Uajm/XZzWJW4N2b0hh
	Sgi7tF5qKu0ozWsslBlw8+otNhSdd6TReTCaLX/2g+pK7PltEVRuQgXKR2DY9VaFzKjisZPU8ie
	Lq8dB13xjF8B2EtNDJ
X-Received: by 2002:a17:90b:4ecd:b0:356:5cf2:eb77 with SMTP id 98e67ed59e1d1-358ae7ba886mr4445120a91.2.1771757977862;
        Sun, 22 Feb 2026 02:59:37 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a1b1f84fsm3705278a91.2.2026.02.22.02.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:59:37 -0800 (PST)
From: Hao Yu <haoyufine@gmail.com>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jcdra1@gmail.com,
	akhilesh@ee.iitb.ac.in,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Yu <haoyufine@gmail.com>
Subject: [PATCH 2/2] hwmon: (aht10) Fix initialization commands and add DT support
Date: Sun, 22 Feb 2026 18:58:31 +0800
Message-Id: <20260222105831.7360-3-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222105831.7360-1-haoyufine@gmail.com>
References: <20260222105831.7360-1-haoyufine@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267154-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haoyufine@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 44A6316EF06
X-Rspamd-Action: no action

Correct AHT20 initialization command sequence and
change DHT20 command format to 0bxxxxx notation.

Tested on rk3566_lckfb board with aht20 sensor connected at i2c-2 port.

Signed-off-by: Hao Yu <haoyufine@gmail.com>
---
 drivers/hwmon/aht10.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/hwmon/aht10.c b/drivers/hwmon/aht10.c
index 007befdba977..c18332cc48ba 100644
--- a/drivers/hwmon/aht10.c
+++ b/drivers/hwmon/aht10.c
@@ -37,7 +37,9 @@
 #define AHT10_CMD_MEAS	0b10101100
 #define AHT10_CMD_RST	0b10111010
 
-#define DHT20_CMD_INIT	0x71
+#define AHT20_CMD_INIT 0b10111110
+
+#define DHT20_CMD_INIT	0b01110001
 
 /*
  * Flags in the answer byte/command
@@ -60,6 +62,15 @@ static const struct i2c_device_id aht10_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, aht10_id);
 
+static const struct of_device_id aht10_of_match[] = {
+	{ .compatible = "aosong,aht10", .data = (void *)aht10 },
+	{ .compatible = "aosong,aht20", .data = (void *)aht20 },
+	{ .compatible = "aosong,dht20", .data = (void *)dht20 },
+	{}
+};
+
+MODULE_DEVICE_TABLE(of, aht10_of_match);
+
 /**
  *   struct aht10_data - All the data required to operate an AHT10/AHT20 chip
  *   @client: the i2c client associated with the AHT10/AHT20
@@ -341,7 +352,7 @@ static int aht10_probe(struct i2c_client *client)
 		data->meas_size = AHT20_MEAS_SIZE;
 		data->crc8 = true;
 		crc8_populate_msb(crc8_table, AHT20_CRC8_POLY);
-		data->init_cmd = AHT10_CMD_INIT;
+		data->init_cmd = AHT20_CMD_INIT;
 		break;
 	case dht20:
 		data->meas_size = AHT20_MEAS_SIZE;
@@ -375,6 +386,7 @@ static int aht10_probe(struct i2c_client *client)
 static struct i2c_driver aht10_driver = {
 	.driver = {
 		.name = "aht10",
+		.of_match_table = aht10_of_match,
 	},
 	.probe      = aht10_probe,
 	.id_table   = aht10_id,
-- 
2.34.1


