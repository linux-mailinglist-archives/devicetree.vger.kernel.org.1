Return-Path: <devicetree+bounces-260509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BSUFLE2eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:17:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3099A5634
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB9BA311F653
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B39BB3101B6;
	Wed, 28 Jan 2026 15:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="KRa7ZL4s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A6F30E849
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615488; cv=none; b=VQxGGHDtCY6xuFBpe8POHmw7zF4bQrH/z318rjP/QKCbrA8blQnUGvnU22ZmiWCx8MAonJvDZSfj5IpZ+jmpaQG1wUnY6KGTCZTwYjUvAg4/U0AdFWYbJCAcjGEbrMeIbCQMjlpt8SuRMB39arespIZEvjG1Fj/0pftzTTHPak4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615488; c=relaxed/simple;
	bh=JDOblUMv3CRigfo3XzUT9pA2bSBe1pUX+IfX4UM2YmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZIh26ZwtASkkuBH4mXiD9Jfkqgz/Wjw6/xGDSdv5mbbxuzHy4F6WljVIwNC9Z45ZXHFT+aYD45n5sFmYtctAsoExE/HulRRongIn4MSYbLP6JgkipKvUJHduscyjJ5LhMpTfn6rQteIyhvSkoI1Bl0Si9sEgPao0Mr3XZb7+KwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=KRa7ZL4s; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6581af9c94aso52997a12.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769615484; x=1770220284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jy/mJos/LokpB1A73skiAstLSnipJqyWtRQg1NLBe6o=;
        b=KRa7ZL4sIsqGlZ2RPUCqXlsembvEEXhaCRo1UKHJl2Dtv7IBpPa9WnUd0L2QMW0t2L
         9nLHl2bvAJwNC1kFgn9viySVa4tM7bzTJ3K9aCrue+ej4UuLkEkosMNQSuXIl9bu8iyQ
         cUoXVNg0UxAzYEhaZq7ZEFrCXIR3H0awH8nobrteaEPTbmjgSEegB+f2os9dv1ob7dLY
         9Y4xdANncLpgoJ02tbS9xsjUTXkwlWbzGPyTrTHE4Elm7nrr1+VUA6Ma28eDac14P27c
         tellhGD3VzR1eKX5M9QOHbhLdRuJbhF1kNp9aS1AU9c/eAT12Gbv+jfbyAjA+us6UgWW
         8iPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769615484; x=1770220284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jy/mJos/LokpB1A73skiAstLSnipJqyWtRQg1NLBe6o=;
        b=mHBTUKcGnZStxqlO4VoXWAv1JC6qcqqrPMbpBv+j/9Q0XppaKPOn6BsMHnLeYQR8//
         HIvlBGSnIcGTW9IqTxcdz46G3ewuhKVUUGGKzvooqpk6HCn7jWV4ZHWBi4SxBVTIK/rm
         wclP8aXarT5YFpgMkA3q44VttKEF7igfRrX8m3A5nohXzM7JZmJbX0lQAOxxHh6d+0BH
         F2SvOXc/8lZnXwzdgvOsBV8cnKc0G8rTXUNusnxSg2L6cWySFyZ4j3/5TahhbKS6oYjO
         LfZUdlliXr2+qRN5o6s+OP502aqRJkVwX5XkE3fV7X+A7Jv20WMfIHiScdwCWR9fS74h
         Dgzg==
X-Forwarded-Encrypted: i=1; AJvYcCWEbp/kZbcqKehZC2gNQOizZi76mnf6vYLmj/dmgpmJLJarQySm3+kpyau5Jb8cSbdKkt0PYYCJIOuU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywks0N8CvOs5Q0qvqo/DPwGZU9V6oorUQbWLkFT4AuybN7H2PEf
	LWmK0e8cbuWX6VqPk41PQEGaFYHUCQHuCzi/obDS3A1UYjWLloS8DDJQ4MQ1tjK0sqo=
