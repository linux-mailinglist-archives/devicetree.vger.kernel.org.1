Return-Path: <devicetree+bounces-270601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMI4CgoCp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:45:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 362B01F2DFD
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 09CC23089F67
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB962494A0D;
	Tue,  3 Mar 2026 15:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="R+wGD6+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606F492513
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551994; cv=none; b=jT11RwIoAeN09NTDDv0vqIEENPs60AX/Hd9/B47RQ+ROKE5b+wHH+btK0JlDAF/6FwyNJiJuy49zFcCG/nH8b+WHBN9ySh/zRi3Se2+Hu4VSaqvklHHxY6fgpL3IN+2hfudefl7i/mZwnv5EGtrRiL1VVFDGsEgT8AD6boW0qNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551994; c=relaxed/simple;
	bh=Q9D7eBKxq86MNvlgm1qDMnqHysA/422W4yV9eBroyC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=atU48wXsgOrIs9y5B5sSgsjAi3VGyvjFeKbM4c98GHOiz4getdMpwyWnYyIULxabPVPapt4O7OluPDZrE/6hXfBZffxB7NOjdCufgaXr+Q0OyGa2GHS816QEAFJ9MhMHJrUdD0l0XdKY3jCFUgC5jW5uUM/J3CmCwYybL11YqLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=R+wGD6+j; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439afc58ac7so2791663f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772551990; x=1773156790; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sz4biLahYPKsT9J1ufLdEia90vJM1vdO3bq5iy8XGEM=;
        b=R+wGD6+jlr/0q2tFQ1AgxZsPUTeQvTgKbmBzi2ZlxBvZKtl6RziVZVBinpcyNPxb2V
         7LLIImtxaMXHIL5CbfLu2i7SFvq4PCusmafP05rIBvZ3rRnC6Fdtf01NPdEkshYNL/fm
         FR19vuzD0sDzgRPl3COcFf2P1MiiNl4fYAGn1weLMNpmj/ceF3bRewLUqZ2DvbZmbJlz
         4ANhAnOQ+KZNLvQhCCsow7xoEKUWHx+vRVIhxQb1+T6gSqaCOikHSqQmiqRcuI2grg8G
         QISALlVUH1NNtZIpltdlgfbmnLaENKDYwQ5KueBW0mrFFz/J3uHAli3rEIW0bES7Se7n
         fJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551990; x=1773156790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sz4biLahYPKsT9J1ufLdEia90vJM1vdO3bq5iy8XGEM=;
        b=Bj/jpmaIH5taeaGTHDy0QKrpQxJCgFiQVaeTgi01OUXc+6sgVhuqLSwV7iWlo4/8ln
         b0qjCVxSjFaeAGF36ICq3BzgTkGKXNCcmwzRSxOzbvutOmamnxsyLUNvgSAbFRdcybKn
         kh1noRmkXwLnY3kTtq2p7vHwDEkkMo5Jozlu186S4Tql0Pv70RI9HJ320ReTsvfh+mpL
         BYCRu2dE1CYKrzPbMBI+K3AlvUyIfX0JkLKoh+c+arJusdMt2PpV+7AImZMbqP8oruds
         hu+p6bigAE2+qPr8HBEBnoVj0nt2Biy94hjCiq9zwZIfz6hk+bN8X9u3/sZl97QbCZlD
         bZqQ==
X-Gm-Message-State: AOJu0Ywf6NnuFeb7mcihYwephAQZxTGeAbTfqt3Hyxrn1lOUlHxyKmIJ
	Sqlh1PVYkSTx3OCreuJla7PLgIHuvDYQfnB9/KKIUX9XNukd0zeKLP7GjBm1jddvs0A=
