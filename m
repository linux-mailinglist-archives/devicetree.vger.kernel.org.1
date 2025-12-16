Return-Path: <devicetree+bounces-247040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC908CC3823
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7DE283030945
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A2E53A1CED;
	Tue, 16 Dec 2025 13:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="tRlJmP2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay95-hz2.antispameurope.com (mx-relay95-hz2.antispameurope.com [94.100.136.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCFA39B6DD
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.195
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891926; cv=pass; b=NwoYqpx63USuaA4Qu4qBSbDPncllo7GanbeZGLAQGWJ+OpCiQ7LQxVfDpbZ17ZBiR869BoMfNS40LgfVyVO7rFC2igKOys3F9eZi78uFhUnUpwOmpyh0XcJVkFIpjPqkgYY9+G6y8pu6SZKRbvO6gWwe1Clsm4/0ZdMYsMw5uFk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891926; c=relaxed/simple;
	bh=2kGYXJE/iVahj8BFqpe6AykUip8ftdYsjkq/kDCnExE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OyxyC/vUGek8JZvrAUG8ZxwxYEcqNadW46tom81XbXSdaZ4XmfbHakcB1+8kuvF0XH49Mg1WTTk2S6J1iwp8YttzSgd/ldsBYho11bzpkVWYLMj5dEfCUWXDaAq4QJisGpHNkEnzPg57W3LFmGlr8fmvzGe80BD4TZ3uPAm2JJI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=tRlJmP2n; arc=pass smtp.client-ip=94.100.136.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate95-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=yh5ZsOcuDpa4wWwoqzqt35sd6N66Msu9e9l9XpN6lLM=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765891878;
 b=XNZedqgaZWlmfQlAuzj82KTPyv/WrvQEXNOWPgD9MGeebcBmkklrUPL49ZMsnmOHXHhrpjQu
 CbkfT+8QT5mnTUfdu3EuPSDJPMm7OjA1frpG1U2eyzy/1zCepIP7VVhn5dj9PYACLaIKtjGffgH
 AjjN9BXY+T3kS2Lh15SC7sh/n40Z+P44NzL8yhZblPb7r6WNKtdnnR+SRQjb+gtbQ52RwKySR5C
 KS34lZ82Uy/d/sbrfCzLZwHMmmkG3+/lvxtCHBRrSEZm0UHX9we3Z8MwQp+msu/DBPb0qATKYC9
 +kNB4tjveGNEb+EvElQORZh4JUdiYP+9Dhpt93f9RR/mg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765891878;
 b=kilSQQW2v6rhIH7/fCwvp+3IxdIrVUo1nxK9rsQlg4q/Zq7SB1Ka/Kq6B4rpLQHUPWusS3iz
 CSwhxHDauhGk4dlKNZU+e6heRJP/4NtlMPFcH3hYR99rN/rXKf4kSHRybnGhD/2YYMtEhFBf/Zm
 ehLjIshmpElQ43I2x0Xx4GeNEkPA5VSgzfl3+zR8mPu0pp6QD9Mi/o2pBpRE3qymRIukS6macbR
 5GUS8vBlilHmhBWQcqYen9eU4yn7vTELawRzLkrN8AnSf2P7SZXtqTnk9UING039mSSudjbW/sV
 oeVyy7+JrXQQFz+9fRS1VPC7kCX8/998ycNUFrmt5dA8Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay95-hz2.antispameurope.com;
 Tue, 16 Dec 2025 14:31:18 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 2E46A5A089D;
	Tue, 16 Dec 2025 14:31:12 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/4] arm64: dts: imx8mm-tqma8mqml: remove virtual 3.3V regulator
Date: Tue, 16 Dec 2025 14:31:04 +0100
Message-ID: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay95-hz2.antispameurope.com with 4dVyW50clrz2F9KH
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:504100b48af9d3fc233a2e6c6ae8df85
X-cloud-security:scantime:1.536
DKIM-Signature: a=rsa-sha256;
 bh=yh5ZsOcuDpa4wWwoqzqt35sd6N66Msu9e9l9XpN6lLM=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765891878; v=1;
 b=tRlJmP2nr6F/JhtOqemuHHzwcXrJAY5+044gZy+DcnEi0A23RSSc1ueSL0YAo4PmP9MxJo+B
 BEUGQQ6D9OAf4goK7o5ZduABSA5naDm57mFhslGlmKgBJ/5NGkBjSiwsyBkMO45M/HdW8fd5PS9
 HKR5l/qSNS2c9X+8WoNams77g3dptmkcSOG3XAaIjeRCJY+v8XVhH4eBueIsejhmcrJSJNaSxVi
 fMR5EoSzjMW3/0zeD5gbk2nnM8OVittsbCxO+w4RdwYo8mgUEqEXQJ+S8rlrB+cA0NqtiV9FCQ3
 6mKBavV4dYEhJIYB9N17Ag469eTWs9C7NRhJjfRzwIjbg==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

BUCK4 rail supplies the 3.3V rail. Use the actual regulator
instead of a virtual fixed regulator.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index b82e9790ea205..16ed8ce5b5c49 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -24,14 +24,6 @@ reg_vcc1v8: regulator-vcc1v8 {
 		regulator-max-microvolt = <1800000>;
 	};
 
-	/* identical to buck4_reg, but should never change */
-	reg_vcc3v3: regulator-vcc3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "TQMA8MXML_VCC3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -223,14 +215,14 @@ eeprom1: eeprom@53 {
 		read-only;
 		reg = <0x53>;
 		pagesize = <16>;
-		vcc-supply = <&reg_vcc3v3>;
+		vcc-supply = <&buck4_reg>;
 	};
 
 	eeprom0: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
-		vcc-supply = <&reg_vcc3v3>;
+		vcc-supply = <&buck4_reg>;
 	};
 };
 
@@ -253,7 +245,7 @@ &usdhc3 {
 	non-removable;
 	no-sd;
 	no-sdio;
-	vmmc-supply = <&reg_vcc3v3>;
+	vmmc-supply = <&buck4_reg>;
 	vqmmc-supply = <&reg_vcc1v8>;
 	status = "okay";
 };
-- 
2.43.0


