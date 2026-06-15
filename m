Return-Path: <devicetree+bounces-312051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4stuD3cgMGrjOQUAu9opvQ
	(envelope-from <devicetree+bounces-312051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:55:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0FE687F63
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:55:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=q4MnCh93;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312051-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312051-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81DBF30D1237
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC9A40963E;
	Mon, 15 Jun 2026 15:48:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C42140910B
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 15:48:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781538513; cv=none; b=DvEAuKoPzdiGFHxtDSIPWEQK4wWcg6pcolpnnh1z6nxUHJcMUcFtU1Nbcz4nca61PpuGxEpO62b1jHy8cg02+7uaH40nAqpB7y0h4jmligXUREjhEwE0DLxIK4RtZ4y6FkotHpRD7prJ4zCA852priY8vwZVYVkn1YqM5Yk8//U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781538513; c=relaxed/simple;
	bh=Gk/cPNPTDZkAWNymipz74p7wZWq4X8OMsudl9IitgbU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MuekYcuTkUrtb50ZXx4CH7PoXXA8LaLIhEliGB7kp3riR0+VUWiiM1QZqEtARmS1VMnT89BJ9pMxQRExlEZiQUp/gpOWRNWryVXZOdI2P4aZxefnrlh/UlXKAI6KiPz7hHyQw+7TQF5nbznR8up26I7Vmpx7vMX/ttBvKEk7AfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=q4MnCh93; arc=none smtp.client-ip=209.85.221.44
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-45eea68dd6fso1831433f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781538509; x=1782143309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9hQG1QLJk/k6gtdHr4QTzx1kFxzhJfLJZfPoGCSsmc=;
        b=q4MnCh936TEEJ4mH4z7asgg18S3Zd2MzhZ/pKPKK2s8/sAD0/tMe16++9sQ2kg2lgN
         o9QorLYaSnvFzc+7ly/g85IL8nJrKORdalExnLqYJorVhc8VTPILqRiuceQWruWKG7Tn
         79UkSZeQif8TmXOFQeHp2DOfJsZu9FJcZV3z2VWv6JXzvaJMrvF9HkgKalitM78ZeDih
         TbTZb9b3+RZrat9eBlNBJowcmqaMbb3zKs/Ybge2AKW90k+nO8kgCGCTUqVkpLGtKPt9
         9VtaAJwCARTley0TdoIJmeRSDjciLZHayeTOsaItZnLRrPxS/ZTDxJDZMCwZzZh9hURA
         aWPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781538509; x=1782143309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L9hQG1QLJk/k6gtdHr4QTzx1kFxzhJfLJZfPoGCSsmc=;
        b=VFiCFhj9ABlqgt+t4EJi+Nn7Hg9UHu1Ol1Vy3EWicI70TXDSxCSvFAAoEArHGIoEEl
         8/hHfbw8T5Zh0byLcjQppqwbAz53EDxKYZMGRKkyNST06C4y5uQVfCoeA6On/dQ0K5nI
         Jp1De6aDcPvvLtPTIPiYfvUNDqZeTerwaT69pntIfzlINUHHYxdvSIrLrnNa5bZsivg6
         nDwqEbPC9u0G+zq7o1kE96x6u0BWStzBAvehjQ8SCjKBnQe+m818ZK4j/jwhVAsnZhGy
         hJCfmQW1XF+z1Ffa6OUBXC9nnRsxCv+tcqxwOoWwCwRwwYBLg8ZqO6r297kwylHKqjzp
         Q1uw==
X-Forwarded-Encrypted: i=1; AFNElJ8eui7ElUSU+ldN3ZLVRM3Zvu8aMCCjWYGJXxNX3sGPTQ+yfkAqj9jrK11NGySdi/xfemH7E9O8OsLW@vger.kernel.org
X-Gm-Message-State: AOJu0YxP/QMvNFbtN3F4RPgt4E5vV/Xi350pqBWKvvfYF6rFPZ8lkwS3
	lRFZ/C3vZd7cDR0JgSmKAsqOzluG1zOU37/wZXLrumHRjYxkX7Kf0EMT
X-Gm-Gg: Acq92OEK1QDkDn/HQbpDO9JsmMW85RyH+A9oPGLJjEZeZ42COd093kPb/inja+wTxKB
	28rFEd7pZvH1m/khWGd9nayQoUFuKVsRFRxdMSVLvx4hPdKlehXXEfuAcxTMZWV0bsU+60GsltD
	otWK84kpBTYFU+/q8Z7va05IiHuuWhbLEodZ/HH7U82NOpYRpR5IhT/Wu+9QTfGDelwFJ747FTT
	AVwFaDQJ+OOVsp0hZbdnrfSDXUhPiir8LgTCZM/SJdAwLpvrbv7+MWkVmCHMLlyw/nTzp1tEnY5
	1PW+CMq2pBKKWH5gEU5sRxnGpwkIj8HoDfr1hpbaVreXYu6TfLNrycLLUd0FKzAeF+hNwFvR3R/
	j5cSAKhYCcD+KrW4feRMpFqNoSnxXFoefO82SKaI5Nflxic7NUhiUrbg5ZDD/m/FD5FxCBQh/HF
	bGWw7CLTAtIXeNRrx/FlnsRkbAYhEpRKggwlCjXezHe56l8La3RVAsSs/7jANpw0SNYOXqQWpvO
	eD9WQ3xeMYPbDEdK/qa72mmeCiKXOIRR4/zOdo8i/ZzQ3U=
X-Received: by 2002:a05:6000:2994:20b0:45e:df46:ba30 with SMTP id ffacd0b85a97d-4606dba453fmr15655433f8f.34.1781538509590;
        Mon, 15 Jun 2026 08:48:29 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:1e4:992f:3ad2:4f2b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26434dsm36010995f8f.1.2026.06.15.08.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 08:48:29 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 10/12] rtc: rzn1: Consistently use dev_err_probe()
Date: Mon, 15 Jun 2026 16:48:03 +0100
Message-ID: <20260615154805.1619693-11-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312051-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,sang-engineering.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bp.renesas.com:mid,renesas.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC0FE687F63

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Use dev_err_probe() in the IRQ request error path to make error handling
consistent with the rest of rzn1_rtc_probe().

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/rtc/rtc-rzn1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
index 25cad9213147..c7ef3c81180f 100644
--- a/drivers/rtc/rtc-rzn1.c
+++ b/drivers/rtc/rtc-rzn1.c
@@ -477,7 +477,7 @@ static int rzn1_rtc_probe(struct platform_device *pdev)
 
 	ret = devm_request_irq(dev, irq, rzn1_rtc_alarm_irq, 0, "RZN1 RTC Alarm", rtc);
 	if (ret) {
-		dev_err(dev, "RTC alarm interrupt not available\n");
+		dev_err_probe(dev, ret, "RTC alarm interrupt not available\n");
 		goto dis_runtime_pm;
 	}
 
-- 
2.54.0


