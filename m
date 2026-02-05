Return-Path: <devicetree+bounces-263026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANTEEaKchGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:35:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4260F3555
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29B32301A7D0
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE15522A80D;
	Thu,  5 Feb 2026 13:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U1SbAmf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA59225775
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 13:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298522; cv=none; b=jemR8rSdbZlHt/5yWeZg8KzgVokAk+cAxMn5H1DAECsTed31CXsyrj+5nN17WlaY4Wy6EoD8cT9ZT6FuErfTyUqG5nxn5pB+Ha9Mq7e3hU0psLE59ASrOYTf6G5GeIbjkbzHEttSz86FATtucbqFG0eZbYaAt2fVhriGAlqnfLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298522; c=relaxed/simple;
	bh=wpkimDav46YFJfJQ9r6mE6i3dTDYKK0zgDWwQx5eOtI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RXUJ4E9az2jLYsGk7Ven4MRf1AoAjc73Nj9E/yfgAKP+gMeUa78B+8Z1LyQ50WubSP7/e9uEt1I3DDoP8YbXokrGhlLGG+A4QDg4aYEe0b6dnzMxBanniTUcMtG6rab+zLhDi/qYkgnioEWwqI8oVtJoLne1OYkhzOr7wu6LY10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U1SbAmf1; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a12ed4d205so6589475ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 05:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770298522; x=1770903322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/NdfuXjST0+v0E9Ees6inVmdG7VSECbbJuJ0e1bFP4=;
        b=U1SbAmf11qBMa6ke3G8lzS8NNyMTwVCFJXgXH47tudzMeVKOQanG2a+q23X8qRR1hf
         TLdOrkl37PlwU3qhN0CYvceGBwm6Ga9gAJlV2iiSHTUl1h7dZQOwAGZ72e3kx8GsZt3E
         HXdxNvO269oMYkXD9K4IYeG3MnM6g5j/eOe61ZKdHRlizKn4lgF2UC8/xMTQPZuTdt9U
         0shd95q8sUXMBtSCmBHqGlA0OdBJADcxh6vvVVLLxy7aNbzifCfDuSn8PYbaPPVVL9P6
         G0RYiN6QD9amwy7a0tt6AkqRLUnSvuD55B0MKeCvRFfmJHvzzYzORkBjqpqV7doOWdoE
         WdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770298522; x=1770903322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g/NdfuXjST0+v0E9Ees6inVmdG7VSECbbJuJ0e1bFP4=;
        b=Hh9iOwYIdC+OPU1u9XsM/TPzWIIulwtxHpWb47wzIe3m+u9osoF87euVke2tdH+EbG
         iK8QuKKVCYc3C+XQmGEHWf1hDIBlwdERDTazHJfIDn8NUKylhC+UjVXUh1pZOIlafYB/
         omWBDrEyISCHjBjF+r7xd72DKcFFMm8agGj05EZuXy7mxdQKw5N9g+NGnFb+iYFKuSUQ
         7ffOWVxeAFQ6k0cwx+QpWg3xZ6ycwkPXGZcIxRuwhRP/7fiNcd27DcT3F2U9xACTj1d7
         l3Kgg+6LITWazrECBebdQTaANvSNHkpNh/2izNxOAnEJwXPdHqa/17qlQIthKqjIaAOD
         hokQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTK3d85X9JhkVccv5DKBXHg39vzzJRLPD0iGE2YkJJoeW4ExHh1IiwmjR658UDF/ooy6XIEQeLik8N@vger.kernel.org
X-Gm-Message-State: AOJu0YyYiMVX/dJh/5rQtN+IVbM6t4dUFWUV9Mq5OiJScEqDACh95UmC
	v89m4++9LmeJINxjUZ3JNEEL+xIIyKWf7TfW0Jv3i7tRwhB/+YdLy3jB9Mfj5g==
X-Gm-Gg: AZuq6aJV6NCxQjQ8lOz4zdTnCZfteF2/CGOO6IgURsEGM30gY1AG/FwvbH1WTunpZ4E
	5Hh/MrSzCMkmwYEUkxFeDIGqVSoBRasrjKr+KON2OrWeyxYRuC7G8OP3w6331Kq0MCK0iPPPV/W
	2GuwkI3tJG+pMrtR9rEtJImvmzTattd4TMjKDm8snABY4YFQXr/mHZGXIQx2IeI2wlo7zmkgc2Z
	hWTmEGUhLd1pLGPx6bG4veQUuRw1ClTCxqXbWZ0y84X5o3bvQxhSUh6p1al72/X+ZnoF8Lbn7tE
	UMOS1rL4kSOEK1xk3i2DePIbtsq36foNeYPBEK4sggOlxY3xy+O/tP/JH5FeklGkmjU7/XtJed0
	MEyI6gxmX9CBV6I8u9L0wB/9uBCKSdiYKvu1rVaEHOorwLDtHtjK1O7Xt8NbmYwr4AZYctJrKL+
	0JYvZrO1k=
X-Received: by 2002:a17:903:2449:b0:2a9:322e:2473 with SMTP id d9443c01a7336-2a93400297fmr68462355ad.48.1770298521729;
        Thu, 05 Feb 2026 05:35:21 -0800 (PST)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a933850f41sm57760505ad.7.2026.02.05.05.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 05:35:21 -0800 (PST)
