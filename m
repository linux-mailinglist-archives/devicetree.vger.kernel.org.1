Return-Path: <devicetree+bounces-244316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF71CA39A3
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 13:29:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 986F8300F33C
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 12:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EEB9340A6A;
	Thu,  4 Dec 2025 12:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="x9bgmvdL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D63033F8D6
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 12:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764851360; cv=none; b=L+0GaurVa5OIJz0HEQZwwdnbzng/I0JvZzUpn5JODQM1pu7zHWIOQPCCjLzRnJ/Q1v4yiTiIE6sI1ds9eQH3iQ27PV5vNKbx52l1GpEjKC4+HzlwXin/FzbAZ7spSlYNBS0Qh/dMz/8BFwuOiZLGpaXpe5iaWHkX3Fjd0cgLJes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764851360; c=relaxed/simple;
	bh=g9caGip8nEOSZ45sBttRAv916t/vQHL6PXG7Jv3w3QU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cn8lv446GxykaUwUDE4AeFh/c5gjbiIQPoP87EKUg9JYP3102HpWbPVNqfrNW4HDaon1u5g8tN00GDIjlxKn+5NZXoLbzH0bf/+zEIqWLtQ+z6FnFxfiGRm+O0FV1dUrxFX9tRnhUShN+EMD4I0XPS/luV0QtA/cZnVo5lOHhWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=x9bgmvdL; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64088c6b309so1574540a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1764851353; x=1765456153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cAKVhALDjpLZtr9Twp/5glRYwXvQmazP9DHiOTwRrM=;
        b=x9bgmvdLp5bOq5DuyGU/DIzHR6KRYhMLmMrj538k3MQZ5kWQCnBuHvofWVGt3+xzFs
         PKrirfANxwoVVVUlwEKpACG03saR7zM6zNNoei/DbYz7JNYTp/QHUqrZihgIEmpo4LU8
         ICe+Y7BxbsvFMX9n/ZOb5No4qTlDkToWYyQNTAx73x4cNCpTUYyJz3GQvC/yjTKomT3d
         EknPwx+KiUmQNx0+S4fxJ8mN7fvKoKbo8GL4ZFYBQ9Q/Wu368TFvPFvXra0kyPJayahq
         e4IhmR4njHsPWtgneII8iQBXjsWcG/DWz9kTzT1cD/hqOrZNRRmAPIN6hq7IQCXYA8oY
         0XaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764851353; x=1765456153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3cAKVhALDjpLZtr9Twp/5glRYwXvQmazP9DHiOTwRrM=;
        b=R+hyPKtIBuOJYz7fgrN+o+jIv+/HGpAX0lpx3YoY6JrEZPlNyk4nPcJP9IHIPGQX/j
         7NSZ0oYGMeXIbHcHBJP202fJ27HNHJxJPO9qEfMPrQuZop69L4IBSnKhavM7+Mt0oXOy
         001N19W1uor26sRuYcaVht4DDYZ1K0Bm2XYFH3kfImGchwvlc6gZka2UzRKlsqAdJGk1
         F89WOGExnh68E1rP+WB/CJsYIvjHKBOxdNjaCbzEmJnwXNrZ3DmPWDuQ0tSqz36PHeVz
         z5nXenO1pdknP4Mks9hF9On1Mfnkh0r3nqJeWYxIVX0Kcr+liJXa3ZKkFTXL1kBxAFDW
         ffKQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4CGv276EhdX5+/MkDFmHkSR9dgGhiBuX9mPRh5vy70r9VOPeEtbJFNsrBxqJqbQZcisTsEPGXtjb0@vger.kernel.org
X-Gm-Message-State: AOJu0YxwEd4viBLNOgNii322vl+MICT4fCsg/7nhlcbOxxkdCRm1h9LD
	YnhJgEwCZVs7ce7hTYNQusHEChUy4+BfZZJG6wQ7FppSEFG3NyAL2VlKMZqywjVYa5w=
