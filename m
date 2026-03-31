Return-Path: <devicetree+bounces-283058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMxeJrHoy2myMQYAu9opvQ
	(envelope-from <devicetree+bounces-283058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 17:30:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F91536BB59
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 17:30:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 822893060B15
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 15:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1106740B6D9;
	Tue, 31 Mar 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HEzymEV2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6EEB40824D;
	Tue, 31 Mar 2026 15:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774970794; cv=none; b=KWanUkTpX9ER1qu78fn7xtxqw1hdycPGgK1Irbv9ZbLIDrYQfq2whXhUZm5paAmIx0vFtff2kMjktMljr+sHEHwaqUWhevA9BcXdlRnRH7sE9DvZaa69NJvCMZP5kP/TzGJbMhHqzEKiHrnQLlVQ8QxhzFCAvScoPFEvPV+5C3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774970794; c=relaxed/simple;
	bh=0al2iiCyvdqOvHHOAtA9D87j8/jVhjszFu42OwifpXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wm6bDGNER5JX5sm0Wogwoh9a+n1qIha3FR/ggaPq2fBDVFSrbvJvFqSG1xfaXINYv+lVL7zvu2sqOTYG6/FCjfpZPnS4/orqGvjCLzkCul2Kf6yJmimWtVYPs73R2tQf/2coqPKqzdk1zay7hMKq29uOWfkJdqVWalp5fSd/00Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HEzymEV2; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 287121A30C4;
	Tue, 31 Mar 2026 15:26:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EE76E6029D;
	Tue, 31 Mar 2026 15:26:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8A26D10450287;
	Tue, 31 Mar 2026 17:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774970789; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=1uWcBKQ8nvsKRUPJODE2gnHDve1r4371hZd5qBpuh4Q=;
	b=HEzymEV2IlNDHGFWgdu6k7TjKILP+8wZj58U9KN0jmcX3/UvtrPs71mO2Goxm7wFjf3Xj4
	3FToGFFvA2TcAL+CgaWnVNbV9k0GKIZCa7SoE2EOUOmiTYt2+XJPid6SzP21YLWt5BiAW/
	ONMf6k2GkXMZGLNN78P2hKt/DBi+cQqrD9MvNtMBW++TZ1TnBzJEp7tGyueKGrdnccS/Ro
	TDYebpmREeaWo5CKI+dxsArBRef9yDu+jxQ0oSaVi123sBxurLDMerUEmW35vCcw6AKqtm
	U64i25n2wHkP5+WmsWMKZSdlWSCinWKkUyVrIJ6oNim1sJmnQIt7+ejpn9DfCw==
From: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Pascal Eberhard <pascal.eberhard@se.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH 3/4] ARM: dts: r9a06g032: Add support for timers
Date: Tue, 31 Mar 2026 17:26:14 +0200
Message-ID: <20260331152616.197031-4-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331152616.197031-1-herve.codina@bootlin.com>
References: <20260331152616.197031-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[sang-engineering.com,bootlin.com,linaro.org,kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283058-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	DBL_PROHIBIT(0.00)[3.10.54.168:email,3.27.11.64:email];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,3.10.58.144:email,3.10.52.160:email]
X-Rspamd-Queue-Id: 2F91536BB59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In the Renesas RZ/N1 SoCs family, two timers block are available.

Each block contains 8 timers composed of 6 16-bits timers and 2 32-bits
timers.

Each timer has its own interrupt line.

Describe those timers blocks.

Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
---
 arch/arm/boot/dts/renesas/r9a06g032.dtsi | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032.dtsi b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
index f4f760aff28b..7d736e1e835a 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
+++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
@@ -674,6 +674,40 @@ gpioirqmux: interrupt-controller@51000480 {
 			status = "disabled";
 		};
 
+		timer0: timer@51001000 {
+			compatible = "renesas,r9a06g032-timer", "renesas,rzn1-timer";
+			reg = <0x51001000 0x400>;
+			clocks = <&sysctrl R9A06G032_HCLK_TIMER0>;
+			clock-names = "pclk";
+			power-domains = <&sysctrl>;
+			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		timer1: timer@51002000 {
+			compatible = "renesas,r9a06g032-timer", "renesas,rzn1-timer";
+			reg = <0x51002000 0x400>;
+			clocks = <&sysctrl R9A06G032_HCLK_TIMER1>;
+			clock-names = "pclk";
+			power-domains = <&sysctrl>;
+			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		can0: can@52104000 {
 			compatible = "renesas,r9a06g032-sja1000", "renesas,rzn1-sja1000";
 			reg = <0x52104000 0x800>;
-- 
2.53.0