From: Colin Huang <u8813345@gmail.com>
Date: Thu, 05 Feb 2026 21:34:35 +0800
Subject: [PATCH 1/3] hwmon: (pmbus) Add Delta Q54SN120A1 Q54SW120A7 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-add-q54sn120a1-q54q54sw120a7-v1-1-09061ecacfc7@gmail.com>
References: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
In-Reply-To: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Colin.Huang2@amd.com, 
 Carl.Lee@amd.com, Peter.Shen@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770298516; l=3440;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=wpkimDav46YFJfJQ9r6mE6i3dTDYKK0zgDWwQx5eOtI=;
 b=+lC/kRBdv5CB5cGPfsnlTqiRK3DOgwLTb3aC73wBPzJDIKXdvBf2a4qaqPE/mA81eYXGxSQQb
 IXdk9bUaCkGCcBq9DlcRCaOxfusrAeu4eT1nAaYwcItlTcLD2Ae292o
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263026-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B4260F3555
X-Rspamd-Action: no action

Add the pmbus driver for DELTA Q54SN120A1, Q54SW120A7,
1/4 Brick DC/DC Regulated Power Module with PMBus support

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 drivers/hwmon/pmbus/q54sj108a2.c | 47 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/hwmon/pmbus/q54sj108a2.c b/drivers/hwmon/pmbus/q54sj108a2.c
index 4d7086d83aa3..dca084c98fba 100644
--- a/drivers/hwmon/pmbus/q54sj108a2.c
+++ b/drivers/hwmon/pmbus/q54sj108a2.c
@@ -21,7 +21,9 @@
 #define PMBUS_FLASH_KEY_WRITE		0xEC
 
 enum chips {
-	q54sj108a2
+	q54sj108a2,
+	q54sn120a1,
+	q54sw120a7
 };
 
 enum {
@@ -62,6 +64,34 @@ static struct pmbus_driver_info q54sj108a2_info[] = {
 		.format[PSC_VOLTAGE_IN] = linear,
 		.format[PSC_CURRENT_OUT] = linear,
 
+		.func[0] = PMBUS_HAVE_VIN |
+		PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS_VOUT |
+		PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT |
+		PMBUS_HAVE_TEMP | PMBUS_HAVE_STATUS_TEMP |
+		PMBUS_HAVE_STATUS_INPUT,
+	},
+	[q54sn120a1] = {
+		.pages = 1,
+
+		/* Source : Delta Q54SN120A1 */
+		.format[PSC_TEMPERATURE] = linear,
+		.format[PSC_VOLTAGE_IN] = linear,
+		.format[PSC_CURRENT_OUT] = linear,
+
+		.func[0] = PMBUS_HAVE_VIN |
+		PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS_VOUT |
+		PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT |
+		PMBUS_HAVE_TEMP | PMBUS_HAVE_STATUS_TEMP |
+		PMBUS_HAVE_STATUS_INPUT,
+	},
+	[q54sw120a7] = {
+		.pages = 1,
+
+		/* Source : Delta Q54SW120A7 */
+		.format[PSC_TEMPERATURE] = linear,
+		.format[PSC_VOLTAGE_IN] = linear,
+		.format[PSC_CURRENT_OUT] = linear,
+
 		.func[0] = PMBUS_HAVE_VIN |
 		PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS_VOUT |
 		PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT |
@@ -269,6 +299,8 @@ static const struct file_operations q54sj108a2_fops = {
 
 static const struct i2c_device_id q54sj108a2_id[] = {
 	{ "q54sj108a2", q54sj108a2 },
+	{ "q54sn120a1", q54sn120a1 },
+	{ "q54sw120a7", q54sw120a7 },
 	{ },
 };
 
@@ -278,6 +310,7 @@ static int q54sj108a2_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	u8 buf[I2C_SMBUS_BLOCK_MAX + 1];
+	const struct i2c_device_id *mid;
 	enum chips chip_id;
 	int ret, i;
 	struct dentry *debugfs;
@@ -314,8 +347,12 @@ static int q54sj108a2_probe(struct i2c_client *client)
 		dev_err(dev, "Failed to read Manufacturer Model\n");
 		return ret;
 	}
-	if (ret != 14 || strncmp(buf, "Q54SJ108A2", 10)) {
-		buf[ret] = '\0';
+	buf[ret] = '\0';
+	for (mid = q54sj108a2_id; mid->name[0]; mid++) {
+		if (!strncasecmp(mid->name, buf, strlen(mid->name)))
+			break;
+	}
+	if (!mid->name[0]) {
 		dev_err(dev, "Unsupported Manufacturer Model '%s'\n", buf);
 		return -ENODEV;
 	}
@@ -325,7 +362,7 @@ static int q54sj108a2_probe(struct i2c_client *client)
 		dev_err(dev, "Failed to read Manufacturer Revision\n");
 		return ret;
 	}
-	if (ret != 4 || buf[0] != 'S') {
+	if (buf[0] != 'S') {
 		buf[ret] = '\0';
 		dev_err(dev, "Unsupported Manufacturer Revision '%s'\n", buf);
 		return -ENODEV;
@@ -402,6 +439,8 @@ static int q54sj108a2_probe(struct i2c_client *client)
 
 static const struct of_device_id q54sj108a2_of_match[] = {
 	{ .compatible = "delta,q54sj108a2", .data = (void *)q54sj108a2 },
+	{ .compatible = "delta,q54sn120a1", .data = (void *)q54sn120a1 },
+	{ .compatible = "delta,q54sw120a7", .data = (void *)q54sw120a7 },
 	{ },
 };
 

-- 
2.34.1


