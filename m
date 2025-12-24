Return-Path: <devicetree+bounces-249361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FD2CDB5A4
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 05:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82FD7301E1B1
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 04:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6EA1A9F90;
	Wed, 24 Dec 2025 04:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="EOkn1POA";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="EOkn1POA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5BF186E2E
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766551937; cv=none; b=u3nZv/kdNoIasJM7n/EADOIcaJKGTX+L7+N9toPxA/i678mTE3W++kO+oMLEMaeoSfEWT2Z/WgIUs2HXBWS2TWkhxZ4sZ/HXXf329ZX8po19dEBXZfUgiqQNvOnDdXG0mm+CpDmXO4HqrG3Pg8sx3IMgmep364RmxJSk5iQWOk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766551937; c=relaxed/simple;
	bh=YFUbCof5qxAaSXFaRIk3fRDUALAB5874JIB8dkA58jc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gwdKgocNJ4ViWZCK1UDMJkwiHFXOVNdnhFImtwKof65tBc4TCNdVqxNT+bZDxU5gzDlNHR0li7+/fOAaGGKhhH1wJ5a7DpBcKKd69Gwg22wOsOEqlwabAxDgQLuq41HWYrY9SEHBsG57Z4G2PV/7M0LoEqQ113ierouI/r+YGlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=EOkn1POA; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=EOkn1POA; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766551927; bh=YFUbCof5qxAaSXFaRIk3fRDUALAB5874JIB8dkA58jc=;
	h=From:To:Cc:Subject:Date:From;
	b=EOkn1POAMYb++aWroK3XWI5S72nbGzEIU2V7ahnDR4qVxImkmtwc0MR3LBGKA+wyc
	 QVYxEyrIDVWsNp1eV+XXGhy/y7qm3z3zF3QSg+53DF7m3zGLAo2Y5OyfhKlW2bUNGS
	 eAuLK2dL4mYtj1PJUND6aQFI+zYo4u+0kOGk8mgxL7Lb9wQJ1sw0icWyeNqLhyj4r6
	 hTpfUJGZ+BhnABDkF4jQFLre8Ox82ENFSZQiC4xnXt72HBiD9ERQpOgZbHWBLncr6c
	 cGoqZQPCyiAKcY0tXzsFTmB2bDx6kVRStwr6Wl6Se8VUOMvOJT3kFVoHgcwjUZnXW9
	 vbkNOxOy547RA==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id DBDE83E88C3;
	Wed, 24 Dec 2025 04:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766551927; bh=YFUbCof5qxAaSXFaRIk3fRDUALAB5874JIB8dkA58jc=;
	h=From:To:Cc:Subject:Date:From;
	b=EOkn1POAMYb++aWroK3XWI5S72nbGzEIU2V7ahnDR4qVxImkmtwc0MR3LBGKA+wyc
	 QVYxEyrIDVWsNp1eV+XXGhy/y7qm3z3zF3QSg+53DF7m3zGLAo2Y5OyfhKlW2bUNGS
	 eAuLK2dL4mYtj1PJUND6aQFI+zYo4u+0kOGk8mgxL7Lb9wQJ1sw0icWyeNqLhyj4r6
	 hTpfUJGZ+BhnABDkF4jQFLre8Ox82ENFSZQiC4xnXt72HBiD9ERQpOgZbHWBLncr6c
	 cGoqZQPCyiAKcY0tXzsFTmB2bDx6kVRStwr6Wl6Se8VUOMvOJT3kFVoHgcwjUZnXW9
	 vbkNOxOy547RA==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 4BC093E837D;
	Wed, 24 Dec 2025 04:52:07 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Kuldeep Singh <singh.kuldeep87k@gmail.com>
Subject: [PATCH] ARM: dts: lpc32xx: Update spi clock properties
Date: Wed, 24 Dec 2025 06:52:05 +0200
Message-ID: <20251224045205.1204414-1-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251224_045207_917026_AE57C592 
X-CRM114-Status: GOOD (  13.22  )

From: Kuldeep Singh <singh.kuldeep87k@gmail.com>

PL022 binding require two clocks to be defined but NXP LPC32xx platform
doesn't comply with the bindings and define only one clock i.e apb_pclk.

Update SPI clocks and clocks-names property by adding appropriate clock
reference to make it compliant with the bindings.

Noteworthy, strictly speaking the change tackles DT ABI by changing
the order in the list of clock-names property values, however this level
of impact is considered as acceptable.

Cc: Vladimir Zapolskiy <vz@mleia.com>
Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
[vzapolskiy: rebased and minor update to the commit message]
Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
I do resend the unapplied change from the past, which raised a discussion:
* https://lore.kernel.org/all/20220311093800.18778-4-singh.kuldeep87k@gmail.com/

A functionally identical change has been sent recently:
* https://lore.kernel.org/all/20251029202801.3963952-2-Frank.Li@nxp.com/
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index e780451fd335..206c66bdfe41 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -172,8 +172,8 @@ ssp0: spi@20084000 {
 				compatible = "arm,pl022", "arm,primecell";
 				reg = <0x20084000 0x1000>;
 				interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk LPC32XX_CLK_SSP0>;
-				clock-names = "apb_pclk";
+				clocks = <&clk LPC32XX_CLK_SSP0>, <&clk LPC32XX_CLK_SSP0>;
+				clock-names = "sspclk", "apb_pclk";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";
@@ -196,8 +196,8 @@ ssp1: spi@2008c000 {
 				compatible = "arm,pl022", "arm,primecell";
 				reg = <0x2008c000 0x1000>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk LPC32XX_CLK_SSP1>;
-				clock-names = "apb_pclk";
+				clocks = <&clk LPC32XX_CLK_SSP1>, <&clk LPC32XX_CLK_SSP1>;
+				clock-names = "sspclk", "apb_pclk";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";
-- 
2.43.0


