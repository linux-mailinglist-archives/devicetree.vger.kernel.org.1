Return-Path: <devicetree+bounces-272170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ExoDBvmqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:35:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB55222C0D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3F08C303F1D6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA8743AE718;
	Fri,  6 Mar 2026 14:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="M3VWppeu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4747E3AE1B5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807614; cv=none; b=bI3gf4F5rg0nCd7UTC6zLgrbWaCQZ5gkPwbGu0u8z3Sr+beKIJtwyGXKSTehlx0WRtxQTAflRnve3pZ8XF9/1kQwfZnUXUjg6E+EM8mnOZl5xTfRKfrXnaXNRwuGQvuhXEqRFN3HP5QoruWRwVWhjVw5NSNk2APK0D9bFaocEOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807614; c=relaxed/simple;
	bh=fqgV7d8c4BXshhw1gqL0HWfj9aw9iK9J0f1QWTNLAG8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WuZQaCTVb59e+1I5iW6LAiwv1+YyRAyPlbyA2yhQ0ETGtCQwUW83VsNWS4WXPul9hDCQ6xii+PpuKXaqSa9y+cO6nwerhUiammyDkj3kV76T5bczSOrAXrVJuLT4wjEG75nY/0PfNICgmanyaMWtexRsUEt2ClLcv1QduFWs5II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=M3VWppeu; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439b8a3f2bcso4454895f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807612; x=1773412412; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G3vNgmqYmO5UknTO3x1kCPV7VqUspCxEKfK8SFuWCw4=;
        b=M3VWppeu2iu1VSrF81rV3Vur5kqBEC77COlnXSODDnsf2ebWoAMF7KheRGvLgMgJJ0
         1LVQ/QCdoehA79qTU1NtHrkkPijnIy9BcWUrGG3PuFYwqe9zgE2uC2XuGABjorgrfknG
         jDHg3LWfLyujGtdjuRnvSaiKvdC5T45xt4QmgWCgxj+usQX0Q9JPv/bT/RQz2U9kdVnV
         GKyofWuiqDALh6xiPIGtODsgITsRTf1RyA+VbGu4+hiBxntcMXO2g+aRdj9JoV9EdagD
         z3THwDKkgK75UKVgCNQb4xqjzFa3ZtIVg7yZbTjhyj3dHMKznFN3rtQ8n0xAwaQEWFiS
         RMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807612; x=1773412412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G3vNgmqYmO5UknTO3x1kCPV7VqUspCxEKfK8SFuWCw4=;
        b=CyxOpzx6OXgGVFwcapzEDNKGKs7DZppOoqcZvpGohhg1bzYELSt2W+rwI2dtnItmuP
         AoR/vU4BZS4HtrNNwXo1v79Qv6/9tE0x9/gnR2sZvJFaFkWRQacvohodradp9rOiWFGs
         ey/Mgw0ZxY1C3Dktq8eUCXQaOY8QW/iX2jOVtv3ZohJN2UUur4VoIaZa3j6KNCHqFarj
         eBXAYFj29lK47yzZd3b+QXA04EphAQqpVeEm/svrjRyD3jpFAxW7gIRe++be3sxOZ5/N
         CtylfGBSkxfvt6O692nPYAKIeEl09lyk+VUDMHLneJ2jzjOTfJVo678ynv/qlpXBn7uN
         jyQw==
X-Gm-Message-State: AOJu0Yx0oLkAFxtlAYIDyIn0GhGs8vKY3lFmWdOuTlJOA/sIgoAOYgtY
	vWy0esdEZYhjYiZ+MlZSCGHuFqa45hW2kp3AC/r3edDKlpqv8BKbyjjkSJ5gq7XZJR8=
X-Gm-Gg: ATEYQzxH6qVTrpJ/sgkTMB76fOQlhOnBp1nEZliigICPwXOEzSq3nunoj/MmIAovgCF
	aW20r4nb4X0YSs6KEf+in1yUInLXgQzb+ipTuo5IsPcv6H3e7HtoDvtvEUk1lC+RPiIYVract47
	yK+jpLnWGMEd3ofmZKtg47lZx5GVm2KTVdEVphMeHC01yfqtJaHk5JG7DfCj0HyTcCEWi1Wki3Y
	JrhNeYGz7hWYoECaMAGMxhhPfwk+D4hktjrdypJd+vGmoFI+ihvJkZhVU92V/OV5C2XLRR+buN+
	Pqat5vhEZtUql94TnCErV8tKQlFNkda1IrNyLHviO26QKh9IjHrzeGdcxP+74VL2Wie8nj0zEnZ
	Ez/OsrMGiUSJtKAme6Lpy8/R6MqDkfN85HcqaT/jvQi7Jd1qXG8bzqGi/L8tBerGtjPZP1woMPK
	TJUEHBpT/KyxUnIycdpOVFHI2CNaNdK0rHJqVtCozJrPF3WeSByEhKnVw5YeS8otvBHKbI44JDE
	oWLOg==
X-Received: by 2002:a05:6000:1785:b0:439:af25:e4ea with SMTP id ffacd0b85a97d-439da66c26fmr4336958f8f.25.1772807611534;
        Fri, 06 Mar 2026 06:33:31 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:31 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Mar 2026 18:33:08 +0400
Subject: [PATCH v2 08/11] power: supply: bq257xx: Add fields for 'charging'
 and 'overvoltage' states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-bq25792-v2-8-6595249d6e6f@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2470; i=alchark@flipper.net;
 h=from:subject:message-id; bh=fqgV7d8c4BXshhw1gqL0HWfj9aw9iK9J0f1QWTNLAG8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuerrE+sdFtp9H3jRtXiPzfcbnQ3pfbz9Qqv8kdjLSo
 iY+8eYU5Y6JLAxiXAyWYoosc78tsZ1qxDdrl4fHV5g5rEwgQ6RFGhiAgIWBLzcxr9RIx0jPVNtQ
 z9BQx1jHiIGLUwCm+hI7w//4xZlTLh4QOrJsF2vvTL2z3oti+w48/Ps03T/lQMxGnR2qjAwH/y8
 X0zBNN3I747Xmq8qfHQXq0bvKmxcfKNubLP7pRBITAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: DCB55222C0D
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
	TAGGED_FROM(0.00)[bounces-272170-lists,devicetree=lfdr.de];
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


