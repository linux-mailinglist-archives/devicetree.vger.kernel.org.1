Return-Path: <devicetree+bounces-272169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULV5CAXmqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B3865222BF8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 265C030371B6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D0C3AE1A5;
	Fri,  6 Mar 2026 14:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="EweMiyHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91263ACEFA
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807613; cv=none; b=YSXu3cXgnRMYn5Z3Clgz/PjyAESB7/U83Jdc2Bq2WaHzyi8Xb9YTcZV1VM7NQCUwpVdGI91mQd+z1aGUuqqbqANTMsTdqLnIaY8uZQYtON0i3TnbNGp/28SVmSWvvNzU55RG4ZZm2PBgDrw4F8abLaiCP9mAJSwqNl0aB/GwBMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807613; c=relaxed/simple;
	bh=rZeSH+p/sWb94+YtWuBoX7zwjk1MlkPbjBLWjAkhzPY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iIwRKbnMSF97CPVp0Cbr9zog7BlYFoHZo3HPMzTtpSPLl8tjmEQiuY/FR+5JWgu9AZnt98636r5FVuWjU6LweCmGewQz7QH32IuaSEGuzIUe49MgxfjX8xDKnukDT8jCJmp2916MyA8UwVj0LrC5vFFyLNklBmq27I3dxTgnINk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=EweMiyHU; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-483487335c2so78551655e9.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807609; x=1773412409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I8FV20nY94XdgsSpk3nNKgaUktiutL3Fj9XNodWc9Os=;
        b=EweMiyHUqlgtoxy20WJ+dlyC8cMiOwddivymdEGCf6tD/xxzAgRM06PnJCTRGti1L0
         DvW4y3ocSuI9+d/9RRr2IZds+u7CCR++RvvhggHJoRruYqVESDJt5WMmJcUlvPmZpdt9
         XSEie3HniWPZ/yFd0ZoTjyJX/jx5yZkoK95PGzcLTo9jjn3wpwRM1aRq3adFhK+bCIpM
         fvrxAbG/ETbBIqUWrOPb/YKmyx0yh3kBd3rRysF9VmCij0bcIKmd4lxAD69fgZT8P2Z9
         aHYjcf9N8c4EnubEysahCpi3WXPMia1qtXI5faXI+uSgc8+gnH08L+9JGhlZKPMaxgBD
         Ry4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807609; x=1773412409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I8FV20nY94XdgsSpk3nNKgaUktiutL3Fj9XNodWc9Os=;
        b=UsKQ6wGQfiyEDtVwr6OuCPc/b6nGcD/tzqh5VjkxZeEzYm8BYfP4BMTh+pbxTDMeVS
         mVUDGwF6jshrFN/b5ANzvuG/z3peYhJ4vnjZPpnpEvwJhB+Cys0FMxMx0uXlHnpzMp2Z
         Xe//i2277Q+RX6cg45TMR4tX4HxoqVeZhw2j/YvDsrYXJfOsj+YuhQAhEqf44gdA5AqH
         WQSCIQ+baZRHIwRVshLPHgdUGCFbPGFEGGsv4wTs4rGqukMb/kkoYQ/AUmUydv+FWffQ
         4wMl811MO2JxWPOmIkn9YpdS3EeTIN7EI5NkcgWJL6zqGsmoWgbSJt+SoRnQxHbJcY/y
         R7AQ==
X-Gm-Message-State: AOJu0YwTVnxUhpIkQ/AjxnWGawp5Z5XVkeyP/J+GRtnBHjOC9PaEKOyY
	q8Ycy2x2Uijb7VrXUyrwCKS0qILs9FWdKkE7npF9uriEkLjp1hbljJGMC1VBC8yCtcI=
X-Gm-Gg: ATEYQzw5iAPhTlVBI+q/FQh/EKoVpR0DTnv+GvYQPtFp6dzSZxb/xqc2coty1kzLcsX
	0YamULra7Rle69KUeZsnNvsTGKbkTDC/zR7T3MFSF/TdxLTHzDhH4XY8l3Tq6HrquRFnGvgzU5h
	2RAHtxqo29MZRSA755xRniCZ0BWuD8jRsAeQINGrKpR3SdYQUaqpARZ/9j46siCLyLT5apALUY7
	D496cfxOtXtCaZERDeAouOMwpvEwUdOtCg642kISTOVf0SUScUSp6RWuE4VjtaiccjJD+hYW6P5
	SmNOouNiJomq+Nc3W9zzysRjDQbPnPQ3aR/kAwtzNbk0h8jypohvZlp8Nl+jP+PJB5mf0R1B9qY
	Jh0p3qCPZQN0ZoF2CCWv6nmJbQD+dSDk6qIvyOrTYdbQGV5tyLwzWCSBV7nSF1vXkdJk9GCyRay
	uvGnJcwI0/S84g3oJIVjcOaJtDN3+baiKaMCfJ85wiwI3DVPIq0EQ82feL2/yitJyMyTrGwENLr
	0GTan1SkV6Az86H
