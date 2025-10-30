Return-Path: <devicetree+bounces-233235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EF0C20194
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FDA5425D37
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF63A346E7F;
	Thu, 30 Oct 2025 12:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lxGK8Bvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC3B346E48
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828668; cv=pass; b=Gs7dkg5UtalPYrmOSBP35LVyVG2mjiHseU8BAAN/JZekdVjlAHV62cFcDMXFkCVTGcAWGHiKYTaz1pzvXVxAev55O2OBItnT2Zuk74xhZn41DKmtGNmlJv98pbfo/NI5SP9dQOxXNRcYYZ/yWp0XpALtKGV4X1D6Izfd6OI8GYk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828668; c=relaxed/simple;
	bh=RXYjUkTJGEzey6bj9duMrj1tLyzMQrd7xG/D9di9Oss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uPo+p8/iMQGtizXhbvZ9EEIFjs0Jeo749khSA3VEUJes4fzmeEncnxAXdWT8aAfXaj2YrBseVaGfwzeM17ha1y80I3v5GXZjseusrHyjMAwo+Zm6u2J+SJWe/+B+UQpWSaoDWz+yvpCXnrbP+6qpOtJHM6tDZxIwLG7xedrKo1I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lxGK8Bvm; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=fa0W+DLjU6OOWbYOutYrRj99tl16LW0xzYOEJzrNODs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828604;
 b=OAVSeDnUuqR0pU0GFO+m6mUBBHsgFxVD8DvY8cCASWY/FDZJfuzUHPf6zFaURrSzOyRnPCu2
 AmT81uyq2JtH/9wVNSrZ5INv3FpKZB227afx9hBlZRsYedLinhWYBFX2grHWWf1FCgJjXo9rygo
 H8gAVNXAD4boS+vb/ba74rWJUVjBRTgCWLSJuAlCaCnbzUdiS7+wrJ5v8K5+tEhf9+HAP/LpqDF
 AWwVHf1HRS2p/kvnsTT6iiDNM9+lOcqqy6fxbbVDThvTO9iZrYyf8jAuxtOQzfeGXxrPWkYWjdR
 4T50yhWk/xrh1XU1YWYnQkyT+wUsZ1H2Dyk4fnWpA3exw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828604;
 b=TutBKmd5WH4m7M9abItc7UELNFWNYXGxTADsGuWsKiNeM+bBp9ZqVQgLM/Ef7L+cmTI8XXDI
 qwK07KnZOgKWLg77lIaniUW9Kz4O8wzx/nKxx7hvX1prD0BJbvA1M48U8sTZNbrPOoMSxjjyrzd
 75q7+fAbEX4gpFqWI2rHFkR56ziHZhXnv8kbfGLBPPFHYoTW3jMgPLXY765m78qj0Gdmk6eg9A4
 +jTLtjKtKUo3CepGTHHPL0nzk9HgK3iDnwym0jMMjzt4BYGsiptf2sCup4auYmdPuQ4Y8pqGn/X
 5oR9g4ekmTAZPfwvE3694Jh5KDpQQ+pcSfpXV5w3XyaNw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Thu, 30 Oct 2025 13:50:04 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 00EF9220D32;
	Thu, 30 Oct 2025 13:49:54 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>
Subject: [PATCH 04/19] arm64: dts: imx95-tqma9596sa: move flexcan pinctrl to SOM
Date: Thu, 30 Oct 2025 13:49:11 +0100
Message-ID: <20251030124936.1408152-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4cy3q7583Vz4Mb31
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:690fe049c6c3fd8ba19a2c0a294a5505
X-cloud-security:scantime:2.329
DKIM-Signature: a=rsa-sha256;
 bh=fa0W+DLjU6OOWbYOutYrRj99tl16LW0xzYOEJzrNODs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828604; v=1;
 b=lxGK8Bvm0QPbIz1g9iH1h19/Jhifab1Qcyxgm1MEf1bL4XSZaZgYhWUqd+55OYtoFjrDUnKq
 RlKmtzN1LgWjA0GLNiEGFSYR3y1rI+c8A1pgdmRkJujT4VX1VKDqBuyfdaM5RPZfOBfZDeD3IRe
 hqgiXYp4d2f2TAH8Y3fu0KKrqdwME5Xn3EshMuP8y6J6CMH62R+cvGlbkkEgMO76P58V86FrTxo
 xcDHP6r5VkEnGdGUAJ+gFoKEoxwZFbLJhVA3C/V2LKTadBWbvXcqVUJCgIXEbB39xjNcNsMU5+k
 RaQglvRDXstB3CFgXjeCwtjWrnfc68TSzkFZb+6dEkahg==

The muxing for flexcan is determined by SOM, so add it at this level.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts |  4 ----
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi    | 10 ++++++++++
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index 5b6b2bb80b288..e3c7554b7f709 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -172,15 +172,11 @@ pcie2-clk-en-hog {
 };
 
 &flexcan1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan1>;
 	xceiver-supply = <&reg_3v3>;
 	status = "okay";
 };
 
 &flexcan3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan3>;
 	xceiver-supply = <&reg_3v3>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 52355a65a62da..759a09a912be1 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -106,6 +106,16 @@ &netc_timer {
 	status = "okay";
 };
 
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+};
+
+&flexcan3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan3>;
+};
+
 &flexspi1 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&pinctrl_flexspi1>;
-- 
2.43.0


