Return-Path: <devicetree+bounces-54626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7825F891F39
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 16:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A59051C2864B
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 15:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFEDD13DDA4;
	Fri, 29 Mar 2024 13:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="zujQAt4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FFB13D8B2
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 13:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.25.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711717348; cv=none; b=ifPmBEel3OUsZztOYr0v6QOlGPO+vIX+cYDichg2kYJx94flEKMx8WIfDXk8ElOEBVBcuaCUsKxa2Coqdj3DVmIDUZEy3CtIWw2qHQ5vKz7HtHWMmfUPlUraVeokBLyhR0LDiaPB0qCg4044VXg0eNdSKDqBLanVvPk40blX4Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711717348; c=relaxed/simple;
	bh=fAvAnvABUo7HyKuMjevhf/jv5qC2EXV4aai6G+pLpAA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YBEfLdhhnffPAEdDzpjgbVdIXZ00mtzZkFB6m5HL9wWkX6tD94YO5aeDtazQxH2S4Q2pzcYunz/beLoTT2qKcI3AGxK8QB0Mb9smWIc4c4e0L5oJwNh7E3idralQktSIsf9sl/mj/0FE9Mpu35GgXYx/2dbwcYqzzzukl+BXVNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rnplus.nl; spf=pass smtp.mailfrom=rnplus.nl; dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b=zujQAt4V; arc=none smtp.client-ip=178.251.25.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rnplus.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rnplus.nl
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id D4827379490
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 13:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y1jBWMha5t6H for <devicetree@vger.kernel.org>;
	Fri, 29 Mar 2024 14:05:47 +0100 (CET)
Received: from localhost.localdomain (184-179-179-143.ftth.glasoperator.nl [143.179.179.184])
	by mail.rnplus.nl (Postfix) with ESMTPSA id F015C37947B;
	Fri, 29 Mar 2024 14:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1711717527; bh=fAvAnvABUo7HyKuMjevhf/jv5qC2EXV4aai6G+pLpAA=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=zujQAt4VCctGPhyNc7BqplQeCWC4PHXqkNF1G8Bp1BgJrkLCm78UrJpy3qm7nXQ6q
	 ytsDDNWm9eQolzBUvRxMfFbd1CzWPMwEJj26tzsegM3jbO0JGB6/0p0ZWh7ycoixvC
	 21bFBmKbEFVoFxZZpz8WMrWmyf7GuIAOteC3T6vA=
From: Renze Nicolai <renze@rnplus.nl>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au,
	renze@rnplus.nl
Subject: [PATCH 3/3] ARM: dts: Modify I2C bus configuration
Date: Fri, 29 Mar 2024 14:01:41 +0100
Message-ID: <20240329130152.878944-4-renze@rnplus.nl>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329130152.878944-1-renze@rnplus.nl>
References: <20240329130152.878944-1-renze@rnplus.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This commit enables I2C bus 8 which is exposed on the IPMB_1 connector on the X570D4U mainboard.
Additionally it adds a descriptive comment to I2C busses 1 and 5.

Signed-off-by: Renze Nicolai <renze@rnplus.nl>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
index e93c2f0b8414..3b1c77a12605 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
@@ -183,6 +183,7 @@ &i2c0 {
 };
 
 &i2c1 {
+	/* Hardware monitoring SMBus */
 	status = "okay";
 
 	w83773g@4c {
@@ -240,6 +241,7 @@ i2c4mux0ch3: i2c@3 {
 };
 
 &i2c5 {
+	/* SMBus on BMC connector (BMC_SMB_1) */
 	status = "okay";
 };
 
@@ -264,6 +266,11 @@ eth1_macaddress: macaddress@3f88 {
 	};
 };
 
+&i2c8 {
+	/* SMBus on intelligent platform management bus header (IPMB_1) */
+	status = "okay";
+};
+
 &gfx {
 	status = "okay";
 };
-- 
2.44.0


