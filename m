Return-Path: <devicetree+bounces-272165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL2jOAHnqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:38:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A144222D6C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65BFB3170A69
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44CD435F5EB;
	Fri,  6 Mar 2026 14:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="hb07hmKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17BF33CEB5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807607; cv=none; b=OaG0G4f7Dj+h/ezP5MbXwLCBaEuHv1lSbod/S3vKAWizTqY826qmEJHQCglHkuxNKXDh47n2Ctd7DpRGWscB5Mbi9B6iGaT3r7MkvQUNNGKfguQ7KVh0PUMby0R1LUSdS0Q3vtpv1SU5jMVmHarg8M94LQuT068Eri8F/2mp/oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807607; c=relaxed/simple;
	bh=Q9D7eBKxq86MNvlgm1qDMnqHysA/422W4yV9eBroyC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aZBC3qESTrbhi9E8K8mO64Fky7VE4EEKscIg1p7laYvbAvikADjcKkOP9oA078u3EmMmfdlLvDrcgqqgky7b7yt2HUO+dQn4Amq+3Bnr+QiRxS3UQxerVnkEA7PRDN7gi/HCIC74L0jns8iepYSW1an1dpm7/CGJtpYpP/ysEOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=hb07hmKV; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439c9eb5d36so2848144f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807604; x=1773412404; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sz4biLahYPKsT9J1ufLdEia90vJM1vdO3bq5iy8XGEM=;
        b=hb07hmKVFklaYksufnqvG4Dtv82VpVtF284kZVDLekZ0Hlo9DqXt9fT5waLAqEe6zW
         EsaajfcccqaDX+qHghQidCN5OYGIpkR+TZNcbOR4iUu+TGflTsANcqu3O6OHBX8atPBa
         rjxLvfDX1kH+jpaguxpa0ezpG83xwZB2LUE+gV0tV4/Q80I7LBHExvu/9E/HHHM7oBEJ
         jXHBg1chLmBy5KRpTveuGfmJlhTvYO9gPZyXAyDVTnk1cs+qxwJeDCPNkPtz/jImCadY
         83PvoEm3N6Loi8P0aMss9ElA9l3ZRE9uIY5FF3BFaXq4IJtj9tpmoz/vIZGdTMYLGDsf
         vKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807604; x=1773412404;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sz4biLahYPKsT9J1ufLdEia90vJM1vdO3bq5iy8XGEM=;
        b=H/dwr2Hc1PDBFvrlpxvbDTPOG/MtnCBae/fJc81G5tfu8/iiBvBiwiwOIsBrVMmJhb
         vqrWRFIAMn9oG2jKQis9NZYiuaaUmkv1xmxBKq5lCTKXgqAsbyiEjr7kUT5RVWiImLhw
         XzyBhi4z9Esab8DT77TR2XtX0PzZaO09Xb2j7Cn5plJ1eg6GNHxvtoTStMw18GCaOPuD
         eWdTRTNfN0qVJK7ZXdQjuiqpWT8jw0g8+NLQ0JJCTP6/4b1i6rmR2gNd95iZkb+ZYHB+
         xcrqjetjdtTQHejVdH6odq4NdxnLQ7wK0UP4wzYCDh6Qua3CWKMdTB52VfbC0at/0iy0
         XP0g==
X-Gm-Message-State: AOJu0YwdaOwSpP5AhqziJ2XhubpsZWUpf8u0qL4J/cnWsqLwjH+W1vEe
	7gMXTNh8vSs95XAm0xvThiQ8kpU2Cwx4+9J96jLsNeeAAaUIdzILvpBAPuV4gZMF6Dw=
X-Gm-Gg: ATEYQzw75s1Lxwwj5vdCinugPZKKWZAm7DOzHFB4VZsYwH2JDjngQhe3QrcfXZ6uFKc
	WxvMQWdNnNxnWZCoym3SL3cQI/ipZGU6pbwjiPSz5RT38OGuimmln5scchzzV8F+W4reFl5msTQ
	cudZkiU4XHlXrqzLkSYoaQ7qPCkCTbPaaIgnww4ioHMWL0k0AHuQQS3xxM7eDwouQh6o7XETYhT
	i6vpYv6h2Wtl1uhJm7kgo1t2PZ227NWLb0rAk7DV+OQ5Qqy8T4fI1JPBvmpGQfjjb3Wb2lbsE2e
	k2EhcxFNBc5howudI/zmllh8XI8hmfrPxANydN8OOjMDyMF3TVKzThj58w36BmnEEIBGuBXUpmP
	en0iEwnNovDObTz9n6vWu23xS5uJpdvaFgaMVMghwlLfNuJWpBx0S8wkJZiILcv4xzdvghfugcm
	rgFAXrPgAIU15R8b3iOPKmfVA4HP1XkP7XR80M9xcNROk2uGD8Tgc4tk1Nzs8zf/olVaIEEuse+
	mrntkQqY3AN3YM+
X-Received: by 2002:a05:6000:1843:b0:439:c9b2:6571 with SMTP id ffacd0b85a97d-439da3697a9mr4240301f8f.41.1772807603922;
        Fri, 06 Mar 2026 06:33:23 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:23 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Mar 2026 18:33:05 +0400
Subject: [PATCH v2 05/11] power: supply: bq257xx: Fix VSYSMIN clamping
 logic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-bq25792-v2-5-6595249d6e6f@flipper.net>
References: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
In-Reply-To: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
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
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuerpE+vDa17tWlximfOM7VrhvSUAK8zyHheyO53Xnl
 rdY82/w65jIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQ2RKSBAQhYGPhyE/NKjXSM9Ey1DfUM
 DXWMdYwYuDgFYKp7PzP8M//80iNKkmFiwPTSVjahl+VfuOfK3/8m9Om+59sddeppiQx/BQWXTFr
 woJp39uYHy4J1nTRuVzd86xO5b8EnXVLct+AWGwA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 5A144222D6C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272165-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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


