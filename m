Return-Path: <devicetree+bounces-312021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dLs4C/YOMGqWMgUAu9opvQ
	(envelope-from <devicetree+bounces-312021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:40:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA95A687458
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:40:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=DJvUK64C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312021-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312021-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78C1B30242BB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF593F88A3;
	Mon, 15 Jun 2026 14:40:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1D73F4856
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 14:40:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781534404; cv=none; b=YuYgMSYFHw/E7sRt7ScPvyrpkofcMTyon8KPbVmpMr/HVZT3e26YrmNXppTNzghi4Aaf6ObzO2HEYde6QTSrCGMbnC4UZAPofRnRDBK7x3sPXUdEHjLqiEGv1/VJGJ6WK8kiXXo111k/Yra8vllETeTPbf4ub5O3Sk5bFhND8Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781534404; c=relaxed/simple;
	bh=JXBb/DENU8GdVa8lZmTQYk1UttH8sfz6FuqA1SD1a0U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hGHUKFKheRuUGsWPVQJIh3CVBz5IsjHNe6qxiZNTrDt/HhXDAtILzxRcFPgbbD+l+fo9AH4YzDGY7yqPiO9bSdDkpRqt81366KKPdag5jRgHNsed9bmx2R76Jgzx4QdYn68uS6X2/UWMP97WzDodBRDXVTTV6HyRUBhoR4At4o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DJvUK64C; arc=none smtp.client-ip=209.85.128.51
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-490be03d47bso36347415e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 07:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781534401; x=1782139201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NgHUqEX4YwadNzzP4twhRjf8gxLZ7z91CpvZQHdgg4A=;
        b=DJvUK64Cl1g1OFjWsh9HOh5rN4q/FD73LFc5436a9jsEEg6Nrs+z7SOopKVFBS5JP2
         nszbIbKUPdUuFm0VMNhcbEiXmeyEoGEasdtGyVVeeScsI/pAQEBBH/wqYX8nf8XmzgV7
         riv+vyBs/OeTl+AP/1bj9sPbwAeJxvm6qt/jEy40/ssm/uyW/3L+LtfVz8mZg/YDyey4
         SbsORcu722XjbkzhXS3ZATFqeVTPstcDzEF66Z4On9Z+ymrjhiF4qr/rndzEPyhMKnVH
         z+Obfwsdve13hzKnl2E0kf4P93gK1k+soNEnmsyBNXG9s+Vme/MTWOP0fJfJR2yZB7O0
         almg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781534401; x=1782139201;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgHUqEX4YwadNzzP4twhRjf8gxLZ7z91CpvZQHdgg4A=;
        b=GQgoFbsNaTxFIv1PxL5ZTBn/PiSH6hCyuygmb0FuOQfizw/XgqKQf267+cM3NHCewl
         pdM6ubuweS1ulCOCFaQx5LS7DpPq6Vi2eqJrFmoC+vwnBtFeKoe0aeczx/4j0ABuEOHH
         F1MxN2AgvZE9tqBGwKZmbFs8+hDVpc7KK7GNRQN19hSGXQate0miF0Pgc/MCAYEYWSF2
         ROwXQR3TK/TbSvGujDWmRAhi5oqgG1UoaHVEOmCksVXcQrFrLXnRiVlrH3ETFsf6fj2n
         UPQ0dzONkbd/K6g17wIXlxH47MO6K3WZ84mRLvsVdACcHhd/humT3LtCM9m1ZOjvQBvI
         8OsA==
X-Forwarded-Encrypted: i=1; AFNElJ/5LtEcGTfeaia5VFAlTe8TySXjFnaPDxeut2F4Ud9eKc6oRzxm8UQZOucqK5AxlRWe6pU7jddPW56X@vger.kernel.org
X-Gm-Message-State: AOJu0YxoHCuuPIPhzG9wNkmB0k7Vi6s1Zl9qbb/ce37TzG9awgVjHe+B
	pXe8eUlnbH3NtwRFMeFeHq5c92TZ50XVxov2r1thAx+BbF+j5SGBSHRy
X-Gm-Gg: Acq92OE/ubkOp4ERm1+2cyXB/m6GXVpqxN872/9k7zcxNCSPL+YkS5C+YbE2zhWc9Rx
	cw5b2WnFv01hFExwcwojTKPN55LoVzmmOEmugyd/XVblACWKKdhU3g5wu8sMijWHi+6vY/Oud/6
	L/4ZTqAbT/xM/KHtwo1UHkEguPJYeONLaSqdUUOzvGv4lFUZ7ViZxEGq0rGBvPFotL/6i9b8JGB
	QFFJJqG41aKFJJeH2uFHYJXhWNM6spOZjYvGpQDpy4xdIfM9aO//+CfppytD63yRU0ve/I4gdfJ
	zHwpHlfm7hAaA747HPJzH2uPkukN4xUZLepwO5yYhiiQtlWgU6iWeL4m7Pq0sCeUzusQPo4Qgu7
	kqW30U3MdLWUiyAFDNzKZCD0dIjPTWXrYxwaVlf67KY8uXlOkCPVHYltReQWjlWmx1W+iTot4M7
	l7CGm2MNnyHh3bEjeNC03zvED2l18GCrNnyZRo8dcgcfkZX+72SUJcZ+DyDQBmvhceuujaU1YDJ
	TVN3oF8PFk5yXFOOcX07OQY3R4jzQczrBJs
X-Received: by 2002:a05:600c:214b:b0:490:bd1d:472a with SMTP id 5b1f17b1804b1-490ec4d7879mr140056475e9.15.1781534400816;
        Mon, 15 Jun 2026 07:40:00 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:1e4:992f:3ad2:4f2b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492203c05ebsm256627915e9.9.2026.06.15.07.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 07:39:59 -0700 (PDT)
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
Subject: [PATCH 0/2] Add RTC clocks for R9A09G077/87
Date: Mon, 15 Jun 2026 15:39:41 +0100
Message-ID: <20260615143943.1610095-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312021-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,renesas.com:email,bp.renesas.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA95A687458

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,

This patch series adds RTC clocks for R9A09G077/87 SoCs. The first patch
adds the PCLKRTC clock ID to the device tree bindings, and the second
patch adds the RTC clocks to the Renesas R9A09G077 clock driver.

Note this patch series applies on top of the patch series "Add PLL3 and
LCDC_CLKD support for RZ/T2H and RZ/N2H" [0].

[0] https://lore.kernel.org/all/20260615104845.4122868-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: clock: renesas,r9a09g077/87: Add PCLKRTC clock ID
  clk: renesas: r9a09g077: Add RTC clocks

 drivers/clk/renesas/r9a09g077-cpg.c                    | 4 +++-
 include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h | 1 +
 include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h | 1 +
 3 files changed, 5 insertions(+), 1 deletion(-)

-- 
2.54.0