X-Gm-Gg: ATEYQzwaO/kflr3Thrju7TKNpllALbiszZ+TklJTXL7bSH3riB8AqFBoyBF1N5Uq1M7
	Di8PaghMspn9xY/xSm8Mxo02KL7sFmIH9iUPmvWSaOyIKGUiJ/le5Bi5HUD9dwkQI/l4OPos25B
	LAmpmUL7TeahBsstvfWdxwehKW7WVPtvt0nHOhJdgwQ/69xToiOvvcAaNhODguz1c0jA8nNMzdQ
	SMj5vO7PLVf7GZuD7bt22MAuswshqEnGUq9vmAxzaOi3p0/1Pk8VihSDcNxcrz7E/LR4iULSlTk
	6DCS8AaDsmrkB52BloLkNk5sM8RN3Ara4KQV1gLrR6EszXfPoQPTO3yPLT54Ithf02Xqc1bvSri
	iR3o2Bo52BPi4bMfS9ApwgrYcH2M3n7QAiraIWCJq8cjcMZ2JXyNue3Qrobiqfwtd4g5T0XVVv8
	AgXiBEJ9zFCTScfuzY8RHZ1Jj4rxRenefcpdTH6FkbLtQxYISVbjS8aNicB5UojSkrgIeETdBTO
	EY=
X-Received: by 2002:a05:6000:1847:b0:439:b6d6:728 with SMTP id ffacd0b85a97d-439b6d60a8bmr14024221f8f.58.1772551990320;
        Tue, 03 Mar 2026 07:33:10 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b55d15besm19799447f8f.30.2026.03.03.07.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:33:10 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 03 Mar 2026 19:32:50 +0400
Subject: [PATCH 05/11] power: supply: bq257xx: Fix VSYSMIN clamping logic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-bq25792-v1-5-e6e5e0033458@flipper.net>
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
In-Reply-To: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1911; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Q9D7eBKxq86MNvlgm1qDMnqHysA/422W4yV9eBroyC4=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQu+6927vSyU6pnYy6ZvRLuM2vfKCc+Y4+B7pY9/Zvv+
 CcrxL3Q7ZjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqeV0ZGXbrrJ3AIPAw0E9vWZjBDK/ck/c53F9M/6i3n7+xh4fT6BzDX2GdwCs
 9D+T35Xgd+rR3z/RTC2Ywun848zzsjb/brNlTGrkB
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 362B01F2DFD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270601-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

The minimal system voltage (VSYSMIN) is meant to protect the battery from
dangerous over-discharge. When the device tree provides a value for the
minimum design voltage of the battery, the user should not be allowed to
set a lower VSYSMIN, as that would defeat the purpose of this protection.

Flip the clamping logic when setting VSYSMIN to ensure that battery design
voltage is respected.

Cc: stable@vger.kernel.org
Fixes: 1cc017b7f9c7 ("power: supply: bq257xx: Add support for BQ257XX charger")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index 02c7d8b61e82..7ca4ae610902 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -128,9 +128,8 @@ static int bq25703_get_min_vsys(struct bq257xx_chg *pdata, int *intval)
  * @vsys: voltage value to set in uV.
  *
  * This function takes a requested minimum system voltage value, clamps
- * it between the minimum supported value by the charger and a user
- * defined minimum system value, and then writes the value to the
- * appropriate register.
+ * it between the user defined minimum system value and the maximum supported
+ * value by the charger, and then writes the value to the appropriate register.
  *
  * Return: Returns 0 on success or error if an error occurs.
  */
@@ -139,7 +138,7 @@ static int bq25703_set_min_vsys(struct bq257xx_chg *pdata, int vsys)
 	unsigned int reg;
 	int vsys_min = pdata->vsys_min;
 
-	vsys = clamp(vsys, BQ25703_MINVSYS_MIN_UV, vsys_min);
+	vsys = clamp(vsys, vsys_min, BQ25703_MINVSYS_MAX_UV);
 	reg = ((vsys - BQ25703_MINVSYS_MIN_UV) / BQ25703_MINVSYS_STEP_UV);
 	reg = FIELD_PREP(BQ25703_MINVSYS_MASK, reg);
 

-- 
2.52.0


