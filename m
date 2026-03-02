Return-Path: <devicetree+bounces-269910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJAMH2pspWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:54:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB741D6ECE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CEF5E302BB98
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5942E35AC2E;
	Mon,  2 Mar 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="tGevLxj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F3435A952
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448633; cv=none; b=UVlN0+ChuTAH7od/83vtWNO+vPBMvAY1fKTLGNRxCBtbOTMTjlPfrU/wt8L/uEZEeOxaTzBr4VYudSPGQycmJPQ9T7feCbFeSZXDer5/Po7ZlfJWWY++tQC0IAFNs595vRqVC/lG54rpQ3eof8C1SuNbmg3UhoWrYThMtZ9TWz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448633; c=relaxed/simple;
	bh=3WJk29Oc6ASs5QbTykgT/4YsAbA7z1k86z1JB86Wapc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AfhjFbsq0tAMAkXl8U4R/cTREOZN/CSAy53C6EtvCyM0PDreeOt54hSE5xqlaow5dn8QRUOTfJK6qfl86Sv5pfTx/CFMRXaeMvhstbufNZQeETeXEw9u/s3sByR++4CpDVIDNcur09Bjqg/5e+Cpet0UzTPdUY5XF/gUYE3EvB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=tGevLxj7; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-65a26c220b6so5539790a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772448630; x=1773053430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fb2xAImtJ+lQV4+0+mQF2V3ooZDMtzcy+tKq3+ul2r4=;
        b=tGevLxj7jVrB5i0jAOwS33nlQ26ydkSQ3r6n0C2AnxAQ0TRRh5Yyag8DpHNcCSpfEy
         w+Iowob9KqME29GRS5KQ49/86KM04pCBsFfEqGHoqubeNhuhYI4E5tTaJQ/3whGUJ58e
         urT02IaMIVkv9wMX1QXWrQZYUa1JZen7LLUVsYPG3FBnE+R5ET+UfFW5UCFxNuU/hodc
         0unVGp4ui2KQuCWlvYMn79uA1dINBuqT+EzPLlJG0cZJ4KkljUJr+TQzd/KWi2kBEDlf
         2nMQZ3tUbDPfZXGFfP4N6qfAT9eaD+mgSNQT+ue8MJPBWC1UMULxGsBYalqtyMGZ10tm
         zJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448630; x=1773053430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fb2xAImtJ+lQV4+0+mQF2V3ooZDMtzcy+tKq3+ul2r4=;
        b=TpVP6heq77aIP24pZgsuCAiUeRIp4NrXZ3qrS2GFKKId5c4o0fdRrv+meiVggzf0ub
         3SNuORAloztdtojP94oWHMGONwqhhx7VWMhiVoNvqy2L0Jcsc6zjTvIxJBSY6OCxYjAz
         xJ2OBPFccfx0k0HFerVRLHG9UaZ1SckK+wTEB887gChJwS4qAZ4mZUfcVb/K8zCAmd2i
         hwwFPKiCXlLslh6BBTNuiwjiPI+ieYJDm/M9BEIzTSCHa04H0sHYyjaVzN6WXxkPJO44
         Gmj/dyRz5pg4wC8FRy9UqOQ+bZOlDgyuUf/ZJx/EPYEC5mFTMnlzylQcM7uGUYzkcqjk
         4r1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVSEiTPp0+jW83Fv+izqsOfxy3lgmIIYb3DXa5wSjQIbk+y7b4dHwa6Xqj9AwgZEkLtue4bqRfW+4NQ@vger.kernel.org
X-Gm-Message-State: AOJu0YytqcKsEKhi2LelnQ6VaEmbMaSSk0c0MXoNcawiMs8MTq96VObJ
	wBSBoQozJ/KXUc3/bjbGsjbB9XdWbeSoRS7JI6UaQjEKr5tuvjxUgbQ0v9UA3+M+fQM=
X-Gm-Gg: ATEYQzwui7Zil2JlpCTmilpDrlO1UkSZ1Wl5ON74mL43RWo/DEl0fPBTQ2XqvpGs7wj
	ACz9YX+MbktVXqHu/oLTBw1HGniUwZo4y+Vi6aeyKuKukwTrHP04pNReBM9k01Un7s5yWQlDgES
	s+6J+WqsjrQWn38nza2IyjO/EnkHSJzNbrDQ3l266MzSjIdRoWIXTYcpb2o9rV507c/P0vBzhNm
	agudS2UWzqplGXX7HYvgD9b8h5fgXRw+Ro3y4OqkkWxQGgH1gs4oyz+kbWTdxx9d0rl1KkZ36Oe
	iZZozYdrWnh51OC01yoLrkMDkpECKMAquKLfWkDfjolgJ+zQBqAuhrO7U3do4l2ppa89bJXnHBM
	NAIFt4vigcyqF383X7tI9umFc4yN9TmszqV15dUwZDpdc6fsxYaIT1VyxzeRUcF0j3abN1cgB9K
	a6X6Ra0Qb964WPN8xAFs8uaPjKW/KfR/5s8SpoX/ifuyEfhjTnEdmkbQDYiqpiVLnBLECgUTxLJ
	GkBDAkcb1po9ABZoQHZ
X-Received: by 2002:a05:6402:2111:b0:65f:71ed:7ab9 with SMTP id 4fb4d7f45d1cf-65fddceee18mr7094753a12.22.1772448630129;
        Mon, 02 Mar 2026 02:50:30 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabbd98bcsm3511769a12.0.2026.03.02.02.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:50:29 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Mon, 02 Mar 2026 11:50:27 +0100
Subject: [PATCH v4 3/4] Input: aw86938 - add driver for Awinic AW86938
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-aw86938-driver-v4-3-92c865df9cca@fairphone.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
In-Reply-To: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772448626; l=3554;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=3WJk29Oc6ASs5QbTykgT/4YsAbA7z1k86z1JB86Wapc=;
 b=yAD7qSNA38IhaULQIDUEm3f5FzrrD8mZ4sgoaUHU2Gy4KL2uEAbON2sQr6KXtKOD0RIZAKcPP
 bVXbNLa119tAlVNZMP/fC22naYzwoWIMI9shRJmKAv/5XMd4mX3lClC
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269910-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email]
X-Rspamd-Queue-Id: BAB741D6ECE
X-Rspamd-Action: no action

Add support for the I2C-connected Awinic AW86938 LRA haptic driver.

The AW86938 has a similar but slightly different register layout. In
particular, the boost mode register values.
The AW86938 also has some extra features that aren't implemented
in this driver yet.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/input/misc/aw86927.c | 52 +++++++++++++++++++++++++++++++++++++-------
 1 file changed, 44 insertions(+), 8 deletions(-)

diff --git a/drivers/input/misc/aw86927.c b/drivers/input/misc/aw86927.c
index 7f8cadda7c456d7b5448d1e23edf6e3f2918ba32..e59b958fac1a1144307cb216560f522485ad26e9 100644
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
@@ -717,7 +746,14 @@ static int aw86927_detect(struct aw86927_data *haptics)
 
 	chip_id = be16_to_cpu(read_buf);
 
-	if (chip_id != AW86927_CHIPID) {
+	switch (chip_id) {
+	case AW86927_CHIPID:
+		haptics->model = AW86927;
+		break;
+	case AW86938_CHIPID:
+		haptics->model = AW86938;
+		break;
+	default:
 		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
 		return -ENODEV;
 	}

-- 
2.43.0


