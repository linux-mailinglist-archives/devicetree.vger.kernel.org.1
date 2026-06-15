Return-Path: <devicetree+bounces-311857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YyAJKpfYL2pYHwUAu9opvQ
	(envelope-from <devicetree+bounces-311857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:48:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0BB685758
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:48:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=B8bsWJig;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311857-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311857-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E4DF730090A9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E969B3446C6;
	Mon, 15 Jun 2026 10:48:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B96134214A
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 10:48:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781520533; cv=none; b=SJZ9oLd+cSg6Z8r3YVGsyrK3b4bsUGhzw5mIk/qr8rpfb9QdkvLd01cMU1LO+9Deeg2wBJmZk1dRRxP7uUvChM0G59cAB0nkCy8ugRZbEc9brX17n7e/Z11tcxk0bG/Yia+g5LRmr1II/Q5b99xpXESqTZ352Qj0bfdG0LwbYNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781520533; c=relaxed/simple;
	bh=YGpbOnzNFHtccs1nsI/f3ODNgK61VFnWrTpbiSn+Gyo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YKQ4Tnxlm1eE1ht4COtSqXMDdCyrDYaBRI/09udeNUBF3aLzNclB6SR0uAG5KpCjG8AISoiM/HgCRt8MpA2G2DwbmeQhCsAo7hBMBTDN0BXGgD8rly8WxQUkGxkPDWP8q3zQ2qBzIBLEsYYsV3f8s7TyqLhg2lP9eU7jLsRMtyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B8bsWJig; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-490b8ac62baso30820155e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 03:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781520530; x=1782125330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLeDqFqDa9KpNOsyOXrLj3mdC+7gkZq+DBsY04Jn0Wo=;
        b=B8bsWJigtpLPwqRo2K2q9YHVka2iRo4qpphaaV/J8FJodYlKvU65Yawi0xRW+G3mlZ
         jbhDDUI+y23rnn5jILa5d4EniLtryAIjXbgZKmUQhZ5lPjOg/X6INvdOWYXAUjLF3iKO
         7pidSZ3I8YhLlBASXzarrPRub1jro4l3R04VbHu6kEKMZC28VbC0d8nlLVZB5F5M/7M7
         RVv3FnMFKWcYdzgI17zcIH4dyqeu1LBEds1gRtArcX7OA8QNNkBCW759PcQKyx7zRm4I
         rlhrBIdnnC5qeKSM+ZOgXYVeK8j/J6TOtm5RGu5GuMsMuLTnrpMWPxn2+f/+QoGrCu6Z
         z1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781520530; x=1782125330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XLeDqFqDa9KpNOsyOXrLj3mdC+7gkZq+DBsY04Jn0Wo=;
        b=eUVdCnROIahTXTCIBAjs6IUR70N+1Rr9YB0dQeYFUGtYEU4SquLF6j8EaI8QIoHSIW
         DOkz4IuuYULxF673cAYOsXKKFJzgrWX2ODRRQw2RG5MTkDSfv8LV2rqvAYnO+qpKLw9+
         umCt+E/xo+gj/oy8cl/9KLGUhBjtqiL79H3CnA5gDyJ0S9pl64hOfH+CVa1PnHRUB20W
         8A7d4qvAQrqJC3ts3IIvqg/Nfja6uhJ+SVTkZxy2UVfEyZJyg2E8vZXnEOw7grT/lkiG
         F/AqLlLU/je+P74zNNAvjjfHKMLl27qMbd1DBHcKh+5PW4GdsUEcnB6LgYcG/hKZ5jTs
         B7dA==
X-Forwarded-Encrypted: i=1; AFNElJ8MJ7vb18WwZiovp7GnW4NP5ELpfpmYLFvKe027kVMKu806A7+irTvXztWeBFKMIxQpe+ZkbpRjhjY2@vger.kernel.org
X-Gm-Message-State: AOJu0YyLYJ5vaogQBIbt0Y4M7e0kxjh7BtkpelnpKVzuN2gAkIra6Isi
	ggjc+9r5FHVJIhsOihPtNeWijFBfEHrGSGTOzh1bto4YMZe/GGAbmAN6
X-Gm-Gg: Acq92OF0W7Or0QhnzexYBEShVtVVpeMIVAHgA17H30+2wxZ1gYCc3IoLgkePKC8NFCG
	8wCNktLBiVBpU2F9WZsf2i22bFYiI5pl4ybvS70x7FriYeE4PkqXgoBLxSkW5Eusn0SgHIrNgem
	yLT1KYU00Bu0r1etUsEZqiGV+GZvQrAd0Rr4J8b46SmcbydLNPRGgRaasRxMBrVzjHq0e2150Yp
	jfOU2Afqs45VJMz+XsJ6kwIYX8byDUXSj4jHc+1HV1wo9ICvP9RgGTWQXPviQx+c2dIxtExfemz
	QyZTW+8VZB+SFIZPWR7By6oPd4xAwzwhIMgI8jJhtG7zkIklr9My2jufQsksSmywEB0KtY6iH35
	hJ0obypqcAs6SHYqicVm1chmf+pQae5Y4nCkeupgcuzcPb5hYKAzYRt1ncCuoM+C5BeLccZfbzL
	C9mCwM0QgBl6EldrY4aPIsUtX3+mAaXuR/sy+M6B4Y7AApjvo0HTuhpAdKxr3o3IJPnRni1DjMr
	Jy1Uhvkd3nynXXyrV3FSeS1PsPgzUtKL7Gn
X-Received: by 2002:a05:6000:2586:b0:460:684d:d565 with SMTP id ffacd0b85a97d-4606f255ab8mr16011008f8f.15.1781520530262;
        Mon, 15 Jun 2026 03:48:50 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:1e4:992f:3ad2:4f2b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26f1cdsm34812464f8f.11.2026.06.15.03.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 03:48:49 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 2/5] clk: renesas: cpg-mssr: Implement dedicated MSTP delay logic for RZ/T2H LCDC and RTC
