Return-Path: <devicetree+bounces-274042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA/AJsBYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB42263465
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A1745304CA7C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB1C3E0C58;
	Wed, 11 Mar 2026 11:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="LzpP/O27"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B660C3DEFE1
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230202; cv=none; b=J5SjAewd8bn6KAkSiR/FEhshcFgC+vDnkStoPX+ZMJYQk/Unfytc3blLOfJ8SUjPcV7RQZkTKji1617Y2t771/5J439ZTBwxmAxQfg+h/sux7Mp7NYKk20OTWnQbT144qrYtZVg+zGJNkoCj347kQYFBrNr2mkxRlrp9EEK2tgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230202; c=relaxed/simple;
	bh=K/K91eQQ75phcINLj4DBBQbD0ofWablCORf9BgG8obM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=olUcc4mWJMtmgnlrqmS/hUHzwZLUa8PekwQqhYv5scVVQqd4tGkaIcsGOLxShP7R4xPNhRmOxcmtTaDUCDUcjbj6D3K0lTu8qn7hgi/WGRIl48nmlM8GdhoamwsTe1NvcqGtZV/6ue/KcvEVRUK11W3aDIpFJFSISIpNR7aHRn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=LzpP/O27; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4852afd42ceso46490165e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230198; x=1773834998; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8b97w0FIxP+iQSlY9+U8NDMrKZX5YXrCInQTxcuoNL8=;
        b=LzpP/O27YW7DukXMieulBCJYDHhyhYhnbNWoNrY6cbJdcWez9OeJQ92TMk+P9kRVRk
         I5dMws7OgQFZ9C3EjX158ubq0r2Vp0Rmz1xrYSxSBGbk1ThXbfmQESoLg5CeQQzrL6Sb
         vSf1DHso40dEjYpXzIKhC7nBaQlf0MzzDxBIER17V6aYDtARpS30eZbpPmNR67RR3F5q
         NJug1s3ZKNIdpZlFpUxXL0YtLiz6C4lurrNwwqmrpRtgbccnfxu+cTdY1Ap0CqWaovXc
         PUyj1RYyb1ccMG6g1WBA3zCOO5m+lS+SGNeDlBDcwQNcYHJTCBlqEaLkN63U5fjkY030
         nujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230198; x=1773834998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8b97w0FIxP+iQSlY9+U8NDMrKZX5YXrCInQTxcuoNL8=;
        b=uR2u1vnNAtNbeG0Dz1x4g5+pbtk5INbwDPw81ALTXoKx5sP7ibG+oIz+KvCeX1M500
         ssDOU5lBZBiFSTI475k9YsRMHgFwlvFocf2rjUlrOUx2Kq0DbgYZMNOGa5caiA4ZRa4c
         GZ3pWQT5807pTpFVlCmIpmLxa6nS0hkmMRPfUOAuaphSNmfalpiEUMFKTEZe3O8ogtmV
         RJUElEQO2VTgM/uE6dLIWN0UKExgT1/WdhFc6+Yo4Y+0o5PLAOnbQChy7hVWWgIotYjB
         qdq2uieJRgoKE6OfuGyvjV+nm1TvWnDOXJxIhXYc/KM8Mfzdzp6VhXJnXla2aZALN8M5
         qpAQ==
X-Gm-Message-State: AOJu0YxRnxBtN4DtTAo65amwJmmicEdsxIA8j7WeX0S/YOfM9r8+soEn
	LW3wGCkwfpYxGgxvElWItR9mGIAwvjblL1MTss8+2GTxM8+jJCJZ9jeVsri7TZdGkP8=
X-Gm-Gg: ATEYQzxG2fE17xW3O/6GgCoX0EXdiskKiK0anc/P1kNxvYwNKf5MzNsbI17YbRX8QsO
	7Iqphcpdlq8PuYOoHfzTmMToCj/X4ob6qd3/5aL78ijWafLoeQe7UKfl1sxyPLzAU6mKdficWZN
	6x+hh+Hi8YDHlmU+AoTNLgAoIsdrQobn65r3KRBDcqydV7gDrdsUXoFPTbBxaxSDbvIXrq0Lpz3
	QusxKvXOGfpsxBCKay3lj/nOHXJxLFkST5IyVOPPgPy/W4X4YSZPavrOvPP53RXUhmc5sdy99DM
	kAqeC/9R6rbqVESIvJiPvSF3gq64e38X9sfvwL9MnpmnNGIrtyM/pnf+Gk8kk3ApI6ATdlFP5jN
	ekCHoFsYKIeNXgDWfZ2otDXgDAZ0qny752ghK9h2CaAg2Evqm+Vmpwuycsfn2/cHl0mINHkl6ZK
	q0bbBZG2X9Hle5ypHCpQGbd3Ve+kPrVotVanwFI8pfQ+xPxHicVWov7ZHBBLnL8DU4hmDdiHAAh
	e9iRiqT+BmBZLM6
X-Received: by 2002:a05:600c:a08:b0:485:2c61:9459 with SMTP id 5b1f17b1804b1-4854b0afb48mr38299945e9.8.1773230197237;
        Wed, 11 Mar 2026 04:56:37 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:37 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:20 +0400
Subject: [PATCH v4 07/11] power: supply: bq257xx: Consistently use indirect
 get/set helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-7-7213415d9eec@flipper.net>
References: <20260311-bq25792-v4-0-7213415d9eec@flipper.net>
In-Reply-To: <20260311-bq25792-v4-0-7213415d9eec@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4242; i=alchark@flipper.net;
 h=from:subject:message-id; bh=K/K91eQQ75phcINLj4DBBQbD0ofWablCORf9BgG8obM=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEg+9Kgp+p7OmthNUvZb1s1ysl8VH2wpuUKVnaHf7
 sH+HrPUjoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0FDHWMeIgYtTAKbaOZiR4SCHVptEYfyd7hW+9QcfCh/isdK4/G2O0Oq1yZfS05j2XWBk2GpwTFS
 pVzKUnfVS0tQl/3/nPFglo+Bu0h7iWL3fP9KRBwA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 6BB42263465
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274042-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Action: no action

Move the remaining get/set helper functions to indirect calls via the
per-chip bq257xx_chip_info struct.

This improves the consistency of the code and prepares the driver to
support multiple chip variants with different register layouts and bit
definitions.

Tested-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index 39718223c3f9..0765673728e4 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -22,18 +22,30 @@ struct bq257xx_chg;
  * @bq257xx_hw_init: init function for hw
  * @bq257xx_hw_shutdown: shutdown function for hw
  * @bq257xx_get_state: get and update state of hardware
+ * @bq257xx_get_ichg: get maximum charge current (in uA)
  * @bq257xx_set_ichg: set maximum charge current (in uA)
+ * @bq257xx_get_vbatreg: get maximum charge voltage (in uV)
  * @bq257xx_set_vbatreg: set maximum charge voltage (in uV)
+ * @bq257xx_get_iindpm: get maximum input current (in uA)
  * @bq257xx_set_iindpm: set maximum input current (in uA)
+ * @bq257xx_get_cur: get battery current from ADC (in uA)
+ * @bq257xx_get_vbat: get battery voltage from ADC (in uV)
+ * @bq257xx_get_min_vsys: get minimum system voltage (in uV)
  */
 struct bq257xx_chip_info {
 	int default_iindpm_uA;
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
@@ -490,22 +502,22 @@ static int bq257xx_get_charger_property(struct power_supply *psy,
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
@@ -633,9 +645,15 @@ static const struct bq257xx_chip_info bq25703_chip_info = {
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


