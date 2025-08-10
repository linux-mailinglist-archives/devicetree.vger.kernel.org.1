Return-Path: <devicetree+bounces-202996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E61AB1FAFD
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 18:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBEFF161E1F
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 16:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F14925C833;
	Sun, 10 Aug 2025 16:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="WeXbLkLy";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="KXalXkxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C5D256C8D
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 16:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754841844; cv=none; b=eyKVXyFxMrkFb9rM0KDfghWGE8UsNYkvz1JP8sFXJMY0Pdg7ZEGA74SKnB/3C7NgUhyreRtx3Uu3rrfjXISbr8VmN8SWcDgQcz+uskfqG4gdxyF9PGbrvojKCPn47UbYdbqKVahnhPvKXtSQEOH+cAdX1At6N5nBasM/0B6oDJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754841844; c=relaxed/simple;
	bh=Xrs4WZwP3wbWjguXSwjEBFs5QZtQ2a4UDLCDDLpj49U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ENOSCcMf/cM0QrEI3vT682DsoC4JtSumoYNGCmhlJt9wsvfDwaxE5KqlQCA2ZemzGCJUAMapGQ/KU7ln77ZQ5zEV6HlmBAtXtCsCdH+/9FUd0slmxsjql4Hg3nxTCBC3T0krfhZJLZUqZtsrXF8XPPNtBWEsOrS2bKyQ9oBJMyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=WeXbLkLy; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=KXalXkxz; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4c0MyL4698z9smZ;
	Sun, 10 Aug 2025 18:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1754841834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bFTUh9SwYeasiDREoxvaQj17XkkmaFIe8D9gtwB8r/M=;
	b=WeXbLkLyIGJODrRBejRDsAyjLMr+GBrwkDlcYgwDBhBxBXAHaur34Gn3OIQPldSUW6tW5S
	kHcLBqf2B9TBdXIc26A61qA7zm0nHCSJg+0CDAj/pmSv5Bmgo60Y+flm7k1mcvNfh/my6H
	z/xtRhqNGoNJvlp0I3hBVyBO28WBJJ0Gxk4k55GjIqc5Rpf9Ffu9KRq20Itv2DM3Xaed8x
	liqZdGLm5AupxOUoBEP0aabpDalBd+zzWsMStpgZPSreOF4BbEWXmkGY16fLwqNkjt+CnD
	gmYRdrCMkJ9vUJCPPax/K0k2See8/OBlayZldr4FalglxANtBl9zypBOk/Q0Bw==
Authentication-Results: outgoing_mbo_mout;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=KXalXkxz;
	spf=pass (outgoing_mbo_mout: domain of marek.vasut@mailbox.org designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=marek.vasut@mailbox.org
From: Marek Vasut <marek.vasut@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1754841832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bFTUh9SwYeasiDREoxvaQj17XkkmaFIe8D9gtwB8r/M=;
	b=KXalXkxzZzQNZC863YsGVJFKRrgqTSMPP7CxMSZ4BG2T7Dsiws9tSG/tPXoAtodC0oJ2nc
	gF9Ce3mO5BiZr5UC+Pt3PjmUVlQQaMt9uDdKxWpll7YMV1N8TfjNAukksQ6yvuqcHT3Bqd
	gcB7EJdcIDNkWmzSYTRNmMw92/nXpDI4STR1mqsYEsPIu3FTtMJMkS/BOxu0iOPav5jgVy
	ezN0wd9WXzoA9HYkuqKpq7v2l25VRFIzkTO0a9NvEAASZF7HluR+pWHDf/suPTztajSDuD
	ZoOcV9MTcY0XVp78MkjIbym8Y+bwOMrTkWYSaWbs4war/0/qUkeiTvcYqvKBAA==
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marek.vasut@mailbox.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	kernel@dh-electronics.com
Subject: [PATCH] arm64: dts: imx8mp: Fix missing microSD slot vqmmc on DH electronics i.MX8M Plus DHCOM
Date: Sun, 10 Aug 2025 18:03:07 +0200
Message-ID: <20250810160340.10042-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: 113fc956646a692c002
X-MBO-RS-META: bmbrtg1j8bosgd16iqjre398getbzgqs
X-Rspamd-Queue-Id: 4c0MyL4698z9smZ

Add missing microSD slot vqmmc-supply property, otherwise the kernel
might shut down LDO5 regulator and that would power off the microSD
card slot, possibly while it is in use. Add the property to make sure
the kernel is aware of the LDO5 regulator which supplies the microSD
slot and keeps the LDO5 enabled.

Fixes: 8d6712695bc8 ("arm64: dts: imx8mp: Add support for DH electronics i.MX8M Plus DHCOM and PDK2")
Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 7f754e0a5d693..68c2e0156a5c8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -609,6 +609,7 @@ &usdhc2 {
 	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
 	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
 	vmmc-supply = <&reg_usdhc2_vmmc>;
+	vqmmc-supply = <&ldo5>;
 	bus-width = <4>;
 	status = "okay";
 };
-- 
2.47.2


