Return-Path: <devicetree+bounces-93567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8422A9517A3
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D71C1F23F2E
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 09:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6B014A09C;
	Wed, 14 Aug 2024 09:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="MqO+7/Gq"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FB1149C46
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 09:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723627608; cv=none; b=mgK2xGW2x3twqTOsI35vqQglpt9DwzAee5JaJFtYGiEe4ou6M56bZ0nqir/pVJr1BCHrWZcIWwW77XR0+bBrzK5dGIzsCgDqrIttUsDup4SMHP2q851+rKYXQVivYGoXBsasL8Ky87jJenYFkIiuZ0lGEibal1SP9AwL/M6zom8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723627608; c=relaxed/simple;
	bh=d9r69nqmECkkEgXIbSmevUGwzmEqByJwViwec/ag+Bk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=CQj+LS1nG8uxQq9FrvfzJPERbdwvbsEvXlu44q/2yzNGTlL967z2hj8zw5qb55mo2D703C1x34/aOtI20c4tihrQL0/nHgCBa6Tu05EBAyXLEiJYjmrk0Nu8Zr0OhyVXi4WcSeNZmw2IeoLa1ciU6su+rDfXL0J3ZWo+7GXFUFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=MqO+7/Gq; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1723627599; x=1726219599;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d9r69nqmECkkEgXIbSmevUGwzmEqByJwViwec/ag+Bk=;
	b=MqO+7/GqmeM6s+KlyZeUDJTuUE1v9pYX94o1mW/ykBvfMDiayw86ZTcjgLT7D4HG
	ZXNxPa7msTtm4mhacQdvW5KyvblAT4ChnWrz06vaa8VOCNJaYjU/W05CTksVBUec
	U5HQwKbFRUO2GsUDaSnAcWmp4W13mjradgYOyPnsFMA=;
X-AuditID: ac14000a-03e52700000021bc-bd-66bc784f9340
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 09.54.08636.F487CB66; Wed, 14 Aug 2024 11:26:39 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 14 Aug
 2024 11:26:39 +0200
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 14 Aug 2024 11:26:11 +0200
Subject: [PATCH 4/6] arm64: dts: imx8mp-phyboard-pollux: Assign regulator
 to EEPROM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-4-e2500950c632@phytec.de>
References: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-0-e2500950c632@phytec.de>
In-Reply-To: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-0-e2500950c632@phytec.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
	<kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
CC: Yannic Moog <y.moog@phytec.de>, Benjamin Hahn <b.hahn@phytec.de>,
	Yashwanth Varakala <y.varakala@phytec.de>, <devicetree@vger.kernel.org>,
	<imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
X-Mailer: b4 0.14.1
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgkeLIzCtJLcpLzFFi42JZI8nAo+tfsSfN4MZcXYs1e88xWcw/co7V
	4uFVf4uZ91rZLFZN3cli8XLWPTaLTY+vsVpc3jWHzeL/nh3sFn+3b2KxeLFF3KL7nboDj8fO
	WXfZPTat6mTz2Lyk3uPF5pmMHv3dLawe/X8NPD5vkgtgj+KySUnNySxLLdK3S+DKONK4nLWg
	g73i+Jp2lgbGDrYuRk4OCQETiV1L9zB2MXJxCAksYZKYdOAsG4TzmFHi4/nDLCBVbAIaEk9X
	nGbqYuTgYBFQlZj0PgskLCwQJfFuzgFGEJtXQFDi5MwnLCAlzAKaEut36YOEmQXkJba/ncMM
	UZIscWjdLjBbCMiePu0uWCunQIrE9Zvn2EHWighMYpI4eu0E2EHMAn1MEp3TzrNDXCos8Xn3
	GjaIbnmJXZdOMkLE5SWmnXvNDGGHShzZtJppAqPQLCQ3zUK4aRaSmxYwMq9iFMrNTM5OLcrM
	1ivIqCxJTdZLSd3ECIolEQauHYx9czwOMTJxMB5ilOBgVhLhDTTZlSbEm5JYWZValB9fVJqT
	WnyIUZqDRUmcd3VHcKqQQHpiSWp2ampBahFMlomDU6qBMWb9oQk3vvUoXcx4fGNtz/o0qSUv
	czjdK9qLDsXO9OpyPr363aZ/e9nVn87hX7+r2nCtvbrdDTdLn613F6ULsU1s2HC3Mso3xfWq
	2atyFYn9Ghprnq88/CUpU2oeo0AVv8TJpRMY1r648v1Exq2OG18vb+loV53z99Tcj3pGRtO6
	z57+OeOCXLISS3FGoqEWc1FxIgCehAVVkwIAAA==

From: Yashwanth Varakala <y.varakala@phytec.de>

Add VCC_3V3_SW regulator reference to the EEPROM node to reflect the
schematic. This also silences the fallback dummy regulator warning.

Signed-off-by: Yashwanth Varakala <y.varakala@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
index 341baa167191..4cdb3b9fff08 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
@@ -171,6 +171,7 @@ eeprom@51 {
 		compatible = "atmel,24c02";
 		reg = <0x51>;
 		pagesize = <16>;
+		vcc-supply = <&reg_vcc_3v3_sw>;
 	};
 
 	leds@62 {

-- 
2.25.1


