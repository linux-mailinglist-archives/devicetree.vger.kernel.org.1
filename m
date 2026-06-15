Return-Path: <devicetree+bounces-312047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qpgHHnAgMGrfOQUAu9opvQ
	(envelope-from <devicetree+bounces-312047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:55:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E48BC687F53
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:55:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Sjjo5qNI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312047-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312047-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBCE730C5F30
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E612E40911D;
	Mon, 15 Jun 2026 15:48:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3650B3CF041
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 15:48:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781538511; cv=none; b=MeDOdy5MbFmovcED9tPq/456NLN178e78yoo1Y8aVS2+3KCHxN9s98yCUBJqXyYACoawHYljJZmlfbywQi6TMqNjSQ56I009tVKrZ9CFz38eNqorvkTTzXiESr506lksT0L+q75BsRsA2Kmkjshtd0a+XNbRTH14oZswWme/+YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781538511; c=relaxed/simple;
	bh=huqRqcHmMj9a4UfhQ5i9f8+g9/DxQOwteszc0BZ3Xhg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dx+3QBlAncrKDfwuFx1iRlWjmHq4rmGZvk/H+flVsts1x3qGZ8pu9Fvm8JNeNJZdfC+cTFBvXtDqU9uzsM0bSHF+IBQrzNsS6Zh1gSLeMmPNW8TePBdbme/jwpEIFIcfU8Q5edPhKy8mROmd5+gLT6cKIj/HcxwFuifbhXvpnrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sjjo5qNI; arc=none smtp.client-ip=209.85.221.54
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-45ef29c5561so1885772f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781538507; x=1782143307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FGk/lAnBnjldzCCvGYTudMsVlU1zVHc4ZMHyv7aX4+0=;
        b=Sjjo5qNID8HeKYV+QbGfl9H7R5mpJto8R4nw3L7HIn2cmh/aemr+rC2C5V7m6qTHGn
         RfuZ9MosnVRVGODJeV8CePuSYp1SxXGNOJtizxBmvXTmOAj6N2JcCyEJ7MCuCFGEjlqT
         BmHe7fXXpzyx2yaNyls123CaPb3puXfeIrPdYXPzXBAuDUDb3zBDuvp7VGC/g4HAbE6o
         nPmkJBaHekcPDwaKdsP20F50JwHiSjG6ciiVS/mR5VoKGq44tZse4t/piCanOmYG6V+/
         AzYvk1jUF6knFl3ikL9qBWuxtbpEKAmHYxJ9XBxGIS1kFFGnObphOpF5tb6sHLVcHiLf
         6OEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781538507; x=1782143307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FGk/lAnBnjldzCCvGYTudMsVlU1zVHc4ZMHyv7aX4+0=;
        b=MjB8olkcjLZSvN0+P2MZMrwPyT0aLZGKfalx+Z/Zu/1x4a7mhLi6atDJCpxOlzbQcp
         dsZ2DzpU8+VpN+dANRi2TWAmpaCWIq1K76DGg8YlURNLN0VfKC3LhBUuV0dhIM13N8KK
         Wy4xqBT68prrKeKug3Z5EJahzyrJpnGxTv/MtkKtUN1pt2vsJ4vvYNtgK1XqUrsVkeXA
         HLmpZWnNl+hrn6k90v4O8GUOdcRpChNZeP+JHnhF4NDy+zt9QqN/hOT8Cqslki0uLG06
         A0IBYmyCTS5w0sqHrzMezsa3bFDDBOJjPStERobNVrLRx1syJfel76xQuri0rmeOw/O/
         u0Yg==
X-Forwarded-Encrypted: i=1; AFNElJ9M8Y5ER2V2E5CgG0vBDgfJKl1QHf5H6d1vWwDHriOZRenxrr1iaEoJHsgHmgzlTiHGWRcsKXGbW9hv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv7jOmd04E/+5Cofno1pv88ivKAyqpoeNAAHDpAOPEGj5xoBNG
	cf+Rg2AIqQKqCHYsDIzxXVWD4DER3hewBxFJ1mcHAGIADa5NJ9pXB5ow
X-Gm-Gg: Acq92OHgDNVrmWkyZn0Z2+NGZjheqTpj7tGNLlC/hOmUTFc+yg+CzZVIFCkhEynHqsf
	l9JVWmEvnVr9mOnZi6pQ/GsLZGZ9RSEN4B0KnnuwLTfpbOfmXWBDYD9DX56CY8PaxlS3XmBpij9
	IHuewhQGRInBSf87i5EJUhEX06ZZn5CKGFG56bvgafhsdFLG6/Y8tjXMi+pl2TC2FI/aTog+40R
	aJjTWhnqBcESUxS5PB6kFJMVewRkF4s0kfFscNS9JSJydLlWUdFmr5BBcphDlmgbEZvCaC6WveN
	3KdOkjw15t4LSNVq1nyeGk+VWPki24EZ+ZmmdxoWr5t86bhABiLjIsbJHwEquC4tRWMfy/MRAqB
	ZaUKk4HkncjPgauR/1V8El+dhRzByiLzQkiAzYPB2wpcBjLrnbILc66/KYW6Ig+V95tcB7Bj5CH
	TvORlMzuApCna/vqBkqy/3rqDPNBRl+hYSTJBJKPkZZg2HvC30LhVHPx+r5E0IMEdUBj7G5VLBj
	waQcifHL4yzyci/d1YBZ3MQW9/kTWwcl4o4
X-Received: by 2002:a5d:5d10:0:b0:43c:fc5c:a9fe with SMTP id ffacd0b85a97d-46076b18cc0mr15340086f8f.20.1781538507468;
        Mon, 15 Jun 2026 08:48:27 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:1e4:992f:3ad2:4f2b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26434dsm36010995f8f.1.2026.06.15.08.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 08:48:26 -0700 (PDT)
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
Subject: [PATCH 08/12] rtc: rzn1: Dynamically calculate synchronization delay based on clock rate
Date: Mon, 15 Jun 2026 16:48:01 +0100
Message-ID: <20260615154805.1619693-9-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
	TAGGED_FROM(0.00)[bounces-312047-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: E48BC687F53

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Replace the hardcoded hardware synchronization delays with a calculated
time window derived from the operating sub-clock frequency.

The driver currently hardcodes microsecond ranges assuming a fixed
sub-clock frequency of 32.768 kHz. Newer SoC variants, such as the
RZ/T2H, drive this hardware block using a much faster clock rate
(~195.3 kHz). Hardcoding these wait windows forces faster blocks to
over-sleep, introducing unnecessary delays during clock initialization
and register configuration.

Calculate the duration of the required clock cycles in microseconds based
on the runtime clock rate, and store this value in the driver private
structure to adjust the usleep_range() and readl_poll_timeout() boundaries
dynamically.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/rtc/rtc-rzn1.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
index 06339adae71f..bc6af59744e4 100644
--- a/drivers/rtc/rtc-rzn1.c
+++ b/drivers/rtc/rtc-rzn1.c
@@ -71,6 +71,7 @@ struct rzn1_rtc {
 	 */
 	spinlock_t ctl1_access_lock;
 	struct rtc_time tm_alarm;
+	unsigned long sync_time;
 	int alarm_irq;
 	int sec_irq;
 	bool alarm_enabled;
@@ -124,8 +125,8 @@ static int rzn1_rtc_set_time(struct device *dev, struct rtc_time *tm)
 		/* Hold the counter if it was counting up */
 		writel(RZN1_RTC_CTL2_WAIT, rtc->base + RZN1_RTC_CTL2);
 
-		/* Wait for the counter to stop: two 32k clock cycles */
-		usleep_range(61, 100);
+		/* Wait for the counter to stop: two RTC_PCLK clock cycles */
+		usleep_range(rtc->sync_time, rtc->sync_time + 100);
 		ret = readl_poll_timeout(rtc->base + RZN1_RTC_CTL2, val,
 					 val & RZN1_RTC_CTL2_WST, 0, 100);
 		if (ret)
@@ -433,17 +434,25 @@ static int rzn1_rtc_probe(struct platform_device *pdev)
 			ret = -EOPNOTSUPP;
 			goto dis_runtime_pm;
 		}
-
 		if (rate != 32768)
 			scmp_val = RZN1_RTC_CTL0_SLSB_SCMP;
+
+		/*
+		 * The internal clock counter operates in synchronization with the
+		 * RTC_PCLK clock. Calculate the duration of two RTC_PCLK clock
+		 * cycles in microseconds required for operations to complete.
+		 */
+		rtc->sync_time = DIV_ROUND_UP(2 * NSEC_PER_MSEC, rate);
+
 	}
 
 	/* Disable controller during SUBU/SCMP setup */
 	val = readl(rtc->base + RZN1_RTC_CTL0) & ~RZN1_RTC_CTL0_CE;
 	writel(val, rtc->base + RZN1_RTC_CTL0);
-	/* Wait 2-4 32k clock cycles for the disabled controller */
+	/* Wait 2-4 RTC_PCLK clock cycles for the disabled controller to stop */
 	ret = readl_poll_timeout(rtc->base + RZN1_RTC_CTL0, val,
-				 !(val & RZN1_RTC_CTL0_CEST), 62, 123);
+				 !(val & RZN1_RTC_CTL0_CEST), rtc->sync_time,
+				 rtc->sync_time * 2);
 	if (ret)
 		goto dis_runtime_pm;
 
-- 
2.54.0


