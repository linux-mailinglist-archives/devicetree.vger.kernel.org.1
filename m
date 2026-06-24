Return-Path: <devicetree+bounces-315033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q5xKOuluO2oxXwgAu9opvQ
	(envelope-from <devicetree+bounces-315033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:45:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F02056BB901
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:45:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=aspeedtech.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315033-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315033-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD49C3014D8E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 05:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D151230C163;
	Wed, 24 Jun 2026 05:45:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from twmbx01.aspeedtech.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921B12F3C10;
	Wed, 24 Jun 2026 05:45:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782279910; cv=none; b=WBkhuvnyCj3edCzsBP59m7DukoctFcRos0SvBQtI1aFU7OCVUxOgkNkYjlWq5AZEVjY4x9CIanHkYpgQhvet+AuixSEdsRPzXZ24rYn9HYQGc7MQ3mBjPaZAsjQVpTpy8wbPjq3pG8L+JO5CKtUhTT74sIZn6R40LXaqruxRe24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782279910; c=relaxed/simple;
	bh=odlPR9ypkZoCmLp8rrpiizM7sQMlSS91UDSOPAX5z6s=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=IaLUU3NY4rIl4F3ooYj79qRfaFKKcepDNp/JSVOdVhd+hW655cqQaUsfrFjzozzLhEWErfvBskRUK1gjdIfUfuY5wO2k9G8ks+8jmHSCZeTnAKbT/1Ld00A46BTkGHLCUf1De2eD5BGfC6w/bO2cvQn2FBq00I3mFr6GNq7Jfi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 24 Jun
 2026 13:45:01 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Wed, 24 Jun 2026 13:45:00 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Subject: [PATCH 0/2] Add AST2700 PECI clock support
Date: Wed, 24 Jun 2026 13:44:58 +0800
Message-ID: <20260624-peci_clk-v1-0-ee28b92e22e9@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANpuO2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDMyNj3YLU5Mz45Jxs3aREC/NUAxPj1FTTNCWg8oKi1LTMCrBR0bG1tQA
 Z34/3WgAAAA==
X-Change-ID: 20260623-peci_clk-ba87e043ee5f
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
	<sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
	<andrew@codeconstruct.com.au>
CC: <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782279900; l=643;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=odlPR9ypkZoCmLp8rrpiizM7sQMlSS91UDSOPAX5z6s=;
 b=jY5mCWNYf6ZGdseK9bInNXNGm6THNQm8Tn8QAiGuCks3CWEWMwrwx1cJdXSY1RcdDG/yej/qA
 Mal65bRBbEbDSY5lT2tFoJrxdkdEfZlEpnIpebJLHZzYbt4Jcadf7a+
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315033-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:ryan_chen@aspeedtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,aspeedtech.com:email,aspeedtech.com:mid,aspeedtech.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F02056BB901

Add the PECI clock for the AST2700 SoC1. The PECI clock is a mux
controlled by SCU1_CLK_SEL2 bit 16, selecting between the 25MHz CLKIN
and HPLL/4.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
Ryan Chen (2):
      dt-bindings: clock: ast2700: add PECI clock
      clk: aspeed: add AST2700 PECI clock

 drivers/clk/aspeed/clk-ast2700.c               | 10 ++++++++++
 include/dt-bindings/clock/aspeed,ast2700-scu.h |  2 ++
 2 files changed, 12 insertions(+)
---
base-commit: 948efecf22e49aa4bf55bb73ec79a0ddcfd38571
change-id: 20260623-peci_clk-ba87e043ee5f

Best regards,
-- 
Ryan Chen <ryan_chen@aspeedtech.com>


