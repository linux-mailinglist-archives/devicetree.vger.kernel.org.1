Return-Path: <devicetree+bounces-273404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GXUHXrlr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:33:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1028F248810
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:33:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E22AA30A24FE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A067449EC4;
	Tue, 10 Mar 2026 09:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="4aDBMVWL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B86A4418F2
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134971; cv=none; b=AyVoUrf6nmmbNF8F6zb99CW3UkGwchqYEX5Ne5ZTJ9/3WexsZTKh8q7Qm3Zv67QJuIcGShF/+xvEtwphRthJmPwVK5F6uagZhz5QEhSgXi4FtvD/B6aYDST+lpw37PdQsSJQtcGGnwOF14bkWC1SJUmTI50+eN+UdRe2rOcsO/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134971; c=relaxed/simple;
	bh=oCIm21h1xlZz1ac67TCK0k/M2uaB2EsOtQDVrIRc4YI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FrSfBv0yupFzXRHn2ZuDn4IXzpT1gsG95V+6cwMZ51unz3iDYXRYqd2Ia629mYrd/r7XOLcAMMVBGJogWCzy3JqqR9n3trgUXGL/f20zQXJr+GjUxI41+JhfL9Qfo/WKIdBR/L24ZHCSEu4932od5SSXUt376xt9DMzk491vqhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=4aDBMVWL; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4853f2826f7so16742765e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134968; x=1773739768; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GgvXV9daisj99tiFpRQvp/oWE6rCsyVXhi3xoGqS9rM=;
        b=4aDBMVWLbE4pkVbP5+UGmJ9FE50fL8wakMNGfE6mpmyuoOi4WMP5pr2dYnFqQOPKJK
         KDplrtDP8gyKQxIwevtxfoywsBwTizsvokti+nFhV4uV36kIWBXvEi82LDSfB55QLpVu
         2LRyEj2Z4Xcv6HHBvjzVNdTarbNYL3OakGTA6Q8TFR0TuDTGs7OVx862oz3mu8xNxPvx
         Ax4MS55GZiySBu8kMjD5osLr7ig/62KRXp9mqjh6kBxbx48MkyQTyeEuiK08oroMIyuA
         PiMPZ5zsk1MGRm+fDjyeUaO7qRIrXhSO+XsSjTfIcd/0BbhYccaQG4oW9AtFkR3RdATV
         FiWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134968; x=1773739768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GgvXV9daisj99tiFpRQvp/oWE6rCsyVXhi3xoGqS9rM=;
        b=juvtIZykA+UI+jdD3FdGkpXBVyyQpompStXN86qldDBsNdHUE7ztouSpL4lpWRobdT
         o1Wqypn/LwyMR6kVIpZWGocvEeab1gDj+5yJpZMeFrAPm7uUXTOcLyIwVCK2zjHjCQa6
         zhjshgRmCj3UWtet2FAi2H8bsXuhbwNzmE9HIfJtf90TlxfB68kO9j341bm/74yDBUIc
         uP4wq68Sx7wrkijDbZGR0EefyTM4pq1mK9PHa+jF/iS5UEx5xwNQ15B6qvAFqv1964XP
         Epq/kgS2UUdnChsHIfrbXHhbXcip3TGY1Ofgs9hQnQhncmrV/SqNhosTUmdPu0aoXyPX
         TShw==
X-Gm-Message-State: AOJu0YyoO+NYs79nZO9vL1sbIj1JxplHbRq5VGf/FE6cN9tXemPM4tUF
	nnIDPmzMdV/7vUrr3Nwa+cU1RIOJW/980cSJ37tZyqyObShuG/QTYrTDd/0Dz+0T3gY=
X-Gm-Gg: ATEYQzxZjNlAFK4JyR75jgyZD/C1TVpVtCyJrrlyiFdpEJ0SEONhfRWBWeXmOkTWhrg
	eU2oCdZir+0yVNMtNBXr/qDPW5SCxzJw9xjr0jFAYK16h/m4zLv9/Ep9ImbETOFZt2I2cDnH/I2
	WfHeGublVzGiv1/LlrzSEbRUzFinSBljgGVPXsacc+nPzVU3Za9KOo3YE/CvcxHhqJz5I4zRDyN
	LCvD25RixChbjYVUiY0y++Usc4sFZvLDOlGyZn8QImRWwEfY/VfkVYbN3qhf73NXJx7jwlj45rW
	8PlkUE/UdQB9JtlnMYeFKBiZJYb08PjppJyMvMRd70M2zhpMBllwLVjl4HlGPNQ1S/RLfjZtc03
	0QcpaWx+p1NvReu8UTLb9+n+yC8JaxuH4tqPxnPdXYahLrETItjSqcNlK6zMi3w+nzqBNFsAAJR
	2IDcuukwLuIGjEcJ6OSOr2dk5i7rr4ZLcr93sHkt45PguAuSiy3zZhZa6hoqBWNsMXfLQ7yXfu/
	9hH6w==
X-Received: by 2002:a05:600c:64ce:b0:485:3ca4:4ef4 with SMTP id 5b1f17b1804b1-4853ca451d9mr88483685e9.9.1773134968403;
        Tue, 10 Mar 2026 02:29:28 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:28 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:32 +0400
Subject: [PATCH v3 08/11] power: supply: bq257xx: Add fields for 'charging'
 and 'overvoltage' states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-8-02f8e232d63b@flipper.net>
References: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
In-Reply-To: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2521; i=alchark@flipper.net;
 h=from:subject:message-id; bh=oCIm21h1xlZz1ac67TCK0k/M2uaB2EsOtQDVrIRc4YI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5IYEyN/Ppbnv2n867x654N3/7lIGG5Pv6jL12tTM
 ns6w+XujoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0FDHWMeIgYtTAKZ65zmG/85bw2RdPbV1q9Ssav3f2+T2yLOldxUuUJXi8s+u93qTxfDP5K3E6d7
 7JWpNO6bfbhZi2hj7LzL6cLZEifCcD2Y7rmznAQA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 1028F248810
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273404-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
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


