Return-Path: <devicetree+bounces-273401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MG8eEBTlr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:32:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E9C248789
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:32:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6CBD43086DEC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E724A43E487;
	Tue, 10 Mar 2026 09:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="fyw3i/Rr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E57A43D511
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134963; cv=none; b=ZV7O0V9fDtEHfRZHm3mHTRCYIG2oxz43HnTNYrn4qS1shiGb+SLUip4ebykHzZG6P14PNo5BroK5TTImKexfrpMeFTl6jxVeLHIsJy5ske4ebKxEJ+7FLUfQEVpZHxbjRy7oghjd5AtjlcJfkak+E7v/RAsqh6bWX/v6dTd/L/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134963; c=relaxed/simple;
	bh=O1aC8On/MA8Asa48gmfFpo6774HHdkmtVifIcPxem2k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mtb8vFg/Y9SnAiU00WVoB1GdeCfwhg8Ewqi2NqrZmHzSPI9FE+9HzRPZ4Vfa3Dz79+ZLdllkEY2jiBYIQxW3xbdZW8fXFbCjpgQI1xBl64YKS4MFf/ujxgu38CbIBCWTlyuN/yRCALvsbeD4roGe+OC8Rbj/ukT7pqhvfgWcuck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=fyw3i/Rr; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48534237460so26276355e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134961; x=1773739761; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U8lhk/WPiNJlz/hNCzMa0IHLyNJ22cQxP3R/xv+M6DI=;
        b=fyw3i/Rrm00HEOoIRYHjF3EXAmK7464c3QQljL7q+yHQ0XgZht7QeUXnTImJiGHk6r
         5YWewpcTdmUU+IrO66JT9hcmvX59fZ0yg6OJq9Uzy30z9thzYbXsLlqoDVQwNkDWgPGe
         k1Bvm7U2+f52zbWQ0+SPMSqSHS3l22uo85fWyAMFrpHXwY7TM0w1Q32N7+E114Uq8qkq
         DqtAKEldFQ2G/5XfPejuBreSV3vQbt8SSLTBXG4tv6c8zRGzGqWWBpOgT1kzz/TTRntD
         D7LsFcdXPQTEzTx9kXwKwa0+nDvJLt9x5hdb3xd1aVFnzLLL4S6GR8CfpjEjVH3uTirg
         ODyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134961; x=1773739761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U8lhk/WPiNJlz/hNCzMa0IHLyNJ22cQxP3R/xv+M6DI=;
        b=XgVB8bF65YmnTpZzDhHq7youQdb+yfTD1cD8i2D80phuYHGB/aYvVtzNdUsfS81aDd
         m57yy+bffFWhSoYCxRmquTJeZxDwth8A94fnZIHFW8xiFxc1+F+LFScVkYX/kjlJ+bBi
         IQP/4/G8nWLcPmWqWwhdS49Tq6TdpBsQGpkQIcsTN4V2oYe/Q4WaBM4rcHfKefosQhRw
         lcFqcE1nnj6+x5U7LuJY3ucHm0dJkuy9DKNXZxyXf8dODnUSKu89eXSCDHTYS9o9Hl0W
         jIdLzWRycMkxw4FpA054GIOlW5I0PTIVz/GQbMfoK88z13qoXAw1kI7ZtftY+HwM44C3
         F52w==
X-Gm-Message-State: AOJu0YzXe6vEjNMkEYGlitDgmzMRu1F3kASE9GUr/QZAddekVyQPt1LE
	2lzwYLQlR5YGFyVBHut7OBcZnSCNwrK2dL1qL8Ee2hDBXr1yfPSa1Lilr2TjHkxHJdQ=
X-Gm-Gg: ATEYQzwoAGTWLKTGIqVQi93BHl4Q64sCsPuTSMpZ/2iMz8kQO2fVOW4WmbXHa0mHw3e
	cPUrSNXW/gXEKtU7RZS4WpA7wmSGapBSBz8oZVeZx61aPBbHxLbr1Zl7ozWaY2pVVBOdIwmscAI
	9gXktAz4s+ub7Oce2ZAm8gHiETx+qMkkRv1FuIHHblooGAA3oOZtn3DdkD8Q8eKzpnr1Hvh6UxC
	yiVcFdBsClg/Ot6/eDGY+nVVuFOfAX+BO93RjiEx/M1DtAGVQBU7sEm6gx68a4bvHwvVLnAAoCo
	Z00fD4cyeGRhdvtLC4SB1b9kZDs7sAGnxWvhkd/3eWqJuxBQUp5otaCfiZc2V+5JMUYFjsNy5cU
	w3QOIHfgPLdtZmW5A7QLHRnklBpvRdid2OaXCQUeYE9O0DnZiVSb1pTVEADZj9vIKAiH7OAz4/d
	qOoLw/GiJ7zCn6MuQBhtkwU3KG9g7203BvqBrskLsaJ1ATWYsgJgULMbYhsPudEuecQCRcYBqp0
	RtjZg==
X-Received: by 2002:a05:600c:4505:b0:485:40c6:f527 with SMTP id 5b1f17b1804b1-48540c6f6d6mr65321075e9.32.1773134960593;
        Tue, 10 Mar 2026 02:29:20 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:20 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:29 +0400
Subject: [PATCH v3 05/11] power: supply: bq257xx: Fix VSYSMIN clamping
 logic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-5-02f8e232d63b@flipper.net>
References: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
In-Reply-To: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1962; i=alchark@flipper.net;
 h=from:subject:message-id; bh=O1aC8On/MA8Asa48gmfFpo6774HHdkmtVifIcPxem2k=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5K4UWSxcOobJnZOz4qvgUcqbh45tWuNZXPY0j05h
 g2ZAociOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 Q0MdYx0jBi5OAZhqGzmGfwa7+m/b7VyhoHXp0CW1DO9lf5h/bp10ZLJMjp/Po7JIhX8M/wMrWET
 SDTaLtHIm/Q6/KLMrQ2zRGlX/KR9ZGHwNrtXwcAEA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 00E9C248789
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
	TAGGED_FROM(0.00)[bounces-273401-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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

The minimal system voltage (VSYSMIN) is meant to protect the battery from
dangerous over-discharge. When the device tree provides a value for the
minimum design voltage of the battery, the user should not be allowed to
set a lower VSYSMIN, as that would defeat the purpose of this protection.

Flip the clamping logic when setting VSYSMIN to ensure that battery design
voltage is respected.

Cc: stable@vger.kernel.org
Fixes: 1cc017b7f9c7 ("power: supply: bq257xx: Add support for BQ257XX charger")
Tested-by: Chris Morgan <macromorgan@hotmail.com>
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


