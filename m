Return-Path: <devicetree+bounces-247037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB8CCC38A5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:24:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A99243035D15
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982DC398B60;
	Tue, 16 Dec 2025 13:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="NJgKz0nq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410B5397D22
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891905; cv=pass; b=JW5EdPHwLG+wO6z/bOE2JnfMFu0Temu2QF9M0CwtXe+3k1EvasxQUeDB81GrsxzKHohXiZqMk/AaF8WuGmtnL+nsV1oB2uEXsVZWIVAhrxepKn8+RIbMXhFkUcxpuY5mqjYBnvimzN6l51hdtJDxYxHSFJfriJ18bEbj85TCDnA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891905; c=relaxed/simple;
	bh=PR0NlHN7YqPKKsbMjxMs6NKkCd0HY+1rUkhqTYtnpHY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CLdjzazzKQ1I0TDXuBu1haY3SQ8MsfRTZfEIb6rreyIHoKTEQOfddMEY92JcoKCKA/124KYKrYvkbv1OHx3a8z+LBpgxDRZyhHd2l/soAU3vmJLTIwYOfWjAAAqtfmyzLjXZ0C+688YhKvXQkmjSgKSo8yRE2I3Scd+pSf4OAks=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=NJgKz0nq; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=ZD7EdcJ5e7dAsrhJ0U5LSV+PqEdKUrqQJz6YmQiuB8U=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765891881;
 b=ilVtn6DETYvq1LQL8qhf227y7lHOcpZ5fGlTV8FLogHtl0XBVnv/kr/qQGU89oDi3wQn7r6N
 sVM/Q+6wVC1PYmfB1ycbhXL3jp0tObj+bPpLf/2yog5FLpy4q3c1GQxzcX7BY7XztfCpdgExl9U
 S9f1eWJt58D585qXfDPWdra9BuuC6QrkZXcRfYEd/TQZiZ+SgOogdQrxe8NalM37tFybEobwvJd
 5XF3PcDjncdr1GUS2zOEeYAMqRDp3UbtSUMFLxQtqZXpzKyX4pK+YjFqmikUy/PrxLz/Ouctxgb
 6WF8nOd8WqoIMvkgWrItZViCP9YhI2tlg6juPCnA3lVSQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765891881;
 b=qg6eLr/T7AMZGg6oATPnKCkHjRDkIDngQEpuOwFfAcIz8AWvda9laoclqS99SSKRQ06o6tcE
 F951t64gcZrOtusZYgwKs9kRc/IE5HwrDzll2t1eiWUItgFozLZxfYYOm014ioo0fYDnkOqumtb
 JM8DzPF9o724ReoqflLWrHPgO9pj1UV9nptYYw+W8NcHiY19hlL8JDJFRD19LaXOW0wkPbkiR3A
 GWo4R+QU76a3609G1AhNt2yTu5VedpuoQj89Rd5DCdwsmZmnwTQVUIu4bTSAE5Kus/iHT0WjUX0
 kFs6Sd54ISqSUhgKltYlrp7yeeWsBTNBma4DhQwo9eQKg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Tue, 16 Dec 2025 14:31:21 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 7785A5A0757;
	Tue, 16 Dec 2025 14:31:13 +0100 (CET)
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
Subject: [PATCH 2/4] arm64: dts: imx8mm-tqma8mqml: remove virtual 1.8V regulator
Date: Tue, 16 Dec 2025 14:31:05 +0100
Message-ID: <20251216133110.905950-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
References: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4dVyW62g3Qz3yZDb
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:3ac751a4171fb0e3b80f44cb1af22f3d
X-cloud-security:scantime:2.207
DKIM-Signature: a=rsa-sha256;
 bh=ZD7EdcJ5e7dAsrhJ0U5LSV+PqEdKUrqQJz6YmQiuB8U=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765891881; v=1;
 b=NJgKz0nqL/VR3vCs5AEvhaAgA3T0XqZ42eIlfBh6CC7pF85pdISwcT0zd+8iWBnDAjoMnqPF
 HHo4C2wYl5dZ70TpEUXCGOhY84XLMVL+QFE41OFJMMkl3mAFR2uizb+Eeag7kW0Rl9dTyfCZ5aa
 i9DHMOzDMu/p+LCYRH9uDGjOHxZ4ZHjXYrVnJ/Sa8dn4Vjwif0crOXqjxI4yPeu4ba7dZAAZHrd
 0Bm6mIDgWQYJ11o2Eb1EZYvOS7QKITf6Ns5TjDJ3M9IXbw6P/alZn94vpQ5LiQnkX3UfbKYcJsx
 IiiEM8Bb6SKCDY0etrTzjHqv4Xxu4j55CjEQpkN/LqFng==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

BUCK5 regulator supplies the 1.8V rail. Use the actual regulator
instead of a virtual fixed regulator.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 16ed8ce5b5c49..6e63cf8beadcd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -16,14 +16,6 @@ memory@40000000 {
 		reg = <0x00000000 0x40000000 0 0x40000000>;
 	};
 
-	/* e-MMC IO, needed for HS modes */
-	reg_vcc1v8: regulator-vcc1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "TQMA8MXML_VCC1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-	};
-
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -246,7 +238,7 @@ &usdhc3 {
 	no-sd;
 	no-sdio;
 	vmmc-supply = <&buck4_reg>;
-	vqmmc-supply = <&reg_vcc1v8>;
+	vqmmc-supply = <&buck5_reg>;
 	status = "okay";
 };
 
-- 
2.43.0


