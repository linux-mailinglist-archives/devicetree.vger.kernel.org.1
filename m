Return-Path: <devicetree+bounces-274038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sD1PBNJYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:58:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE2B263481
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 14FF730A41CE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77043DF018;
	Wed, 11 Mar 2026 11:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="iOt1r1zw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551153DF003
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230192; cv=none; b=RNJa+b78ByXFoT2/6KImkSudoCyLuFGcMOL0e6K+J3MKIspjSL0Z5dHrx6F0r3HzMTZpFgjD9ljIzV8FXyaS2xui5OFM/i6SeH2J4Ljsiirj1k8LFdOzi4Slbw9Yz1AVumf6b80ob7OnjvdVF3s60eDqv5SEpyWUG+gNCtrMCww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230192; c=relaxed/simple;
	bh=Vj+thyx6im8c/60dw5piAk8vyroKtJcY1a74UdrGYxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L5e4OgEjxrnWtATvcv1Guta+kwOjP38ap0ENpwYu+OvHS1g288xsQOTpuA2S9rECgKiKPsbbVOYrxcKUiumEBywgzimrUaii1r0j/GTsgUpA6fXEIOOXCkYvqcSK+TiliHRjwIwBl4ah6qxz1W2hOQyc41HnYUPhWkvJEgfvcOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=iOt1r1zw; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso115699045e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230190; x=1773834990; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8wsphdPWc7OLP974m9ulR0tmXF0Yx3Br+A797hF6by8=;
        b=iOt1r1zwaX9ESpgKEVpdL1reSJXdLv+YS7me+9QfcNn91Uk0VneW0uTU6sJzNNOk6R
         VtPtZGMsPIGMQVYD1NfFctLJgld1vNdZReEnxTxjwvGnYk760PVzVVReFdY+fQRys7mg
         V4psGXl+BK0xZ4ones8Cs/y5U2RZN15YmgZW1xxxU8SQA8zOP8vWV7u2CnJyiCwju9fp
         nfRJCykhzTZG33LdVogB+CH6HUg8yx/c5lUtdWJApIZAe06oYpEW+BmzxrIBOK5nFUhg
         vufbWbDLo9sa2+BItluuWnGTDgDnj9cGwyIbWoQY4P7sJ2i52mVD/GDlc3kbsip8WrHo
         4kdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230190; x=1773834990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8wsphdPWc7OLP974m9ulR0tmXF0Yx3Br+A797hF6by8=;
        b=J+EP++romzYDmTCNRHj4XDTcv2iVvbnw7ytO26gu2oO+l9G4BfEmlC1KJg9pvNtKLl
         l69e9nJfv3Phg64+bIS2TDkxAaxVo73bidkTWg30ZpoiaqSgCwdwI0e5FWr7rE3offib
         jdWy84e8Yr91WPm3SQfLad1qFJGtSeN7DR4+Z9lEEAosqr5iXCOLjcyS/Z/hcJcZlVAl
         9kdT/Rq6ovaL2SHKXhMlaoMaI0l1soU/Xxs/yvKtNKVjga6QsqZ01jHNBSmXRZXE/iem
         TtPGHuTjkDfvmAEOtaJFfg+J+beRKx7XDW0KOWfmKT4TDYXeGiBUyZW/KxMCF6056I/q
         M7rg==
X-Gm-Message-State: AOJu0Yz9PPd+Hvg/yyeWgwXOVBxoibi4TxWdhEfbuF7ZYtaApAjSNeQn
	yCT/VTbF765EbshDK+5ybJoWe/poM+Nfr6OaR/yDdxXQF4tN83eZBpxOximLqDSIh3xdARXP/09
	PCcmM
X-Gm-Gg: ATEYQzwrhInKLAk5Oxw8bE5FzOHN4zdvOEgnTZCpIzb/WvA/rrslZYbsANLzj8Pgcjh
	4GsgmkfZLI8DaHTilsuwqCaNZqr04H9kBsisQw4mOmvM/KJa2J7vL5Bz44dAobGdTNcglDgqrk8
	cc/9f9bbOsr+E/MPzBP/vVRmg8du5VR1FROHQS5r5G5wokQ9zVtyZtcyty5t1Se451DizOkh8Wj
	/uH6gCLRaOQmp3SPW0rdb4aTOpv1fbQGtAJKdtMpJoancxW0/3rpfhTbgem3xnsyAhgcxK1HLTT
	1Vpj66QapK4XUNf06jLjPZXDD87G/do9GAtVudaBAva9HQ0AX5z46Avf9l0GxsiOVDsxwABnGji
	7XqFOnLX8qhSJrbp8d2rV9XkZrQWGoQqYdLDX7Uk//gFPVHPm9wAntJr58BqECuJLHhFtyFNKYS
	DdtxrE1RcvTmvV6J6k7F83sE45RHK/irIVjOMUVAca0bFtxsnDJJJuwbElQRv6TEoAvY1B6zU0u
	Pc8qw==
X-Received: by 2002:a05:600c:1d0e:b0:485:364e:9328 with SMTP id 5b1f17b1804b1-4854b10c82amr38597485e9.16.1773230189640;
        Wed, 11 Mar 2026 04:56:29 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:29 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:17 +0400
Subject: [PATCH v4 04/11] regulator: bq257xx: Make OTG enable GPIO really
 optional
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-4-7213415d9eec@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1183; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Vj+thyx6im8c/60dw5piAk8vyroKtJcY1a74UdrGYxA=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEhWinB7G5m+51bI9o13WsxbYqadDyoSnf/YKrr3e
 lTr9FMKHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEz170BGhr8/rge99V63ZTJHQ+2aTZszBaSSGzlbJr5iPLnzwbbUQ/aMDJ25f24
 Kqs06ofp79t9vDrO7zxzdNzdIceq++HnPBRUm1/ACAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: BAE2B263481
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
	TAGGED_FROM(0.00)[bounces-274038-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Action: no action

The bindings describe the OTG enable GPIO as optional, but the driver
gets upset if it's not provided in the device tree.

Make the driver accept the absence of the GPIO, and just use register
writes to handle OTG mode in that case, skipping the error message for
-ENOENT.

Acked-by: Mark Brown <broonie@kernel.org>
Tested-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/regulator/bq257xx-regulator.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/regulator/bq257xx-regulator.c b/drivers/regulator/bq257xx-regulator.c
index 674dae6109e9..0bb58ab4b8d4 100644
--- a/drivers/regulator/bq257xx-regulator.c
+++ b/drivers/regulator/bq257xx-regulator.c
@@ -126,6 +126,12 @@ static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
 	of_node_put(subchild);
 
 	if (IS_ERR(pdata->otg_en_gpio)) {
+		if (PTR_ERR(pdata->otg_en_gpio) == -ENOENT) {
+			/* No GPIO, will only use register writes for OTG */
+			pdata->otg_en_gpio = NULL;
+			return;
+		}
+
 		dev_err(&pdev->dev, "Error getting enable gpio: %ld\n",
 			PTR_ERR(pdata->otg_en_gpio));
 		return;

-- 
2.52.0


