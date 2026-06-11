Return-Path: <devicetree+bounces-310322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l5G8HYCHKmpBrwMAu9opvQ
	(envelope-from <devicetree+bounces-310322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:01:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E99670A58
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:01:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ldZZ3MLp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310322-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310322-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 943EB300ADB2
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF7913C8705;
	Thu, 11 Jun 2026 10:01:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651CF3C9EC2
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 10:01:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781172075; cv=none; b=f/PfL8KyzV881a6Nlw/tyPRd8hl1lI5i7Dg1POYJmJgp2url8+9PX3hyoBclmAf88aEE7/NJPfXvISw4z+3v9PFHfzQpyKO9wo+WQ671vl6QB1uiAhJ4reeqwVxySjSrMWch6R+HrNTPNs3NsiDAvIgloPAOaC7e72rr2CBpN5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781172075; c=relaxed/simple;
	bh=Xj7t3gOgpcUTF9H2JW8LvlJCBDXFA1ijVl3OU+H77no=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QfRGErI6swJTIzHI8K51E9tBJghl+tS5pK6oLXi/CSiKLTReVwISgCUYZuLlkVMxOL/LB0TALYFZTgCb/HRlfM0ahZypxVt2cedsvRmdt+7fEV6uzC7hYlVvKIBKP8yKO3EQeBtdE0jUf/pxDPzqrE/ohKHpU6VxxLmXt/EYYic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ldZZ3MLp; arc=none smtp.client-ip=209.85.215.180
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c8583b8fd89so4742193a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 03:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781172074; x=1781776874; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KjBLRWrBJ1wV+e8lZDCHR4CL5EzgVjy+L9xauVIf4pg=;
        b=ldZZ3MLpcXN55SEP0GB5+xtHWaNTGrv2We+HcOIj2vwLqcLY9qmPrwvk5M5esomWEw
         dQD0rHwh6ZIWfYV814dJlt7dcav/Uh2PIfJxrupxqZWK4y77SfCggW3mOypu780jwLqE
         YuaTifksFke3Tx4u3QEnd8GxdPFfBMRm92tmqeSQZ0eiRHDzKf6bOYSRPVX1jhUOJpjP
         f08Eywj+3bGDBQk8SDShLLlEnXP6Hvd1QnCGQ+MhHXb0gM4p8k4cYK/VvHs2VHTWQG2a
         4Gv2ElMoL0GgFIxlFcZ8/kDLNe3ZXomZaJ6ZOLVjq549zoKB+m7MNvEE5+mbE8dtXmsi
         RwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781172074; x=1781776874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KjBLRWrBJ1wV+e8lZDCHR4CL5EzgVjy+L9xauVIf4pg=;
        b=RCq4lKhiJsPuhCW8YVat5wjXj7qvHsDwBy/Iv7ZhEh/Ulzgj1/TJlG+ukPVycFR/3r
         7KZctEBoNIT2GWGL1Wa3QPaSIbAeNBT6qYq546qvVxjRa7BQYSVjEte/aLhRG9k9aaY8
         pgyI2uhZzYv34g0ZITGkwHaWcOMdqI2vjyqFOU/dOLGOmbM6wngalcO/RA+oC48lUXgC
         G7KbHbefHrgFh4l5aMdqzqpoETkz8p5YcZ6/EilUpGIS+ofFbysXWLDfLfQrAoHeVfz/
         a3A//HSUxbo/W8Ec0TUhbgNnlDBab0HqAvHma3lFMMhoDqJRT7EJgvOuNXIYHH0pqfCG
         NVcw==
X-Forwarded-Encrypted: i=1; AFNElJ+SSixxlGX2uWCefEp5GdVEoqcJWf2/+WPK6r/7vBF4hodWJTj6EOf3kRCcvg8ON477Hw8uqyJ8nruT@vger.kernel.org
X-Gm-Message-State: AOJu0YzrURr7JWZlHL0iteQjaWfCczBoCMk+q/CIyn7flv2pR8MOvFZ2
	cXI/xjSHfmESXKZm4Nx0ntnBzxd06FGAS4QwNGwi8ADmCly8UKC7I/g3
X-Gm-Gg: Acq92OH/aSGeYk7F4TWbkR0Gv17SeaKBfTybiUszxrHscZq3yFssy3kTyOE/cilzwxC
	RjVsa+OwAgKexiE567eqBQcpI4NQhyJAEqjQ4U3nepNzHiA5RSt6lo60SwrmjkcNnpfj30HN4lg
	G8pnkObgfWTpKHqaNeRw/C/vRF40loFL04gf4TMfKNpt3TWFaGctZ16MRNEZlVRXjD7H5nX0PTs
	ag5mplUrlcEDtFCku6fBKtpmiPtJpslJYY6YLJQTX8VtS6HZp5tAtFHZKvRpBzsq/Fhga1DO0rI
	zKdlQ0nPqkCcQiVTSAyKEEwaz+YQ7NX46pVsvwPQLxnhMBvpaLuR5MUkYE+wixn8NowfTghTPNi
	93COmVs7hKzjWnLxQWH+sKpRNYl/z9XkwRIkMe9qx87H1xPVeSvHfvh492OFyCbut3zT1Q8ckHB
	rVRSvVflITqNTGAtSAriie7TUbDP9pkwD2tvEuG5HXbEGmVpxUE9WCKwTM3FJ52WNuq5E/mbNOs
	/0gynFR31RLOoc=
X-Received: by 2002:a05:6a00:3ccc:b0:83e:2c38:f5d5 with SMTP id d2e1a72fcca58-84336a8c7a3mr2263009b3a.28.1781172073628;
        Thu, 11 Jun 2026 03:01:13 -0700 (PDT)
Received: from [10.10.15.228] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-843380c92edsm1458228b3a.32.2026.06.11.03.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 03:01:13 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Thu, 11 Jun 2026 17:58:45 +0800
Subject: [PATCH 2/2] hwmon: (pmbus/lm25066) add SMBus current limit
 configuration support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260611-lm25066-cl-config-v1-2-02e567bf3d91@gmail.com>
References: <20260611-lm25066-cl-config-v1-0-02e567bf3d91@gmail.com>
In-Reply-To: <20260611-lm25066-cl-config-v1-0-02e567bf3d91@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Zev Weiss <zev@bewilderbeest.net>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Cosmo Chou <cosmo.chou@quantatw.com>, 
 Mike Hsieh <Mike_Hsieh@quantatw.com>, Potin Lai <potin.lai@qunatatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781172064; l=2361;
 i=potin.lai.pt@gmail.com; s=20260522; h=from:subject:message-id;
 bh=Xj7t3gOgpcUTF9H2JW8LvlJCBDXFA1ijVl3OU+H77no=;
 b=7fG5KmTbc55UHzJuv8XriODDk9ISYDQTmyH1ACtk62myjbNLGpEwoFJltdFygBLRUgJcyPb2I
 eyetfvZSQFpBzxRr5uHMQB01yyhRe1OITMd3LUJPB0yO/GaG7bYAKbP
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=j3/nMxzz1ZPpp1revghyZ8IqOnwi6RWfuxXN2XrNMRE=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310322-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zev@bewilderbeest.net,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cosmo.chou@quantatw.com,m:Mike_Hsieh@quantatw.com,m:potin.lai@qunatatw.com,m:potin.lai.pt@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:potinlaipt@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,quantatw.com,qunatatw.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8E99670A58

Add support for the mutually exclusive 'ti,cl-smbus-high' and
'ti,cl-smbus-low' devicetree properties. When present, these properties
override the hardware configuration pins via the DEVICE_SETUP (0xD9)
register to set the Current Limit Configuration bit (bit 2) and
Current Limit Setting bit (bit 4) to SMBus settings.

The Bit 4 mapping to High/Low current limit is handled dynamically on
probe because it is swapped for lm25056 and lm25066 compared to other
supported chips (lm5064, lm5066, and lm5066i).

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 drivers/hwmon/pmbus/lm25066.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/hwmon/pmbus/lm25066.c b/drivers/hwmon/pmbus/lm25066.c
index dd7275a67a0a..20e114bdc882 100644
--- a/drivers/hwmon/pmbus/lm25066.c
+++ b/drivers/hwmon/pmbus/lm25066.c
@@ -34,6 +34,7 @@ enum chips { lm25056, lm25066, lm5064, lm5066, lm5066i };
 #define LM25066_READ_AVG_PIN		0xdf
 
 #define LM25066_DEV_SETUP_CL		BIT(4)	/* Current limit */
+#define LM25066_DEV_SETUP_CL_CFG	BIT(2)	/* Current limit configuration */
 
 #define LM25066_SAMPLES_FOR_AVG_MAX	4096
 
@@ -464,6 +465,8 @@ MODULE_DEVICE_TABLE(of, lm25066_of_match);
 static int lm25066_probe(struct i2c_client *client)
 {
 	int config;
+	int config_new;
+	int ret;
 	u32 shunt;
 	struct lm25066_data *data;
 	struct pmbus_driver_info *info;
@@ -484,6 +487,28 @@ static int lm25066_probe(struct i2c_client *client)
 
 	data->id = (enum chips)(unsigned long)i2c_get_match_data(client);
 
+	config_new = config;
+	if (of_property_read_bool(client->dev.of_node, "ti,cl-smbus-high")) {
+		config_new |= LM25066_DEV_SETUP_CL_CFG;
+		if (data->id == lm25056 || data->id == lm25066)
+			config_new |= LM25066_DEV_SETUP_CL;
+		else
+			config_new &= ~LM25066_DEV_SETUP_CL;
+	} else if (of_property_read_bool(client->dev.of_node, "ti,cl-smbus-low")) {
+		config_new |= LM25066_DEV_SETUP_CL_CFG;
+		if (data->id == lm25056 || data->id == lm25066)
+			config_new &= ~LM25066_DEV_SETUP_CL;
+		else
+			config_new |= LM25066_DEV_SETUP_CL;
+	}
+
+	if (config_new != config) {
+		ret = i2c_smbus_write_byte_data(client, LM25066_DEVICE_SETUP, config_new);
+		if (ret < 0)
+			return ret;
+		config = config_new;
+	}
+
 	info = &data->info;
 
 	info->pages = 1;

-- 
2.52.0


