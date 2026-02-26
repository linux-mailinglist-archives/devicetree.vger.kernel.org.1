Return-Path: <devicetree+bounces-268681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBgvGvcMoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:05:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B46C1A31BA
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3B02300A673
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1290C395DA8;
	Thu, 26 Feb 2026 08:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="P/QA84Vj";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="U0btQXxO"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DA812D21B;
	Thu, 26 Feb 2026 08:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096166; cv=none; b=NmS8SIXg91wVHkuntJSRfj4TEHTClPsWCJ8XqB/Pbedf/N1oDdghYoK/0/OXB24k5d7L1Pbc8v4DmhCLqzO8bNoe9jrzW6UdYIGupkKEKESqdAlKjXUHl8+3AONestwPwHrwGNc3FjmaZNfvj6oKSRI5r0OCyaR4xi6vyXIcqiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096166; c=relaxed/simple;
	bh=pYkciEG41xzZLCIwLbOSWDr5WyI8tnMGzQIKhTRCpkk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RR35SURDjZptf5jfYX9qSuvhFBvZ+hvjb+2rJwW08qf4NgU3MxkxC12ZgIBhkdgKIwCLtRWB01IRS9gpk4haFGxN4I37a0jODFH0h0KE4Cgz0HU6P0y/8fQhu1ogJgbzx/W5Eh0jzi925UBjdt6iNxSOZD2Wv7ZDlXPA6dHj43A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=P/QA84Vj; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=U0btQXxO; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ypsS5YQLZY/5JYTSDVjnRXjPKoJTJPPXgryl3kx9JEM=;
	b=P/QA84Vjcr8pwhflngD+Yt/+7a0ZRp4szxw4oZ2uMmeI8OyrNbSpW+fJZLKwitvSi1nrdv
	a6xUYOx0JvoavMJO/48G4wTpqhjMLXt8gLWgzEoxk5va7jitLe8Xp+OUhdJuieFzDms1o0
	3y9nRRKxS5ZFPN2EZ6w1thlq0ak8ESdCfVQTZEvz+SVTL2Bp837fPeD26TzQW3Mfc1mJSB
	37V9KS2+zN519Kt31BUzqtUJgGFUtk/0AL6VV/gpLgB/M6IRFpHNuJqL7xhe9aVmMjTpdq
	jVvUHC+pMN/vQZ3T34q4m717fviTcIs39gGKjqs+JY9gtMi/Bhmt0sQAOzRR8w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ypsS5YQLZY/5JYTSDVjnRXjPKoJTJPPXgryl3kx9JEM=;
	b=U0btQXxOQaApe+ROuLrfLSpXBMSEBZ8KcfDBvav/FE1YY4/YaGSuJsgKmyxE668p8Zps6T
	uHgAz3aqzTKdhMBA==
Date: Thu, 26 Feb 2026 09:55:55 +0100
Subject: [PATCH 2/6] arm64: dts: broadcom: rp1: add csi nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-raspi-dts-updates-v1-2-60832d20ff04@linutronix.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772096163; l=1877;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=pYkciEG41xzZLCIwLbOSWDr5WyI8tnMGzQIKhTRCpkk=;
 b=YIQvt6lQvWi6p9XhrQSov/88hYcyjgxBtWvvQIkLzzJbaOrU5BA8/kezY5CFAH47xKD5D5eHw
 HX9ENZIKt1XCdNdFxmwJwskcjXWmYXESpBWrHjhemENCLVhPyeogbJO
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268681-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,2.101.103.64:email,linutronix.de:mid,linutronix.de:dkim,linutronix.de:email,2.100.7.176:email,2.100.78.0:email,2.99.224.160:email]
X-Rspamd-Queue-Id: 8B46C1A31BA
X-Rspamd-Action: no action

The RaspberryPi 5 has 2 PiSP Camera front end controller on the RP1
chipset.

Add the relevant nodes to the devicetree.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
index 58179094e30e7e0eb6242de9edc460fd4a0b7685..16f5359395835f7a145aad75094d525e10dcd2ca 100644
--- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -133,6 +133,34 @@ rp1_eth: ethernet@40100000 {
 		#size-cells = <0>;
 	};
 
+	rp1_csi0: csi@40110000 {
+		compatible = "raspberrypi,rp1-cfe";
+		reg = <0x0 0x40110000  0x0 0x100>, // CSI2 DMA address
+		      <0x0 0x40114000  0x0 0x100>, // PHY/CSI Host address
+		      <0x0 0x40120000  0x0 0x100>, // MIPI CFG address
+		      <0x0 0x40124000  0x0 0x1000>; // PiSP FE address
+		interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_MIPI0_CFG>;
+		assigned-clocks = <&rp1_clocks RP1_CLK_MIPI0_CFG>;
+		assigned-clock-rates = <25000000>;
+
+		status = "disabled";
+	};
+
+	rp1_csi1: csi@40128000 {
+		compatible = "raspberrypi,rp1-cfe";
+		reg = <0x0 0x40128000  0x0 0x100>, // CSI2 DMA address
+		      <0x0 0x4012c000  0x0 0x100>, // PHY/CSI Host address
+		      <0x0 0x40138000  0x0 0x100>, // MIPI CFG address
+		      <0x0 0x4013c000  0x0 0x1000>; // PiSP FE address
+		interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rp1_clocks RP1_CLK_MIPI1_CFG>;
+		assigned-clocks = <&rp1_clocks RP1_CLK_MIPI1_CFG>;
+		assigned-clock-rates = <25000000>;
+
+		status = "disabled";
+	};
+
 	rp1_usb0: usb@40200000 {
 		compatible = "snps,dwc3";
 		reg = <0x00 0x40200000  0x0 0x100000>;

-- 
2.47.3


