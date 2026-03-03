Return-Path: <devicetree+bounces-270604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDznEQQAp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:36:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB361F2C1D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E23B0303BA34
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399D34963AF;
	Tue,  3 Mar 2026 15:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="6v6wjDFM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40404963A1
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552002; cv=none; b=enn80mrccf91vZ879hI65Vpe3t/4w1M3f4ndYkyaoR44rKsJkQyS0GsniZkCWojIMw6H+N/aH0JfoJFvYXsOWlXVwmk1PWOFRrWowJYJq7+RLB2ogFle47w8PqCrky/IHE7lmp8pH8TY2nUUbiZ9L/Op+6Az2qCsLkB4nWWA6hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552002; c=relaxed/simple;
	bh=fqgV7d8c4BXshhw1gqL0HWfj9aw9iK9J0f1QWTNLAG8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bqWr0L05Xir2gChbHsl1doJzUHW5XGkhqls2lY+/TX6oM1vHjZg9OZtXRY79vczEcHjKAXFXo0O8Cy7ZoVrvc2y6tAUvomNOoEMmRybx5l3P83r4utQM3JvV+bR8/NhbyROsj868Wckab9Nd9IJ3hHifmAnXKOlHab1f2EZ/wLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=6v6wjDFM; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-437711e9195so4546558f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772551998; x=1773156798; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G3vNgmqYmO5UknTO3x1kCPV7VqUspCxEKfK8SFuWCw4=;
        b=6v6wjDFML2kSoar097A1ilQQaeZWCO1xsLsZCZo4rp0U7Pi3tz0RjNeoMIabJKMp9W
         +2hH1wZkn3nPzu4TqrcXDCXhay91goZks6+yfoHD4yRv6o2QnPB48vdCkL8at/triQlr
         /36QobsF8AABOKZj2qH6Ucv4rEqNbU8ArdTA0J759qzcgmUGCEP4riho8grtmB0h9vwL
         egIIYOWXFjf/6GFWBy8ODksnRJOwyyQg23q6Vi49o0GiKdc2BfumHNswFSnLwbCZv4e8
         FRp5ukQ9EEqIYp37YIHO/34YBjy5l7GRAjBF+OGAxru5HQnrSNJdkx6anNiwYvlRA2BN
         Eh5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551998; x=1773156798;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G3vNgmqYmO5UknTO3x1kCPV7VqUspCxEKfK8SFuWCw4=;
        b=pQEhMfDOXySLXHZ7Xp5mOQHoD6fXnPZenS5ujCQgOWk82SyluvCVhqXC3ajfDHAIEb
         mx0p5AHvAwj3ZWHd1OKljYRxmfLL0fUaifQKzSvGWnk6jwL/bsMbhmE5aCqH8fdWL/Xd
         2Q8M+nVpEX1YAGqFh7NmNJ9tU4NqknCmPJZXf4d7jGGiM/Q6qwKF35WR7o/ro89uEZqo
         1p89PIuk5WVHrkTlrm+b2z7xzUDrdX8iqTLaXq73YOMVIYtVrOmjtepUQcvR1hbnYJUS
         jKYijVYAPUA/MIEn70MPVz2cGJXJ+lbeDPZ3QUjhXEz0fcxAa3tKtSNwevmdteMznNJ7
         idLA==
X-Gm-Message-State: AOJu0YxnqCeYdvvFFl0xcCpzX8Qx46M9B5OFb2gkjyVbvn7IXRzIAgr2
	1KAg/wSnffrmKWHHzLDfm6neaPIzlQbrpWZj5wb/7y9mdZqJDkv/GaMRrUn3s7yrfKU=
X-Gm-Gg: ATEYQzyNbUWD1fRk8fKBBqzjsbSYGRS00pTXiFQAdNBzoNTJEZmdbxlTYZpob5DEKT2
	KnxEHkhSdWZA5O/CvloDil2EJSgwWSQCqWOFOkwG+Lav1Fwt1oski92bxlqLP43XAhzuakwztG2
	2kNsoabdsvMjJoovT8jUIEWnmMUyXmuE26KdfhRtPYZXh0Z3mHr+QE04VDS+BLVXgxgLuXsN5qf
	GPW8t1aTVa1A2kGSw+6iSaShXIcC3cclx7jmAMfGPhUC4UlGU2S1NOySiN5HUcsWLEBQYa4yAj5
	rW5V1Thbkrkm0+GOXhlTC1DADBL0QJCEiBi+8BEsFB0bBP1yarlxVzsLNKlRv27g3xMoBulQJQR
	j5dSK9lAKu7Xn5JrNQ+HwL5bc5hyw8jAtzqrngUV2fuyVNH2qu/2YiPPpCrU+7++kKZhHGm2aG1
	HGe6fc9gZtV8zu7yXWA4j4HEwGOTQUeV+ad5uVnWi3ZKvlufIsOgi5DP7OQqUbGadD1LapfmW9t
	Cs=
