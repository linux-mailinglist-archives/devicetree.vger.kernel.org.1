Return-Path: <devicetree+bounces-262028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MntK6dxgWl7GQMAu9opvQ
	(envelope-from <devicetree+bounces-262028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 04:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A66D43C5
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 04:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30592303267E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 03:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1853031D759;
	Tue,  3 Feb 2026 03:55:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C730FF06;
	Tue,  3 Feb 2026 03:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770090914; cv=none; b=EssPB4u6hoVGtJ2JmfeZbtAEm6sPQKLgtLio5oLqwm9ZuFMR5g+BJn/KAUXQ1oAIPEAX1sdcwSaDjjOcU0zaXeYcQwAI04z4EMF86vDYPX+2AndA4w9Et6qww6d1DmSP4Sv3zELU4uQ+WoIdUnQBw+cNbrO/E45F9K9onWVBRXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770090914; c=relaxed/simple;
	bh=Yzxwwk1xNKZ8HQZTWD2jwu0MOFqIwNni2cmuV4TlO4E=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=DTa6+4SDxEvIa+vWT3oC+hojEH0HH0r8QhQTNsw3QNlT8sAHA+jh3zSSrBHlJpUxKekTV1aTwqEKzFn9dB/6VADe9PV6FSuAsLUj8VQC0NQnXQgmPNlkIVtE+D9HU+4NYRD2iTXdJY5xjExl/KqbcjpoybuGi5YnUIH8cMDog+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 3 Feb
 2026 11:55:11 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 3 Feb 2026 11:55:11 +0800
From: Jammy Huang <jammy_huang@aspeedtech.com>
Subject: [PATCH 0/2] Add Aspeed G7 uart routing support
Date: Tue, 3 Feb 2026 11:55:07 +0800
Message-ID: <20260203-upstream_uart_routing-v1-0-6bd5dd75ee3b@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJtxgWkC/x3MQQqAIBBA0avErBMcg4iuEhFaU80ii1EjkO6et
 HyL/zMEEqYAfZVB6ObApy/AuoJ5t34jxUsxGG1ajY1W6QpRyB5TshInOVNkvylsOuPQELrVQWk
 voZWf/zuM7/sBs5ewumcAAAA=
X-Change-ID: 20260130-upstream_uart_routing-1382b12e1bfb
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery
	<andrew@codeconstruct.com.au>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Oskar
 Senft" <osk@google.com>, Chia-Wei Wang <chiawei_wang@aspeedtech.com>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Jammy Huang
	<jammy_huang@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770090911; l=749;
 i=jammy_huang@aspeedtech.com; s=20251124; h=from:subject:message-id;
 bh=Yzxwwk1xNKZ8HQZTWD2jwu0MOFqIwNni2cmuV4TlO4E=;
 b=K4n9YOmkhu1fc21VIW0clRnhxsgFIt8wkaEXaoEFJCI1wcsRpPKCCrKPGFeenj1u4YQlTicXc
 E0/YRaMtDptBHLz6qMbzKsaVwZeXOhLmiXAj5vy1rmF3hVCs1TnLnYt
X-Developer-Key: i=jammy_huang@aspeedtech.com; a=ed25519;
 pk=E5YwijeJZZcuDR6srvwNlXrNHvLxwipUg3Mb/xxUF9o=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262028-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jammy_huang@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:mid,aspeedtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 18A66D43C5
X-Rspamd-Action: no action

The Aspeed 7th generation SoC supports dual node. Which means there are
2 group of uart routing.
 * 0: uart0/1/2/3/9
 * 1: uart5/6/7/8/10

Signed-off-by: Jammy Huang <jammy_huang@aspeedtech.com>
---
Chia-Wei Wang (1):
      soc: aspeed: uart-routing: Add AST27xx dual node support

Jammy Huang (1):
      dt-bindings: soc: aspeed: add aspeed,ast2700nx-uart-routing compatible

 .../bindings/soc/aspeed/uart-routing.yaml          |   2 +
 drivers/soc/aspeed/aspeed-uart-routing.c           | 424 +++++++++++++++++++++
 2 files changed, 426 insertions(+)
---
base-commit: 4d310797262f0ddf129e76c2aad2b950adaf1fda
change-id: 20260130-upstream_uart_routing-1382b12e1bfb

Best regards,
-- 
Jammy Huang <jammy_huang@aspeedtech.com>


