Return-Path: <devicetree+bounces-272538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCMXMaAGrWmkxQEAu9opvQ
	(envelope-from <devicetree+bounces-272538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 06:18:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 785F722E90F
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 06:18:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E89CB302C76E
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 05:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD9C314B63;
	Sun,  8 Mar 2026 05:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="d03LcMrF"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A285921D3F3;
	Sun,  8 Mar 2026 05:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772947073; cv=none; b=qynXXHHF+HkMJ0+nR3HCGS7SbPOWmvpEcpDP0PUB/fVpOA3/fQqj6oDUhZNnEzzX0LfqUBjE74nH8WYYjLq0rtidPh/RltRGHpMJubXcJCrLpK0eYTC/pGWWHAsH87ASB4LygBZOvlYtfxID2AOb2YDZzrvZypD3wuE4rMiK4hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772947073; c=relaxed/simple;
	bh=SMRYIg4HW8+BozjEhJiK5oB5jbrZ8pGHSsfVh+tG3tQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rTx0fqaHz4xXvDRa8B7vS4xegCAkWeEX/uaRVXVuk9o2ysRHRkFIvQ5q8EYoKOUVubus5GI7R5NEwK5E8mi6Td/c+3n8xztaNCCPBFBEp9WfTT5POXsml6PlrLk11C24jPMgPSjYR7qw6YuvugegwP7xhb8JsbfTB7h+XZrAbnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=d03LcMrF; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MCAy3IspOxjf/o/Qcw9iPr9RuRe4LJc4sM16VEdAeX0=; b=d03LcMrFqnLUqVf/haqumC8wRv
	60Pn30j32ouEVIaz1A2lpwjA39omsYPp9CQSHL2LtJeLeUo/LxgSgBHf/UeoqCMGTNorNm5dZ1Wgl
	C908+vleVfkoPZ9IAOX24/3PD3Kx83Q7JK82tOp+QjctNSa9mIYpNGPCrWui6Q1kz8h/A5hZCADs8
	HwzsIpywM0LuXWMf/JG6Gjd6qLWORbk/qPu2fGXxisMlaG91VMfcejixmUulNRbBJ/pINURScG4mW
	7VFIx4L0r8U9pavDC0M+gm0LTRvHMCrvVRubPpCq5RYXKBS1WiGtoGxY2W5bGhsset0H4ozejk+3R
	qtqXsUMw==;
Received: from user-5-173-16-20.play-internet.pl ([5.173.16.20] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1vz6WP-00000007Wqt-3yvx;
	Sun, 08 Mar 2026 06:17:46 +0100
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Subject: [PATCH 0/2] arm64: dts: allwinner: fix Orange Pi Zero 3 PMIC
 interrupt routing
Date: Sun, 08 Mar 2026 06:16:50 +0100
Message-Id: <20260308-rc2-boot-hang-v1-0-d792d1a78dfd@mmpsystems.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEIGrWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwML3aJkI92k/PwSXZCsrpGZZaqFqYmZmbFpkhJQT0FRalpmBdi86Nj
 aWgBBCfOSXwAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772947022; l=1377;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=SMRYIg4HW8+BozjEhJiK5oB5jbrZ8pGHSsfVh+tG3tQ=;
 b=QJkqZXtGpUiKlbs8QY9kRldGClQZQkLighO5blpHfyS256XWVowBvPrOmeyvytbXCdzrhTx70
 eTe9fXs++DkAMubxxlMiTOfuGKd8SsCqUFSZW2pzG6Z1aqO70fOfFyx
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: 785F722E90F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272538-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.321];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mmpsystems.pl:mid,mmpsystems.pl:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This fixes a kernel hang during boot on the Orange Pi Zero 3 caused by
incorrect interrupt routing for the AXP313A PMIC.

The PMIC interrupt on is connected to PL bank GPIO handled by the R_PIO
controller. However current dts routes the interrupts to PIO controller.
This causes the kernel to select wrong pinctrl instance when configuring
the interrupt which leads to invalid register access and a kernel hang
during boot.

The problem existed previously but became visible after the commit
01e10d0272b9 (pinctrl: sunxi: Implement gpiochip::get_direction()),
which causes gpiolib to call the gpiochip::get_direction() callback
during interrupt setup.

Patch 1 declares R_PIO node as interrupt controller so it can be used as
interrupt parrent.

Patch 2 fixes the board device tree by routing the interrupt to R_PIO

---
Michal Piekos (2):
      arm64: dts: allwinner: h616: declare r_pio as interrupt controller
      arm64: dts: allwinner: orangepi-zero3: fix axp313 interrupt parrent

 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi               | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)
---
base-commit: 4ae12d8bd9a830799db335ee661d6cbc6597f838
change-id: 20260308-rc2-boot-hang-269e8546635b

Best regards,
-- 
Michal Piekos <michal.piekos@mmpsystems.pl>


