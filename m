Return-Path: <devicetree+bounces-266365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLsDMIKTlWn1SQIAu9opvQ
	(envelope-from <devicetree+bounces-266365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:25:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 633961555E4
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C93A030517C9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1AC22FDC35;
	Wed, 18 Feb 2026 10:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="isU0RQKb"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (pouet.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61A32DA755;
	Wed, 18 Feb 2026 10:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771409946; cv=none; b=prPvKVAceWeI90X+EBt9EsxHrd+TES158YjB0MY0gmdMvBHc/9Z2ZvTXvRmILG6ZKKT0Cf5ZBZoW8Sw3GSbi1DHqbGPPXQ0fAZ9s/aI67dzZaKBzndlc1JZGxjgjuW5f323zLXhkzneQNQxZGmocVS0mLPiD9KQb+MXvZK2FHr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771409946; c=relaxed/simple;
	bh=g017/p6TXq1k+XnrThcxW95JuzKUQXGejJt//Dsgzwg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sDAc9F+y0Y8+lgeyrhxxtN0AM+cQ/Meihkv27CYnLu5Qsh6AAQCo6F3rzp1QhJ7XULMGNW+zd/UughxXDPh/jqvIQb/ilG5dBH2NhrX6J4IsKHgPaIC1FC/2C6EI5RU2V1QdSIIIJN2yhMYnIFWxL1+NLYvizO5Gw7TNryo8Kes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=isU0RQKb; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from localhost.localdomain (2A02-842b-8136-0001-B865-661D-5641-e7C6.rev.sfr.net [IPv6:2a02:842b:8136:1:b865:661d:5641:e7c6])
	by courrier.aliel.fr (Postfix) with ESMTPSA id 007CA4CB07;
	Wed, 18 Feb 2026 10:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1771409941;
	bh=g017/p6TXq1k+XnrThcxW95JuzKUQXGejJt//Dsgzwg=;
	h=From:To:Cc:Subject:Date;
	b=isU0RQKbsoN8l55bqR0i3nk/a/w0cFt/mK+T7SEmbF4hLG29pBdt65Vx//g5MauCg
	 0/sHVzdq0HDW25meN81mq4VH8DhHJ2eqywDY8Y7W2XEYYI1vXPei0pVWC+pd8mwXg2
	 /8/GuKVtK6Y1fDFWqtU5ChYANAgdtIWjNuPXyg8Q=
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
To: linux-amlogic@lists.infradead.org
Cc: Ronald Claveau <linux-kernel-dev@aliel.fr>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: clk: meson: Add Amlogic T7 fix pll support
Date: Wed, 18 Feb 2026 11:17:26 +0100
Message-ID: <20260218101728.35497-1-linux-kernel-dev@aliel.fr>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[aliel.fr];
	TAGGED_FROM(0.00)[bounces-266365-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,aliel.fr:mid,aliel.fr:dkim,aliel.fr:email]
X-Rspamd-Queue-Id: 633961555E4
X-Rspamd-Action: no action

Add PLL for the clock controller of the Amlogic T7 SoC family.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 include/dt-bindings/clock/amlogic,t7-pll-clkc.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/dt-bindings/clock/amlogic,t7-pll-clkc.h b/include/dt-bindings/clock/amlogic,t7-pll-clkc.h
index e2481f2f1163..690421009eab 100644
--- a/include/dt-bindings/clock/amlogic,t7-pll-clkc.h
+++ b/include/dt-bindings/clock/amlogic,t7-pll-clkc.h
@@ -53,4 +53,20 @@
 #define CLKID_MCLK_1_PRE	9
 #define CLKID_MCLK_1		10
 
+/* ANALOG */
+#define CLKID_FPLL_DCO		0
+#define CLKID_FPLL			1
+#define CLKID_FDIV2_DIV		2
+#define CLKID_FDIV2			3
+#define CLKID_FDIV2P5_DIV	4
+#define CLKID_FDIV2P5		5
+#define CLKID_FDIV3_DIV		6
+#define CLKID_FDIV3			7
+#define CLKID_FDIV4_DIV		8
+#define CLKID_FDIV4			9
+#define CLKID_FDIV5_DIV		10
+#define CLKID_FDIV5			11
+#define CLKID_FDIV7_DIV		12
+#define CLKID_FDIV7			13
+
 #endif /* __T7_PLL_CLKC_H */
-- 
2.49.0


