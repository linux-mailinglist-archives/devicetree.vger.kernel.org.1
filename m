Return-Path: <devicetree+bounces-273402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNb9FTvlr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:32:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D80F32487C6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03706301BA46
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E558D44104A;
	Tue, 10 Mar 2026 09:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="vOUjKtG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D8344102A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134966; cv=none; b=fAZ+1tuKLEuYP4DTI+Tx4t0f4LJ6wuFGqDi1EDQILsvyTzkfRJmsEDskaNfMMIxEz01lfdV06OyN5uQgIuOl18EjMy0SoGH80T/6f3mRyz0ALc2Wc3mpF6QG99Qt1w5AX1BVPOoNJyZ+zLhhVeEbGHrWRcmk1cRRXuGo4ezmnUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134966; c=relaxed/simple;
	bh=sw5rQKvX/kWusd9n6LHXdCUy7V/VOBCXkbjfWoaPsis=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gS4xI6BSbub/vT3QnDc2HkvWxsiubisIppzlPs5kvsu2a1S4jIQM0S3BPF4OhwtCN5RhHwvTxVcArhzDDyGuiyIA0rXX5F1YPwZB0k2yZXu5Qod/FrdWoYGu9lP0YNaTCks+fPp1k4sywu/IiRx3BssiHWuxUhD6fhaVUzPxLTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=vOUjKtG3; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso26512325e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134963; x=1773739763; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jmE6i8Plda/pdmCIIVlRHiRV9OKzbx1wU/pBBf22f9M=;
        b=vOUjKtG3KT5CfgrNcExROZczFImtw+IEH92dq+pxIXqDw2SvV6IgyPJ0wW4zloG5HG
         f5S9wIrFUpsbjiDvGd6T1sBfq/JYevqZWG+rGDY8XrN1pePNv2gSzIzK2KqSUNf0BHVk
         m9UNrwow4y7h37ISVajMqx1AIxC0/kYHQhafjMavdwcE2U//Egx0kXQZTuU21GfTX8qj
         k9c8PLMIc5gsSZ3+7gMqSAAsiS0IlUQC42/OT2b+G7hNSq+ZnMS8DV9FUFFRbOdhdHcD
         5CREXpRT4kXhMH/7AFmsi5IWY/LPr9tJTbvF2fgAzrwHC2QYXiqFZZfGOzUbSakBv8Ak
         mQKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134963; x=1773739763;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jmE6i8Plda/pdmCIIVlRHiRV9OKzbx1wU/pBBf22f9M=;
        b=MdNNTxyQ4oDT7E6u0nSFnEj55fa/lhyEr+Fg/Yd/hk+6yGKMwV25Rtu5LDDveiVkst
         h/oJfnl4shq1AB4OQiTQJVJ3y3nneqGToFnKG5EWexswLp+HYi7JopPL7TmOjoWDbzHq
         qWwL7CUXpowPNgpd8UBivXkeKwOytzIxppwrVZMgYH0FPnP8JItdiSG42gjckfUZq/G2
         tx9WcBAoL6IA28rZ8HDPsfE4tyGcWLRb4iRd0fbQkN8NFty3EQu7N6o7x/2fI0C0Q5Zj
         +iZpfvw3wJaiGjXz9WALpqw9Oq7ojn8/MjKAfTEU1JO50a65jeGryOl1ZoVi37vy79m/
         P6KQ==
X-Gm-Message-State: AOJu0YxIobNTZFnqfsnYEIIarRBksUsmd3YnrR5tp4pXlQHjnTLWGEPA
	rmv1H/r5J9vXc4QeaRfQrAaRyJV9BTcgQ5ic+1q71qA1C9d4Q7MA3R4BYmrpNF6gmjE=
X-Gm-Gg: ATEYQzw6e/lJvBir9oWPe3vv9SmBlH6HY8cttzR7Kef2PsP31AzKc1lopeyuJbIr1uq
	/hfaTXgtH1PyjW70SQjYpdb/WFIXV8RWAUdR9AV1CrLR8iuw68qFKrC+7+u0/k3Sy/In9PZgdYj
	hKukX7+H2J+luJw6sSgFUpnSiKl/oWIlifSMKWwW2PmqaG0Wj43Spei7dA3lxbQ+7Ay0L+ah0ie
	aR+bFr1MmtSjBJUuUXeblehbEcUK/WjLrkzlQKtYGJxyaSxLfXjW+DWyrxRG8GugOHveuSYvQhb
	wthVDhK6B4MaBfPdEfbEzrei0Hke6LudOQwALDtFUmj5ZknIfR8PYG2lhO5sHovUQsDtbT+swEi
	zP66ZbZaPjPztVF5xuEFXuF5E/GnENv6HpRC51GzFdFwJ9FxRqLh2dZDVB3ibHafTdLCn3Yc9UR
	ZOxHK0+P1OJRGmf7R5+cHcrp1SiWG3dps3PS3ThEHE2q5kguFAclyzJ9gzpi26k76keXsCTegGt
	4sFSA==
X-Received: by 2002:a05:600d:8450:20b0:485:40c6:f526 with SMTP id 5b1f17b1804b1-48540c6f6b0mr46904115e9.26.1773134963152;
        Tue, 10 Mar 2026 02:29:23 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:22 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:30 +0400
Subject: [PATCH v3 06/11] power: supply: bq257xx: Make the default current
 limit a per-chip attribute
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-6-02f8e232d63b@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1666; i=alchark@flipper.net;
 h=from:subject:message-id; bh=sw5rQKvX/kWusd9n6LHXdCUy7V/VOBCXkbjfWoaPsis=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5LI91X9g6CVhNWfrl31XKcYVKtPCd9kL+hrmmee3
 3iQo7y2YyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNQx1jFi4OIUgKmukmJkmPTmrOzJKaFLW2q43SVUV1hd7pnYGHs7210irTeN9dwiV0aG0xYvJD+
 8Tti7Y4aT6CudPUaq7/as9dF57nhvoZL9H2ZFJgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: D80F32487C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273402-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add a field for the default current limit to the bq257xx_info structure and
use it instead of the hardcoded value in the probe function.

This prepares the driver for allowing different electrical constraints for
different chip variants.

Tested-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index 7ca4ae610902..e14dd16f9d08 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -26,6 +26,7 @@ struct bq257xx_chg;
  * @bq257xx_set_iindpm: set maximum input current (in uA)
  */
 struct bq257xx_chip_info {
+	int default_iindpm_uA;
 	int (*bq257xx_hw_init)(struct bq257xx_chg *pdata);
 	void (*bq257xx_hw_shutdown)(struct bq257xx_chg *pdata);
 	int (*bq257xx_get_state)(struct bq257xx_chg *pdata);
@@ -627,6 +628,7 @@ static const struct power_supply_desc bq257xx_power_supply_desc = {
 };
 
 static const struct bq257xx_chip_info bq25703_chip_info = {
+		.default_iindpm_uA = BQ25703_IINDPM_DEFAULT_UA,
 		.bq257xx_hw_init = &bq25703_hw_init,
 		.bq257xx_hw_shutdown = &bq25703_hw_shutdown,
 		.bq257xx_get_state = &bq25703_get_state,
@@ -675,7 +677,7 @@ static int bq257xx_parse_dt(struct bq257xx_chg *pdata,
 				       "input-current-limit-microamp",
 				       &pdata->iindpm_max);
 	if (ret)
-		pdata->iindpm_max = BQ25703_IINDPM_DEFAULT_UA;
+		pdata->iindpm_max = pdata->chip->default_iindpm_uA;
 
 	return 0;
 }

-- 
2.52.0


