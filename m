Return-Path: <devicetree+bounces-268680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJhJLvEMoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:05:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A951A31B2
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 63C4A3009F1B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F92395274;
	Thu, 26 Feb 2026 08:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="CMm93px6";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="HYovLJj6"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9327338F249;
	Thu, 26 Feb 2026 08:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096166; cv=none; b=mZWzEDBP390T2U6xQzZdt0CG3rDuTGIvm9rTnNgyCEjwcB3YNpi7P8uZk0lqTlyL3k+ffMRQa6Y1ZPagG0BdpToklsOJ1saos1t79tos3GfvXRoRPyv0VN9lTZDs3ouft+dlfnwjtedvOdfQA+33G0xzu0FD61MjSleuJDJ94u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096166; c=relaxed/simple;
	bh=8sPr9sS7Z52G4r4n/tMNe6voegA02R3QGH/9h37K1Yg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KbVKtiqGNQMV1ZS5s9P4Ssfmqg33/1xgq61E3Dgnzi8+h57ZhmYLUnVkr62gZNdE1U/r8ejguDr6GHYM2GELr+pBRfBJuyGQMa2aVKdHupFBqOlbKaQgxvKEV93FyFdG5qic9LHkMZcenjKLsqqdqgTZBWVp6BYGbv/AorRgGuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=CMm93px6; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=HYovLJj6; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KPfFKKkj3YOAaBSKHb2Ab/ppYbBhY88LbwcF5UbxktE=;
	b=CMm93px6MeyvpxXxn6MiXNzbHXLxgtwTJVs+PsCYAgdkuy6692oxCGXPjKRjBwIOR2SdDM
	H7h43Bq9VESAgzTepv8Yl/FG2ouup1r+x29RhXj3OuGyFbOzg1K9qOpo11MioAFnK9PSQ5
	dEQZaJLhvQEUHSpJ5Fm7Y5HdG/iGrtNIryx24Ukjg9DTta9fR8vdNg+CxxObRm+Mpea++I
	XLNb6Ayf56OMkaeAa8y5z/PTYo9cjbUvaD+NozC+nEy+BXevA1LPpM4xje+Vaqezu+iVU6
	Dzr6osMI8lG3RMuYUC++qftOSp2Ln1OnSyTKFPM936yGKIM9xwvjqqzCJxWYsQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KPfFKKkj3YOAaBSKHb2Ab/ppYbBhY88LbwcF5UbxktE=;
	b=HYovLJj6kU4MIDiM1pWrzvqmOKjnPiIYEocTWpx2Tc759CHcuz9P8YmxlOMQMtVN/Y3rWu
	BNn2ZYzgJF6NhNCA==
Date: Thu, 26 Feb 2026 09:55:54 +0100
Subject: [PATCH 1/6] arm64: dts: broadcom: rp1: add i2c controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-raspi-dts-updates-v1-1-60832d20ff04@linutronix.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772096163; l=2946;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=8sPr9sS7Z52G4r4n/tMNe6voegA02R3QGH/9h37K1Yg=;
 b=SmiytRlfzaHgZJ7ahKgR3JJmchil3lCKHOQzEQMDXBp1Tk0ImjNneWVguYJNC5WDJ+SwQ2Fp/
 1NyKNFJctLzDtpUP/tzg8tedoLWz79lfFrYCqDNFc7bmOBr5VPZx3cK
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268680-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.5.7.0.0.1.0.0.e.5.1.c.3.0.0.6.2.asn6.rspamd.com:server fail];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[400d0000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D8A951A31B2
X-Rspamd-Action: no action

The RaspberryPi 5 has 7 designware-i2c I2C controller on the RP1
chipset.

Add the relevant nodes to the devicetree.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 77 ++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
index 5a815c379794524de542a62e7b157fbefe4b4b59..58179094e30e7e0eb6242de9edc460fd4a0b7685 100644
--- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -26,6 +26,83 @@ rp1_clocks: clocks@40018000 {
 				       <200000000>;  // RP1_CLK_SYS
 	};
 
+	rp1_i2c0: i2c@40070000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x40070000  0x0 0x1000>;
+		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
+	rp1_i2c1: i2c@40074000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x40074000  0x0 0x1000>;
+		interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
+	rp1_i2c2: i2c@40078000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x40078000  0x0 0x1000>;
+		interrupts = <9 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
+	rp1_i2c3: i2c@4007c000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x4007c000  0x0 0x1000>;
+		interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
+	rp1_i2c4: i2c@40080000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x40080000  0x0 0x1000>;
+		interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
+	rp1_i2c5: i2c@40084000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x40084000  0x0 0x1000>;
+		interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
+	rp1_i2c6: i2c@40088000 {
+		compatible = "snps,designware-i2c";
+		reg = <0x0 0x40088000  0x0 0x1000>;
+		interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_SYS>;
+		i2c-scl-rising-time-ns = <65>;
+		i2c-scl-falling-time-ns = <100>;
+
+		status = "disabled";
+	};
+
 	rp1_gpio: pinctrl@400d0000 {
 		compatible = "raspberrypi,rp1-gpio";
 		reg = <0x00 0x400d0000  0x0 0xc000>,

-- 
2.47.3


