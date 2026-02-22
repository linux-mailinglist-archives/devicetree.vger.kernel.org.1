Return-Path: <devicetree+bounces-267180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oED5JSc3m2mVvwMAu9opvQ
	(envelope-from <devicetree+bounces-267180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:04:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C58816FD4F
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AE873032F4B
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 17:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BCC83590C3;
	Sun, 22 Feb 2026 17:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DcqU23/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8813590CD
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771779827; cv=none; b=iIcxtG72sysaaGpIpf5jPlSL8R60mTsgJPzTUtYlAg1ZOZ0Y6IOPvJ4NXbsYoY5NxZzxejSbc7NliKKNRbzsTHQvW4FwDiSgThNn6LOCVgf0swF4Ihgbcrv57CZ5Issf3x4TZQYUwy/nkWwws8mMtrjZyAMyM5eYT+S53a52Ql0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771779827; c=relaxed/simple;
	bh=haLmVgyaV6W8hTOWkulToi9+xkU1RIIZzub9gf0bEwY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NOxgJAHJMR3oODm1ggV4D2CcBAA5JXUxUv0Un+GnbjXutNeFXlkysjdWzv9UIonbj3Ol82ZyX9QGYqoKNfpu8PLK/stmIeHFOTjvDWj8+AL+CIlNA/ytEJa94zAzcPoZWlmjPekk0Ba2ze/l5w/eMdyKV2iNowK+LcM9SkqZnqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DcqU23/u; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-3530e7b3dc2so3684527a91.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771779825; x=1772384625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2RUQ8aOslaSvzIq+ti9JbdHNa1xuS295v1ngsLhUPWs=;
        b=DcqU23/ulosJEn1ZfHV2xyVMz4Ht4rflg61wCW6S17m5y5TjGbmU3+gYSNhymEImQx
         5lOxRVqyj1W2+/331gVx6qKUIId5pde0B/Fc/L9w1yGbnJ1EAnrhnB9EFHM2QqJLpVUm
         R44Y/0STKR0fQ5GFyfkVjRa+1EKgSnodQot8yqNblkfWVL1L2KdfVy0avX9perfc+GsT
         9RG+hJCfPoQj/41o5mr0BBd9V1+GWPlldZk3u6Ola1wJzrgMQ8iontD6OPPmH/4lSlH4
         wPvXOFAKHx8K/UG180Gaz6XwLxLN0zo8v0OiDHLnwAbzZm+IiIdHguju3EnXmNLSfvyM
         tB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771779825; x=1772384625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2RUQ8aOslaSvzIq+ti9JbdHNa1xuS295v1ngsLhUPWs=;
        b=tg+3a7MXba4fZzKo6L8fZ6frpgd8sWPSLZOoVQSZv15+OcbJ5fk0HYnXzt3Ob9/tt5
         W3pOEu3K9BypOYxBesErp1D4GhuyCvaM5h9X5WUMMZCXZYBfaHO7yuyYXpUeLrG9PW0+
         uOHMQU+v2/FlDLrGrjFtZVuMBiR4r6dSdMQvjekg9yrhgRtm1EgxcDnC8osmsql966cu
         Uzpv9bRLu/r+bG9DFspgoSe8CCvNeXEIo62chO07rKlODjeCSlPMRjpaz+G1jLDZObie
         XbPlbmi9hTEoQ65DU77IMhX9aXHiTZ82l75a8VkD/JYLoOsHT2LEA4FYkjycxBCIMs8D
         xt0g==
X-Forwarded-Encrypted: i=1; AJvYcCX/bQOHsXUHynlrw0/ollmrRuYdv1EsxyirvfZq4Al8xglqdXb1NcAy+IUycDbM9JcY1XlkBGo2WhLn@vger.kernel.org
X-Gm-Message-State: AOJu0YzlowVc4tQzXHlWPQWLhOWgjDZ9tWvKXmBlJuHA4maGFaiTMw9g
	EasjNvlYYh+s7YbOm0JkTTa7WLiafzRQQnChzgVq7BkZJwMF3xQ7nBpH
X-Gm-Gg: AZuq6aIrWPaCYI8kz0cqi/04KeZdC3H4p6DmqhcQN2CnopZTC15Xf7H+pNyY4hEs33N
	1piTSoP3NsrmEbCmEqKxPnngr2MSx62REgOyyR4fsNU0Fzv7hqof2Mrs4pv3Zf30YXQw+bIv1Ph
	45EJBxvPAETAVJk5lOqa631vqPq+aiAIc+WfN4ZHJA4gwCEYnKzKNbkWnylBEYMzJDp9vjHZxSr
	kL/FTjIJ574J+s92z3QlYpEJ7oh0siS4F6xVxqHkDVL9vDfhX3XSzW7EX5Jm0IlMBSgLUHdg97c
	klGYM4Rg8qJupAlXO2S2Wu2c4TSf08zaQs3BgQ65VAYEatMIpShoEskCVxKmcB33T+xp89JxnXG
	kNXgnukjwNOuNBVpzqXBdKpANvrqBft6CBD3QFI9iqvtokYRznWYKSoNb8Li47EdFvQact+wLHV
	XIwyLuyp295eDUjqDz
X-Received: by 2002:a17:90b:1d82:b0:354:c7f8:6d7b with SMTP id 98e67ed59e1d1-358ae8d0700mr5253625a91.27.1771779825178;
        Sun, 22 Feb 2026 09:03:45 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358bf39ba25sm1555688a91.2.2026.02.22.09.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 09:03:44 -0800 (PST)
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
Subject: [PATCH v2 2/3] hwmon: (aht10) Fix initialization commands for AHT20
Date: Mon, 23 Feb 2026 01:03:31 +0800
Message-Id: <20260222170332.1616-3-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222170332.1616-1-haoyufine@gmail.com>
References: <20260222170332.1616-1-haoyufine@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267180-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2C58816FD4F
X-Rspamd-Action: no action

According to the AHT20 datasheet (updated to V1.0 after the 2023.09
version), the initialization command for AHT20 is 0b10111110 (0xBE).
The previous sequence (0xE1) used in earlier versions is no longer
compatible with newer AHT20 sensors. Update the initialization
command to ensure the sensor is properly initialized.

Fixes: d2abcb5cc885 ("hwmon: (aht10) Add support for compatible aht20")
Signed-off-by: Hao Yu <haoyufine@gmail.com>
---
 drivers/hwmon/aht10.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwmon/aht10.c b/drivers/hwmon/aht10.c
index 007befdba977..4ce019d2cc80 100644
--- a/drivers/hwmon/aht10.c
+++ b/drivers/hwmon/aht10.c
@@ -37,7 +37,9 @@
 #define AHT10_CMD_MEAS	0b10101100
 #define AHT10_CMD_RST	0b10111010
 
-#define DHT20_CMD_INIT	0x71
+#define AHT20_CMD_INIT	0b10111110
+
+#define DHT20_CMD_INIT	0b01110001
 
 /*
  * Flags in the answer byte/command
@@ -341,7 +343,7 @@ static int aht10_probe(struct i2c_client *client)
 		data->meas_size = AHT20_MEAS_SIZE;
 		data->crc8 = true;
 		crc8_populate_msb(crc8_table, AHT20_CRC8_POLY);
-		data->init_cmd = AHT10_CMD_INIT;
+		data->init_cmd = AHT20_CMD_INIT;
 		break;
 	case dht20:
 		data->meas_size = AHT20_MEAS_SIZE;
-- 
2.34.1