Date: Mon, 15 Jun 2026 11:48:42 +0100
Message-ID: <20260615104845.4122868-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260615104845.4122868-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615104845.4122868-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311857-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:prabhakar.csengg@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,baylibre.com,kernel.org,redhat.com,gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C0BB685758

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Introduce a dedicated clock delay mechanism, cpg_rzt2h_mstp_delay(), to
satisfy the module-stop (MSTP) state release requirements specified in
the RZ/T2H hardware manual.

Per the hardware manual, while a standard 10 us delay (satisfying 7 dummy
reads) is sufficient for most IP blocks, the LCDC requires 100 dummy reads
(142 us) and the RTC requires 300 dummy reads (428 us) to stabilize after
being released from a module-stop state.

Implement a conditional bitmask filter helper that switches wait
intervals based on the packaged module clock index. In
cpg_mstp_clock_endisable(), the clock index and individual target bits are
known, allowing an exact match. In the resume path cpg_mssr_resume_noirq(),
where individual bits are not tracked, pass a fallback register index base
(`reg * 32`) with bit verification masked out to match on the peripheral's
register group block instead.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v2->v3:
- No change

v1->v2:
- Dropped using table based approach in favor of direct conditional checks on the clock index.
- Updated commit message to reflect the new approach.
---
 drivers/clk/renesas/renesas-cpg-mssr.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/renesas/renesas-cpg-mssr.c b/drivers/clk/renesas/renesas-cpg-mssr.c
index 5b84cbee030b..4ed056b18d31 100644
--- a/drivers/clk/renesas/renesas-cpg-mssr.c
+++ b/drivers/clk/renesas/renesas-cpg-mssr.c
@@ -253,6 +253,22 @@ static void cpg_rzt2h_mstp_write(struct cpg_mssr_priv *priv, u16 offset, u32 val
 	writel(value, base + RZT2H_MSTPCR_OFFSET(offset));
 }
 
+static void cpg_rzt2h_mstp_delay(u32 idx, bool bit_valid)
+{
+	unsigned int mask = bit_valid ? GENMASK(31, 0) : GENMASK(31, 5);
+
+	if (idx == (MOD_CLK_PACK(1204) & mask)) {
+		/* LCDC needs 100 dummy reads, or 142us */
+		udelay(142);
+	} else if (idx == (MOD_CLK_PACK(605) & mask)) {
+		/* RTC needs 300 dummy reads, or 428us */
+		udelay(428);
+	} else {
+		/* default 7 dummy reads, or 10us */
+		udelay(10);
+	}
+}
+
 static int cpg_mstp_clock_endisable(struct clk_hw *hw, bool enable)
 {
 	struct mstp_clock *clock = to_mstp_clock(hw);
@@ -312,7 +328,7 @@ static int cpg_mstp_clock_endisable(struct clk_hw *hw, bool enable)
 		 * register, we simply add a delay after the read operation.
 		 */
 		cpg_rzt2h_mstp_read(priv, priv->control_regs[reg]);
-		udelay(10);
+		cpg_rzt2h_mstp_delay(clock->index, true);
 		return 0;
 	}
 
@@ -1142,7 +1158,7 @@ static int cpg_mssr_resume_noirq(struct device *dev)
 			cpg_rzt2h_mstp_write(priv, priv->control_regs[reg], newval);
 			/* See cpg_mstp_clock_endisable() on why this is necessary. */
 			cpg_rzt2h_mstp_read(priv, priv->control_regs[reg]);
-			udelay(10);
+			cpg_rzt2h_mstp_delay(reg * 32, false);
 			continue;
 		} else
 			writel(newval, priv->pub.base0 + priv->control_regs[reg]);
-- 
2.54.0


