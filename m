Return-Path: <devicetree+bounces-264728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPZLA7BZjGm9lQAAu9opvQ
	(envelope-from <devicetree+bounces-264728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:28:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2B01234FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF5AB302336E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FAC368296;
	Wed, 11 Feb 2026 10:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="eBNWvaPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C964367F36
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770805670; cv=none; b=TDEPboDzO1b8X9isHqkdyDaCGcAowgVdeIGn5FGA9b7NqoHph6U+zUEt4rWpl88QiXqiD0wjHhP3ei0uBBZF+/xAdkyg59UPVdCJx16+LsVmYypQR790gJELlhnl3SbFWjgWA4nwZlWrTZhcCjApscFCi/qfkS0ejY2gApA+TV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770805670; c=relaxed/simple;
	bh=EEdEa3IUnYRnCSJujp56yp6HpXcw4IsB31pVJk5oyWo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ql0OyUbY3GRMJfVfr7QHvrvyFqmG31axF8zFCWVYvwB9qJdVqKCMX50bB1TA/DS+VXbThRUxNOoJ7zrJ6tGijbNgJ7BZRd9rNncJIvAnHsj2yPdQQUh2Lbf1tcm5kH/xJnbyTnLuMkQenyVAcW/G5U7vATXFvSE8zUEwcK85Qsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=eBNWvaPj; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b884a84e655so280041166b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770805668; x=1771410468; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=roAcgFRbH54UQCdhIFxSyx+KQ1p/KfSb2O/TanFU0qU=;
        b=eBNWvaPjb0JiecfddRXAc7G5d3raSV7PeD98Gyn2iVple2RkA/GQQcXYinN9U3ZK60
         uH26uaBXPUTT5LLUa3sKELJpA70xqTSgp5MgiGXd/Jf7BFrtmVTspBdASVlvJ7TzqBw4
         QtP4pgFD7pPsXn0GPkkyKbenHKzjKZ4Yhzd7wNKyfrrfFJyMpb/jsbvyGC9zWKprlwK+
         qG7fvrNPFV6aFuBALLokaZ01ighXCBnMilUGcXcGFg/FAs6BQeNbK9+tkhqB1a4Nj98+
         zZqlRx3uHQEEHwFzhepX850Qv1qVnZKpOZD5hCs7Wvav9RiiSfsplVW9XuRNwzdAnEWt
         aloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770805668; x=1771410468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=roAcgFRbH54UQCdhIFxSyx+KQ1p/KfSb2O/TanFU0qU=;
        b=hNB90SosYL2Ql8pGOZwPY2qdZgAl+hqGJeRBnb0l35c8Xzwe1xOOvUha4GteTgBgs8
         pzGlstSLButF4oPyj6zi5R5dfWw4oNqPHHpbs5b6/mULL+8nowp95wVhGEIB15ayJ2Ye
         Z1lAPEdVg7chNVJc4yL43dmwz8bjMtmAoh1xfKJ2BLOKR6sX0yoiISVgmePnQgsgOK1m
         ICuiHMXFfiaCBrGCDmgWnVCwKuZi3pm5JXUj4dgFdgFYyV5CaKOQDrdPydsK3wtTT7s6
         rSunRHcTX9PzU0kpINq0KUB6UszvZyeHT0wWw/gJLyFJqQ3fA/S2Hh3vukagh/G+xiwg
         /Pmg==
X-Forwarded-Encrypted: i=1; AJvYcCVw+lejkOz+CVpcAs1pYreFRFKagHd8zK/SjiF6k18wqau5w2VaA3HEOkg5Tb/f2SF4UonT4c06pLO5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/qINtxlxcgbqhWBSBmrJVXP7vSYG9zzrV7EMY7kKUwGW50y5a
	jptqG6srX0lwmTK7NXhNhK/BcIQ0DGTfrcfUiQ73S+QmYZJJ8ZYUIDBdOuArSUbaHkWX+UnH/3l
	QirvR
X-Gm-Gg: AZuq6aLFWGYkzstP2eLro4K9ZHXtBojBetOjilR15uC/41OQ04xMWhBpPvzQ+YS4gtZ
	81hcuILCqk/+KmpUJKWeXELUvuolSsqDTLztbbZhVdDWEMZzZ/5yedrSLdOGbMhhPfQN+L4ESTj
	3M16dUAKx8wWmjKV1JmI2m1/IcysXhY6bRJV89pT5eYhpvQD7cKQ33O4/JQD2PHbdGkPB/YTpXK
	9m88WLR1sHoG7JErxwY5DQPv0D96FltFONf6RuPWdOmQSSblmAAmXJzRonGjdbDNGGgHS8mPQL3
	NtFiNEz9gVgn4zQ6AM9xK+dUtRqF8UHOJJUE4LulldTEqdahvuOnjJacvy/XZbdRlkBqXz1G/fz
	j2LpScI1+rB4i7ccOMgelyelB+NlIw63kia8MLNNIcFS5x+PD8OY+2563hv1XL0QJTFM7CY30Pi
	RR8m2m/d7OwtING9kH2jJxC3Ue24a8f2xsSf4WUrLL4VZqofL6MF2ReMdpbz84Sg9SHJayaQPxY
	xtI
X-Received: by 2002:a17:907:2da3:b0:b87:117f:b6f0 with SMTP id a640c23a62f3a-b8edf34b385mr1105176666b.30.1770805668021;
        Wed, 11 Feb 2026 02:27:48 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec54925sm44296266b.53.2026.02.11.02.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:27:47 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 11 Feb 2026 11:27:32 +0100
Subject: [PATCH 1/3] ASoC: codecs: aw88261: Fix erroneous bitmask logic in
 Awinic init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-aw88261-fwname-v1-1-e24e833a019d@fairphone.com>
References: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
In-Reply-To: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Weidong Wang <wangweidong.a@awinic.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Ferrieux <alexandre.ferrieux@orange.com>, 
 Bhushan Shah <bhushan.shah@machinesoul.in>, 
 Bharadwaj Raju <bharadwaj.raju@machinesoul.in>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770805666; l=1451;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=O64Bv8tsAMjygJxOqAvbghMEW/OID2nPg5aDiw2JAmo=;
 b=l0mAytX0jWY9agCYFNdGfdJiZxt8eXnq5o9t+chjtb0Ha4Ns2Dqtmh2hsvZEVeTEU5UJMmnhX
 Uf2FjeO+lv4CgGRjzILPv7NFFMjpNQgRuysz98NogelOko4HSWnqU15
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264728-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,awinic.com,orange.com,machinesoul.in];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8D2B01234FA
X-Rspamd-Action: no action