X-Received: by 2002:a05:6000:2c0b:b0:439:ae3f:9405 with SMTP id ffacd0b85a97d-439ae3f976dmr19319559f8f.59.1772551997972;
        Tue, 03 Mar 2026 07:33:17 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b55d15besm19799447f8f.30.2026.03.03.07.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:33:17 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 03 Mar 2026 19:32:53 +0400
Subject: [PATCH 08/11] power: supply: bq257xx: Add fields for 'charging'
 and 'overvoltage' states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-bq25792-v1-8-e6e5e0033458@flipper.net>
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
In-Reply-To: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2470; i=alchark@flipper.net;
 h=from:subject:message-id; bh=fqgV7d8c4BXshhw1gqL0HWfj9aw9iK9J0f1QWTNLAG8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQu+68m4TXJxnziurrwTi+7asHlm2ZcfFB01O3RxuQ/U
 xOi7d/P65jIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqiywZGc42fXUpn3t4t+XRdMY5jwIkTYVeHbZr/PHQScq9s6VcP4LhfynngW/
 TJh58teSL2moHd6Gr69+az1f6euXuiaBesxT79fwA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: DCB361F2C1D
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
	TAGGED_FROM(0.00)[bounces-270604-lists,devicetree=lfdr.de];
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

The driver currently reports the 'charging' and 'overvoltage' states based
on a logical expression in the get_charger_property() wrapper function.
This doesn't scale well to other chip variants, which may have a different
number and type of hardware reported conditions which fall into these
broad power supply states.

Move the logic for determining 'charging' and 'overvoltage' states into
chip-specific accessors, which can be overridden by each variant as
needed.

This helps keep the get_charger_property() wrapper function chip-agnostic
while allowing for new chip variants to be added bringing their own logic.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index deb60a9bd222..951abd035fc5 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -64,8 +64,10 @@ struct bq257xx_chg {
 	struct bq257xx_device *bq;
 	struct power_supply *charger;
 	bool online;
+	bool charging;
 	bool fast_charge;
 	bool pre_charge;
+	bool overvoltage;
 	bool ov_fault;
 	bool batoc_fault;
 	bool oc_fault;
@@ -99,8 +101,10 @@ static int bq25703_get_state(struct bq257xx_chg *pdata)
 	pdata->online = reg & BQ25703_STS_AC_STAT;
 	pdata->fast_charge = reg & BQ25703_STS_IN_FCHRG;
 	pdata->pre_charge = reg & BQ25703_STS_IN_PCHRG;
+	pdata->charging = pdata->fast_charge || pdata->pre_charge;
 	pdata->ov_fault = reg & BQ25703_STS_FAULT_ACOV;
 	pdata->batoc_fault = reg & BQ25703_STS_FAULT_BATOC;
+	pdata->overvoltage = pdata->ov_fault || pdata->batoc_fault;
 	pdata->oc_fault = reg & BQ25703_STS_FAULT_ACOC;
 
 	return 0;
@@ -471,14 +475,14 @@ static int bq257xx_get_charger_property(struct power_supply *psy,
 	case POWER_SUPPLY_PROP_STATUS:
 		if (!pdata->online)
 			val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
-		else if (pdata->fast_charge || pdata->pre_charge)
+		else if (pdata->charging)
 			val->intval = POWER_SUPPLY_STATUS_CHARGING;
 		else
 			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
 		break;
 
 	case POWER_SUPPLY_PROP_HEALTH:
-		if (pdata->ov_fault || pdata->batoc_fault)
+		if (pdata->overvoltage)
 			val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
 		else if (pdata->oc_fault)
 			val->intval = POWER_SUPPLY_HEALTH_OVERCURRENT;

-- 
2.52.0


