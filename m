Return-Path: <devicetree+bounces-260760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uO8IIrAPe2nqAwIAu9opvQ
	(envelope-from <devicetree+bounces-260760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:43:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A6545ACE0D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:43:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 36D4C300B512
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E89B35FF40;
	Thu, 29 Jan 2026 07:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K2wWqU0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86BA379973
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769672276; cv=none; b=aW9w0qh/8/Sb7fNYDM9FQfp7CPWVVIJnP2iHfJEbsZnzCESBmUZB/k/flLeGxLj1jd/baxI6SMZkuQFisC3C5/GrWQEAYFwWRxC6os3bhpHGEIgXcpdfvVm/QPoQk4mGuxAJkEXUGIrvPivQe65y+sbBqGeI+qmpwNrUR71CsS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769672276; c=relaxed/simple;
	bh=t1Vyc3gsCeaGkmU0/7Cm9BxqQHti4MYtaaI51gtW2U4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=tSXsjA2QFeSoPpKdd1ThRjh0pBJN3mbrc5ku4c02pZcFxnI85uOHe9P3aAuu/k02JQhShKQ67RRdc+eNQJV+SKk4yCxhAzkiZEAgPQFfSaEjMNrczm9/XJnEEFGLtxKrdrcJ3elIYhB1sVyBtHadIvtwK+2qsOnKS71+HgInO5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K2wWqU0m; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-81e821c3d4eso590788b3a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769672274; x=1770277074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=fzuiYUZsutbfQijzdbBIi4mz1jthxhIUaA8wPvRL1e8=;
        b=K2wWqU0mnDSqHREZc2yJ5+YwwvMU7vfZYIwPQ5vNWhM9DMFXxGJV2BnXptVOtf7nFn
         daF5KofEdlNh45wXVX8FxXGZjcxEAaA89/dVYMO91DWMqz/1WkwxEJMElDYURdbtce1t
         XFs/r0rQOqOjUWELbbNPe2FgO/9bhT6Xa9hx/t6HepAhiIR4w6bMEASrcEPhedLBdiky
         kgcccHUUEAvc3vIM3abpxTuju+WU1QX4nFMUT7r9vHbGWDPYtGkVPpRwlREZatsZsiOY
         9Q4HrGfpYZlBajhYsW5DEKrl78L2+3WWmEPYp8N1Gatv2mc7L9Y6FLpH4ATpI4sXtY3z
         sn3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769672274; x=1770277074;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fzuiYUZsutbfQijzdbBIi4mz1jthxhIUaA8wPvRL1e8=;
        b=kjI6Zay1+xhDOhLo/7YXu+dHVf5THCtvJp2uK0qhAOdpQv3Y92h3MFlbP+8wRaNgX4
         4IkFDt6HKdbj+eTxPUqoXfCcUbv8gnKjRPjbRMWjoRPC/6wKtw94jgnoeQ6ZwkYXW0g6
         n2iwWHvBU/Im6B1YcXMFcaDP2c32EI5JzLWmtC5jPaQY3smzSNDYVmydMHkD8WET596I
         RCEYefw87gS8PKiFufzyctT4A+0ls9zllPkSfZs9+zTX0xl9fEJAezNTZ/BvuY/9I/vS
         D4VJ6OD4jkqTPHlrabYO3A9aGJ4JVA3fYRtKvtfdcMIvsvzakF69IDWTWqq+vJQ/9WVz
         R08A==
X-Forwarded-Encrypted: i=1; AJvYcCWuU/QgLBgJGDC2HUo9i9BGLvPyezLrpn6XFJNdix8vk+2BKoPAomPrJY6uXGk/SCwfMFigKRRi/PYj@vger.kernel.org
X-Gm-Message-State: AOJu0YyZIaMsDZPXYY3IWUlptDn1Wj4z2wK8sOWYTlnMQwS375OSFsE8
	JRq1kgha0eqNZtE/IQKswdOdTAlIYkfBe8R61lw4dEER6wUaTiUsv7+M
X-Gm-Gg: AZuq6aLl8zYpUPKDBFeTu3wl+Dz2DFlIhdmJMa9aSfOcSa+31g6HhUFbkFF/SFbIa2u
	oxWvsIPJxb6OtQ44/3/rAz08z1DI4v95NJA1ym5CwTwWXDHK8uc7XMI40xrNocMpEoXgwuj+1pw
	hqJFe+Ge8ekryG48brfDbHq6zxY29lPpbeTWzLEq+S8YAxi0t+gNZZcr/AyAo0gyf8an7LHFZfv
	1+EZDbw1qDSAHiwR6x5BoFumukeknBsk909ZW40UaFhmU8R+j2tJlr8FjxsgqR7QRwylPKR6TXb
	MxiCztXcVyffhmpOvyGPDXqmhGRVu6bZ9oGm1Y0vrYzipcDL3CqU7ViRtcmAkOMN3wqtEHm+Gb/
	DE/f9ivXQI6tfEdEgjtxFvSFii/keeRTCpi2pKZnRg4btMzuKg8h8GdfPRGQzZOzJIjQeheet1X
	ms4RVhlOMECNO0IgwBTKJjBMQ47Q2/E6WndIJHCkj2sFuGkmd0TeWs6NPVh6SY7nntrITDDEY8
X-Received: by 2002:a05:6a00:2402:b0:81f:4208:274f with SMTP id d2e1a72fcca58-82369186775mr7135794b3a.15.1769672273963;
        Wed, 28 Jan 2026 23:37:53 -0800 (PST)
Received: from fred-System-Product-Name (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bff93esm5142425b3a.41.2026.01.28.23.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 23:37:53 -0800 (PST)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: aspeed: santabarbara: Add swb cpld io expander
Date: Thu, 29 Jan 2026 15:37:48 +0800
Message-ID: <20260129073749.3155383-1-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260760-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fredchenopenbmc@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.20:email,0.0.0.52:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.28:email,0.0.0.21:email,0.0.0.50:email,0.0.0.27:email]
X-Rspamd-Queue-Id: A6545ACE0D
X-Rspamd-Action: no action

Add CPLD-simulated IO expanders for cable presence detection and 4 SPI
flash control. To resolve sideband pin shortages, one IO expander is
utilized to aggregate interrupt signals.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../aspeed-bmc-facebook-santabarbara.dts      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index 0a3e2e241063..39f7fade8ff7 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -1335,6 +1335,39 @@ eeprom@50 {
 &i2c12 {
 	status = "okay";
 
+	ioexp0: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&sgpiom0>;
+		interrupts = <148 IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names =
+			"IOEXP_21h_INT_N","","","",
+			"","","","",
+			"","","","",
+			"","","","";
+	};
+
+	gpio@21 {
+		compatible = "nxp,pca9555";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&ioexp0>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names =
+			"PDB_PRSNT_J1_N","PDB_PRSNT_J2_N",
+			"PRSNT_NIC1_N","PRSNT_NIC2_N",
+			"PRSNT_NIC3_N","PRSNT_NIC4_N",
+			"SWB_PWR_FAULT_STATUS","",
+			"CBL_PRSNT_MCIO_0_N","CBL_PRSNT_MCIO_1_N",
+			"CBL_PRSNT_MCIO_2_N","CBL_PRSNT_MCIO_3_N",
+			"","","","";
+	};
+
 	gpio@27 {
 		compatible = "nxp,pca9555";
 		reg = <0x27>;
@@ -1349,6 +1382,21 @@ gpio@27 {
 			"SPI_MUX_SEL","","","";
 	};
 
+	gpio@28 {
+		compatible = "nxp,pca9555";
+		reg = <0x28>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names =
+			"SCO_UART_MUX_SEL0","SCO_UART_MUX_SEL1",
+			"SPI_PROG_PL12_SEL","SPI_PROG_PL34_SEL",
+			"","","","",
+			"I3C_HUB_3_MUX_SEL_PLD","",
+			"SPI_PROG_PL12_EN_N","SPI_PROG_PL34_EN_N",
+			"SCO1_SPI_SEL","SCO2_SPI_SEL",
+			"SCO3_SPI_SEL","SCO4_SPI_SEL";
+	};
+
 	// SWB FRU
 	eeprom@52 {
 		compatible = "atmel,24c64";
-- 
2.52.0