From: Alexandre Ferrieux <alexandre.ferrieux@orange.com>

The aw88261_dev_reg_update() function sets the Awinic registers in a
rather nonuniform way:
  - most registers get directly overwritten from the firmware blob
  - but a handful of them need more delicate logic to preserve
    some bits from their current value, according to a register-
    specific mask
For the latter, the logic is basically
       NEW = (OLD & MASK) | (VAL & ~MASK)
However, the ~MASK value is hand-computed, and in the specific case
of the SYSCTRL register, in a buggy way.
This patch restores the proper ~MASK value.

Fixes: 028a2ae25691 ("ASoC: codecs: Add aw88261 amplifier driver")
Signed-off-by: Alexandre Ferrieux <alexandre.ferrieux@orange.com>
---
 sound/soc/codecs/aw88261.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index 29b3fc8a1ea4..43c03d3cb252 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -424,9 +424,10 @@ static int aw88261_dev_reg_update(struct aw88261 *aw88261,
 			if (ret)
 				break;
 
+			/* keep all three bits from current hw status */
 			read_val &= (~AW88261_AMPPD_MASK) | (~AW88261_PWDN_MASK) |
 								(~AW88261_HMUTE_MASK);
-			reg_val &= (AW88261_AMPPD_MASK | AW88261_PWDN_MASK | AW88261_HMUTE_MASK);
+			reg_val &= (AW88261_AMPPD_MASK & AW88261_PWDN_MASK & AW88261_HMUTE_MASK);
 			reg_val |= read_val;
 
 			/* enable uls hmute */

-- 
2.53.0


