Return-Path: <devicetree+bounces-266424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0J+3AJG9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 610CE156980
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26C263058E0E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C9D2D47E6;
	Wed, 18 Feb 2026 13:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="A6qrG6vB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay18-hz2.antispameurope.com (mx-relay18-hz2.antispameurope.com [83.246.65.160])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963962D0C63
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.160
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421045; cv=pass; b=mMF/3cqHf3BVqWA9/uwrf/fMFFoE0e16QBzOJ5wM6Y7D4ONcWO7syAR0Ixdkgh7jNHUW6BoTDh0CsHo8/YzBN1/OR2qJqLU9gS5H/fpnX9o6TPwtJIygJGGmJYxXgLubykux7uwCn9pvM2TMBq3HtPZPjwz2+MAURLkXbZ73SuI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421045; c=relaxed/simple;
	bh=xSnPiXaOODwVqUzvJ8PB6fTshlB9fnXHV/nHdDGoG+U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MGcqXOFZga4+ximFqz8qRSDgwwL1kQMUbHu3I06Lj1LCK58NPzcN6HJh16f2/GxFKyQLcMGyjA+sX/VkHMRrfEti4Ftgaj2OH0p4pr8gRzBjY7jZiL5TS+RblogRaxb4fbQuIp92Es21/JnqF9kZQH+tJV0GsB0/0V1+Xc6EjTo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=A6qrG6vB; arc=pass smtp.client-ip=83.246.65.160
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate18-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=FYz6GN2uF4bktyMBn1WEegYkUKLB98RX0JlCoopJ2zo=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771420998;
 b=ofh9Izk5f30AjqwXPZSlix7MWwXSe3HVVW9/17rCpmOKPwyH0xCo2hGUpUGfryF7IsPPNBus
 cgAUFFyixHlJDXgxJa69fI8AiVnGB/WBT+gVzadFd0mkbukSJhuwJuzwY/H5v4XuZqqG1IkKOgn
 H6gopXPpduRXrS8Y41phZhnEwyNgEGbCSBO403lrq3+fAuZZBlW7aDdbwOyxiKPfRdpzNseXoM0
 Hlu/BBsHKHViOsDH/ZKK4CVPycZdjfHsh23m7DlXcEKiDWjvhDTx/+mxkwAwQCuBEcn7X5+/bIo
 AlUTAkn7cLv6Ub+x+tGXElpKGywTKIwvKGzK7tOz820EA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771420998;
 b=sS9cgCX5bJem9ZXwXuKmkINCDax+S35TMNwiVb3Fb4krgYLTlVEj2w+/L2tiMDIMaTr8Jk3h
 vn9vbpboRwLpLnZnthJjSwylANVlOfFoAaed/6ZrrC6CGidLdOCjJ2NWBimkSnVPkoLXr2k5NiW
 O0AcmjMjHQUxs2SoXU9KCuoZj5aFOzwZCeR23KIVUC7PKtQeurXAcdvEOc8cQhuVe3Yp15Umwyw
 FC43xGDMMKtavxthu1Ls4KPH9vwE/ukt4nabNPoFthgTwKj1xcDQsUmF5+dQXDE9CdTKy1XMu7r
 gLfltGVFAcNYExl7NynN6cgOJ8UzFPtMHf404ODTOQk1Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay18-hz2.antispameurope.com;
 Wed, 18 Feb 2026 14:23:18 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C9921CC0956;
	Wed, 18 Feb 2026 14:23:11 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ARM: dts: imx6qdl-tqma6: add missing labels
Date: Wed, 18 Feb 2026 14:22:22 +0100
Message-ID: <20260218132228.32056-2-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
References: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay18-hz2.antispameurope.com with 4fGHJJ4KsQz2lHGg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:2005588d5e16dbcb100f8c3a37af506b
X-cloud-security:scantime:1.984
DKIM-Signature: a=rsa-sha256;
 bh=FYz6GN2uF4bktyMBn1WEegYkUKLB98RX0JlCoopJ2zo=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771420997; v=1;
 b=A6qrG6vBDO/rY/3GQmaQdTJ9WN1r5MlgQ18rZgtpgiuFRHIdMWuYGBP4iXhtaMo3SnNZZ8tY
 th7If0GTwcnT0pHBM8Ljd/ClwTM4lL1rNN9v/LyeAKLzZBuCUPDKD41OGI38SZdGyRegValDZaE
 gKpym/Mac+jU5sGgbtZJgs1CvFknc/Urm97hvcu8IaV7nf+YUJcpxcHJq14hFcQ8JDz17jptQHg
 H0DHHDJ3sOC7EQt1MV9ICwMMgzlRUvi9Ndc2v4Gec6u5R2bRO9mPl+eBR4OJ5I5w3jw4dS7Dj1i
 9u3iHhWc06vskrsl4GVE36Ooiv5wKbCK85K14+HQ/RH+Q==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266424-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.48:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,0.0.0.8:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.50:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 610CE156980
X-Rspamd-Action: no action

Add the missing labels for the temperature sensor and the EEPROM.
In SoM variants A and B, the components are connected to different
I2C buses. These labels are needed to reference them in subsequent
device trees.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi | 4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
index e8fd37dd8835..1251749a8dd0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi
@@ -27,13 +27,13 @@ pmic: pmic@8 {
 		reg = <0x08>;
 	};
 
-	temperature-sensor@48 {
+	lm75_48: temperature-sensor@48 {
 		compatible = "national,lm75a";
 		reg = <0x48>;
 		vs-supply = <&sw4_reg>;
 	};
 
-	eeprom@50 {
+	m24c64_50: eeprom@50 {
 		compatible = "st,24c64", "atmel,24c64";
 		reg = <0x50>;
 		pagesize = <32>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
index 0e404c1f62f2..7f526f39e0f2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi
@@ -20,13 +20,13 @@ pmic: pmic@8 {
 		reg = <0x08>;
 	};
 
-	temperature-sensor@48 {
+	lm75_48: temperature-sensor@48 {
 		compatible = "national,lm75a";
 		reg = <0x48>;
 		vs-supply = <&sw4_reg>;
 	};
 
-	eeprom@50 {
+	m24c64_50: eeprom@50 {
 		compatible = "st,24c64", "atmel,24c64";
 		reg = <0x50>;
 		pagesize = <32>;
-- 
2.43.0


