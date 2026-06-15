Return-Path: <devicetree+bounces-311858-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3FMBJKHYL2peHwUAu9opvQ
	(envelope-from <devicetree+bounces-311858-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:49:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF53685772
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:49:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UKkErrht;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311858-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311858-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45214301FC85
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D659E342C98;
	Mon, 15 Jun 2026 10:48:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD666343898
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 10:48:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781520534; cv=none; b=RvFGUfaLW4kfiBODm2TVopS8mLKv0dAekNZYGdhqEYRVl/kRfzWmI3ZKwbmS4U3bo9SQOruZERx18vlYGR8FASTYylCZmSohPUCPwFf46df4+DMOsSr0uXLXXy2rvfmXHj5Z4xFmPEzH4jzpI+2n8zA8V/tSOUjkt1X7p3TxwNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781520534; c=relaxed/simple;
	bh=5auvEJum18T71XbAkYK85Pglurw/z4fjkQItDw3akdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fjQ57Xkll7g/sRcyIn2K1gZ9ZR77V2ZH4JQgGiQEvOErGkmzkJWApNum8vHMhvh2iS5v4q7wNWh5RV2Gwi+OXtS5gwY12/s8mD7KDHHkP6fanYVNKd5xs9vK2Urf0v6Rj4dqMu4yhJDAbmLXS9HaV7MBlm0Oe6y+pHGqO40ae5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UKkErrht; arc=none smtp.client-ip=209.85.221.43
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-46019b190b6so2681126f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 03:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781520531; x=1782125331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXFKNVRWxwW5KMFwm/zQYHz9ga+bWsg61qgYj0OuJsI=;
        b=UKkErrhttxoZNtHZ0YuOxCjq6DTqcVf5Rni3V0GiSahDFUNiF7w9Csn/j7DfjqGydH
         hMNITXTBUzoXrG6bdhl6vCAAtsEE2diX9JR6mnoE1tJsfLe0fE+T3SoewLRfRwxkxBK7
         f3ov5eorcUzllJ6KixsxlpLqrc3AWxQqoyICjewDrDcF7Y8NmnJzntk0U1IMSuPbkIDr
         qsvTUqDHpeBvMISUUFZt4zKQF1O24+apd/equxIcQ9va6Lq875Hu2pUXYCLYppJc66ZN
         BJlKgiiQ76THFP3dLXW3OH2zM7P6iXcDF8D5n3OxFvrMtRYmARV2ZtHlVlZOprnWVm2Y
         l2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781520531; x=1782125331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dXFKNVRWxwW5KMFwm/zQYHz9ga+bWsg61qgYj0OuJsI=;
        b=FLbgr0DLj+utKQSiD8h7A++g0Ay1/nkPyUcZmdBFXQJYXkNWB6lckwFWeAvHlJiO5b
         2sSnbxVdv9ya0mUsw2/qbJjd4bR7MvtmLIgRhAVETY6qwluOqFAyEwtmSevfHPOWYsC1
         lw0exXMCDoLZyZPb+30jxULaPXbmR/SN5yEc3P58Xc/vibji8dOv3ZzcWQEugMHN+hq9
         1CjwDZt7zSvXNegMcskBHxkETe2PqA4xP/a3AS4G7s1dIfBSC0suXshbxIYLx5YJ+RC2
         3GrQ9XwEnI/eo0r0lN4q+bTqJiv8sv3t99d/5JOP4dh46vpAGS2YnxUVmc9cdxwhK8AC
         VDZQ==
X-Forwarded-Encrypted: i=1; AFNElJ8JSEPrJSaEvflDjVNwvKuUZmerRxN2NE8rb08rLZRBMm8ih0kM7/0xudr7TxD/7hbc3h9N+/Dbe1ij@vger.kernel.org
X-Gm-Message-State: AOJu0YzEWxBwLCVzRCg/n4k+52atqIaXtbF7/AQpe5+LOEvRBBx4Fd5Z
	d/zxzbaMFMMl9SixTIzh64NiwMxdoix01PbXHWXHc+M8QyQHNshleOtY
X-Gm-Gg: Acq92OHaEw/bxVdleDmPrraEYn1lwqLkdJp2LZy4LXI+pZ2S8i1sDgxkq5DhKtTctHo
	H/O8HFy2V8JVHFUKvnNExtUOPLrSMFW5e44XxLlpk99s/fdI9bZX9WW6n4BWyjtxKtulpNzwx1K
	ujiSPAQyy2c3/pJnlc9qdmBXADAb9XiVOnypUyDxFCbbjFipTWlgc4fDwWWlOvS1zh6aa65bunH
	UeT/oMtl4zo0RLN7LIgRolS65ovV2zbKn0/QfBnG5F59ssClIhfxnFQDNk4pbBxun/djIcc3vlx
	0mlaobfBFhtOf5BGqdAg3qwZN8d3WTyR5tTbt8HPdMblym9PkSTsQSIiOGO0n8sPJ/ec8Hgyoql
	tTQgdg3cMzIV07vsRRKphcsuP3ngJxxN80RzFX7MTOJzP4U914lmzPeJTM8Z4Ilkbw8eAKyXGcb
	1B8RnEjjMda6IQ7bN7HRkYa+StMnyxzkrskdraHH3h3GnunAJOcHqUtAK7jgkBLEV10dR487h0R
	drKdCadkZIbGO2cwJxsOS8c3WqZZldLEkQb
X-Received: by 2002:a05:6000:2210:b0:45e:6518:21ad with SMTP id ffacd0b85a97d-46074a87c6dmr13828858f8f.3.1781520531159;
        Mon, 15 Jun 2026 03:48:51 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:1e4:992f:3ad2:4f2b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26f1cdsm34812464f8f.11.2026.06.15.03.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 03:48:50 -0700 (PDT)
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
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 3/5] dt-bindings: clock: renesas,r9a09g077/87: Add LCDC_CLKD clock ID
Date: Mon, 15 Jun 2026 11:48:43 +0100
Message-ID: <20260615104845.4122868-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311858-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:prabhakar.csengg@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:conor.dooley@microchip.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,baylibre.com,kernel.org,redhat.com,gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,renesas.com:email,microchip.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BF53685772

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add the LCDC clockd (LCDC_CLKD) definition for the Renesas RZ/T2H
(R9A09G077) and RZ/N2H (R9A09G087) SoCs. LCDC_CLKD is used as the
operating clock for LCDC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2->v3:
- No change

v1->v2:
- Added Acked-by and Reviewed-by tags.
---
 include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h | 1 +
 include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h b/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
index c4863e444458..f6cb8d649a46 100644
--- a/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
+++ b/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
@@ -34,5 +34,6 @@
 #define R9A09G077_XSPI_CLK0		22
 #define R9A09G077_XSPI_CLK1		23
 #define R9A09G077_PCLKCAN		24
+#define R9A09G077_LCDC_CLKD		25
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G077_CPG_H__ */
diff --git a/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h b/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
index 0d53f1e65077..312e563b322e 100644
--- a/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
+++ b/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
@@ -34,5 +34,6 @@
 #define R9A09G087_XSPI_CLK0		22
 #define R9A09G087_XSPI_CLK1		23
 #define R9A09G087_PCLKCAN		24
+#define R9A09G087_LCDC_CLKD		25
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G087_CPG_H__ */
-- 
2.54.0


