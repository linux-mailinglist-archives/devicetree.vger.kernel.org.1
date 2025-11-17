Return-Path: <devicetree+bounces-239339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EFCC64181
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C710D362BC8
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D441232D0E9;
	Mon, 17 Nov 2025 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="sKx+E8dA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CB232C30D
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383053; cv=pass; b=ROXuUbiqDda5OXmepDNgX4RTnDutoTIzJOwtTU72l8dT18GlVsEh7LsVBxhHJIrNJjATTqg5AqY5LhOJlYgus7zwexIGFhwPkDL8Wtp6WqKcYtBK9CzKpWBND6K7BMw1wgr66stbvPsdCFLyW1/u1qqWpwcZMF/8MLqYDel+qRY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383053; c=relaxed/simple;
	bh=dXDi0s+km02ebBe7AWt7DzqybHNlwTYq4q7yTrzOyeA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=POdIZ1r4/+U2vq6QOQwxneq+LbT0ju798Z9kAtJ9p0DycmqTXXzMfn/dIz4rvyZa+TuS4ReX+6igvD4Wodpf02xhuWDpPa2aIt3n8kB1gKDujj7kB1v41FtLevh7dolDmQvxJYo3QG/TsTtRvFNwidzjgu4ZakcL/t1+SSyYSZY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=sKx+E8dA; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=nmy9fyQ6PEbPx0XQ71lGiSv7DepEPOFim0DYw8pJHy4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383025;
 b=EWoaUwGSsDBayRvjywJHTBVO0uwHaGe6RnXEHvZkSt4UT/s2XLbF3isaIvdCsTGdkggcEZst
 QRfLfIT9t6o6+tmc2hP6FLxLbapxojylD/eElQ1LfRWNdqeZ+LGBRgo91lA2lVzlKhM4bshbwoU
 +OMWo93zWBsYoHQBVOOsvNa8X/n2uG8TMaiWCZiGHi573BhzOExR8daUFjTMbnm67jQFbXmWnh2
 HbWIhb/UyaTXxCSwfeM61rC1wvH74PbeeGnHWV9w6nKvv5OraO/q75P4bI69d3TXbb2nY9YZfax
 nW+keiVKtAcjbdMj3UUt9Zx3w4/4vIm5WrH89TaxtX2LA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383025;
 b=heneNY1++wpH6Rwr/7gQXdZ/T4Og8AN14OBnIiIFBOimk/6L7t0EPvIjh3xOvN9dCPLORNTH
 5Mna83qItoQ1b11NAYr5d0qSdIvu3cve7ZJBIMUhcY1W7EBluTqZGc+TUEKclTYC1+/v7oWZ6Fw
 +vzWKGP7EHR0OjL5rDmbZbQpsuOjTWY7ZGi/gGVcH2Hz4vEsh8eTok5k0K8qY8k0lWVcrALlOsc
 lXdMKp+2LrZYbt10RC2dRapUiif35qjASHObXOyPocVI8tNK/whQWaYyPekxJo7XfZjj/YG7yqY
 415kSoprJXqg6JXOscmhyv3OAMhb29cTA1FWgX8eP2YHQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Mon, 17 Nov 2025 13:37:05 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 185C9CC0DF3;
	Mon, 17 Nov 2025 13:36:56 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] arm64: dts: tqma8mpql-mba8mpxl: Configure IEEE 1588 event out signal
Date: Mon, 17 Nov 2025 13:36:32 +0100
Message-ID: <20251117123643.711968-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4d96gr5rnvz4Mb39
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:99c01bc02baa59d35c741e13cb81e250
X-cloud-security:scantime:2.386
DKIM-Signature: a=rsa-sha256;
 bh=nmy9fyQ6PEbPx0XQ71lGiSv7DepEPOFim0DYw8pJHy4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383024; v=1;
 b=sKx+E8dAqtBnWN3I0/L9FbhUyd1fsv226weDSb0wjMr9IVenb04N/QZn2cSpmBDw+Yl66BfX
 WnwmTerGZFIqbvFLBH72LaeuDa3JOLlKjwCCCBFHfQhK6n1vbhIgSYdDdSLWImR6aHa90sI+7k6
 UKUVoxr1WZoLuR245Qgc04ATUgd9DZetoS3h2F5dykZUxMK4/KB/vW54FMHroPAA5d467ctv6pM
 gDBHtstF6YSJDxBJhymWQjFawzCGKt/n3KOX9GqI21jWZwRttcSw1xKORd3e29SyDToWGnsMC0R
 uTML9G5bbm/IH09KZhxRZZ/Le7iWRTYhhUTaWCh2lEBLQ==

The event out signal on channel 2 is available on pad SAI2_RXD0 which is
connected to X63 pin 13.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index ac889a69da69a..fdfe246c56407 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -807,7 +807,8 @@ pinctrl_eqos: eqosgrp {
 			   <MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x12>,
 			   <MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x12>,
 			   <MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x12>,
-			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>;
+			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>,
+			   <MX8MP_IOMUXC_SAI2_RXD0__ENET_QOS_1588_EVENT2_OUT		0x16>;
 	};
 
 	pinctrl_eqos_event: eqosevtgrp {
-- 
2.43.0