X-Gm-Gg: AZuq6aKA0WtLhvYEBFjVVnli1e0ClsSEajJjp6Z0rdnbAjA8owL08msoVG3/FbV4QCe
	X22WGiEI3ZFqMqeTWkuIVy5mJwnR4nbG1kXR53ThoRsrmEPmqWw/AfhjMbpwLR4EI6ASTUqjUX4
	DcDAj4n6CUPenR3+84jOaVuzoMOXFnS8+qD1DFGuywjXbyIqg/JpN6wK33OzaTpSWl1DBVQ+Rcj
	zHuybeK+pH6PMauaStA6xEHhSG/icQ3Ze/BVbv9PsSpqwOU9KjOvXb8LvllzR+WjVtQ0vs6urcN
	f8/t/nSbouxDENwO/kY+PKQxfrzR4W3qkkN2un5TgKgjnQyFDf1qlBOFNV51VSVeodk9Vfq2iD3
	ZTJ2y3kuxuAkOIS0kZ7Kotd1Eyth08EcJonXPrwg2oL1ik7E7FrhK/+MpT60BrILySf2JLO7mDv
	lACTfJ9zjwtpCkDD8dFHqCftraAwWbv+tZmVx+VKUH2Vb6qpFwvhOs8HlZIZVWknnFsFEu
X-Received: by 2002:a05:6402:51cb:b0:64b:3225:b771 with SMTP id 4fb4d7f45d1cf-658a6018e43mr3846931a12.6.1769615484396;
        Wed, 28 Jan 2026 07:51:24 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469eb9fsm1727223a12.28.2026.01.28.07.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:51:23 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Wed, 28 Jan 2026 16:51:14 +0100
Subject: [PATCH v2 2/3] Input: aw86938 - add driver for Awinic AW86938
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-aw86938-driver-v2-2-b51ee086aaf5@fairphone.com>
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
In-Reply-To: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769615481; l=4691;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=JDOblUMv3CRigfo3XzUT9pA2bSBe1pUX+IfX4UM2YmQ=;
 b=et6GkIyi92KWoO/S/6DS/Hfau2CUkKGZJ27uF0md++Mep35qYbak3CGWu/+wZv+bAGxYGHu6C
 oc3J2ZgvRkbALztNnXMctfqhvGhlQY79UhWlQzfTOLAEMwx1Lewgql0
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260509-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,fairphone.com:dkim,fairphone.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B3099A5634
X-Rspamd-Action: no action

Add support for the I2C-connected Awinic AW86938 LRA haptic driver.

The AW86938 has a similar but slightly different register layout. In
particular, the boost mode register values.
The AW86938 also has some extra features that aren't implemented
in this driver yet.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/input/misc/aw86927.c | 65 ++++++++++++++++++++++++++++++++++++--------
 1 file changed, 53 insertions(+), 12 deletions(-)

diff --git a/drivers/input/misc/aw86927.c b/drivers/input/misc/aw86927.c
index 8ad361239cfe3a888628b15e4dbdeed0c9ca3d1a..28ec6e42fd452a0edf1e1b9a9614e2723c6d9f93 100644
--- a/drivers/input/misc/aw86927.c
+++ b/drivers/input/misc/aw86927.c
@@ -43,6 +43,12 @@
 #define AW86927_PLAYCFG1_BST_VOUT_VREFSET_MASK	GENMASK(6, 0)
 #define AW86927_PLAYCFG1_BST_8500MV		0x50
 
+#define AW86938_PLAYCFG1_REG			0x06
+#define AW86938_PLAYCFG1_BST_MODE_MASK		GENMASK(5, 5)
+#define AW86938_PLAYCFG1_BST_MODE_BYPASS	0
+#define AW86938_PLAYCFG1_BST_VOUT_VREFSET_MASK	GENMASK(4, 0)
+#define AW86938_PLAYCFG1_BST_7000MV		0x11
+
 #define AW86927_PLAYCFG2_REG			0x07
 
 #define AW86927_PLAYCFG3_REG			0x08
@@ -140,6 +146,7 @@
 #define AW86927_CHIPIDH_REG			0x57
 #define AW86927_CHIPIDL_REG			0x58
 #define AW86927_CHIPID				0x9270
+#define AW86938_CHIPID				0x9380
 
 #define AW86927_TMCFG_REG			0x5b
 #define AW86927_TMCFG_UNLOCK			0x7d
