Return-Path: <devicetree+bounces-259134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LVyOaT9c2mf0gAAu9opvQ
	(envelope-from <devicetree+bounces-259134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCFF7B559
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6327C300B442
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 23:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52F22F0C45;
	Fri, 23 Jan 2026 23:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gSXbMbgG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27FB2EBB86
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 23:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769209228; cv=none; b=B4QDNqsE4z/yFBNC/vWZaRUc1GrRwszMcY2oubJlDlKPupAjnx+GV91iGX4H7lA4C7kopkCYguSx+AbQAi1vJ46bowfj8Uy1Jr186st/JEgPrC48EjpHSx8egWTsVVMQod1MoH2gwQ6jHr2NMDPnTsukTMd/WA/yzB7pcqUP46k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769209228; c=relaxed/simple;
	bh=H1HtXLkOMfwZTiFA82ib7pTLWwYdqKOWBX6p2M2zDn4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rJjdqidtiTmq/ILM/b4KmA+D5vRGzxsd51EHugRc+CDxrMv6xtpc+E4S74pBkaURXOyz5HgvseiJ6YMLOjYpYbP1CushP9Zqb2lfcEbwYI/edNII5PBSmxYvgNbV/YAw4wWmRW/3Cp5B1HjcE4uJTJR/xbwU2xWy2BGqObaMsz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gSXbMbgG; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47f3b7ef761so19636595e9.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769209225; x=1769814025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Ok1prVZnYzbpoz3IY6/vUwCdfPHeHtCght17kbLDLg=;
        b=gSXbMbgGnmAem2InFBIwYabUeM42aDDwTCLxs6fAsrkxbvEHkfKrJblqRP3RsJAlhO
         MYy0+PczFQe39jPGD+lqarV0QJEgFhFaBMz5MwT+lNhRRibnG7kIYWm/8dMaNXA36yV/
         SqAor6VqCe8WYUpKsIV+tnh50u2GEatcJE6WQJ+5y+gux3g+d5SVw5PCsYRLXkhmYmKi
         3LtHpFmHCpHhwPmrntqkpRsxZEjtFhKEFRXM7oyKJGgsfAlEyjR1Sc/hJn9dVSQ4vohj
         s6CpdaywTMMEnjHR1yjKBNbtTsehBkBnYb68sr3M22do83rQEB101sz8uyZ3UjaHwvfL
         ZQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769209225; x=1769814025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/Ok1prVZnYzbpoz3IY6/vUwCdfPHeHtCght17kbLDLg=;
        b=cuqbTpTxUAfBxt9aqnvR4uZ30i7BI6UWdkemuzTwpvMjxMFvcWkF9yckLQ2UyCDYnX
         Ic90XV0HRdGltaLYsO5fqAGeXHht93b7dUMUJ1xdRMbIj2N3tm4WZQ73V0Rc6Rdy81eT
         hsW96tOM4RI4L1PsJGrdqGhcgXUx79p/gs59P3NLw7VAbPFeNQ1kGczPWG8LZCAYe9u5
         q4mZ3ys+mF8qzp+NGLPGStbcoe3Q3JX7Rq3sAejIdD72e+l1WEKExUN70qcDEB9DNyXh
         Q2kb8XErb+pSeNm6GFcLQr8MF/OolHBI8HLNtaYlvvzNxnycBOdal0YSlAEcJxR1CoKv
         9gzA==
X-Gm-Message-State: AOJu0Yx5rHApiYkKCujj9f8xh5HcYJ5OemIoMZTAOTgerLdT4NTt/F2N
	Qa/7VIRqHjAUyw+D2FPTonn5tT2jy4LiEPgh6XfnFmjHu6SApQ7jg7so
X-Gm-Gg: AZuq6aKNRGFS3VI4JatESSdCx0IyqDSMn3k8jAQT/ZPl7vTLmKE9LtM/MVwjzgY1Oc1
	rCgUANIK6B4ouW/4TKjD8lBtLm7Gal0KrNNfj0t0Du6ZKr/CvHTgBrq04z28dknhsqoOEi6mncy
	9tCVwFbxxBWT8BARTrHLC5JzZktishvYBQk2XIpvIenGCKQNjglvjA6xb2luV82Sc8/9uFSxZI3
	W/HamBDoUPbGIGN/Sn6E3ZcfQLidzxxywEFpdRe1ZW5n7cR7KPD8MHHNF/JdpdXcauXPZ/jQSBm
	xp1FtxMpYBPfuf8ocBAx+yJO41TjJuwUiHvAp7N/bGnHG8vBYfIqsf2czHIQ8ErAE4i0Y25p/2L
	3ywPP1zp245ni1fd1CJOnyHwSGN1hUdpQTT35MFXHreNqw5GASW+h8coxYY8rbZbj5Ixiv56rMn
	efTUSxBsMt+cabXze/QUSPhfT5SkKbf+fNoJ0dNC5LEyfluPzeQGTx+G3GqwS+wYcbvB04M4t6f
	ET4DObULWkEpFdHoA+sHz7z
X-Received: by 2002:a05:600c:6814:b0:47a:7fd0:9eea with SMTP id 5b1f17b1804b1-4804c943d37mr75807255e9.3.1769209225030;
        Fri, 23 Jan 2026 15:00:25 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:bccf:b3b1:e288:4e83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cc278sm157142665e9.12.2026.01.23.15.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 15:00:24 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/4] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Clarify SD0 power jumpers
Date: Fri, 23 Jan 2026 22:59:55 +0000
Message-ID: <20260123225957.1007089-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259134-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: 5BCFF7B559
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Clarify the board setup requirements for using SDHI0 on the RZ/T2H EVK by
documenting the CN78 jumper positions needed to supply SD0 power for
either the default eMMC configuration or the SD card slot configuration.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
index e9639bbb2d70..49464e6d212b 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
@@ -14,12 +14,15 @@
 /*
  * SD0 can be connected to either eMMC (IC49) or SD card slot CN31
  * Lets by default enable the eMMC, note we need the below SW settings
- * for eMMC.
+ * for eMMC. Also ensure that CN78 pins 5 and 6 are connected with a jumper
+ * to provide the SD0 power supply when using eMMC.
  * SW2[1] = ON; SW2[2] = ON
  *
  * To enable SD card and disable eMMC on SDHI0 disable the below macro
- * and set the below switch setting:
- * SW2[1] = OFF; SW2[2] = ON
+ * and set the switch as follows. Also ensure that CN78 pins 3 and 4 are connected
+ * with a jumper to provide the SD0 power supply when using an SD card.
+ *
+ * SW2[1] = OFF; SW2[2] = ON.
  */
 #define SD0_EMMC	1
 #define SD0_SD		(!SD0_EMMC)
-- 
2.52.0