X-Gm-Gg: ASbGncvJdGYQ8JMQstliEwOkinbz0aji971fxsqfpgEI2VVsp/4vg8neWSoG3ua+n16
	TAy9VoxG9uTU5R7o9BBubM9+2/j3ucNEISbI5f3NxjPP4ayyccSurZ2VNS+Ww0L6B27sDH+iV5M
	Aks35CGKBfJU7UjqYfILk1+IHQQKC5ZwqcxJ1kmJkv1Y13NqI+7aTg/xDS8e3bnggP321LGxadA
	tIeAIJjhYN2JCWdDxbU6Kyt3Zy8slNQDB53BFO39nlCO/2CLIdN9rLBcMoO3W3VP0v3mse5uJWO
	NRDwFJqyHftEC55zbzvVMwQFuAz9rpIwzr8kXpcINxTKtsegDqQY5dPdX7mTMWDFXHWt/sQLaKF
	vylSwV9nUWxzfuIhFwye8+Q9Qglw7LbXOBbxp0JWfagOYEs+Z4wwQgUXhFdK+Q82dIOLeuz5yUA
	orflWKHRpm4d5gu5PX++HfkOfpBqHD/3p7yutMNIsVG+WX9LF84XtXWSrUcaQWQVVZ6aj5
X-Google-Smtp-Source: AGHT+IG//OsOH2wLVDgIH2ZekMNRwF4VIMghhR7eDiuVEDJ9yrkn8agOLgvCyX6HmQUP+n2SwnyMSA==
X-Received: by 2002:a17:907:97d0:b0:b71:29f7:47ef with SMTP id a640c23a62f3a-b79dc7826a6mr641436966b.61.1764851352486;
        Thu, 04 Dec 2025 04:29:12 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4a2f19dsm121351666b.64.2025.12.04.04.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 04:29:12 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 04 Dec 2025 13:29:01 +0100
Subject: [PATCH 2/3] Input: aw86938 - add driver for Awinic AW86938
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-aw86938-driver-v1-2-ebd71868df3a@fairphone.com>
References: <20251204-aw86938-driver-v1-0-ebd71868df3a@fairphone.com>
In-Reply-To: <20251204-aw86938-driver-v1-0-ebd71868df3a@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764851350; l=2259;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=g9caGip8nEOSZ45sBttRAv916t/vQHL6PXG7Jv3w3QU=;
 b=zsTQCONX5cSL63xwKbm1K0spvpjuxlEq0t96aBr4SHekj4HeOM2iTLGN9IgFBl39CcTFMrPOW
 0pgoEt63fTdDLvTpgZPpPFRu1on6/AB9AQOwZyXHp88Rk54vcUuldIF
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add support for the I2C-connected Awinic AW86938 LRA haptic driver.

This driver is functionally similar to the AW86927. but suffers from
distortion with higher gain values.
Its vendor driver sets this value to 0x45, which fixes the problem and
does not noticeably effect the AW86927's playback.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/input/misc/aw86927.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/input/misc/aw86927.c b/drivers/input/misc/aw86927.c
index abd117bb309478b3049f74e53582f06989f74e90..39e22dbdeeb7494ba1a8d4ca8fc40b5580c304f9 100644
--- a/drivers/input/misc/aw86927.c
+++ b/drivers/input/misc/aw86927.c
@@ -166,6 +166,7 @@
 #define AW86927_BASEADDRH_VAL			0x08
 #define AW86927_BASEADDRL_VAL			0x00
 
+#define AW86938_CHIPID				0x9380
 enum aw86927_work_mode {
 	AW86927_STANDBY_MODE,
 	AW86927_RAM_MODE,
@@ -372,7 +373,7 @@ static int aw86927_play_sine(struct aw86927_data *haptics)
 		return err;
 
 	/* set gain to value lower than 0x80 to avoid distorted playback */
-	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x7c);
+	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x45);
 	if (err)
 		return err;
 
@@ -602,6 +603,9 @@ static int aw86927_ram_init(struct aw86927_data *haptics)
 			FIELD_PREP(AW86927_SYSCTRL3_EN_RAMINIT_MASK,
 				   AW86927_SYSCTRL3_EN_RAMINIT_ON));
 
+	/* AW86938 wants a 1ms delay here */
+	usleep_range(1000, 1500);
+
 	/* Set base address for the start of the SRAM waveforms */
 	err = regmap_write(haptics->regmap,
 			   AW86927_BASEADDRH_REG,
@@ -724,7 +728,12 @@ static int aw86927_detect(struct aw86927_data *haptics)
 
 	chip_id = be16_to_cpu(read_buf);
 
-	if (chip_id != AW86927_CHIPID) {
+	switch (chip_id) {
+	case AW86927_CHIPID:
+		break;
+	case AW86938_CHIPID:
+		break;
+	default:
 		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
 		return -ENODEV;
 	}
@@ -834,6 +843,7 @@ static int aw86927_probe(struct i2c_client *client)
 
 static const struct of_device_id aw86927_of_id[] = {
 	{ .compatible = "awinic,aw86927" },
+	{ .compatible = "awinic,aw86938" },
 	{ /* sentinel */ }
 };
 

-- 
2.43.0


