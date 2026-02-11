Return-Path: <devicetree+bounces-264766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HsDNnF4jGktpAAAu9opvQ
	(envelope-from <devicetree+bounces-264766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:39:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBE0124670
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 570AD3033A99
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7F9313E29;
	Wed, 11 Feb 2026 12:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="qKcYx0kL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E581729D28B
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 12:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770813342; cv=pass; b=GDasDvpehAdVLCB/GmNlMQmNtu+R0v8WMFmmD2oYd32EoNysx/9UJQ0bXTol9gDYmRoQwrZzXI8bFwBdCknNrd1dJSxuLGftR+mAsag6rH8ACrc4zXBWy4lPuqP0BOwIDvLbYimxMaG+wNZTkK8xNcxoIxJNefJJdWnOLSn6Wdg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770813342; c=relaxed/simple;
	bh=DDxMMwSEPx4y7ICS/1B6rQvV6CMJXqzIvms5szSqGy8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sCBZ8s6QQBXEQNZfXzqNaa0L0gZFREs4TlNuKyWTSugX8D4q9n7dbZZTPeVYjWLRWnNPFpIrf3wrd2Cx1k8F5D3mIwaD9luWqhLMoatWOz18FCCRf+KgD7PJ2790Cxu6wsHIkWJdv2Yn/BVVNKEEvcG0sED6IlpGzABIwfXv/94=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=qKcYx0kL; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=p7pDwaK17CdUZh/u5Iy4Xmvwxf0XguEjLtkZgT9LWWU=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770813294;
 b=Ir/QVqVDGNvrPFC/YEWSvl4eAiF/LFCMKNW89UcI3RnhspQcnPukEPZuuPMDd9+ZhxbxveTP
 O8W+EOzRtsw88HFJtU8KYZ6lReLKNGUYV6LWiOAb8GxlwUzdJn1p+tLw4vGdK5RJQ6jkaHW4u/z
 Z87Oo2cQg6jb5NFE2n45TXKeRqXUcftzC+TCmiiF+LCxsowQeM//nGsqWf+5Y2SGoMywbCfN20M
 Viv+j7QICPdK4EQJaDb08it0rYnkRLDh9j1MwUzL1K0tz6+9aDows0/XEvcbnrAjAswcCKo2IHn
 FW3tfxTpYOCHF6/IYykr2eP7X6C14NIPDNlshATzm1+1A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770813294;
 b=l5MXiZ6Qn4BFtqFnhEh0rTSNxedDfvXpixd4Rw7NAui/b+/Olg/tM4+0vDTa/rtVUnaPn4dj
 UpJnxMGnCC6XE9b1qB0ylyyR2v5KEfe2E13Ijsw91b1qA+O2NJt2rhEkWNUi8lMSAAOqMDrqaae
 e/SICLnHGoAgAEcGqvY3cakFy/t9QdKZUlKBKrTzVrmOmT65iHREc5U3B9jO/F/E6vZypWEiVpC
 4JyFZfKEypsn7HQhLNNbHK/d5q0dmti15Kq9UhTkQdjoXHEKwBmVVFPB+LCu1LlrydC7qOUPYoc
 S9/cPl+rkx79OA1j3DXFeRavyoDIrglNAwGueKNDHxMTw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Wed, 11 Feb 2026 13:34:53 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 01C7E5A1345;
	Wed, 11 Feb 2026 13:34:44 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Peter Chen <peter.chen@kernel.org>,
	Pawel Laszczak <pawell@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marek Vasut <marex@denx.de>,
	Frank Li <Frank.Li@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-usb@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH v2 2/5] arm64: dts: imx8qm-ss-hsio: Wire up DMA IRQ for PCIe
Date: Wed, 11 Feb 2026 13:34:29 +0100
Message-ID: <20260211123436.1077513-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260211123436.1077513-1-alexander.stein@ew.tq-group.com>
References: <20260211123436.1077513-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4f9yYf1s13z2nJDK
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:445cfd46aa584c7bfd22defe62d9001c
X-cloud-security:scantime:1.964
DKIM-Signature: a=rsa-sha256;
 bh=p7pDwaK17CdUZh/u5Iy4Xmvwxf0XguEjLtkZgT9LWWU=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770813293; v=1;
 b=qKcYx0kLrid2AYg52luFz1Tutmu98Okossb7o+joK46vs51IRqO9vSuBpt7ubGXMbAPkL0Ot
 WeaJ36O3JBHO9n69rULn0u9h98Elhp0YH7UFdcRhBIbVJllYFqnIAZoi1kY19cjVxIY311xJO9Q
 Yb2cNpQd5krkn9j3Vecw9Xy7prGnO63S31vcYEAe2hyHpBdd9NRl1Pde4nxqRFv9DTuqg9SUzuN
 eM+4XJ8+M+COe0qzAft3KBhZWQl/lPHG7s2jgSyeYtu4NX6TjhX6Nzcs9yN3QwjiNLCUgjZIvol
 RsjU2ps6sQd3pN6kUDVBKAV2ytVk+Bokcs+WMVlRnL8FQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,baylibre.com,cadence.com,linuxfoundation.org,pengutronix.de,gmail.com,denx.de,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264766-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,5f000000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7DBE0124670
X-Rspamd-Action: no action

IRQ mapping is already present. Add the missing DMA interrupt. This is
similar to commit 0b4c46f9ad79c ("arm64: dts: imx8qm-ss-hsio: Wire up
DMA IRQ for PCIe")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* None

 arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi
index bd6e0aa27efe9..f2c94cdb682b9 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi
@@ -20,8 +20,9 @@ pcie0: pciea: pcie@5f000000 {
 		ranges = <0x81000000 0 0x00000000 0x4ff80000 0 0x00010000>,
 			 <0x82000000 0 0x40000000 0x40000000 0 0x0ff00000>;
 		#interrupt-cells = <1>;
-		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "msi";
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "msi", "dma";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		clocks = <&pciea_lpcg IMX_LPCG_CLK_6>,
-- 
2.43.0


