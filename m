Return-Path: <devicetree+bounces-263168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHzoCIoJhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4F8F78F5
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45B4E301F329
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C44330B36;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Q1M9CrJu"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3032F75B;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326397; cv=none; b=cV5EorbNhL9bCr4SUYA04l/2oHnyy3f3IknLn43uIrrVl8w/8UfmRxi/9TMJ9718b9ELDV5cZmlVh28BwxpfzUYJpprzDE3tQh+2fBLif6ZskSd7d/zXmYhgG/1/p5k2MT0WopmaO6wz6wFRYLrx1AjY8UOy+gTTzMnuhP6EEYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326397; c=relaxed/simple;
	bh=N4Xp1B3F5Xv5cM7Ro+Lly7iHSqzOW399w2uno0q1DoU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TCbo1IJ7BsPZxvTA0h2FLn6WoZ+7cOGvN9vrZB+q6A+z9wQSrbrJ0kqnn6vvseNvtcZmZvQQhMuY/cvWrd8yK/B9rP1uynltoigiMoG17ySCuDnhGaG8n0cn6pj/LlnRFm4pKvG7mJRiap6QMhQ2d+5WC/7Ly6ftrERlK5NTHT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Q1M9CrJu; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=H6YnkpYDKXhiFVLlVHgZQ6m/aKsIAX0AUzy5h11UG4A=; b=Q1M9CrJuw3KB2QgWcNL35CLbLB
	+J/SRaLXsXF0SNU8ixr++tA7fAX918fB+ioJQ4RXvo8x82lAoGkzJEEl0zqvrw2E8YNY6gX/NWipp
	MboYlXt5FNb0nVBgWrYzM4MV6aBvGPQyAyLMC7VhVwUm0XxDuEpZnxMUA9j43AJLuzEBgj9/oAlF2
	OBCC+Q0HVCQIf9mTK7pg4l18MHEuczRRauX1xnoko/bTGyjgJZWUAf0wIh3+3sgww5ekJoB1bjovR
	8VctrMmIgqk+LBQfQ1BHVXLztzuuhmL/r9fKgcOHU3BvC0IWpC3UD/Z72mDOLi5jpcjR0nFbhLdiD
	9WvP3UKg==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6lN-007GGK-4s; Thu, 05 Feb 2026 22:19:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kever.yang@rock-chips.com,
	finley.xiao@rock-chips.com,
	w@1wt.eu,
	jonas@kwiboo.se
Subject: [PATCH v4 0/6] rockchip,otp: Support for RK3528, RK3562 and RK3568
Date: Thu,  5 Feb 2026 22:18:55 +0100
Message-ID: <20260205211901.490181-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-263168-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim]
X-Rspamd-Queue-Id: AF4F8F78F5
X-Rspamd-Action: no action

This is a continuation of Kever's from april 2025 [0] - hence the v4
The original patches seem to have fallen through the cracks.

Additionally this directly inclues the interal word-size patch [1],
that was previously listed as an external dependency.

And finally meanwhile patches for the RK3528 SoC from Jonas have appeared,
so I've included those too, to get the support for all not-yet supported
SoCs done


Changes in v4:
- rebase onto 6.18-rc8 - the rockchip-otp driver did no receive
  additional comments in the meantime
- include the dependency patch about word-sizes
- add support for RK3528

Changes in v3:
- update the clock name from "usr" to "otp" and re-order to sync with
 other soc.
- rebase on rk3576 and rk3528, changes suggest by Jonas
- Use rk3568 data structure for rk3562

Changes in v2:
- Update the commit message and add maxItems in schema.

[0] https://patch.msgid.link/20250415103203.82972-1-kever.yang@rock-chips.com
[1] https://patch.msgid.link/20250316191900.1858944-1-jonas@kwiboo.se


Finley Xiao (2):
  nvmem: rockchip-otp: Add support for RK3568
  nvmem: rockchip-otp: Add support for RK3562

Jonas Karlman (3):
  dt-bindings: nvmem: rockchip,otp: Add compatible for RK3528
  nvmem: rockchip-otp: Handle internal word_size in main reg_read op
  nvmem: rockchip-otp: Add support for RK3528

Kever Yang (1):
  dt-bindings: nvmem: rockchip,otp: Add support for RK3562 and RK3568

 .../bindings/nvmem/rockchip,otp.yaml          |  83 +++++++--
 drivers/nvmem/rockchip-otp.c                  | 161 ++++++++++++++----
 2 files changed, 202 insertions(+), 42 deletions(-)

-- 
2.47.2


