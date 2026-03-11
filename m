Return-Path: <devicetree+bounces-274043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uESwKsRYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01F26346C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4787A304EEE9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38CCE3E0C68;
	Wed, 11 Mar 2026 11:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="dyJjo875"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678B13E0C6F
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230203; cv=none; b=OMO7Y3lCAMfkVBhsR/z2XO5U8DBjvZkINa5+NyvqCnEyq7UtyumsWvX2Q/cZ4pMSgkKqFrUZncRGW/wDyPZbc1JYSAY3Y1FZwr/mcc+KgqyBqoG19pbgVLqnZP2HEiOWcZLLw6DvA8rBcCKjr/xMjY8NoQgLH3CjCKtmUk6YoAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230203; c=relaxed/simple;
	bh=xDe5OwkC59HG0l6E9h1OwEErzx9ysv39/KByzvSAFgU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m9njEgYFVw32LEx2AzNo05s2lXinw8VsqyK7rVOaBYmSCm4G2a3kN//P+1Ynvc/AcX9f6/2LJ3ynyxbbZXDXaCZbg58/uTSG+dTxgFYMt3ymA30zxXO2gpI98ZTr3bF0KcEQABTFTT5fAio/VRvZ6Xv57J0MtSUB3OM5Bl2NvCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=dyJjo875; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439cd6b09f8so5439308f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230200; x=1773835000; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3AEOePYJtU4kn4mkWQfK7NUJrP7JZP+VFvVN1gskxyo=;
        b=dyJjo875bTZ6pO3TqpaO01tsiMFah/dqy0Ao27bDjB2En92LEuFexwjG9ur38dB74p
         xxLHEb/3ekk0dVh5HGpMbRRtkBNeJQQd/6HmYnS2SOYqRshKoADq7nZC2cJzDN7dLKFK
         L79mpZlZd0VMXWHhf/4oxcRLAhSw9C7euJkC+uNYZdFC3Cwipdi9MdLMlevltSi6844p
         z3iN8irHx7FDlaiB0qM9DMTABv1N1DdLXPWVPL/A0Gv1cQC1pkkaytp1PTgntlM5HIkZ
         b6ZI0W2AkBRpwMW48YRGWystVbm7UaqAGQOuUP/zWFtcrwFOiSyo/mIzS6qMAXP6iDs+
         gGBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230200; x=1773835000;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3AEOePYJtU4kn4mkWQfK7NUJrP7JZP+VFvVN1gskxyo=;
        b=CfJW9WBEK5OTTl+r4i1qW98dkXrxqAdHbXSGvdm8HxZCzvaBL4geyptis9+H4oqlDr
         wtTIhwhg67zDotj7OcVowv/gjECxYROZ6uW22lJZrt2Q93OQ4DxJvpNdAzSo4SXN/DtA
         Jon6YJKroogspOcQ+u7aW4+T6o3Co7EXsd1AxdKsbxvyBVJjA+XozofT/n6tVCJGLY+L
         0b6CBVkdZ9eLaEQ9pOB5EHlghfLlqYHl4WYpyo7L6gy9eGrjhAe4bTN1ErII60pmKD+7
         JmjdiVrJixtv36GteEps0IFTuavNX69b0S/Iyd6rrL8Lz/Unx+DqjIygWpASNXTAsnrz
         r+6A==
X-Gm-Message-State: AOJu0Yx4aJbva5wyC9+h2dKvNyat1U15TpgLPZXtZrMvIfy9jPjXaLkU
	A4T/VNmviQibiAEP+rWifQXZpyNUuJaXR244gSB2qHwM2oHGQLLSnQBqCexR2l2wU+s=
X-Gm-Gg: ATEYQzxQ+YTSwQXH/sn2RMPLq/fV1tGFmcRmr+6Qb+RnNmgxHVwafNiTtLbZc1Q3taG
	S0v3mrcqCPptWxVjAZzHOH76rHqPSR1dOpyi7xr9Y41QAfIegUcWnU5l6lu88sNcdOVzelW/bld
	ysRQeKqwaKiqlQpuFn3/PuyHRz/BhuWi1x/wjTowPw6Rw7Fsc2dJXWlF3WL793ofl4iuBQuhWVc
	h5Bt/7gR2D6FONYAK9i7UnLDSUbcRRUyoBe/0X8gbcFnmaB9yXfuaFHJ0kL1b3ZPJsuclzvMgBy
	eYYFmH/dFQUE4GFWu58DBi87dAvKsTFAZlgd41sZ4ARSJqqnQw4V2ZS1KcFg9TvZxQv8OujPK7s
	RYLsLbZ5FLn7asau96LClCHishFuVsaZo/CekRpjQg9wPm36nCNMXVUULlLsyvG5ucCG/7rCJ8Q
	j9zwRLrmATTvhnaUPxhc93g7/pOE/fuie21eHW8HTZY2Lv3Qa5EkHUg7gSGfuDhjs5HC2c1JXPb
	d4Qcg==
X-Received: by 2002:a05:600c:154d:b0:485:3a59:99ca with SMTP id 5b1f17b1804b1-4854b109cb4mr38226145e9.16.1773230199754;
        Wed, 11 Mar 2026 04:56:39 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:39 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:21 +0400
Subject: [PATCH v4 08/11] power: supply: bq257xx: Add fields for 'charging'
 and 'overvoltage' states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-8-7213415d9eec@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3105; i=alchark@flipper.net;
 h=from:subject:message-id; bh=xDe5OwkC59HG0l6E9h1OwEErzx9ysv39/KByzvSAFgU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEj2jLXpr3h9Y2aA1/I02b6LBz+p8BlkH6tdcEzGz
 PX5k+khHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEz1vSBGhlPs2w+Y1UpWHvoX/U3Lc5pXhMyUycksmp7/fA7KqL33aWNkaCy4WC9
 Yc9E0jyH6+8aqSfFLN563dg40/H7M717ZxTXbOAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 8C01F26346C
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
	TAGGED_FROM(0.00)[bounces-274043-lists,devicetree=lfdr.de];
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

Tested-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index 0765673728e4..9c082865e745 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -54,8 +54,10 @@ struct bq257xx_chip_info {
  * @bq: parent MFD device
  * @charger: power supply device
  * @online: charger input is present
+ * @charging: charger is actively charging the battery
  * @fast_charge: charger is in fast charge mode
  * @pre_charge: charger is in pre-charge mode
+ * @overvoltage: overvoltage fault detected
  * @ov_fault: charger reports over voltage fault
  * @batoc_fault: charger reports battery over current fault
  * @oc_fault: charger reports over current fault
@@ -71,8 +73,10 @@ struct bq257xx_chg {
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
@@ -106,8 +110,10 @@ static int bq25703_get_state(struct bq257xx_chg *pdata)
 	pdata->online = reg & BQ25703_STS_AC_STAT;
 	pdata->fast_charge = reg & BQ25703_STS_IN_FCHRG;
 	pdata->pre_charge = reg & BQ25703_STS_IN_PCHRG;
+	pdata->charging = pdata->fast_charge || pdata->pre_charge;
 	pdata->ov_fault = reg & BQ25703_STS_FAULT_ACOV;
 	pdata->batoc_fault = reg & BQ25703_STS_FAULT_BATOC;
+	pdata->overvoltage = pdata->ov_fault || pdata->batoc_fault;
 	pdata->oc_fault = reg & BQ25703_STS_FAULT_ACOC;
 
 	return 0;
@@ -478,14 +484,14 @@ static int bq257xx_get_charger_property(struct power_supply *psy,
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


