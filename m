Return-Path: <devicetree+bounces-268684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8J05M+YKoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:57:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD1B1A3010
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ECACC3029765
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF7939B48D;
	Thu, 26 Feb 2026 08:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ygROqrKJ";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="7t7agoXR"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4E399013;
	Thu, 26 Feb 2026 08:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096169; cv=none; b=kYHWeMezY09gq/q62qCK7RJ+CzJ83LfMq+/Y8f5r5DZNoe6hRPLC997+AMM3S6UD/lcv1vyPPbMWO6wDguy+byRpT1ZClw3z5Si5wPrcAw64d7ZN/iw+scTDCr2+5+41A1FID2tIpy6XQghXLuoERF8VYdKaEb0uQU3Dt2W5dWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096169; c=relaxed/simple;
	bh=6tRqBxilIYg4wBv0Dwu6Hv/aJ7I7wHLa87Kpm5gGxDk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WrigsOIc8mmybgf9MvQt6c8soK+YoZuDmqGOeJl0kLhW6inf00fUR061BBLXlSDycHI36wOm7UTnXp4SHCwOf1A4pjdmn+tGS+fKoMDrQwTZ5WA04bx8vGKwqHsWmchJI/W1zWgA2KiYhDzcd9abWxgsU4s4YqgZ8PTrz3nAZoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ygROqrKJ; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=7t7agoXR; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QxCyaKGbO7qKGmJUpdCDgIba5zwokOPKukSgwua31ww=;
	b=ygROqrKJGQKcq9todpeKR+v8pMsMa7fm6cCmSNXupi0PgOMzB+YYqgJiHCFRznHJ5mKu47
	05ABlyg5MiJWiClC/BuQXGTq+0V0MJrDh/g0cM8xUGlBLXN26H3DFBR0Ws3GyQiBr+LKEb
	WQm5Wy4gu6INWq9ZkfXUujBdXEfggcLF285ie+XlTInfhVMKefQ7VOmJ4m/0LgCVgIYR+N
	5R+9oJfYyp7hsCIjP0p4I4w6Ucb6JDZJhYbZ01kOqY4ZLHucWP4gXmUhuyc2l3TlvhmsMF
	ekCtMfZtZUYBumLizHh5aWJQdVMi+uSRfHKJbj5SXBBKdUGy65J/2yDHHTo1bA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QxCyaKGbO7qKGmJUpdCDgIba5zwokOPKukSgwua31ww=;
	b=7t7agoXRw7IGjJsRzH8WoDl3uLiRusEr9I4XOxaW284bLMGbayDgIiFaXQCA0MKvi1lWoV
	h+vwuAOqzTJlcCDA==
Date: Thu, 26 Feb 2026 09:55:59 +0100
Subject: [PATCH 6/6] arm64: dts: broadcom: bcm2712-d-rpi-5-b: update uart10
 interrupt
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-raspi-dts-updates-v1-6-60832d20ff04@linutronix.de>
References: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de>
In-Reply-To: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de>
To: Andrea della Porta <andrea.porta@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772096163; l=786;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=6tRqBxilIYg4wBv0Dwu6Hv/aJ7I7wHLa87Kpm5gGxDk=;
 b=74JDTvr7v5qK+i79D05BHwKGV5ms1OWuVl450PkUal/aTzJ4zrSNj2ZSVMIOzGaGK6APmCeQQ
 Md296gkG8riDNEpHFQDOsv2Sx/PWT5AIAFYAz1iWrqHnJDKQz8TYnax
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268684-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim,linutronix.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8BD1B1A3010
X-Rspamd-Action: no action

On the -d revision of bcm2712 the uart interrupt is on 120. Update it
accordingly.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
index cbfc82d884c8268624682e9a49bda1feae34cbed..127be0fc27c22e73b0cfdbfb89963cd3edf7594a 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
@@ -45,3 +45,7 @@ &pinctrl_aon {
 	compatible = "brcm,bcm2712d0-aon-pinctrl";
 	reg = <0x7d510700 0x1c>;
 };
+
+&uart10 {
+	interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+};

-- 
2.47.3