X-Received: by 2002:a05:600c:3596:b0:483:6f37:1b51 with SMTP id 5b1f17b1804b1-4852697955fmr34852995e9.23.1772807608970;
        Fri, 06 Mar 2026 06:33:28 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:28 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Mar 2026 18:33:07 +0400
Subject: [PATCH v2 07/11] power: supply: bq257xx: Consistently use indirect
 get/set helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-bq25792-v2-7-6595249d6e6f@flipper.net>
References: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
In-Reply-To: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3364; i=alchark@flipper.net;
 h=from:subject:message-id; bh=rZeSH+p/sWb94+YtWuBoX7zwjk1MlkPbjBLWjAkhzPY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuerqkvnqiT8+3o1lGnJ6+pseXrQtbEfuxb0n2fe6/l
 S8sK9O3dExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVKZ8ZGWbal1zZket5rlD8nmCb+NMpAdHSdU9eCk+YHR+g8jKtiI3hf/7UMw0
 PA/9WlbM6JSx4vmg7b9/mhi+rZa+uy3oV/ebHHy4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: B3865222BF8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272169-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Action: no action

Move the remaining get/set helper functions to indirect calls via the
per-chip bq257xx_chip_info struct.

This improves the consistency of the code and prepares the driver to
support multiple chip variants with different register layouts and bit
definitions.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index e14dd16f9d08..deb60a9bd222 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -30,9 +30,15 @@ struct bq257xx_chip_info {
 	int (*bq257xx_hw_init)(struct bq257xx_chg *pdata);
 	void (*bq257xx_hw_shutdown)(struct bq257xx_chg *pdata);
 	int (*bq257xx_get_state)(struct bq257xx_chg *pdata);
+	int (*bq257xx_get_ichg)(struct bq257xx_chg *pdata, int *intval);
 	int (*bq257xx_set_ichg)(struct bq257xx_chg *pdata, int ichg);
+	int (*bq257xx_get_vbatreg)(struct bq257xx_chg *pdata, int *intval);
 	int (*bq257xx_set_vbatreg)(struct bq257xx_chg *pdata, int vbatreg);
+	int (*bq257xx_get_iindpm)(struct bq257xx_chg *pdata, int *intval);
 	int (*bq257xx_set_iindpm)(struct bq257xx_chg *pdata, int iindpm);
+	int (*bq257xx_get_cur)(struct bq257xx_chg *pdata, int *intval);
+	int (*bq257xx_get_vbat)(struct bq257xx_chg *pdata, int *intval);
+	int (*bq257xx_get_min_vsys)(struct bq257xx_chg *pdata, int *intval);
 };
 
 /**
@@ -489,22 +495,22 @@ static int bq257xx_get_charger_property(struct power_supply *psy,
 		break;
 
 	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
-		return bq25703_get_iindpm(pdata, &val->intval);
+		return pdata->chip->bq257xx_get_iindpm(pdata, &val->intval);
 
 	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
-		return bq25703_get_chrg_volt(pdata, &val->intval);
+		return pdata->chip->bq257xx_get_vbatreg(pdata, &val->intval);
 
 	case POWER_SUPPLY_PROP_CURRENT_NOW:
-		return bq25703_get_cur(pdata, &val->intval);
+		return pdata->chip->bq257xx_get_cur(pdata, &val->intval);
 
 	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
-		return bq25703_get_vbat(pdata, &val->intval);
+		return pdata->chip->bq257xx_get_vbat(pdata, &val->intval);
 
 	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
-		return bq25703_get_ichg_cur(pdata, &val->intval);
+		return pdata->chip->bq257xx_get_ichg(pdata, &val->intval);
 
 	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
-		return bq25703_get_min_vsys(pdata, &val->intval);
+		return pdata->chip->bq257xx_get_min_vsys(pdata, &val->intval);
 
 	case POWER_SUPPLY_PROP_USB_TYPE:
 		val->intval = pdata->usb_type;
@@ -632,9 +638,15 @@ static const struct bq257xx_chip_info bq25703_chip_info = {
 		.bq257xx_hw_init = &bq25703_hw_init,
 		.bq257xx_hw_shutdown = &bq25703_hw_shutdown,
 		.bq257xx_get_state = &bq25703_get_state,
+		.bq257xx_get_ichg = &bq25703_get_ichg_cur,
 		.bq257xx_set_ichg = &bq25703_set_ichg_cur,
+		.bq257xx_get_vbatreg = &bq25703_get_chrg_volt,
 		.bq257xx_set_vbatreg = &bq25703_set_chrg_volt,
+		.bq257xx_get_iindpm = &bq25703_get_iindpm,
 		.bq257xx_set_iindpm = &bq25703_set_iindpm,
+		.bq257xx_get_cur = &bq25703_get_cur,
+		.bq257xx_get_vbat = &bq25703_get_vbat,
+		.bq257xx_get_min_vsys = &bq25703_get_min_vsys,
 };
 
 /**

-- 
2.52.0