@@ -173,7 +180,13 @@ enum aw86927_work_mode {
 	AW86927_RAM_MODE,
 };
 
+enum aw86927_model {
+	AW86927,
+	AW86938,
+};
+
 struct aw86927_data {
+	enum aw86927_model model;
 	struct work_struct play_work;
 	struct device *dev;
 	struct input_dev *input_dev;
@@ -377,7 +390,7 @@ static int aw86927_play_sine(struct aw86927_data *haptics)
 		return err;
 
 	/* set gain to value lower than 0x80 to avoid distorted playback */
-	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x7c);
+	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x45);
 	if (err)
 		return err;
 
@@ -565,13 +578,26 @@ static int aw86927_haptic_init(struct aw86927_data *haptics)
 	if (err)
 		return err;
 
-	err = regmap_update_bits(haptics->regmap,
-				 AW86927_PLAYCFG1_REG,
-				 AW86927_PLAYCFG1_BST_VOUT_VREFSET_MASK,
-				 FIELD_PREP(AW86927_PLAYCFG1_BST_VOUT_VREFSET_MASK,
-					    AW86927_PLAYCFG1_BST_8500MV));
-	if (err)
-		return err;
+	switch (haptics->model) {
+	case AW86927:
+		err = regmap_update_bits(haptics->regmap,
+				AW86927_PLAYCFG1_REG,
+				AW86927_PLAYCFG1_BST_VOUT_VREFSET_MASK,
+				FIELD_PREP(AW86927_PLAYCFG1_BST_VOUT_VREFSET_MASK,
+					AW86927_PLAYCFG1_BST_8500MV));
+		if (err)
+			return err;
+		break;
+	case AW86938:
+		err = regmap_update_bits(haptics->regmap,
+				AW86938_PLAYCFG1_REG,
+				AW86938_PLAYCFG1_BST_VOUT_VREFSET_MASK,
+				FIELD_PREP(AW86938_PLAYCFG1_BST_VOUT_VREFSET_MASK,
+					AW86938_PLAYCFG1_BST_7000MV));
+		if (err)
+			return err;
+		break;
+	}
 
 	err = regmap_update_bits(haptics->regmap,
 				 AW86927_PLAYCFG3_REG,
@@ -599,6 +625,9 @@ static int aw86927_ram_init(struct aw86927_data *haptics)
 				 FIELD_PREP(AW86927_SYSCTRL3_EN_RAMINIT_MASK,
 					    AW86927_SYSCTRL3_EN_RAMINIT_ON));
 
+	/* AW86938 wants a 1ms delay here */
+	usleep_range(1000, 1500);
+
 	/* Set base address for the start of the SRAM waveforms */
 	err = regmap_write(haptics->regmap,
 			   AW86927_BASEADDRH_REG, AW86927_BASEADDRH_VAL);
@@ -717,9 +746,19 @@ static int aw86927_detect(struct aw86927_data *haptics)
 
 	chip_id = be16_to_cpu(read_buf);
 
-	if (chip_id != AW86927_CHIPID) {
-		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
-		return -ENODEV;
+	switch (haptics->model) {
+	case AW86927:
+		if (chip_id != AW86927_CHIPID) {
+			dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
+			return -ENODEV;
+		}
+		break;
+	case AW86938:
+		if (chip_id != AW86938_CHIPID) {
+			dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
+			return -ENODEV;
+		}
+		break;
 	}
 
 	return 0;
@@ -736,6 +775,7 @@ static int aw86927_probe(struct i2c_client *client)
 
 	haptics->dev = &client->dev;
 	haptics->client = client;
+	haptics->model = (enum aw86927_model)device_get_match_data(&client->dev);
 
 	i2c_set_clientdata(client, haptics);
 
@@ -825,7 +865,8 @@ static int aw86927_probe(struct i2c_client *client)
 }
 
 static const struct of_device_id aw86927_of_id[] = {
-	{ .compatible = "awinic,aw86927" },
+	{ .compatible = "awinic,aw86927", .data = (void *)AW86927 },
+	{ .compatible = "awinic,aw86938", .data = (void *)AW86938 },
 	{ /* sentinel */ }
 };
 

-- 
2.43.0


